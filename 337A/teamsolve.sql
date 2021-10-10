--
-- PostgreSQL database dump
--

-- Dumped from database version 11.10 (Ubuntu 11.10-1.pgdg20.04+1)
-- Dumped by pg_dump version 11.10 (Ubuntu 11.10-1.pgdg20.04+1)

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

--
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: cube; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track execution statistics of all SQL statements executed';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: due; Type: TABLE; Schema: public; Owner: ttnwfvvb
--

CREATE TABLE public.due (
    user_id integer,
    problem_id integer
);


ALTER TABLE public.due OWNER TO ttnwfvvb;

--
-- Name: problem; Type: TABLE; Schema: public; Owner: ttnwfvvb
--

CREATE TABLE public.problem (
    id integer NOT NULL,
    rating integer,
    "solveCount" integer,
    name character varying(50),
    code character varying(20),
    judge character varying(15)
);


ALTER TABLE public.problem OWNER TO ttnwfvvb;

--
-- Name: problem_id_seq; Type: SEQUENCE; Schema: public; Owner: ttnwfvvb
--

CREATE SEQUENCE public.problem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.problem_id_seq OWNER TO ttnwfvvb;

--
-- Name: problem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ttnwfvvb
--

ALTER SEQUENCE public.problem_id_seq OWNED BY public.problem.id;


--
-- Name: problem_set; Type: TABLE; Schema: public; Owner: ttnwfvvb
--

CREATE TABLE public.problem_set (
    set_id integer,
    problem_id integer
);


ALTER TABLE public.problem_set OWNER TO ttnwfvvb;

--
-- Name: set; Type: TABLE; Schema: public; Owner: ttnwfvvb
--

CREATE TABLE public.set (
    id integer NOT NULL,
    name character varying(150),
    type character varying(50)
);


ALTER TABLE public.set OWNER TO ttnwfvvb;

--
-- Name: set_id_seq; Type: SEQUENCE; Schema: public; Owner: ttnwfvvb
--

CREATE SEQUENCE public.set_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.set_id_seq OWNER TO ttnwfvvb;

--
-- Name: set_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ttnwfvvb
--

ALTER SEQUENCE public.set_id_seq OWNED BY public.set.id;


--
-- Name: sols; Type: TABLE; Schema: public; Owner: ttnwfvvb
--

CREATE TABLE public.sols (
    user_id integer,
    problem_id integer
);


ALTER TABLE public.sols OWNER TO ttnwfvvb;

--
-- Name: team; Type: TABLE; Schema: public; Owner: ttnwfvvb
--

CREATE TABLE public.team (
    id integer NOT NULL,
    name character varying(150),
    "problemsNum" integer,
    index integer,
    updated date,
    "solvedToday" boolean,
    "setId" integer
);


ALTER TABLE public.team OWNER TO ttnwfvvb;

--
-- Name: team_id_seq; Type: SEQUENCE; Schema: public; Owner: ttnwfvvb
--

CREATE SEQUENCE public.team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_id_seq OWNER TO ttnwfvvb;

--
-- Name: team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ttnwfvvb
--

ALTER SEQUENCE public.team_id_seq OWNED BY public.team.id;


--
-- Name: user; Type: TABLE; Schema: public; Owner: ttnwfvvb
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    email character varying(150),
    handle character varying(30),
    password character varying(150),
    name character varying(150),
    "teamId" integer,
    "darkMode" boolean
);


ALTER TABLE public."user" OWNER TO ttnwfvvb;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: ttnwfvvb
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO ttnwfvvb;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ttnwfvvb
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- Name: problem id; Type: DEFAULT; Schema: public; Owner: ttnwfvvb
--

ALTER TABLE ONLY public.problem ALTER COLUMN id SET DEFAULT nextval('public.problem_id_seq'::regclass);


--
-- Name: set id; Type: DEFAULT; Schema: public; Owner: ttnwfvvb
--

ALTER TABLE ONLY public.set ALTER COLUMN id SET DEFAULT nextval('public.set_id_seq'::regclass);


--
-- Name: team id; Type: DEFAULT; Schema: public; Owner: ttnwfvvb
--

ALTER TABLE ONLY public.team ALTER COLUMN id SET DEFAULT nextval('public.team_id_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: public; Owner: ttnwfvvb
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- Data for Name: due; Type: TABLE DATA; Schema: public; Owner: ttnwfvvb
--

COPY public.due (user_id, problem_id) FROM stdin;
2	49
2	50
2	51
3	50
3	51
2	52
2	53
2	54
\.


--
-- Data for Name: problem; Type: TABLE DATA; Schema: public; Owner: ttnwfvvb
--

COPY public.problem (id, rating, "solveCount", name, code, judge) FROM stdin;
1	800	241789	Watermelon	4/A	Codeforces
2	800	176964	Way Too Long Words	71/A	Codeforces
3	1000	149022	Theatre Square	1/A	Codeforces
4	800	141940	Team	231/A	Codeforces
5	800	123286	Next Round	158/A	Codeforces
6	800	114588	Domino piling	50/A	Codeforces
7	800	111142	Bit++	282/A	Codeforces
8	800	109761	Beautiful Matrix	263/A	Codeforces
9	800	108624	Petya and Strings	112/A	Codeforces
10	1000	107540	String Task	118/A	Codeforces
11	800	101517	Helpful Maths	339/A	Codeforces
12	800	98018	Word Capitalization	281/A	Codeforces
13	800	92773	Stones on the Table	266/A	Codeforces
14	800	91424	Boy or Girl	236/A	Codeforces
15	900	83645	Football	96/A	Codeforces
16	1000	83238	Young Physicist	69/A	Codeforces
17	800	80927	Soldier and Bananas	546/A	Codeforces
18	800	80707	Bear and Big Brother	791/A	Codeforces
19	800	76086	Wrong Subtraction	977/A	Codeforces
20	800	75770	Elephant	617/A	Codeforces
21	800	75008	Word	59/A	Codeforces
22	800	72352	Tram	116/A	Codeforces
23	1000	71521	Chat room	58/A	Codeforces
24	800	71019	Queue at the School	266/B	Codeforces
25	800	69191	Nearly Lucky Number	110/A	Codeforces
26	1000	68963	Lucky Division	122/A	Codeforces
27	800	67497	Translation	41/A	Codeforces
28	800	66725	Anton and Danik	734/A	Codeforces
29	900	66191	Twins	160/A	Codeforces
30	800	65163	Beautiful Year	271/A	Codeforces
31	800	62914	Vanya and Fence	677/A	Codeforces
32	800	60557	George and Accommodation	467/A	Codeforces
33	900	60381	HQ9+	133/A	Codeforces
34	800	59624	Presents	136/A	Codeforces
35	800	58316	Magnets	344/A	Codeforces
36	800	56932	In Search of an Easy Problem	1030/A	Codeforces
37	900	56613	Even Odds	318/A	Codeforces
38	800	55125	Calculating Function	486/A	Codeforces
39	800	54889	Ultra-Fast Mathematician	61/A	Codeforces
40	800	54616	Hulk	705/A	Codeforces
41	1100	54520	Taxi	158/B	Codeforces
42	800	54404	Drinks	200/B	Codeforces
43	900	53766	Kefa and First Steps	580/A	Codeforces
44	1000	51888	Expression	479/A	Codeforces
45	1000	51593	cAPS lOCK	131/A	Codeforces
46	900	51284	Gravity Flip	405/A	Codeforces
47	800	50908	Is your horseshoe on the other hoof?	228/A	Codeforces
48	800	50193	I Wanna Be the Guy	469/A	Codeforces
49	800	49802	Insomnia cure	148/A	Codeforces
50	900	49775	Dubstep	208/A	Codeforces
51	800	48801	Arrival of the General	144/A	Codeforces
52	900	48489	Puzzles	337/A	Codeforces
53	800	46911	Divisibility Problem	1328/A	Codeforces
54	800	46769	Anton and Letters	443/A	Codeforces
55	1300	46197	IQ test	25/A	Codeforces
56	800	45854	Games	268/A	Codeforces
57	800	45319	Pangram	520/A	Codeforces
58	800	43731	Hit the Lottery	996/A	Codeforces
59	800	43590	Amusing Joke	141/A	Codeforces
60	800	43471	Anton and Polyhedrons	785/A	Codeforces
61	1200	42606	Vanya and Lanterns	492/B	Codeforces
62	800	42587	Candies and Two Sisters	1335/A	Codeforces
63	1000	41620	Dragons	230/A	Codeforces
64	1000	41299	Xenia and Ringroad	339/B	Codeforces
65	1300	41086	Registration System	4/C	Codeforces
66	900	40325	Game With Sticks	451/A	Codeforces
67	1300	39466	T-primes	230/B	Codeforces
68	800	39432	Fox And Snake	510/A	Codeforces
69	800	38398	New Year and Hurry	750/A	Codeforces
70	800	38146	I_love_\\%username\\%	155/A	Codeforces
71	1300	37986	Cut Ribbon	189/A	Codeforces
72	800	37700	Vasya the Hipster	581/A	Codeforces
73	800	37158	Remove Smallest	1399/A	Codeforces
74	800	36853	Yet Another Two Integers Problem	1409/A	Codeforces
75	800	36547	Sum of Round Numbers	1352/A	Codeforces
76	800	36456	Buy a Shovel	732/A	Codeforces
77	800	36375	Police Recruits	427/A	Codeforces
78	800	36152	Restoring Three Numbers	1154/A	Codeforces
79	800	35864	Design Tutorial: Learn from Math	472/A	Codeforces
80	800	35028	Short Substrings	1367/A	Codeforces
81	1500	34893	Boredom	455/A	Codeforces
82	1200	34434	Cheap Travel	466/A	Codeforces
83	800	34356	Balanced Array	1343/B	Codeforces
84	800	33833	The New Year: Meeting Friends	723/A	Codeforces
85	800	33659	Choosing Teams	432/A	Codeforces
86	800	32719	Holiday Of Equality	758/A	Codeforces
87	800	32407	Team Olympiad	490/A	Codeforces
88	900	32271	Ilya and Bank Account	313/A	Codeforces
89	1000	32204	New Year Transportation	500/A	Codeforces
90	800	32132	Two Arrays And Swaps	1353/B	Codeforces
91	900	32026	Candies	1343/A	Codeforces
92	800	31726	Required Remainder	1374/A	Codeforces
93	800	31534	Even Array	1367/B	Codeforces
94	800	31353	Gifts Fixing	1399/B	Codeforces
95	800	31252	Minimal Square	1360/A	Codeforces
96	800	31044	Honest Coach	1360/B	Codeforces
97	800	31033	Mishka and Game	703/A	Codeforces
98	800	30861	Do Not Be Distracted!	1520/A	Codeforces
99	1100	30860	Interesting drink	706/B	Codeforces
100	900	30812	Vasya and Socks	460/A	Codeforces
101	1400	30624	Given Length and Sum of Digits...	489/C	Codeforces
102	1000	30455	Raising Bacteria	579/A	Codeforces
103	1000	30436	New Year Candles	379/A	Codeforces
104	800	29977	Boring Apartments	1433/A	Codeforces
105	800	29819	Phoenix and Balance	1348/A	Codeforces
106	800	29771	Maximum GCD	1370/A	Codeforces
107	800	29659	Bachgold Problem	749/A	Codeforces
108	1200	29567	BerSU Ball	489/B	Codeforces
109	800	29558	Spy Detected!	1512/A	Codeforces
110	900	29530	Odd Divisor	1475/A	Codeforces
111	800	29398	Magical Sticks	1371/A	Codeforces
112	1400	29283	Two Buttons	520/B	Codeforces
113	800	29146	Soft Drinking	151/A	Codeforces
114	800	28850	Most Unstable Array	1353/A	Codeforces
115	900	28825	Multiply by 2, divide by 6	1374/B	Codeforces
116	800	28708	Black Square	431/A	Codeforces
117	800	28680	Restore the Permutation by Merger	1385/B	Codeforces
118	1100	28656	Fancy Fence	270/A	Codeforces
119	800	28600	Fair Division	1472/B	Codeforces
120	800	28564	Cards for Friends	1472/A	Codeforces
121	800	28430	Sereja and Dima	381/A	Codeforces
122	900	28205	New Year's Number	1475/B	Codeforces
123	800	28146	Add Odd or Subtract Even	1311/A	Codeforces
124	800	27961	Special Permutation	1454/A	Codeforces
125	800	27921	Brain's Photos	707/A	Codeforces
126	800	27747	Collecting Coins	1294/A	Codeforces
127	1100	27630	Fence	363/B	Codeforces
128	800	27492	Maximum in Table	509/A	Codeforces
129	800	27466	Park Lighting	1358/A	Codeforces
130	800	27387	Polycarp and Coins	1551/A	Codeforces
131	900	27376	Construct the String	1335/B	Codeforces
132	800	27173	Dislike of Threes	1560/A	Codeforces
133	800	27165	Three Pairwise Maximums	1385/A	Codeforces
134	1000	27156	Move Brackets	1374/C	Codeforces
135	800	27086	Again Twenty Five!	630/A	Codeforces
136	1200	26985	Flipping Game	327/A	Codeforces
137	800	26945	FashionabLee	1369/A	Codeforces
138	1000	26883	Olesya and Rodion	584/A	Codeforces
139	800	26820	Vanya and Cubes	492/A	Codeforces
140	800	26784	Ordinary Numbers	1520/B	Codeforces
141	800	26674	Minutes Before the New Year	1283/A	Codeforces
142	800	26632	Array with Odd Sum	1296/A	Codeforces
143	1100	26543	A and B and Compilation Errors	519/B	Codeforces
144	800	26529	Favorite Sequence	1462/A	Codeforces
145	800	26513	Fafa and his Company	935/A	Codeforces
146	800	26478	Fair Playoff	1535/A	Codeforces
147	1100	26460	Laptops	456/A	Codeforces
148	800	26455	Gennady and a Card Game	1097/A	Codeforces
149	800	26441	Floor Number	1426/A	Codeforces
150	1200	26370	K-th Not Divisible by n	1352/C	Codeforces
151	800	26244	CopyCopyCopyCopyCopy	1325/B	Codeforces
152	800	26202	Borze	32/B	Codeforces
153	1000	25991	Road To Zero	1342/A	Codeforces
154	800	25978	Mahmoud and Ehab and the even-odd game	959/A	Codeforces
155	1200	25914	Worms	474/B	Codeforces
156	800	25912	EhAb AnD gCd	1325/A	Codeforces
157	800	25899	Die Roll	9/A	Codeforces
158	800	25852	Omkar and Completion	1372/A	Codeforces
159	1100	25849	Ilya and Queries	313/B	Codeforces
160	800	25760	Night at the Museum	731/A	Codeforces
161	1000	25710	Football	43/A	Codeforces
162	1000	25584	Multiplication Table	577/A	Codeforces
163	800	25548	Ichihime and Triangle	1337/A	Codeforces
164	1300	25530	Sort the Array	451/B	Codeforces
165	1200	25446	Alternating Subsequence	1343/C	Codeforces
166	800	25421	LCM Problem	1389/A	Codeforces
167	800	25272	Vus the Cossack and a Contest	1186/A	Codeforces
168	1100	25246	Sereja and Suffixes	368/B	Codeforces
169	1000	25229	Dreamoon and Stairs	476/A	Codeforces
170	1000	25225	Board Moves	1353/C	Codeforces
171	900	25118	Kana and Dragon Quest game	1337/B	Codeforces
172	900	25103	Sale	34/B	Codeforces
173	900	25083	Case of the Zeros and Ones	556/A	Codeforces
174	900	25077	Keyboard	474/A	Codeforces
175	800	24975	Stone Game	1538/A	Codeforces
176	1300	24911	Pashmak and Flowers	459/B	Codeforces
177	800	24771	Replacing Elements	1473/A	Codeforces
178	1100	24630	Two Teams Composing	1335/C	Codeforces
179	1400	24615	Books	279/B	Codeforces
180	1100	24451	Sum of Odd Integers	1327/A	Codeforces
181	800	24431	Panoramix's Prediction	80/A	Codeforces
182	800	24421	Odd Set	1542/A	Codeforces
183	800	24247	Combination Lock	540/A	Codeforces
184	1100	24229	Fedor and New Game	467/B	Codeforces
185	1500	24204	Two Substrings	550/A	Codeforces
186	1000	24162	Lecture	499/B	Codeforces
187	1700	24030	Number of Ways	466/C	Codeforces
188	800	23971	C+=	1368/A	Codeforces
189	900	23816	Filling Diamonds	1339/A	Codeforces
190	800	23708	Dense Array	1490/A	Codeforces
191	800	23679	Strange Table	1506/A	Codeforces
192	800	23677	Maximum Increase	702/A	Codeforces
193	900	23668	Business trip	149/A	Codeforces
194	800	23619	Friends and Candies	1538/B	Codeforces
195	1300	23563	Random Teams	478/B	Codeforces
196	800	23527	Bus to Udayland	711/A	Codeforces
197	1500	23503	Kefa and Park	580/C	Codeforces
198	800	23487	Arithmetic Array	1537/A	Codeforces
199	800	23466	Eshag Loves Big Arrays	1529/A	Codeforces
200	800	23424	Perfect Permutation	233/A	Codeforces
201	1100	23351	Double Cola	82/A	Codeforces
202	800	23331	Juggling Letters	1397/A	Codeforces
203	1000	23257	Arpa’s hard exam and Mehrdad’s naive cheat	742/A	Codeforces
204	800	23181	Yet Another Bookshelf	1433/B	Codeforces
205	1200	23159	Odd Selection	1363/A	Codeforces
206	1100	23066	Similar Pairs	1360/C	Codeforces
207	800	23027	Who's Opposite?	1560/B	Codeforces
208	800	22934	File Name	978/B	Codeforces
209	800	22897	Common Subsequence	1382/A	Codeforces
210	800	22836	String Similarity	1400/A	Codeforces
211	800	22719	Bad Triangle	1398/A	Codeforces
212	800	22667	And Then There Were K	1527/A	Codeforces
213	900	22606	Nastya and Rice	1341/A	Codeforces
214	800	22394	Unique Bid Auction	1454/B	Codeforces
215	800	22375	Shortest Path with Obstacle	1547/A	Codeforces
216	1000	22368	The number of positions	124/A	Codeforces
217	900	22363	01 Game	1373/B	Codeforces
218	800	22329	Pretty Permutations	1541/A	Codeforces
219	800	22293	Mezo Playing Zoma	1285/A	Codeforces
220	800	22275	Three Piles of Candies	1196/A	Codeforces
221	800	22233	Equalize Prices Again	1234/A	Codeforces
222	1200	22117	Same Parity Summands	1352/B	Codeforces
223	900	22062	Party	115/A	Codeforces
224	800	22061	Anton and Digits	734/B	Codeforces
225	800	22045	Red and Blue Beans	1519/A	Codeforces
226	1200	22031	Ternary XOR	1328/C	Codeforces
227	800	22031	Epic Game	119/A	Codeforces
228	1000	21911	Berland Poker	1359/A	Codeforces
229	900	21814	Food Buying	1296/B	Codeforces
230	800	21791	Patrick and Shopping	599/A	Codeforces
231	800	21778	Captain Flint and Crew Recruitment	1388/A	Codeforces
232	800	21759	QAQ	894/A	Codeforces
233	800	21666	Wonderful Coloring - 1	1551/B1	Codeforces
234	800	21647	I'm bored with life	822/A	Codeforces
235	900	21631	Distance and Axis	1401/A	Codeforces
236	1000	21617	Nastia and Nearly Good Numbers	1521/A	Codeforces
237	1200	21554	Pashmak and Garden	459/A	Codeforces
238	800	21547	Free Ice Cream	686/A	Codeforces
239	1100	21533	Minimum Product	1409/B	Codeforces
240	800	21495	Suborrays	1391/A	Codeforces
241	1000	21487	Bad Ugly Numbers	1326/A	Codeforces
242	800	21409	Gregor and Cryptography	1549/A	Codeforces
243	800	21400	Strange Functions	1455/A	Codeforces
244	900	21384	Two-gram	977/B	Codeforces
245	800	21310	Nezzar and Colorful Balls	1478/A	Codeforces
246	1000	21273	Buttons	268/B	Codeforces
247	800	21231	The Cake Is a Lie	1519/B	Codeforces
248	800	21228	Cards	1220/A	Codeforces
249	800	21215	Last Year's Substring	1462/B	Codeforces
250	1100	21212	Shovels and Swords	1366/A	Codeforces
251	800	21180	Find The Array	1550/A	Codeforces
252	800	21173	Puzzle Pieces	1345/A	Codeforces
253	1000	21127	New Theatre Square	1359/B	Codeforces
254	900	21126	Unique Number	1462/C	Codeforces
255	800	21046	Space Navigation 	1481/A	Codeforces
256	800	21035	Ezzat and Two Subsequences	1557/A	Codeforces
257	800	21005	Review Site	1511/A	Codeforces
258	900	20875	Orac and Factors	1350/A	Codeforces
259	800	20871	Two Regular Polygons	1312/A	Codeforces
260	1300	20850	K-th Beautiful String	1328/B	Codeforces
261	800	20825	Frog Jumping	1077/A	Codeforces
262	1000	20802	Not Adjacent Matrix	1520/C	Codeforces
263	800	20785	Yet Another String Game	1480/A	Codeforces
264	800	20775	Arena	1487/A	Codeforces
265	800	20765	Substring Removal Game	1398/B	Codeforces
266	900	20709	Yet Another Tetris Problem	1324/A	Codeforces
267	1000	20644	Maria Breaks the Self-isolation	1358/B	Codeforces
268	800	20633	Average Height	1509/A	Codeforces
269	800	20613	Erasing Zeroes	1303/A	Codeforces
270	800	20606	Almost Rectangle	1512/B	Codeforces
271	1000	20501	K-divisible Sum	1476/A	Codeforces
272	1300	20457	Anti-Sudoku	1335/D	Codeforces
273	1200	20440	Same Differences	1520/D	Codeforces
274	1000	20409	Payment Without Change	1256/A	Codeforces
275	800	20381	Potion-making	1525/A	Codeforces
276	1300	20369	Buying Shovels	1360/D	Codeforces
277	900	20358	Array Reodering	1535/B	Codeforces
278	800	20349	System of Equations	214/A	Codeforces
279	800	20341	Two Rabbits	1304/A	Codeforces
280	1100	20335	Yet Another Palindrome Problem	1324/B	Codeforces
281	900	20305	Dominant Piranha	1433/C	Codeforces
282	800	20289	Cherry	1554/A	Codeforces
283	1000	20278	Little Artem	1333/A	Codeforces
284	1200	20272	Boats Competition	1399/C	Codeforces
285	1000	20174	String LCM	1473/B	Codeforces
286	800	20087	Digits Sum	1553/A	Codeforces
287	900	20057	Magic Numbers	320/A	Codeforces
288	1300	20016	Product of Three Numbers	1294/C	Codeforces
289	800	20004	Sum of 2050	1517/A	Codeforces
290	800	19972	Domino Disaster	1567/A	Codeforces
291	800	19971	Alphabetical Strings	1547/B	Codeforces
292	1100	19937	Middle Class	1334/B	Codeforces
293	900	19908	Lineland Mail	567/A	Codeforces
294	800	19877	Fix You	1391/B	Codeforces
295	1100	19870	Initial Bet	478/A	Codeforces
296	1100	19807	Matrix Game	1365/A	Codeforces
297	800	19777	Bovine Dilemma	1466/A	Codeforces
298	1200	19759	Make It Good	1385/C	Codeforces
299	1100	19757	Card Constructions	1345/B	Codeforces
300	800	19739	Subtract or Divide	1451/A	Codeforces
301	1100	19670	Binary Period	1342/B	Codeforces
302	800	19649	Puzzle From the Future	1474/A	Codeforces
303	1100	19638	Long Jumps	1472/C	Codeforces
304	1100	19620	Frog Jumps	1324/C	Codeforces
305	800	19613	Rewards	448/A	Codeforces
306	800	19580	Mean Inequality	1526/A	Codeforces
307	1200	19559	Ternary String	1354/B	Codeforces
308	900	19557	Alarm Clock	1354/A	Codeforces
309	1400	19553	Exams	479/C	Codeforces
310	800	19544	Infinity Table	1560/C	Codeforces
311	800	19489	The Miracle and the Sleeper	1562/A	Codeforces
312	800	19451	Perfectly Imperfect Array	1514/A	Codeforces
313	900	19442	Wizard of Orz	1467/A	Codeforces
314	900	19435	Maximums	1326/B	Codeforces
315	1100	19435	Cinema Line	349/A	Codeforces
316	1300	19432	Dreamoon and WiFi	476/B	Codeforces
317	800	19430	Colorful Stones (Simplified Edition)	265/A	Codeforces
318	1200	19392	Kuriyama Mirai's Stones	433/B	Codeforces
319	1100	19387	Sequential Nim	1382/B	Codeforces
320	800	19375	Polycarp's Pockets	1003/A	Codeforces
321	1000	19370	Lovely Palindromes	688/B	Codeforces
322	1200	19337	Sorted Adjacent Differences	1339/B	Codeforces
323	800	19307	Repeating Cipher	1095/A	Codeforces
324	1200	19301	Sequence with Digits	1355/A	Codeforces
325	800	19275	Nearest Interesting Number	1183/A	Codeforces
326	900	19264	Bad Boy	1537/B	Codeforces
327	1000	19222	Regular Bracket Sequence	1469/A	Codeforces
328	800	19221	Reorder	1436/A	Codeforces
329	1100	19217	Sum of Cubes	1490/C	Codeforces
330	1000	19213	Donut Shops	1373/A	Codeforces
331	900	19172	Make Product Equal One	1206/B	Codeforces
332	800	19164	Permutation Forgery	1405/A	Codeforces
333	800	19156	Tit for Tat	1516/A	Codeforces
334	1000	19148	Balanced Remainders	1490/B	Codeforces
335	1200	19129	Level Statistics	1334/A	Codeforces
336	1000	19126	Captain Flint and a Long Voyage	1388/B	Codeforces
337	1000	19117	Cormen --- The Best Friend Of a Man	732/B	Codeforces
338	1000	19084	Mahmoud and a Triangle	766/B	Codeforces
339	1300	19082	Trouble Sort	1365/B	Codeforces
340	900	19058	Devu, the Singer and Churu, the Joker	439/A	Codeforces
341	900	19028	Shifting Stacks	1486/A	Codeforces
342	1200	19024	AccurateLee	1369/B	Codeforces
343	800	18995	Meximization	1497/A	Codeforces
344	800	18978	Cakeminator	330/A	Codeforces
345	800	18948	Last minute enhancements	1466/B	Codeforces
346	800	18937	Teams Forming	1092/B	Codeforces
347	1100	18923	GCD Compression	1370/B	Codeforces
348	1200	18923	Chewbaсca and Number	514/A	Codeforces
349	1200	18921	Young Explorers	1355/B	Codeforces
350	1300	18872	Omkar and Last Class of Math	1372/B	Codeforces
351	800	18857	Greg's Workout	255/A	Codeforces
352	900	18845	Chips Moving	1213/A	Codeforces
353	800	18832	Three swimmers	1492/A	Codeforces
354	800	18789	Robot Program	1452/A	Codeforces
355	900	18784	Duff and Meat	588/A	Codeforces
356	900	18781	Strange Partition	1471/A	Codeforces
357	1100	18767	Perfect Number	919/B	Codeforces
358	1000	18733	Boboniu Likes to Color Balls	1395/A	Codeforces
359	800	18727	Choose Two Numbers	1206/A	Codeforces
360	800	18718	Cancel the Trains	1453/A	Codeforces
361	1200	18695	XXXXX	1364/A	Codeforces
362	800	18670	Rainbow Dash, Fluttershy and Chess Coloring	1393/A	Codeforces
363	800	18654	Alex and a Rhombus	1180/A	Codeforces
364	1000	18628	Johnny and Ancient Computer	1362/A	Codeforces
365	800	18605	Yet Another Dividing into Teams	1249/A	Codeforces
366	800	18550	CME	1223/A	Codeforces
367	1500	18522	Divisibility by Eight	550/C	Codeforces
368	800	18517	There Are Two Types Of Burgers	1207/A	Codeforces
369	800	18457	XORwice	1421/A	Codeforces
370	1000	18430	Present from Lena	118/B	Codeforces
371	800	18428	Heist	1041/A	Codeforces
372	800	18367	Subsequence Permutation	1552/A	Codeforces
373	900	18351	PizzaForces	1555/A	Codeforces
374	1400	18304	Phoenix and Beauty	1348/B	Codeforces
375	1000	18304	Jzzhu and Children	450/A	Codeforces
376	800	18296	Non-zero	1300/A	Codeforces
377	900	18293	Exciting Bets	1543/A	Codeforces
378	900	18286	Cubes Sorting	1420/A	Codeforces
379	800	18275	Domino on Windowsill	1499/A	Codeforces
380	1400	18268	Vacations	698/A	Codeforces
381	1000	18260	Game 23	1141/A	Codeforces
382	1200	18260	Less or Equal	977/C	Codeforces
383	1000	18240	Bogosort	1312/B	Codeforces
384	1100	18238	Kind Anton	1333/B	Codeforces
385	900	18230	Display The Number	1295/A	Codeforces
386	1000	18159	Filling Shapes	1182/A	Codeforces
387	900	18154	Lunch Rush	276/A	Codeforces
388	9999	18151	Balanced Substring	1569/A	Codeforces
389	1000	18143	Free Cash	237/A	Codeforces
390	800	18108	Distinct Digits	1228/A	Codeforces
391	1000	18099	Red and Blue	1469/B	Codeforces
392	1000	18071	Different Divisors	1474/B	Codeforces
393	800	18067	Crazy Computer	716/A	Codeforces
394	800	18061	Two distinct points	1108/A	Codeforces
395	1300	18036	Polygon	1360/E	Codeforces
396	900	17993	Permutation Sort	1525/B	Codeforces
397	1200	17940	DZY Loves Chessboard	445/A	Codeforces
398	1000	17935	Mahmoud and Longest Uncommon Subsequence	766/A	Codeforces
399	1100	17917	Ternary Sequence	1401/B	Codeforces
400	800	17888	Dawid and Bags of Candies	1230/A	Codeforces
401	1100	17882	Bad Prices	1213/B	Codeforces
402	1100	17850	Joysticks	651/A	Codeforces
403	800	17844	Fence	1422/A	Codeforces
404	900	17798	Subset Mex	1406/A	Codeforces
405	1300	17732	Social Distance	1367/C	Codeforces
406	800	17718	Two Rival Students	1257/A	Codeforces
407	1200	17687	Yet Another Array Restoration	1409/C	Codeforces
408	800	17676	GCD Sum	1498/A	Codeforces
409	1400	17632	Drazil and Factorial	515/C	Codeforces
410	1500	17616	Woodcutters	545/C	Codeforces
411	900	17583	Prime Subtraction	1238/A	Codeforces
412	1300	17543	Alice, Bob and Candies	1352/D	Codeforces
413	1000	17492	Maximum Cost Deletion	1550/B	Codeforces
414	800	17471	Tanya and Stairways	1005/A	Codeforces
415	800	17470	Omkar and Password	1392/A	Codeforces
416	800	17434	 Déjà Vu	1504/A	Codeforces
417	800	17427	Gregor and the Pawn Game	1549/B	Codeforces
418	800	17423	Phoenix and Gold	1515/A	Codeforces
419	800	17394	Love Song	1539/B	Codeforces
420	800	17351	Omkar and Bad Story	1536/A	Codeforces
421	1100	17327	Exercising Walk	1332/A	Codeforces
422	1200	17325	Even-Odd Game	1472/D	Codeforces
423	900	17310	Candies Division	1283/B	Codeforces
424	1100	17301	Dungeon	1463/A	Codeforces
425	800	17300	In-game Chat	1411/A	Codeforces
426	800	17298	Adjacent Replacements	1006/A	Codeforces
427	800	17271	Divide it!	1176/A	Codeforces
428	800	17251	Diverse Team	988/A	Codeforces
429	1400	17219	Amr and Pins	507/B	Codeforces
430	1300	17215	Mere Array	1401/C	Codeforces
431	800	17169	Remove Duplicates	978/A	Codeforces
432	800	17167	Integer Sequence Dividing	1102/A	Codeforces
433	1300	17152	Jzzhu and Sequences	450/B	Codeforces
434	1300	17146	Little Girl and Game	276/B	Codeforces
435	1000	17129	Double-ended Strings	1506/C	Codeforces
436	1200	17127	Collecting Packages	1294/B	Codeforces
437	900	17065	Mocha and Math	1559/A	Codeforces
438	900	17064	Customising the Track	1543/B	Codeforces
439	800	17043	Buy the String	1440/A	Codeforces
440	900	17043	Juicer	709/A	Codeforces
441	1100	17037	Caisa and Pylons	463/B	Codeforces
442	1300	17001	Queue	545/D	Codeforces
443	800	16980	Specific Tastes of Andre 	1438/A	Codeforces
444	800	16968	Binary Decimal	1530/A	Codeforces
445	900	16934	Symmetric Matrix	1426/B	Codeforces
446	800	16915	Playing with Dice	378/A	Codeforces
447	800	16909	Three Strings	1301/A	Codeforces
448	1500	16904	Powered Addition	1338/A	Codeforces
449	800	16898	Prison Break	1482/A	Codeforces
450	1000	16879	Array Cancellation	1405/B	Codeforces
451	900	16844	Three Indices	1380/A	Codeforces
452	800	16809	Array and Peaks	1513/A	Codeforces
453	1600	16792	k-Tree	431/C	Codeforces
454	1000	16771	JOE is on TV!	1293/B	Codeforces
455	1200	16755	Magical Calendar	1371/B	Codeforces
456	1000	16754	Sage's Birthday (easy version)	1419/D1	Codeforces
457	800	16752	Key races	835/A	Codeforces
458	800	16735	Angry Students	1287/A	Codeforces
459	1400	16714	Number Game	1370/C	Codeforces
460	800	16707	Game	513/A	Codeforces
461	1100	16704	Ahahahahahahahaha	1407/A	Codeforces
462	1000	16677	Phoenix and Puzzle	1515/B	Codeforces
463	1400	16669	Subsequence Hate	1363/B	Codeforces
464	1100	16650	Divisors of Two Integers	1108/B	Codeforces
465	900	16637	Number of Apartments	1430/A	Codeforces
466	800	16631	Mishka and Contest	999/A	Codeforces
467	1900	16609	Dijkstra?	20/C	Codeforces
468	900	16572	Tricky Sum	598/A	Codeforces
469	800	16527	String Generation	1461/A	Codeforces
470	800	16525	Anti-knapsack	1493/A	Codeforces
471	800	16518	Love Triangle	939/A	Codeforces
472	1000	16495	Buying Torches	1418/A	Codeforces
473	1400	16493	Pair of Topics	1324/D	Codeforces
474	800	16488	Got Any Grapes?	1114/A	Codeforces
475	800	16482	Omkar and Infinity Clock	1392/B	Codeforces
476	1400	16481	Rotation Matching	1365/C	Codeforces
477	800	16478	Even Subset Sum Problem	1323/A	Codeforces
478	900	16478	Lights Out	275/A	Codeforces
479	800	16472	Points in Segments	1015/A	Codeforces
480	900	16453	Dreamoon and Ranking Collection	1330/A	Codeforces
481	800	16425	Reconnaissance 2	34/A	Codeforces
482	800	16398	New Year and Naming	1284/A	Codeforces
483	1100	16381	Moamen and k-subarrays	1557/B	Codeforces
484	900	16341	Oath of the Night's Watch	768/A	Codeforces
485	1000	16312	Towers	37/A	Codeforces
486	900	16311	Decoding	746/B	Codeforces
487	800	16309	Barrels	1430/B	Codeforces
488	1300	16308	Anton and currency you all know	508/B	Codeforces
489	800	16307	Grade Allocation	1316/A	Codeforces
490	1200	16292	Yet Another Broken Keyboard	1272/C	Codeforces
491	900	16285	Digit Game	1419/A	Codeforces
492	1000	16283	Jeff and Digits	352/A	Codeforces
493	900	16281	Prime Square	1436/B	Codeforces
494	800	16278	Hotelier	1200/A	Codeforces
495	1300	16274	A Cookie for You	1371/C	Codeforces
496	1700	16270	Flowers	474/D	Codeforces
497	800	16258	Sasha and Sticks	832/A	Codeforces
498	1100	16240	Sifid and Strange Subsequences	1529/B	Codeforces
499	900	16240	ABC String	1494/A	Codeforces
500	900	16227	Maximal Continuous Rest	1141/B	Codeforces
501	1200	16217	Maximum Product	1406/B	Codeforces
502	800	16216	Marketing Scheme	1437/A	Codeforces
503	800	16212	Copy-paste	1417/A	Codeforces
504	900	16211	Three Friends	1272/A	Codeforces
505	1200	16170	Sequence Transformation	1454/C	Codeforces
506	1300	16147	Number of Pairs	1538/C	Codeforces
507	1300	16144	Nastya and Door	1341/B	Codeforces
508	1000	16128	Bear and Finding Criminals	680/B	Codeforces
509	800	16024	Array Rearrangment	1445/A	Codeforces
510	1200	16004	Palindrome Game (easy version)	1527/B1	Codeforces
511	1100	15995	TMT Document	1509/B	Codeforces
512	800	15987	Coins	1061/A	Codeforces
513	1300	15981	Prefix Flip (Easy Version)	1381/A1	Codeforces
514	1100	15963	Sign Flipping	1375/A	Codeforces
515	800	15956	Water Buying	1118/A	Codeforces
516	800	15932	Pens and Pencils	1244/A	Codeforces
517	900	15927	Split it!	1496/A	Codeforces
518	1100	15926	Partial Replacement	1506/B	Codeforces
519	1200	15908	Pleasant Pairs	1541/B	Codeforces
520	800	15906	Two Brackets	1452/C	Codeforces
521	1000	15901	Letters	978/C	Codeforces
522	800	15864	K-th Largest Value	1491/A	Codeforces
523	900	15846	Modular Exponentiation	913/A	Codeforces
524	1400	15831	Zero Remainder Array	1374/D	Codeforces
525	900	15821	Mocha and Red and Blue	1559/B	Codeforces
526	1100	15819	New Colony	1481/B	Codeforces
527	900	15817	A and B and Chess	519/A	Codeforces
528	1200	15815	Challenging Cliffs	1537/C	Codeforces
529	1200	15814	Jumps	1455/B	Codeforces
530	1100	15813	GCD Length	1511/B	Codeforces
531	800	15807	Telephone Number	1167/A	Codeforces
532	900	15797	Non-Substring Subsequence	1451/B	Codeforces
533	800	15797	Love "A"	1146/A	Codeforces
534	1100	15788	Parallelepiped	224/A	Codeforces
535	800	15787	Make a triangle!	1064/A	Codeforces
536	1000	15784	Books Exchange (easy version)	1249/B1	Codeforces
537	800	15783	Cards	701/A	Codeforces
538	1100	15765	Pair Programming	1547/C	Codeforces
539	800	15751	Prefixes	1216/A	Codeforces
540	1000	15745	k-String	219/A	Codeforces
541	800	15734	Suffix Three	1281/A	Codeforces
542	1100	15719	Ping-pong	1455/C	Codeforces
543	1100	15688	Yet Another Card Deck	1511/C	Codeforces
544	1200	15687	Princesses and Princes	1327/B	Codeforces
545	1300	15678	A and B and Team Training	519/C	Codeforces
546	1300	15665	Queries about less or equal elements	600/B	Codeforces
547	900	15654	Contest	501/A	Codeforces
548	1500	15643	Kefa and Company	580/B	Codeforces
549	1200	15640	Building Permutation	285/C	Codeforces
550	900	15632	Even But Not Even	1291/A	Codeforces
551	1200	15628	Districts Connection	1433/D	Codeforces
552	1000	15603	Binary Removals	1499/B	Codeforces
553	800	15594	One-dimensional Japanese Crossword	721/A	Codeforces
554	800	15579	New Year and the Christmas Ornament	1091/A	Codeforces
555	1000	15545	Life Without Zeros	75/A	Codeforces
556	9999	15542	Is it rated?	1331/A	Codeforces
557	1100	15538	Strange List	1471/B	Codeforces
558	1100	15537	Tavas and SaDDas	535/B	Codeforces
559	1300	15506	Shuffle	1366/B	Codeforces
560	1500	15490	Winner	2/A	Codeforces
561	1600	15486	Spreadsheet	1/B	Codeforces
562	1000	15467	Assigning to Classes	1300/B	Codeforces
563	1400	15425	I Hate 1111	1526/B	Codeforces
564	1000	15423	Add and Divide	1485/A	Codeforces
565	800	15404	AquaMoon and Two Arrays	1546/A	Codeforces
566	800	15398	Avoid Trygub	1450/A	Codeforces
567	800	15390	Equation	1269/A	Codeforces
568	1200	15388	Rock and Lever	1420/B	Codeforces
569	900	15378	Hexadecimal's theorem	199/A	Codeforces
570	1200	15278	Petr and a Combination Lock	1097/B	Codeforces
571	1100	15275	Counterexample 	483/A	Codeforces
572	1200	15254	Before an Exam	4/B	Codeforces
573	800	15249	Compote	746/A	Codeforces
574	1000	15242	Social Network (easy version)	1234/B1	Codeforces
575	900	15240	Array Stabilization	1095/B	Codeforces
576	800	15216	Diverse Strings	1144/A	Codeforces
577	1300	15203	Just Eat It!	1285/B	Codeforces
578	800	15200	Between the Offices	867/A	Codeforces
579	1000	15194	Numbers on Whiteboard	1430/C	Codeforces
580	800	15186	Tokitsukaze and Enhancement	1191/A	Codeforces
581	900	15179	Wet Shark and Odd and Even	621/A	Codeforces
582	1100	15172	Little Elephant and Bits	258/A	Codeforces
583	1000	15121	Valera and X	404/A	Codeforces
584	1100	15109	Nezzar and Lucky Number	1478/B	Codeforces
585	1200	15076	Common Prefixes	1384/A	Codeforces
586	1200	15037	WeirdSort	1311/B	Codeforces
587	1100	15027	Effective Approach	227/B	Codeforces
588	1000	15025	Drazil and Date	515/A	Codeforces
589	1200	15019	Johnny and His Hobbies	1362/B	Codeforces
590	1000	15010	Supercentral Point	165/A	Codeforces
591	1000	15004	Petr and Book	139/A	Codeforces
592	1200	14998	k-LCM (easy version)	1497/C1	Codeforces
593	1300	14986	Pluses and Minuses	1373/C	Codeforces
594	1700	14981	Xenia and Bit Operations	339/D	Codeforces
595	1000	14977	DZY Loves Strings	447/B	Codeforces
596	1100	14975	Increase and Copy	1426/C	Codeforces
597	1300	14961	Strange Birthday Party	1470/A	Codeforces
598	1100	14931	Longest Palindrome	1304/B	Codeforces
599	900	14918	Almost Prime	26/A	Codeforces
600	1000	14916	Polycarp Training	1165/B	Codeforces
601	800	14898	Card Game	1270/A	Codeforces
602	1400	14874	Element Extermination	1375/C	Codeforces
603	1000	14861	BowWow and the Timetable	1204/A	Codeforces
604	800	14847	A Variety of Operations	1556/A	Codeforces
605	1300	14847	Most socially-distanced subsequence	1364/B	Codeforces
606	1000	14785	Magic Stick	1257/B	Codeforces
607	800	14782	Little C Loves 3 I	1047/A	Codeforces
608	1000	14775	Ania and Minimizing	1230/B	Codeforces
609	1400	14757	Fadi and LCM	1285/C	Codeforces
610	800	14748	Dice Rolling	1093/A	Codeforces
611	1400	14745	Orac and Models	1350/B	Codeforces
612	900	14741	Equalize Prices	1183/B	Codeforces
613	1400	14721	RationalLee	1369/C	Codeforces
614	1400	14712	Basketball Exercise	1195/C	Codeforces
615	800	14686	Find Divisible	1096/A	Codeforces
616	1100	14658	Deadline	1288/A	Codeforces
617	1200	14637	Omkar and Waterslide	1392/C	Codeforces
618	800	14637	Game	984/A	Codeforces
619	800	14632	The Rank	1017/A	Codeforces
620	1200	14622	Ice Skating	217/A	Codeforces
621	800	14619	Box is Pull	1428/A	Codeforces
622	800	14613	Kids Seating	1443/A	Codeforces
623	1400	14579	Han Solo and Lazer Gun	514/B	Codeforces
624	1500	14573	Little Girl and Maximum Sum	276/C	Codeforces
625	1200	14567	Neighbor Grid	1375/B	Codeforces
626	1000	14558	Badge	1020/B	Codeforces
627	800	14546	A+B (Trial Problem)	1351/A	Codeforces
628	800	14528	Red-Blue Shuffle	1459/A	Codeforces
629	1000	14514	Mike and palindrome	798/A	Codeforces
630	9999	14501	Median Maximization	1566/A	Codeforces
631	800	14485	Petya and Origami	1080/A	Codeforces
632	800	14475	Changing Volume	1255/A	Codeforces
633	1000	14468	Dima and Friends	272/A	Codeforces
634	1200	14406	Reverse Binary Strings	1437/B	Codeforces
635	900	14402	Mislove Has Lost an Array	1204/B	Codeforces
636	1000	14381	Valera and Antique Items	441/A	Codeforces
637	1000	14376	Contest Start	1539/A	Codeforces
638	1000	14371	Water Lily	1199/B	Codeforces
639	900	14369	Delete from the Left	1005/B	Codeforces
640	1600	14368	Maze	377/A	Codeforces
641	1100	14332	Boboniu Plays Chess	1395/B	Codeforces
642	800	14306	Even Substrings	1139/A	Codeforces
643	1200	14298	Perfect Team	1221/C	Codeforces
644	1200	14276	Book Reading	1213/C	Codeforces
645	1500	14242	Codeforces Subsequences	1368/B	Codeforces
646	1300	14227	Inflation	1476/B	Codeforces
647	1000	14224	Valerii Against Everyone	1438/B	Codeforces
648	1100	14221	Array	300/A	Codeforces
649	1400	14205	Mashmokh and ACM	414/B	Codeforces
650	1100	14189	Card Deck	1492/B	Codeforces
651	1100	14188	Yet Another Meme Problem	1288/B	Codeforces
652	1000	14188	Sport Mafia	1195/B	Codeforces
653	900	14156	Shooting	1216/B	Codeforces
654	800	14156	Nastya Is Reading a Book	1136/A	Codeforces
655	900	14127	Cookies	129/A	Codeforces
656	1300	14108	Nastia and a Good Array	1521/B	Codeforces
657	1300	14068	Number into Sequence	1454/D	Codeforces
658	1000	14056	MEXor Mixup	1567/B	Codeforces
659	1500	14049	Tetrahedron	166/E	Codeforces
660	1000	14038	Disturbed People	1077/B	Codeforces
661	1100	14015	ABBB	1428/C	Codeforces
662	1000	14009	Circle of Students	1203/A	Codeforces
663	1600	14003	Linova and Kingdom	1336/A	Codeforces
664	1000	13996	Broken Keyboard	1251/A	Codeforces
665	1100	13983	Alyona and Numbers	682/A	Codeforces
666	1600	13981	Good Subarrays	1398/C	Codeforces
667	1200	13976	AND 0, Sum Big	1514/B	Codeforces
668	1000	13956	Scenes From a Memory	1562/B	Codeforces
669	1400	13935	Team	401/C	Codeforces
670	1200	13914	Three Parts of the Array	1006/C	Codeforces
671	1300	13902	Equalize	1037/C	Codeforces
672	1400	13898	Ball in Berland	1475/C	Codeforces
673	1200	13896	Soldier and Badges	546/B	Codeforces
674	800	13886	Putting Plates	1530/B	Codeforces
675	800	13885	Stones	1236/A	Codeforces
676	1000	13849	Sum of Digits	102/B	Codeforces
677	900	13844	New Year Garland	1279/A	Codeforces
678	1000	13821	Candy Bags	334/A	Codeforces
679	900	13820	The Great Hero	1480/B	Codeforces
680	800	13819	Nauuo and Votes	1173/A	Codeforces
681	1300	13787	Common Divisors	1203/C	Codeforces
682	800	13786	Taymyr is calling you	764/A	Codeforces
683	900	13784	Sum of Medians	1440/B	Codeforces
684	900	13760	Sasha and His Trip	1113/A	Codeforces
685	800	13754	Remove a Progression	1194/A	Codeforces
686	1000	13731	Pasha and Stick	610/A	Codeforces
687	800	13717	Splitting into digits	1104/A	Codeforces
688	1100	13709	Max and Mex	1496/B	Codeforces
689	1000	13709	Single Push	1253/A	Codeforces
690	1200	13707	Corrupted Array	1512/D	Codeforces
691	1400	13706	Composite Coloring	1332/B	Codeforces
692	1000	13693	Grasshopper And the String	733/A	Codeforces
693	1200	13682	Permutation Transformation	1490/D	Codeforces
694	900	13673	From Hero to Zero	1175/A	Codeforces
695	800	13661	Shaass and Oskols	294/A	Codeforces
696	800	13656	PolandBall and Hypothesis	755/A	Codeforces
697	1300	13655	Two Round Dances	1433/E	Codeforces
698	900	13645	Avoiding Zero	1427/A	Codeforces
699	800	13645	Army	38/A	Codeforces
700	1600	13640	Celex Update	1358/C	Codeforces
701	1400	13599	Quasi Binary	538/B	Codeforces
702	1200	13577	M-arrays	1497/B	Codeforces
703	1300	13560	Canine poetry	1466/C	Codeforces
704	800	13559	Bulbs	615/A	Codeforces
705	800	13544	Cow and Haybales	1307/A	Codeforces
706	1200	13529	Stable Groups	1539/C	Codeforces
707	1400	13528	Game With Array	1355/D	Codeforces
708	1000	13527	2048 Game	1221/A	Codeforces
709	1400	13510	Create The Teams	1380/C	Codeforces
710	800	13509	Ehab and another construction problem	1088/A	Codeforces
711	900	13485	Little Elephant and Rozdil	205/A	Codeforces
712	800	13482	Cupboards	248/A	Codeforces
713	1100	13470	Vitya in the Countryside	719/A	Codeforces
714	1200	13470	Little Pony and Sort by Shift	454/B	Codeforces
715	800	13465	Simply Strange Sort	1561/A	Codeforces
716	1200	13454	A-B Palindrome	1512/C	Codeforces
717	800	13452	Maximum Square	1243/A	Codeforces
718	1400	13438	Johnny and Another Rating Drop	1362/C	Codeforces
719	800	13433	GukiZ and Contest	551/A	Codeforces
720	800	13428	Roma and Lucky Numbers	262/A	Codeforces
721	900	13425	Cover Points	1047/B	Codeforces
722	1100	13419	Merge it!	1176/B	Codeforces
723	1200	13418	Cat Cycle	1487/B	Codeforces
724	1500	13411	Decrease the Sum of Digits	1409/D	Codeforces
725	1500	13407	Good String	1389/C	Codeforces
726	1100	13382	Yaroslav and Permutations	296/A	Codeforces
727	1000	13377	Fake NP	805/A	Codeforces
728	1000	13377	Different is Good	672/B	Codeforces
729	900	13363	XORinacci	1208/A	Codeforces
730	800	13359	Eleven	918/A	Codeforces
731	1500	13350	Plus and Multiply	1542/B	Codeforces
732	900	13344	Parity Alternated Deletions	1144/B	Codeforces
733	1000	13338	Minimum Integer	1101/A	Codeforces
734	1200	13323	Stairs	1419/B	Codeforces
735	1500	13297	Omkar and Baseball	1372/C	Codeforces
736	800	13263	Supermarket	919/A	Codeforces
737	1000	13262	Fair Numbers	1411/B	Codeforces
738	1300	13255	Big Vova	1407/B	Codeforces
739	1500	13246	Binary String To Subsequences	1399/D	Codeforces
740	1200	13232	Prinzessin der Verurteilung	1536/B	Codeforces
741	1000	13226	Superhero Transformation	1111/A	Codeforces
742	1100	13222	Substrings Sort	988/B	Codeforces
743	1200	13210	Diamond Miner	1495/A	Codeforces
744	1300	13201	Social Network (hard version)	1234/B2	Codeforces
745	800	13189	Vanya and Cards	401/A	Codeforces
746	800	13182	Prison Break	1415/A	Codeforces
747	1000	13182	Ehab Fails to Be Thanos	1174/A	Codeforces
748	1300	13172	Rumor	893/C	Codeforces
749	1000	13156	Currency System in Geraldion	560/A	Codeforces
750	800	13151	Infinity Gauntlet	987/A	Codeforces
751	1000	13144	Shortest path of the king	3/A	Codeforces
752	800	13100	Finding Sasuke	1413/A	Codeforces
753	1100	13091	ConneR and the A.R.C. Markland-N	1293/A	Codeforces
754	800	13086	Vasya and Chocolate	1065/A	Codeforces
755	1100	13069	Sweet Problem	1263/A	Codeforces
756	800	13063	Uniform String	1092/A	Codeforces
757	800	13051	Suits	1271/A	Codeforces
758	1200	13051	Hungry Sequence	327/B	Codeforces
759	800	13041	Ropewalkers	1185/A	Codeforces
760	900	13040	Reversing Encryption	999/B	Codeforces
761	9999	13037	Chess Tournament	1569/B	Codeforces
762	9999	13026	MIN-MEX Cut	1566/B	Codeforces
763	1300	13017	Negative Prefixes	1418/B	Codeforces
764	800	13005	Coder	384/A	Codeforces
765	1500	13000	Binary String Reconstruction	1400/C	Codeforces
766	1000	12990	Appleman and Easy Task	462/A	Codeforces
767	800	12974	New Year and Counting Cards	908/A	Codeforces
768	1500	12964	a-Good String	1385/D	Codeforces
769	1600	12964	Constructing the Array	1353/D	Codeforces
770	800	12963	Флеш-карты	609/A	Codeforces
771	900	12953	Fast Food Restaurant	1313/A	Codeforces
772	1200	12951	Vanya and Books	552/B	Codeforces
773	1200	12948	Make Them Equal	1154/B	Codeforces
774	900	12946	Elimination	1445/B	Codeforces
775	800	12942	Keanu Reeves	1189/A	Codeforces
776	1400	12935	Simple Polygon Embedding	1354/C1	Codeforces
777	1200	12932	Mocha and Hiking	1559/C	Codeforces
778	900	12925	Grow The Tree	1248/B	Codeforces
779	1600	12909	Special Permutation	1352/G	Codeforces
780	900	12908	Holidays	670/A	Codeforces
781	800	12906	Chips	92/A	Codeforces
782	1400	12905	Applejack and Storages	1393/B	Codeforces
783	900	12900	Arrays	572/A	Codeforces
784	900	12896	Forgetting Things	1225/A	Codeforces
785	1300	12896	Bear and Poker	573/A	Codeforces
786	900	12892	Minimum Difficulty	496/A	Codeforces
787	1300	12874	Simple Game	570/B	Codeforces
788	1300	12867	Perform the Combo	1311/C	Codeforces
789	1600	12850	Game On Leaves	1363/C	Codeforces
790	1100	12822	Lucky Numbers	630/C	Codeforces
791	1000	12794	Balanced Rating Changes	1237/A	Codeforces
792	1300	12789	Permutation Partitions	1326/C	Codeforces
793	1200	12788	Appleman and Toastman	461/A	Codeforces
794	1400	12775	Soldier and Cards	546/C	Codeforces
795	1200	12770	Interesting Subarray	1270/B	Codeforces
796	1000	12761	Roadside Trees (Simplified Edition)	265/B	Codeforces
797	1400	12733	Epic Transformation	1506/D	Codeforces
798	1200	12729	Domino	353/A	Codeforces
799	1200	12724	Odd Sum Segments	1196/B	Codeforces
800	1300	12711	Pokémon Army (easy version)	1420/C1	Codeforces
801	1200	12709	Balanced Team	1133/C	Codeforces
802	1500	12705	Special Elements	1352/E	Codeforces
803	900	12703	Stickers and Toys	1187/A	Codeforces
804	1000	12683	Round House	659/A	Codeforces
805	900	12670	Napoleon Cake	1501/B	Codeforces
806	1000	12664	Bear and Raspberry	385/A	Codeforces
807	1200	12658	Flip the Bits	1504/B	Codeforces
808	1400	12636	Learning Languages	277/A	Codeforces
809	1600	12607	Hilbert's Hotel	1344/A	Codeforces
810	1400	12577	Arranging The Sheep	1520/E	Codeforces
811	1300	12576	Coin Rows	1555/C	Codeforces
812	1800	12546	Table Decorations	478/C	Codeforces
813	1400	12544	National Project	1303/B	Codeforces
814	800	12528	Another One Bites The Dust	1148/A	Codeforces
815	800	12528	A Good Contest	681/A	Codeforces
816	1500	12517	Zero Array	1201/B	Codeforces
817	1200	12515	Creating the Contest	1029/B	Codeforces
818	1600	12512	Circle of Monsters	1334/C	Codeforces
819	900	12512	Temporarily unavailable	1282/A	Codeforces
820	900	12472	Parity	1110/A	Codeforces
821	1000	12470	Amr and Music	507/A	Codeforces
822	1200	12465	Dominated Subarray	1257/C	Codeforces
823	1400	12441	Find The Array	1463/B	Codeforces
824	900	12438	Letters Rearranging	1093/B	Codeforces
825	800	12431	Kuroni and the Gifts	1305/A	Codeforces
826	1200	12430	Two Bags of Potatoes	239/A	Codeforces
827	1100	12427	Infinite Sequence	675/A	Codeforces
828	1000	12425	Find Amir	804/A	Codeforces
829	1000	12400	Balls of Steel	1450/B	Codeforces
830	1100	12394	Songs Compression	1015/C	Codeforces
831	1300	12379	Books Exchange (hard version)	1249/B2	Codeforces
832	1400	12378	Divide by three, multiply by two	977/D	Codeforces
833	800	12364	Neko Finds Grapes	1152/A	Codeforces
834	800	12363	Summer Camp	672/A	Codeforces
835	1500	12335	K-Complete Word	1332/C	Codeforces
836	1300	12320	Chocolate	617/B	Codeforces
837	800	12319	Tom Riddle's Diary	855/A	Codeforces
838	1000	12304	Beautiful String	1265/A	Codeforces
839	1400	12302	Journey Planning	1320/A	Codeforces
840	1400	12288	Adding Powers	1312/C	Codeforces
841	1500	12240	Vasya and String	676/C	Codeforces
842	1000	12235	Character Swap (Easy Version)	1243/B1	Codeforces
843	800	12231	Rounding	898/A	Codeforces
844	900	12229	Triangle	6/A	Codeforces
845	1200	12217	Equal Rectangles	1203/B	Codeforces
846	1100	12209	Reachable Numbers	1157/A	Codeforces
847	900	12202	Square?	1351/B	Codeforces
848	1300	12201	Road Construction	330/B	Codeforces
849	900	12183	Important Exam	1201/A	Codeforces
850	1000	12168	Good ol' Numbers Coloring	1245/A	Codeforces
851	900	12161	Contest for Robots	1321/A	Codeforces
852	800	12156	Add Candies	1447/A	Codeforces
853	800	12155	Vitaly and Night	595/A	Codeforces
854	1200	12153	Replace and Keep Sorted	1485/B	Codeforces
855	1100	12152	Elections	570/A	Codeforces
856	900	12151	Is it rated?	807/A	Codeforces
857	800	12138	Equality	1038/A	Codeforces
858	1000	12136	Relatively Prime Pairs	1051/B	Codeforces
859	1300	12116	Creating a Character	1217/A	Codeforces
860	1100	12113	Snacktower	767/A	Codeforces
861	1000	12085	Dasha and Stairs	761/A	Codeforces
862	800	12082	Partition	946/A	Codeforces
863	1100	12070	Two Arrays	1417/B	Codeforces
864	1000	12032	Middle of the Contest	1133/A	Codeforces
865	1500	12028	Potions (Easy Version)	1526/C1	Codeforces
866	1200	12025	Next Test	27/A	Codeforces
867	800	12016	Game of Life	1523/A	Codeforces
868	1200	12013	Sherlock and his girlfriend	776/B	Codeforces
869	1400	12007	Polo the Penguin and Matrix	289/B	Codeforces
870	1100	12001	Petya and Countryside	66/B	Codeforces
871	800	11999	Opponents	688/A	Codeforces
872	1000	11989	Strings Equalization	1223/B	Codeforces
873	900	11988	Beru-taxi	706/A	Codeforces
874	1200	11987	Fedya and Maths	456/B	Codeforces
875	1100	11984	Playing with Paper	527/A	Codeforces
876	800	11971	Complicated GCD	664/A	Codeforces
877	1500	11967	Nastya and Strange Generator	1340/A	Codeforces
878	900	11953	Sushi for Two	1138/A	Codeforces
879	1300	11938	Obtain Two Zeroes	1260/B	Codeforces
880	1500	11937	AGAGA XOOORRR	1516/B	Codeforces
881	900	11916	Death Note	1016/A	Codeforces
882	800	11901	Levko and Table	361/A	Codeforces
883	800	11895	Andryusha and Socks	780/A	Codeforces
884	1500	11888	Air Conditioner	1304/C	Codeforces
885	1400	11888	Preparing Olympiad	550/B	Codeforces
886	1300	11872	OR in Matrix	486/B	Codeforces
887	1100	11871	MUH and Sticks	471/A	Codeforces
888	1200	11848	Almost Equal	1205/A	Codeforces
889	900	11835	Lunar New Year and Number Division	1106/C	Codeforces
890	1100	11834	Vova and Train	1066/A	Codeforces
891	1000	11830	Rooms and Staircases	1244/B	Codeforces
892	900	11821	Silent Classroom	1166/A	Codeforces
893	800	11821	Little Pony and Crystal Mine	454/A	Codeforces
894	1400	11818	Maximum Median	1201/C	Codeforces
895	1000	11815	Palindromic Twist	1027/A	Codeforces
896	1000	11803	Shuffle Hashing	1278/A	Codeforces
897	900	11803	Arya and Bran	839/A	Codeforces
898	1000	11797	3-palindrome	805/B	Codeforces
899	1400	11788	Constanze's Machine	1245/C	Codeforces
900	1200	11781	Penalty	1553/C	Codeforces
901	900	11779	DIY Wooden Ladder	1197/A	Codeforces
902	1500	11777	Cyclic Permutations 	1391/C	Codeforces
903	1500	11775	Balanced Bitstring	1404/A	Codeforces
904	1600	11768	Hamburgers	371/C	Codeforces
905	1400	11763	Dreamoon Likes Permutations	1330/B	Codeforces
906	1600	11760	Phoenix and Distribution	1348/C	Codeforces
907	1100	11748	IQ Test	287/A	Codeforces
908	1700	11743	Caesar's Legions	118/D	Codeforces
909	1000	11735	Numbers Box	1447/B	Codeforces
910	800	11728	Olympiad	937/A	Codeforces
911	1000	11727	Two Shuffled Sequences	1144/C	Codeforces
912	1300	11714	Saving the City	1443/B	Codeforces
913	1300	11673	Good Numbers (easy version)	1249/C1	Codeforces
914	900	11655	Garden	915/A	Codeforces
915	1200	11644	Christmas Spruce	913/B	Codeforces
916	1500	11631	Yet Another Walking Robot	1296/C	Codeforces
917	1400	11622	Diverse Garland	1108/D	Codeforces
918	1000	11615	Integer Points	1248/A	Codeforces
919	1200	11588	TL	350/A	Codeforces
920	1200	11582	Belted Rooms	1428/B	Codeforces
921	1000	11581	Pillars	1197/B	Codeforces
922	800	11573	The Doors	1143/A	Codeforces
923	800	11571	Circle Coloring	1408/A	Codeforces
924	1500	11567	Power Sequence	1397/B	Codeforces
925	1200	11558	Devu, the Dumb Guy	439/B	Codeforces
926	1400	11549	Suffix Structures	448/B	Codeforces
927	800	11548	Left-handers, Right-handers and Ambidexters	950/A	Codeforces
928	1600	11540	Orac and LCM	1349/A	Codeforces
929	1400	11537	Watchmen	650/A	Codeforces
930	1200	11532	Block Adventure	1200/B	Codeforces
931	900	11510	Hungry Student Problem	903/A	Codeforces
932	900	11509	Marks	152/A	Codeforces
933	1400	11477	Add to Neighbour and Remove	1462/D	Codeforces
934	1300	11475	Nice Matrix	1422/B	Codeforces
935	1600	11467	Hard problem	706/C	Codeforces
936	1400	11460	Web of Lies	1548/A	Codeforces
937	1200	11459	Game with string	1104/B	Codeforces
938	800	11451	Nicholas and Permutation	676/A	Codeforces
939	1500	11449	Interesting Function	1538/F	Codeforces
940	1500	11447	Cyclic Components	977/E	Codeforces
941	800	11437	Fingerprints	994/A	Codeforces
942	800	11427	Lunar New Year and Cross Counting	1106/A	Codeforces
943	1600	11422	LCM Challenge	235/A	Codeforces
944	1200	11414	Minimal Cost	1491/B	Codeforces
945	1400	11412	Accidental Victory	1490/E	Codeforces
946	1300	11399	Box Fitting	1498/B	Codeforces
947	1300	11398	Make a Power of Two	1560/D	Codeforces
948	1500	11390	Eastern Exhibition	1486/B	Codeforces
949	1500	11379	Killjoy	1419/C	Codeforces
950	1600	11377	Multiples of Length	1396/A	Codeforces
951	1300	11373	Array Sharpening	1291/B	Codeforces
952	1100	11373	Remainder	1165/A	Codeforces
953	1000	11361	City Day	1199/A	Codeforces
954	1000	11361	Lucky Sum of Digits	109/A	Codeforces
955	1600	11359	Array Walk	1389/B	Codeforces
956	800	11357	New Password	770/A	Codeforces
957	1200	11347	Prefix Sum Primes	1149/A	Codeforces
958	1200	11340	Find Marble	285/B	Codeforces
959	1400	11330	Universal Solution	1380/B	Codeforces
960	1100	11326	Putting Bricks in the Wall	1421/B	Codeforces
961	1200	11321	Restricted RPS	1245/B	Codeforces
962	1200	11298	Lecture Sleep	961/B	Codeforces
963	1500	11290	Motarack's Birthday	1301/B	Codeforces
964	800	11286	Keyboard Layouts	831/B	Codeforces
965	1000	11279	Competitive Programmer	1266/A	Codeforces
966	1100	11259	Rank List	166/A	Codeforces
967	1600	11253	Yet Another Counting Problem	1342/C	Codeforces
968	800	11242	Scarborough Fair	897/A	Codeforces
969	1400	11240	k-th divisor	762/A	Codeforces
970	1700	11232	Password	126/B	Codeforces
971	1400	11230	String Equality	1451/C	Codeforces
972	1200	11216	Ehab Is an Odd Person	1174/B	Codeforces
973	800	11205	Tricky Alchemy	912/A	Codeforces
974	1200	11203	Square Filling	1207/B	Codeforces
975	1000	11191	Diverse Substring	1073/A	Codeforces
976	1200	11190	Reposts	522/A	Codeforces
977	1400	11173	NEKO's Maze Game	1292/A	Codeforces
978	800	11172	Colour the Flag	1534/A	Codeforces
979	1500	11169	Binary String Reconstruction	1352/F	Codeforces
980	1200	11164	Birthday	1131/C	Codeforces
981	800	11160	Fraction	854/A	Codeforces
982	1500	11159	Mortal Kombat Tower	1418/C	Codeforces
983	1600	11138	Maximum Sum on Even Positions	1373/D	Codeforces
984	9999	11137	MAX-MEX Cut	1566/C	Codeforces
985	1400	11119	Berland Regional	1519/C	Codeforces
986	1500	11109	Journey	839/C	Codeforces
987	1600	11108	Potions (Hard Version)	1526/C2	Codeforces
988	1000	11103	Heating	1260/A	Codeforces
989	1100	11102	Misha and Changing Handles	501/B	Codeforces
990	1300	11101	Lose it!	1176/C	Codeforces
991	1500	11094	Pythagorean Triples	1487/D	Codeforces
992	1100	11090	Comparing Strings	186/A	Codeforces
993	1300	11073	Long Number	1157/B	Codeforces
994	1500	11068	Fight with Monsters	1296/D	Codeforces
995	1000	11060	Chocolates	1139/B	Codeforces
996	1200	11054	Snow Walking Robot	1272/B	Codeforces
997	9999	11051	Again?	1331/D	Codeforces
998	1400	11019	Phoenix and Towers	1515/C	Codeforces
999	1300	11018	Co-growing Sequence	1547/D	Codeforces
1000	1200	11016	Alphabetic Removals	999/C	Codeforces
1001	800	11005	Snowball	1099/A	Codeforces
1002	1500	11002	Even Picture	1368/C	Codeforces
1003	1300	11001	Verse For Santa	1279/B	Codeforces
1004	900	10995	Romaji	1008/A	Codeforces
1005	1000	10979	Watching a movie	499/A	Codeforces
1006	1300	10975	Points on Line	251/A	Codeforces
1007	1500	10955	Remove One Element	1272/D	Codeforces
1008	1100	10955	Giga Tower	488/A	Codeforces
1009	800	10951	Second Order Statistics	22/A	Codeforces
1010	800	10948	Sea Battle	1131/A	Codeforces
1011	1000	10948	Buying a TV Set	1041/B	Codeforces
1012	1300	10936	Kill `Em All	1238/B	Codeforces
1013	1100	10932	Carrot Cakes	799/A	Codeforces
1014	1400	10931	Array Splitting	1197/C	Codeforces
1015	1400	10929	Toy Blocks	1452/B	Codeforces
1016	1100	10926	Prison Transfer	427/B	Codeforces
1017	800	10925	Find Extra One	900/A	Codeforces
1018	900	10924	Perfect Squares	914/A	Codeforces
1019	1400	10918	Unstable String	1535/C	Codeforces
1020	1500	10909	Palindromic Paths	1366/C	Codeforces
1021	1000	10904	Digital root	1107/B	Codeforces
1022	1500	10903	Maximum width	1492/C	Codeforces
1023	1300	10896	Cow and Friend	1307/B	Codeforces
1024	1000	10885	Dice Tower	1266/B	Codeforces
1025	900	10852	Pineapple Incident	697/A	Codeforces
1026	1200	10842	Chloe and the sequence 	743/B	Codeforces
1027	1300	10842	Duff in Love	588/B	Codeforces
1028	1600	10833	Game with Chips	1327/C	Codeforces
1029	1400	10833	News Distribution	1167/C	Codeforces
1030	900	10829	Doggo Recoloring	1025/A	Codeforces
1031	800	10828	Golden Plate	1031/A	Codeforces
1032	1300	10824	Knapsack	1446/A	Codeforces
1033	1600	10821	k-LCM (hard version)	1497/C2	Codeforces
1034	900	10814	Generous Kefa	841/A	Codeforces
1035	1100	10813	Big Segment	242/B	Codeforces
1036	900	10807	Wizards' Duel	591/A	Codeforces
1037	1500	10795	Sage's Birthday (hard version)	1419/D2	Codeforces
1038	900	10785	Toy Army	84/A	Codeforces
1039	1100	10767	Luxurious Houses	581/B	Codeforces
1040	1300	10755	Two Tables	1555/B	Codeforces
1041	1200	10750	Morning Jogging	1517/B	Codeforces
1042	1400	10748	The Child and Toy	437/C	Codeforces
1043	1300	10745	Bakery	707/B	Codeforces
1044	1300	10716	Good Array	1077/C	Codeforces
1045	1700	10713	Solve The Maze	1365/D	Codeforces
1046	800	10710	Buying A House	796/A	Codeforces
1047	1600	10702	Grid-00100	1371/D	Codeforces
1048	1300	10700	Balanced Tunnel	1237/B	Codeforces
1049	1300	10691	Jeff and Periods	352/B	Codeforces
1050	1300	10654	Equator	962/A	Codeforces
1051	1000	10645	Pizza, Pizza, Pizza!!!	979/A	Codeforces
1052	1000	10645	Fox and Number Game	389/A	Codeforces
1053	1500	10630	Non-zero Segments	1426/D	Codeforces
1054	1100	10627	Number Circle	1189/B	Codeforces
1055	1200	10619	Email from Polycarp	1185/B	Codeforces
1056	1400	10609	Berland Crossword	1494/B	Codeforces
1057	1000	10609	Detective Book	1140/A	Codeforces
1058	900	10597	Kyoya and Photobooks	554/A	Codeforces
1059	1400	10585	Make Good	1270/C	Codeforces
1060	1300	10566	Unusual Competitions	1322/A	Codeforces
1061	800	10564	King Moves	710/A	Codeforces
1062	1400	10562	Powers Of Two	1095/C	Codeforces
1063	800	10562	Right-Left Cipher	1085/A	Codeforces
1064	1100	10562	The Fibonacci Segment	365/B	Codeforces
1065	1500	10562	Beautiful Sets of Points	268/C	Codeforces
1066	900	10538	Greed	892/A	Codeforces
1067	900	10530	Radio Station	918/B	Codeforces
1068	1100	10521	Little Elephant and Magic Square	259/B	Codeforces
1069	1400	10509	Minimize the Permutation	1256/B	Codeforces
1070	1500	10502	Ehab and Path-etic MEXs	1325/C	Codeforces
1071	1100	10499	Kitahara Haruki's Gift	433/A	Codeforces
1072	1600	10493	Reading Books (easy version)	1374/E1	Codeforces
1073	800	10493	Lucky Ticket	146/A	Codeforces
1074	800	10477	LLPS	202/A	Codeforces
1075	800	10466	Dead Pixel	1315/A	Codeforces
1076	1200	10465	Doors Breaking and Repairing	1102/C	Codeforces
1077	800	10464	Alexey and Train	1501/A	Codeforces
1078	800	10461	Bear and Five Cards	680/A	Codeforces
1079	800	10457	Game Shopping	1009/A	Codeforces
1080	1700	10455	Color the Fence	349/B	Codeforces
1081	1200	10454	Pursuit	1530/C	Codeforces
1082	1000	10450	Happy Birthday, Polycarp!	1277/A	Codeforces
1083	1200	10442	Minimum Triangulation	1140/D	Codeforces
1084	1400	10434	The Delivery Dilemma	1443/C	Codeforces
1085	1300	10429	Move and Turn	1459/B	Codeforces
1086	1400	10421	Computer Game	1183/C	Codeforces
1087	1000	10398	Cifera	114/A	Codeforces
1088	1700	10397	Mixing Water	1359/C	Codeforces
1089	1200	10397	Filya and Homework	714/B	Codeforces
1090	1500	10375	Running for Gold	1552/B	Codeforces
1091	1000	10371	Ehab and subtraction	1088/B	Codeforces
1092	800	10359	Nastya and an Array	992/A	Codeforces
1093	1000	10351	Launch of Collider	699/A	Codeforces
1094	800	10348	Paint the Numbers	1209/A	Codeforces
1095	800	10343	Far Relative’s Birthday Cake	629/A	Codeforces
1096	1100	10328	Slightly Decreasing Permutations	285/A	Codeforces
1097	1400	10317	Everyone is a Winner!	1263/C	Codeforces
1098	1700	10312	George and Job	467/C	Codeforces
1099	1100	10304	Passwords	721/B	Codeforces
1100	1500	10287	Bear and Friendship Condition	771/A	Codeforces
1101	800	10282	Ostap and Grasshopper	735/A	Codeforces
1102	1100	10282	Little Pigs and Wolves	116/B	Codeforces
1103	1200	10279	Make Them Odd	1277/B	Codeforces
1104	1100	10279	Non-Coprime Partition	1038/B	Codeforces
1105	1700	10275	Prefix Flip (Hard Version)	1381/A2	Codeforces
1106	1300	10250	From S To T	1194/C	Codeforces
1107	1400	10248	Suffix Operations	1453/B	Codeforces
1108	1000	10244	Drinks Choosing	1195/A	Codeforces
1109	1500	10243	Sweets Eating	1253/C	Codeforces
1110	1000	10232	Asphalting Roads	583/A	Codeforces
1111	900	10214	Digits Sequence Dividing	1107/A	Codeforces
1112	1500	10212	NP-Hard Problem	687/A	Codeforces
1113	800	10205	Phone Numbers	1060/A	Codeforces
1114	1100	10195	Petya and Staircases	362/B	Codeforces
1115	1000	10189	Chunga-Changa	1181/A	Codeforces
1116	800	10169	Blackjack	104/A	Codeforces
1117	1400	10168	Great Graphs	1540/A	Codeforces
1118	1500	10165	Tile Painting	1242/A	Codeforces
1119	1400	10164	Fixing Typos	363/C	Codeforces
1120	1100	10157	Repainting Street	1415/B	Codeforces
1121	1300	10155	Mahmoud and Ehab and the bipartiteness	862/B	Codeforces
1122	1300	10148	WOW Factor	1178/B	Codeforces
1123	1000	10143	Little Elephant and Function	221/A	Codeforces
1124	1400	10141	Candy Box (easy version)	1183/D	Codeforces
1125	900	10131	New Year and Days	611/A	Codeforces
1126	1400	10129	Wonderful Coloring - 2	1551/B2	Codeforces
1127	1100	10113	Histogram Ugliness	1534/B	Codeforces
1128	1600	10069	Fox And Names	510/C	Codeforces
1129	1300	10065	Beautiful Numbers	1265/B	Codeforces
1130	800	10064	Memory and Crow	712/A	Codeforces
1131	1000	10063	TV Subscriptions (Easy Version)	1225/B1	Codeforces
1132	800	10051	A pile of stones	1159/A	Codeforces
1133	900	10048	Eating Soup	1163/A	Codeforces
1134	1100	10044	Exam	534/A	Codeforces
1135	800	10037	Stock Arbitraging	1150/A	Codeforces
1136	1100	10035	Airport	218/B	Codeforces
1137	1400	10014	Filling the Grid	1228/B	Codeforces
1138	1500	10013	Friends and Gifts	1283/C	Codeforces
1139	1000	10010	Reverse a Substring	1155/A	Codeforces
1140	1500	10004	Dubious Cyrpto	1379/B	Codeforces
1141	900	9989	Is it rated - 2	1505/A	Codeforces
1142	1100	9986	Godsend	841/B	Codeforces
1143	1500	9982	Fox And Two Dots	510/B	Codeforces
1144	1500	9981	Boxers	1203/E	Codeforces
1145	1000	9981	Nastya Is Playing Computer Games	1136/B	Codeforces
1146	1600	9976	Boboniu and Bit Operations	1395/C	Codeforces
1147	1500	9975	Lunar New Year and a Wander	1106/D	Codeforces
1148	1600	9973	DZY Loves Sequences	446/A	Codeforces
1149	1300	9967	Reorder the Array	1007/A	Codeforces
1150	1000	9964	Emotes	1117/B	Codeforces
1151	1100	9956	A New Technique	1413/B	Codeforces
1152	1600	9953	Ehab and Prefix MEXs	1364/C	Codeforces
1153	1500	9953	A and B	1278/B	Codeforces
1154	800	9944	Definite Game	1081/A	Codeforces
1155	900	9934	Protect Sheep	948/A	Codeforces
1156	1500	9920	Vasya and Petya's Game	576/A	Codeforces
1157	1400	9919	Vanya and Exams	492/C	Codeforces
1158	900	9919	Burglar and Matches	16/B	Codeforces
1159	1100	9910	Lord of the Values	1523/B	Codeforces
1160	1000	9910	Yellow Cards	1215/A	Codeforces
1161	1200	9908	Polycarp's Practice	1006/B	Codeforces
1162	1200	9907	Cutting	998/B	Codeforces
1163	800	9906	Vladik and Courtesy	811/A	Codeforces
1164	1600	9903	Kuroni and Impossible Calculation	1305/C	Codeforces
1165	1700	9902	Constant Palindrome Sum	1343/D	Codeforces
1166	900	9900	Discounts	1132/B	Codeforces
1167	1100	9899	Knights	1221/B	Codeforces
1168	1600	9891	Row GCD	1458/A	Codeforces
1169	1000	9890	Tavas and Nafas	535/A	Codeforces
1170	1200	9886	Vitamins	1042/B	Codeforces
1171	900	9881	Stages	1011/A	Codeforces
1172	1500	9875	Burning Midnight Oil	165/B	Codeforces
1173	1400	9874	Vasya and Wrestling	493/B	Codeforces
1174	1200	9872	Divisor Subtraction	1076/B	Codeforces
1175	1700	9871	Consecutive Subsequence	977/F	Codeforces
1176	1200	9866	AquaMoon and Stolen String	1546/B	Codeforces
1177	1400	9866	Find the Spruce	1461/B	Codeforces
1178	1100	9860	Fridge Lockers	1255/B	Codeforces
1179	1400	9859	Greg and Array	295/A	Codeforces
1180	1200	9853	Tanya and Toys	659/C	Codeforces
1181	1500	9849	No More Inversions	1473/C	Codeforces
1182	800	9846	Be Positive	1130/A	Codeforces
1183	1100	9828	Vasya and Cornfield	1030/B	Codeforces
1184	800	9818	Word Correction	938/A	Codeforces
1185	1300	9816	Good String	1165/C	Codeforces
1186	1700	9815	Eugene and an array	1333/C	Codeforces
1187	1300	9799	Appleman and Card Game	462/B	Codeforces
1188	9999	9794	Seating Arrangements (easy version) 	1566/D1	Codeforces
1189	1100	9788	The Eternal Immortality	869/B	Codeforces
1190	1500	9787	Pipes	1234/C	Codeforces
1191	1200	9782	Minimizing the String	1076/A	Codeforces
1192	1300	9776	Letters Shop	1187/B	Codeforces
1193	1500	9774	Anu Has a Function	1299/A	Codeforces
1194	1000	9772	Cashier	1059/A	Codeforces
1195	1100	9768	All the Vowels Please	1166/B	Codeforces
1196	1600	9756	Almost All Divisors	1165/D	Codeforces
1197	800	9742	Professor GukiZ's Robot	620/A	Codeforces
1198	1400	9732	Three displays	987/C	Codeforces
1199	1000	9727	Trace	157/B	Codeforces
1200	1300	9716	Planet Lapituletti	1493/B	Codeforces
1201	1000	9715	Fair Game	864/A	Codeforces
1202	900	9713	Getting an A	991/B	Codeforces
1203	1300	9706	Nice Garland	1108/C	Codeforces
1204	1300	9693	Ehab and a Special Coloring Problem	1174/C	Codeforces
1205	1000	9691	Serval and Bus	1153/A	Codeforces
1206	900	9689	Toy Cars	545/A	Codeforces
1207	1600	9682	Obtain The String	1295/C	Codeforces
1208	1400	9680	Palindromifier	1421/C	Codeforces
1209	1200	9677	Bad Sequence	1214/C	Codeforces
1210	1400	9672	As Simple as One and Two	1276/A	Codeforces
1211	1500	9670	Equalize the Array	1490/F	Codeforces
1212	900	9669	Circle Metro	1169/A	Codeforces
1213	800	9664	Friends Meeting	931/A	Codeforces
1214	1300	9657	Many Equal Substrings	1029/A	Codeforces
1215	1100	9651	Vitaliy and Pie	525/A	Codeforces
1216	1100	9647	High School: Become Human	987/B	Codeforces
1217	1100	9647	Equidistant String	545/B	Codeforces
1218	1100	9647	Unlucky Ticket	160/B	Codeforces
1219	1300	9625	Multiplication Table	1220/B	Codeforces
1220	800	9625	Elections	1043/A	Codeforces
1221	1500	9606	Pythagorean Triples	707/C	Codeforces
1222	800	9589	Piles With Stones	1013/A	Codeforces
1223	1300	9578	Reverse String	1553/B	Codeforces
1224	1600	9574	Distinct Characters Queries	1234/D	Codeforces
1225	1000	9565	Turn the Rectangles	1008/B	Codeforces
1226	900	9564	Margarite and the best present	1080/B	Codeforces
1227	1200	9558	George and Round	387/B	Codeforces
1228	1500	9549	Acacius and String	1379/A	Codeforces
1229	1100	9547	Good Number	365/A	Codeforces
1230	900	9541	Timofey and cubes	764/B	Codeforces
1231	1200	9538	Exam in BerSU (easy version)	1185/C1	Codeforces
1232	1400	9537	Fillomino 2	1517/C	Codeforces
1233	1200	9534	Kuroni and Simple Strings	1305/B	Codeforces
1234	1600	9529	Balance the Bits	1503/A	Codeforces
1235	1100	9519	Parade	733/B	Codeforces
1236	1600	9509	Mafia	348/A	Codeforces
1237	1100	9501	Nearest Minimums	911/A	Codeforces
1238	1500	9499	Good Numbers (hard version)	1249/C2	Codeforces
1239	1300	9494	Increasing Subsequence (easy version)	1157/C1	Codeforces
1240	1200	9485	Cells Not Under Attack	701/B	Codeforces
1241	1100	9467	The number on the board	835/B	Codeforces
1242	1300	9464	Meme Problem	1076/C	Codeforces
1243	1800	9459	Carousel	1328/D	Codeforces
1244	1100	9452	Benches	1042/A	Codeforces
1245	1000	9452	Permutation	137/B	Codeforces
1246	1500	9441	Minimum Ties	1487/C	Codeforces
1247	1200	9441	Obtaining the String	1015/B	Codeforces
2482	1700	4597	Exams	732/D	Codeforces
1248	1300	9441	Little Elephant and Problem	220/A	Codeforces
1249	1100	9431	Best Subsegment	1117/A	Codeforces
1250	1300	9425	Chat Online	469/B	Codeforces
1251	1200	9424	Good String	1140/B	Codeforces
1252	900	9419	Sonya and Hotels	1004/A	Codeforces
1253	900	9419	Fafa and the Gates	935/B	Codeforces
1254	1200	9409	Boxes Packing	903/C	Codeforces
1255	1500	9399	Cow and Message	1307/C	Codeforces
1256	1300	9392	Complete the Word	716/B	Codeforces
1257	900	9362	A Serial Killer	776/A	Codeforces
1258	1600	9360	Maximum Sum of Products	1519/D	Codeforces
1259	1100	9360	Salem and Sticks 	1105/A	Codeforces
1260	1400	9346	Karen and Coffee	816/B	Codeforces
1261	800	9344	Triangular numbers	47/A	Codeforces
1262	1000	9343	Gotta Catch Em' All!	757/A	Codeforces
1263	1200	9339	Preparation for International Women's Day	1133/B	Codeforces
1264	1100	9335	Alex and broken contest	877/A	Codeforces
1265	1500	9330	Prefix-Suffix Palindrome (Easy version)	1326/D1	Codeforces
1266	1200	9318	Dishonest Sellers	779/C	Codeforces
1267	1600	9302	Perfect Keyboard	1303/C	Codeforces
1268	1500	9297	Binary String Minimizing	1256/D	Codeforces
1269	1500	9294	AquaMoon and Strange Sort	1545/A	Codeforces
1270	1200	9292	New Year and the Treasure Geolocation	1091/B	Codeforces
1271	1200	9290	Football Kit	432/B	Codeforces
1272	1500	9283	Secret Passwords	1263/D	Codeforces
1273	1300	9282	Packets	1037/A	Codeforces
1274	1400	9282	Adding Digits	260/A	Codeforces
1275	1500	9278	Diluc and Kaeya	1536/C	Codeforces
1276	1200	9267	Beautiful Paintings	651/B	Codeforces
1277	1500	9266	Polycarp Restores Permutation	1141/C	Codeforces
1278	1600	9265	Another Problem on Strings	165/C	Codeforces
1279	1400	9264	K for the Price of One (Easy Version)	1282/B1	Codeforces
1280	800	9257	Quirky Quantifiers	952/A	Codeforces
1281	1100	9254	Squares and Segments	1099/B	Codeforces
1282	800	9252	Johny Likes Numbers	678/A	Codeforces
1283	1400	9249	AND Sequences	1513/B	Codeforces
1284	1300	9247	Lucky Numbers (easy)	96/B	Codeforces
1285	1500	9233	Little Dima and Equation	460/B	Codeforces
1286	1200	9230	Game with Telephone Numbers	1155/B	Codeforces
1287	1600	9226	Sequence Pair Weight	1527/C	Codeforces
1288	1000	9224	Maxim and Biology	1151/A	Codeforces
1289	1600	9222	Taxes	735/D	Codeforces
1290	1400	9218	Stack of Presents	1279/C	Codeforces
1291	1400	9215	The Number of Products	1215/B	Codeforces
1292	1500	9214	Division	1444/A	Codeforces
1293	1500	9213	Painting Eggs	282/B	Codeforces
1294	1500	9211	Minimum Grid Path	1499/C	Codeforces
1295	1500	9210	Close Tuples (easy version)	1462/E1	Codeforces
1296	1400	9206	Fox and Box Accumulation	388/A	Codeforces
1297	900	9203	Bicycle Chain	215/A	Codeforces
1298	1200	9195	Vladik and flights	743/A	Codeforces
1299	1700	9178	Xenia and Colorful Gems	1336/B	Codeforces
1300	900	9169	Links and Pearls	980/A	Codeforces
1301	1100	9167	Meeting of Old Friends	714/A	Codeforces
1302	1700	9137	Palindrome Transformation	486/C	Codeforces
1303	1700	9126	RPG Protagonist	1400/B	Codeforces
1304	1100	9123	Weird Subtraction Process	946/B	Codeforces
1305	1700	9119	Spy-string	1360/F	Codeforces
1306	1200	9106	Tanya and Candies	1118/B	Codeforces
1307	1300	9093	Plus from Picture	1182/B	Codeforces
1308	1500	9084	Sagheer and Nubian Market	812/C	Codeforces
1309	800	9083	Minimum Binary Number	976/A	Codeforces
1310	1700	9080	Valid BFS?	1037/D	Codeforces
1311	800	9080	Find Square	1028/A	Codeforces
1312	1200	9077	Sail	298/B	Codeforces
1313	800	9075	Prime Minister	1178/A	Codeforces
1314	1000	9069	Vasya and Books	1073/B	Codeforces
1315	1400	9058	String Modification	1316/B	Codeforces
1316	1300	9054	Build a Contest	1100/B	Codeforces
1317	1600	9033	Parsa's Humongous Tree	1528/A	Codeforces
1318	1400	9026	Silly Mistake	1253/B	Codeforces
1319	1300	9024	Blocks	1271/B	Codeforces
1320	1300	9022	Take Your Places!	1556/B	Codeforces
1321	1100	9022	Anton and Classes	785/B	Codeforces
1322	1100	9018	Ebony and Ivory	633/A	Codeforces
1323	1000	9010	Commentary Boxes	990/A	Codeforces
1324	1400	8990	PIN Codes	1263/B	Codeforces
1325	1000	8989	Div. 64	887/A	Codeforces
1326	1400	8979	New Year and Ascent Sequence	1284/B	Codeforces
1327	900	8977	Tiling Challenge	1150/B	Codeforces
1328	1000	8976	King Escape	1033/A	Codeforces
1329	1300	8973	Vasya and Isolated Vertices	1065/B	Codeforces
1330	1600	8969	Zmei Gorynich	1217/B	Codeforces
1331	1100	8944	Ilya and a Colorful Walk	1119/A	Codeforces
1332	800	8942	Circle Line	278/A	Codeforces
1333	1600	8933	Sequence and Swaps	1455/D	Codeforces
1334	1200	8921	Table Tennis	879/B	Codeforces
1335	1000	8919	If at first you don't succeed...	991/A	Codeforces
1336	1300	8913	Cloning Toys	922/A	Codeforces
1337	1000	8909	Noldbach problem	17/A	Codeforces
1338	1600	8903	MEX maximizing	1294/D	Codeforces
1339	1200	8902	Two Cakes	911/B	Codeforces
1340	1600	8888	Product 1 Modulo N	1514/C	Codeforces
1341	1500	8888	k-Amazing Numbers	1416/A	Codeforces
1342	1300	8885	Prime Matrix	271/B	Codeforces
1343	1700	8862	Another Problem About Dividing Numbers	1538/D	Codeforces
1344	1300	8857	Yet Another Crosses Problem	1194/B	Codeforces
1345	1500	8846	Kolya and Tanya 	584/B	Codeforces
1346	1300	8840	Swords	1216/D	Codeforces
1347	1000	8840	Roman and Browser	1100/A	Codeforces
1348	1700	8838	Cobb	1554/B	Codeforces
1349	1600	8838	Advertising Agency	1475/E	Codeforces
1350	1300	8824	Little Alawn's Puzzle	1534/C	Codeforces
1351	1400	8812	Tape	1110/B	Codeforces
1352	900	8810	An abandoned sentiment from past	814/A	Codeforces
1353	1000	8808	Lucky Substring	122/B	Codeforces
1354	1200	8808	Hexadecimal's Numbers	9/C	Codeforces
1355	800	8807	Palindromic Supersequence	932/A	Codeforces
1356	1200	8807	The Monster	787/A	Codeforces
1357	1300	8806	Reach Median	1037/B	Codeforces
1358	1600	8798	Two Arrays	1288/C	Codeforces
1359	1600	8798	Ciel and Flowers	322/B	Codeforces
1360	1500	8797	Valera and Tubes 	441/C	Codeforces
1361	1000	8794	Function Height	1036/A	Codeforces
1362	1000	8792	Game of Robots	670/B	Codeforces
1363	1300	8785	Accordion	1101/B	Codeforces
1364	1100	8785	Letter	43/B	Codeforces
1365	1500	8782	13th Labour of Heracles	1466/D	Codeforces
1366	1000	8781	Transformation: from A to B	727/A	Codeforces
1367	1500	8762	Knight Tournament	356/A	Codeforces
1368	1300	8749	Wet Shark and Bishops	621/B	Codeforces
1369	1700	8736	Array Destruction	1474/C	Codeforces
1370	1700	8731	Ehab the Xorcist	1325/D	Codeforces
1371	1200	8730	Xenia and Divisors	342/A	Codeforces
1372	1400	8728	Binary Palindromes	1251/B	Codeforces
1373	1500	8718	Restoring the Permutation	1506/E	Codeforces
1374	1500	8692	Alice and the List of Presents	1236/B	Codeforces
1375	1300	8682	Oh Those Palindromes	1063/A	Codeforces
1376	900	8681	Tetris	961/A	Codeforces
1377	1600	8662	Minimal Height Tree	1437/D	Codeforces
1378	1100	8661	Text Document Analysis	723/B	Codeforces
1379	1600	8661	Gerald's Hexagon	559/A	Codeforces
1380	900	8661	Valera and Plates	369/A	Codeforces
1381	1500	8654	Vladik and fractions	743/C	Codeforces
1382	1700	8652	Little Girl and Maximum XOR	276/D	Codeforces
1383	900	8648	Search for Pretty Integers	870/A	Codeforces
1384	1400	8647	Bear and Prime 100	679/A	Codeforces
1385	1600	8644	Chocolate Bunny	1407/C	Codeforces
1386	1100	8642	Wilbur and Array	596/B	Codeforces
1387	1100	8641	Zuhair and Strings	1105/B	Codeforces
1388	800	8640	Local Extrema	888/A	Codeforces
1389	1500	8639	Edgy Trees	1139/C	Codeforces
1390	1600	8638	The Two Routes	601/A	Codeforces
1391	1800	8637	Multiplication Table	448/D	Codeforces
1392	1200	8629	Escape from Stones	264/A	Codeforces
1393	800	8628	Sleuth	49/A	Codeforces
1394	800	8622	Book Reading	884/A	Codeforces
1395	1500	8620	They Are Everywhere	701/C	Codeforces
1396	900	8618	Hongcow Learns the Cyclic Shift	745/A	Codeforces
1397	1700	8618	Checkposts	427/C	Codeforces
1398	1000	8612	Help Vasilisa the Wise 2	143/A	Codeforces
1399	1100	8609	Badges	1214/B	Codeforces
1400	1100	8602	Blown Garland	758/B	Codeforces
1401	1300	8600	Tiles	1178/C	Codeforces
1402	1500	8599	Equalizing by Division (easy version)	1213/D1	Codeforces
1403	1100	8595	Weird Rounding	779/B	Codeforces
1404	1400	8590	Mr. Kitayuta's Colorful Graph	505/B	Codeforces
1405	1300	8588	Easy Number Challenge	236/B	Codeforces
1406	1600	8582	Minimize The Integer	1251/C	Codeforces
1407	1100	8581	Mike and Fax	548/A	Codeforces
1408	800	8580	Splitting in Teams	899/A	Codeforces
1409	1000	8576	Hamster Farm	939/B	Codeforces
1410	1000	8572	Inbox (100500)	465/B	Codeforces
1411	1300	8571	Binary String Constructing	1003/B	Codeforces
1412	900	8571	inc ARG	465/A	Codeforces
1413	1400	8570	Chess Cheater	1427/B	Codeforces
1414	1600	8567	Strange Function	1542/C	Codeforces
1415	900	8567	Chess For Three	893/A	Codeforces
1416	900	8566	Line to Cashier	408/A	Codeforces
1417	1200	8562	Alyona and Mex	682/B	Codeforces
1418	1500	8560	Air Conditioners	1547/E	Codeforces
1419	1000	8559	Pair of Toys	1023/B	Codeforces
1420	1500	8554	Rings	1562/C	Codeforces
1421	1400	8542	Candies!	1189/C	Codeforces
1422	900	8529	A Blend of Springtime	989/A	Codeforces
1423	1700	8524	Equivalent Strings	559/B	Codeforces
1424	1500	8522	Beautiful Regional Contest	1264/A	Codeforces
1425	1700	8517	Hills And Valleys	1467/B	Codeforces
1426	800	8504	Flag	16/A	Codeforces
1427	1600	8492	Counting Kangaroos is Fun	372/A	Codeforces
1428	1800	8475	Colored Rectangles	1398/D	Codeforces
1429	1100	8475	Gleb And Pizza	842/B	Codeforces
1430	1200	8473	Tokitsukaze and Mahjong	1191/B	Codeforces
1431	1700	8470	Pinkie Pie Eats Patty-cakes	1393/C	Codeforces
1432	1700	8468	String Transformation 1	1383/A	Codeforces
1433	1400	8466	DZY Loves Chemistry	445/B	Codeforces
1434	1400	8465	Regular Bracket Sequence	26/B	Codeforces
1435	1000	8464	Beautiful Divisors	893/B	Codeforces
1436	1300	8458	Summarize to the Power of Two	1005/C	Codeforces
1437	1300	8449	Shawarma Tent	1271/C	Codeforces
1438	1700	8448	Three Blocks Palindrome (easy version)	1335/E1	Codeforces
1439	1300	8446	Coins	58/B	Codeforces
1440	1700	8438	Sleeping Schedule	1324/E	Codeforces
1441	1100	8432	The Artful Expedient	869/A	Codeforces
1442	1000	8427	ACM ICPC	886/A	Codeforces
1443	1000	8427	Dinner with Emma	616/B	Codeforces
1444	1200	8426	Classroom Watch	875/A	Codeforces
1445	1700	8420	Soldier and Number Game	546/D	Codeforces
1446	1700	8408	AND, OR and square sum	1368/D	Codeforces
1447	1200	8407	Alice, Bob and Chocolate	6/C	Codeforces
1448	1300	8404	Deep Down Below	1561/C	Codeforces
1449	1600	8387	Equalizing by Division (hard version)	1213/D2	Codeforces
1450	800	8379	Diagonal Walking	954/A	Codeforces
1451	1200	8365	LCM	1068/B	Codeforces
2690	1600	4033	Triangle	407/A	Codeforces
1452	1500	8358	Swap Letters	1215/C	Codeforces
1453	1600	8356	Fence Painting	1481/C	Codeforces
1454	1100	8349	Visiting a Friend	902/A	Codeforces
1455	1100	8348	Lala Land and Apple Trees	558/A	Codeforces
1456	1000	8345	Shell Game	777/A	Codeforces
1457	1300	8328	Labs	1236/C	Codeforces
1458	1300	8326	Charmed by the Game	1558/A	Codeforces
1459	1800	8325	Count Triangles	1355/C	Codeforces
1460	1400	8323	Mocha and Diana (Easy Version)	1559/D1	Codeforces
1461	1200	8312	Students and Shoelaces	129/B	Codeforces
1462	800	8308	Save Luke	624/A	Codeforces
1463	900	8305	Wizards and Demonstration	168/A	Codeforces
1464	1500	8303	Interesting Story	1551/C	Codeforces
1465	800	8299	Little Artem and Presents	669/A	Codeforces
1466	1600	8298	Longest Simple Cycle	1476/C	Codeforces
1467	1300	8293	TV Subscriptions (Hard Version)	1225/B2	Codeforces
1468	1700	8287	String Game	778/A	Codeforces
1469	1300	8287	New Year and North Pole	750/B	Codeforces
1470	1300	8284	Substring Removal	1096/B	Codeforces
1471	1300	8283	Gambling	1038/C	Codeforces
1472	1700	8276	Searching Local Minimum	1479/A	Codeforces
1473	1600	8263	Add One	1513/C	Codeforces
1474	1200	8261	NN and the Optical Illusion	1100/C	Codeforces
1475	1400	8256	Round Corridor	1200/C	Codeforces
1476	1200	8256	Planning The Expedition	1011/B	Codeforces
1477	1500	8252	Phoenix and Socks	1515/D	Codeforces
1478	1000	8250	Vanya and Table	552/A	Codeforces
1479	1300	8249	Substring Game in the Lesson	1220/C	Codeforces
1480	1000	8231	Mahmoud and Ehab and the MEX	862/A	Codeforces
1481	1000	8229	Crossword solving	822/B	Codeforces
1482	1400	8219	Magic Powder - 1	670/D1	Codeforces
1483	1500	8213	Random Events	1461/C	Codeforces
1484	1100	8209	Math Problem	1227/A	Codeforces
1485	2000	8202	Sereja and Brackets	380/C	Codeforces
1486	1700	8198	Deleting Divisors	1537/D	Codeforces
1487	1400	8196	Bouncing Ball	1415/C	Codeforces
1488	1200	8196	Stripe	18/C	Codeforces
1489	1500	8195	Binary Search	1436/C	Codeforces
1490	1800	8172	Stoned Game	1396/B	Codeforces
1491	1200	8171	The Bits	1017/B	Codeforces
1492	1100	8169	Regular Bracket Sequence	1132/A	Codeforces
1493	1400	8168	Minimum number of steps	804/B	Codeforces
1494	1500	8167	Ayoub and Lost Array	1105/C	Codeforces
1495	1000	8161	Unimodal Array	831/A	Codeforces
1496	1400	8155	Array K-Coloring	1102/B	Codeforces
1497	1300	8153	Game of Credit Cards	777/B	Codeforces
1498	800	8152	Arpa and a research in Mexican wave	851/A	Codeforces
1499	900	8142	Valued Keys	801/B	Codeforces
1500	1400	8140	Gourmet Cat	1154/C	Codeforces
1501	800	8139	The Way to Home	910/A	Codeforces
1502	900	8139	Collecting Beats is Fun	373/A	Codeforces
1503	1400	8138	Grid game	1103/A	Codeforces
1504	1200	8123	Coloring a Tree	902/B	Codeforces
1505	1200	8121	War of the Corporations	625/B	Codeforces
1506	1500	8117	Backspace	1553/D	Codeforces
1507	900	8112	Trip For Meal	876/A	Codeforces
1508	1300	8103	Brutality	1107/C	Codeforces
1509	1300	8099	PolandBall and Forest	755/C	Codeforces
1510	1200	8091	Chat Order	637/B	Codeforces
1511	900	8088	Alena's Schedule	586/A	Codeforces
1512	1400	8083	Pocket Book	152/C	Codeforces
1513	1500	8079	RGB Substring (easy version)	1196/D1	Codeforces
1514	1300	8079	Queries on a String	598/B	Codeforces
1515	1300	8072	Archer	312/B	Codeforces
1516	2200	8058	Powerful array	86/D	Codeforces
1517	900	8055	Borya's Diagnosis	879/A	Codeforces
1518	1000	8046	Pupils Redistribution	779/A	Codeforces
1519	1500	8041	Mashmokh and Numbers	414/A	Codeforces
1520	1500	8038	Walking Robot	1154/D	Codeforces
1521	1600	8035	Erase and Extend (Easy Version)	1537/E1	Codeforces
1522	1600	8035	Building a Fence	1469/C	Codeforces
1523	1600	8033	Guessing the Greatest (easy version)	1486/C1	Codeforces
1524	1500	8028	Skyscrapers (easy version)	1313/C1	Codeforces
1525	1400	8028	Draw!	1131/B	Codeforces
1526	1400	8011	Tokitsukaze and Discard Items	1190/A	Codeforces
1527	1000	8004	New Building for SIS	1020/A	Codeforces
1528	1400	8003	Equalize Them All	1144/D	Codeforces
1529	1300	8001	Intense Heat	1003/C	Codeforces
1530	1200	7998	Kirill And The Game	842/A	Codeforces
1531	900	7998	Wasted Time	127/A	Codeforces
1532	1300	7997	Painting Pebbles	509/B	Codeforces
1533	1200	7994	Sanatorium	732/C	Codeforces
1534	1700	7992	Baby Ehab Partitions Again	1516/C	Codeforces
1535	1500	7986	Zero Quantity Maximization	1133/D	Codeforces
1536	1300	7986	Increase and Decrease	246/B	Codeforces
1537	1100	7980	PolandBall and Game	755/B	Codeforces
1538	1800	7978	Distance in Tree	161/D	Codeforces
1539	1000	7977	Queue on Bus Stop	435/A	Codeforces
1540	1200	7970	Shower Line	431/B	Codeforces
1541	1300	7969	Sonya and Exhibition	1004/B	Codeforces
1542	1000	7957	Balloons	998/A	Codeforces
1543	800	7954	Display Size	747/A	Codeforces
1544	1000	7949	Palindrome Dance	1040/A	Codeforces
1545	1500	7947	Powers of Two	702/B	Codeforces
1546	1600	7946	K for the Price of One (Hard Version)	1282/B2	Codeforces
1547	1400	7945	New Year and the Sphere Transmission	1091/C	Codeforces
1548	1400	7935	Diverse Matrix	1266/C	Codeforces
1549	800	7931	Bear and Game	673/A	Codeforces
1550	1300	7927	Vasya and Golden Ticket	1030/C	Codeforces
1551	1100	7922	Memory and Trident	712/B	Codeforces
1552	1100	7921	Div Times Mod	1085/B	Codeforces
1553	900	7920	Face Detection	549/A	Codeforces
1554	1600	7914	Timofey and a tree	763/A	Codeforces
1555	1300	7904	New Year's Eve	912/B	Codeforces
1556	1700	7902	Vasya and Chess	493/D	Codeforces
1557	1000	7901	Diversity	844/A	Codeforces
1558	1100	7881	k-Factorization	797/A	Codeforces
1559	1100	7880	Boys and Girls	253/A	Codeforces
1560	800	7878	Paper Airplanes	965/A	Codeforces
1561	1000	7878	Fashion in Berland	691/A	Codeforces
1562	1500	7875	Uniqueness	1208/B	Codeforces
1563	1400	7875	Approximating a Constant Range	602/B	Codeforces
1564	1100	7853	Anastasia and pebbles	789/A	Codeforces
1565	1200	7845	Diverse Permutation	482/A	Codeforces
1566	1100	7845	Combination	155/B	Codeforces
1567	1300	7844	Mishka and the Last Exam	1093/C	Codeforces
1568	1500	7842	Gas Pipeline	1207/C	Codeforces
1569	1200	7840	Nirvana	1143/B	Codeforces
1570	800	7833	Soroban	363/A	Codeforces
1571	1400	7828	Minimum Ternary String	1009/B	Codeforces
1572	1300	7823	New Skateboard	628/B	Codeforces
1573	1500	7821	Yet Another Array Partitioning Task	1114/B	Codeforces
1574	1200	7817	Restoring Permutation	1315/C	Codeforces
1575	1000	7804	Odds and Ends	849/A	Codeforces
1576	1500	7802	Valeriy and Deque	1179/A	Codeforces
1577	1700	7797	Greg and Graph	295/B	Codeforces
1578	1600	7795	Min Cost String	1511/D	Codeforces
1579	1500	7795	Cut 'em all!	982/C	Codeforces
1580	1500	7792	Hyperset	1287/B	Codeforces
1581	1100	7784	Divisibility	630/J	Codeforces
1582	1700	7777	Bits	484/A	Codeforces
1583	1200	7773	Caisa and Sugar	463/A	Codeforces
1584	1800	7772	The Sports Festival	1509/C	Codeforces
1585	1300	7771	Fox Dividing Cheese	371/B	Codeforces
1586	1200	7770	Bracket Subsequence	1023/C	Codeforces
1587	900	7761	Sinking Ship	63/A	Codeforces
1588	1300	7760	Alyona and a Narrow Fridge	1119/B	Codeforces
1589	1500	7751	Nick and Array	1180/B	Codeforces
1590	1300	7750	Maximum splitting	870/C	Codeforces
1591	1300	7749	Segment Occurrences	1016/B	Codeforces
1592	1100	7743	Ksenia and Pan Scales	382/A	Codeforces
1593	1900	7743	Longest Regular Bracket Sequence	5/C	Codeforces
1594	1000	7742	Buggy Robot	888/B	Codeforces
1595	1400	7739	Arrays Sum	1408/B	Codeforces
1596	1500	7729	k-Multiple Free Set	274/A	Codeforces
1597	900	7723	Quasi-palindrome	863/A	Codeforces
1598	1000	7723	Vasily the Bear and Triangle	336/A	Codeforces
1599	1400	7722	Queen	1143/C	Codeforces
1600	800	7720	Splits	964/A	Codeforces
1601	1300	7712	Find The Bone	796/B	Codeforces
1602	1600	7709	Carrying Conundrum	1567/C	Codeforces
1603	1500	7704	Robot Breakout	1196/C	Codeforces
1604	1100	7704	Run For Your Prize	938/B	Codeforces
1605	1200	7701	Robot's Task	583/B	Codeforces
1606	1200	7696	Row	982/A	Codeforces
1607	1200	7690	Serval and Toy Bricks	1153/B	Codeforces
1608	1600	7689	Replacement	570/C	Codeforces
1609	1200	7689	Ohana Cleans Up	554/B	Codeforces
1610	1700	7688	Infinite Prefixes	1295/B	Codeforces
1611	1500	7683	Vasya and Multisets	1051/C	Codeforces
1612	1000	7678	Polycarp and Letters	864/B	Codeforces
1613	1000	7675	Generate Login	909/A	Codeforces
1614	1100	7671	Proper Nutrition	898/B	Codeforces
1615	1400	7667	Pasha and String	525/B	Codeforces
1616	1600	7658	Alternating Current	343/B	Codeforces
1617	1600	7650	Functions again	788/A	Codeforces
1618	1600	7648	Remove Adjacent	1321/C	Codeforces
1619	1400	7648	The World is a Theatre	131/C	Codeforces
1620	1100	7643	Nauuo and Chess	1173/B	Codeforces
1621	1000	7643	Saitama Destroys Hotel	608/A	Codeforces
1622	1000	7642	Karen and Morning	816/A	Codeforces
1623	2000	7639	Engineer Artem	1438/C	Codeforces
1624	1100	7630	Spider Man	705/B	Codeforces
1625	1500	7629	Arpa’s obvious problem and Mehrdad’s terrible...	742/B	Codeforces
1626	1700	7624	Geometric Progression	567/C	Codeforces
1627	1600	7619	PriceFixed	1539/D	Codeforces
1628	900	7607	Interview	631/A	Codeforces
1629	1200	7604	Roma and Changing Signs	262/B	Codeforces
1630	1400	7603	Equal Sums	988/C	Codeforces
1631	1300	7602	Summer sell-off	810/B	Codeforces
1632	800	7591	Elevator or Stairs?	1054/A	Codeforces
1633	1800	7580	Uncle Bogdan and Country Happiness	1388/C	Codeforces
1634	1400	7572	Covered Path	534/B	Codeforces
1635	1900	7571	Modulo Sum	577/B	Codeforces
1636	1200	7571	Bear and Elections	574/A	Codeforces
1637	900	7565	Straight <<A>>	810/A	Codeforces
1638	900	7564	Jamie and Alarm Snooze	916/A	Codeforces
1639	1300	7563	Seat Arrangements	919/C	Codeforces
1640	800	7563	Text Volume	837/A	Codeforces
1641	1300	7561	Alyona and copybooks	740/A	Codeforces
1642	1500	7559	Candies	991/C	Codeforces
1643	1600	7558	Dima and a Bad XOR	1151/B	Codeforces
1644	1400	7552	Odd sum	797/B	Codeforces
1645	1200	7548	SwapSort	489/A	Codeforces
1646	1100	7548	President's Office	6/B	Codeforces
1647	900	7547	George and Sleep	387/A	Codeforces
1648	1500	7545	Polycarp and Div 3	1005/D	Codeforces
1649	800	7536	DZY Loves Hash	447/A	Codeforces
1650	1500	7535	Nikita and string	877/B	Codeforces
1651	1600	7533	Little Pony and Expected Maximum	453/A	Codeforces
1652	1400	7528	Lost Numbers	1167/B	Codeforces
1653	1500	7526	Binary Table (Easy Version)	1439/A1	Codeforces
1654	900	7525	Restoring Password	94/A	Codeforces
1655	1300	7521	Alarm Clocks Everywhere	1155/C	Codeforces
1656	1500	7517	Modulo Equality	1269/B	Codeforces
3725	2100	1968	The Queue	767/B	Codeforces
1657	1400	7501	Sereja and Bottles	315/A	Codeforces
1658	1200	7499	Shooshuns and Sequence 	222/A	Codeforces
1659	1100	7497	Fixed Points	347/B	Codeforces
1660	1400	7490	Bash's Big Day	757/B	Codeforces
1661	900	7489	The Useless Toy	834/A	Codeforces
1662	1600	7481	Vitaly and Strings	518/A	Codeforces
1663	1700	7480	Ayoub's function	1301/C	Codeforces
1664	1400	7477	Physics Practical	253/B	Codeforces
1665	1600	7475	Welfare State	1198/B	Codeforces
1666	1100	7465	The Monster and the Squirrel	592/B	Codeforces
1667	1200	7463	Vasya And Password	1051/A	Codeforces
1668	1300	7463	The Child and Homework	437/A	Codeforces
1669	1300	7460	Homecoming	1315/B	Codeforces
1670	900	7459	Antipalindrome	981/A	Codeforces
1671	900	7455	Increasing Sequence	11/A	Codeforces
1672	1000	7447	Uncowed Forces	604/A	Codeforces
1673	1300	7447	Xor-tree	429/A	Codeforces
1674	1200	7444	Box	1227/B	Codeforces
1675	1300	7443	String Transformation	946/C	Codeforces
1676	1100	7435	Lucky String	110/B	Codeforces
1677	1400	7434	Optimal Currency Exchange	1214/A	Codeforces
1678	1500	7433	Pride	891/A	Codeforces
1679	1100	7429	Maximum Sum of Digits	1060/B	Codeforces
1680	1600	7426	Modified GCD	75/C	Codeforces
1681	9999	7425	Thanos Sort	1145/A	Codeforces
1682	1500	7425	New Year and Domino	611/C	Codeforces
1683	800	7418	Santa Claus and a Place in a Class	748/A	Codeforces
1684	1400	7415	Chris and Magic Square	711/B	Codeforces
1685	1600	7411	Chain Reaction	607/A	Codeforces
1686	1600	7409	Catch Overflow!	1175/B	Codeforces
1687	1100	7408	Chess Placing	985/A	Codeforces
1688	1100	7404	Ilya and Diplomas	557/A	Codeforces
1689	1800	7399	Chef Monocarp	1437/C	Codeforces
1690	1800	7397	Dreamoon Likes Coloring	1329/A	Codeforces
1691	1200	7396	Letters Cyclic Shift	708/A	Codeforces
1692	1200	7390	Codehorses T-shirts	1000/A	Codeforces
1693	1300	7390	New Year and Old Property	611/B	Codeforces
1694	1600	7389	MP3	1198/A	Codeforces
1695	1100	7389	Vasya and Digital Root	355/A	Codeforces
1696	1700	7388	Link Cut Centroids	1406/C	Codeforces
1697	1500	7384	Pairs	1169/B	Codeforces
1698	1600	7382	New Year Permutation	500/B	Codeforces
1699	1200	7381	Numbers on the Chessboard	1027/B	Codeforces
1700	900	7380	Aramic script	975/A	Codeforces
1701	1300	7376	Neko Performs Cat Furrier Transform	1152/B	Codeforces
1702	1200	7375	A Prosperous Lot	934/B	Codeforces
1703	1300	7375	Funky Numbers	192/A	Codeforces
1704	1600	7360	Coffee Break	1041/C	Codeforces
1705	1200	7359	Easter Eggs	78/B	Codeforces
1706	900	7357	Neverending competitions	765/A	Codeforces
1707	1200	7354	Maxim Buys an Apartment	854/B	Codeforces
1708	1100	7348	You Are Given Two Binary Strings...	1202/A	Codeforces
1709	1500	7337	Meaningless Operations	1110/C	Codeforces
1710	1700	7334	Hacking Cypher	490/C	Codeforces
1711	1700	7333	Circle Game	1451/D	Codeforces
1712	1400	7331	Books Queries	1066/C	Codeforces
1713	1200	7330	Conan and Agasa play a Card Game	914/B	Codeforces
1714	1000	7329	Little Elephant and Chess	259/A	Codeforces
1715	1200	7328	Postcard	1099/C	Codeforces
1716	1000	7312	Grandfather Dovlet’s calculator	620/B	Codeforces
1717	1700	7311	Manhattan Subarrays	1550/C	Codeforces
1718	1700	7307	Bear and Prime Numbers	385/C	Codeforces
1719	1300	7304	A Prank	1062/A	Codeforces
1720	900	7300	Metro	1055/A	Codeforces
1721	800	7288	Okabe and Future Gadget Laboratory	821/A	Codeforces
1722	1500	7283	Vus the Cossack and Numbers	1186/D	Codeforces
1723	900	7279	Comparing Two Long Integers	616/A	Codeforces
1724	1300	7277	Economy Game	681/B	Codeforces
1725	900	7274	Mister B and Book Reading	820/A	Codeforces
1726	1400	7265	Our Tanya is Crying Out Loud	940/B	Codeforces
1727	1100	7265	Urbanization	735/B	Codeforces
1728	1900	7246	Zigzags	1400/D	Codeforces
1729	1200	7246	Single Wildcard Pattern Matching	1023/A	Codeforces
1730	1600	7238	Colorful Graph	246/D	Codeforces
1731	1400	7233	Sonya and Queries	713/A	Codeforces
1732	1600	7232	Andryusha and Colored Balloons	780/C	Codeforces
1733	1700	7228	Primes and Multiplication	1228/C	Codeforces
1734	800	7228	Haiku	78/A	Codeforces
1735	1500	7227	Good Sequences	264/B	Codeforces
1736	800	7221	Sereja and Mugs	426/A	Codeforces
1737	1700	7217	Nezzar and Symmetric Array	1478/C	Codeforces
1738	1100	7214	The Festive Evening	834/B	Codeforces
1739	900	7213	Squares	263/B	Codeforces
1740	1200	7203	Vasya and Book	1082/A	Codeforces
1741	1300	7203	Magic Forest	922/B	Codeforces
1742	1000	7200	Infinite Sequence	622/A	Codeforces
1743	1600	7194	Say No to Palindromes	1555/D	Codeforces
1744	900	7194	Mashmokh and Lights	415/A	Codeforces
1745	1200	7193	Bear and Strings	385/B	Codeforces
1746	800	7184	Slime Combining	618/A	Codeforces
1747	1500	7183	A Tale of Two Lands	1166/C	Codeforces
1748	1200	7183	Pythagorean Theorem II	304/A	Codeforces
1749	800	7182	Super Agent	12/A	Codeforces
1750	1300	7178	Mike and strings	798/B	Codeforces
1751	1100	7175	New Bus Route	792/A	Codeforces
1752	1500	7170	XOR and OR	282/C	Codeforces
1753	1300	7166	Snow Footprints	298/A	Codeforces
1754	800	7164	Reconnaissance	32/A	Codeforces
1755	1700	7162	Igor In the Museum	598/D	Codeforces
1756	1300	7160	Divisiblity of Differences	876/B	Codeforces
1757	1500	7153	Restore Modulo	1482/B	Codeforces
1758	1600	7152	RGB Substring (hard version)	1196/D2	Codeforces
1759	1600	7147	Mind Control	1290/A	Codeforces
1760	1200	7147	Simple Molecules	344/B	Codeforces
1761	1200	7144	Mahmoud and Ehab and the message	959/B	Codeforces
1762	1400	7138	Anatoly and Cockroaches	719/B	Codeforces
1763	900	7134	Lever	376/A	Codeforces
1764	1200	7132	Maximum of Maximums of Minimums	870/B	Codeforces
1765	1000	7118	The Fair Nut and Elevator	1084/A	Codeforces
1766	1100	7113	Two Bases	602/A	Codeforces
1767	1500	7112	Magic Powder - 2	670/D2	Codeforces
1768	900	7112	Buggy Sorting	246/A	Codeforces
1769	1200	7108	Coins	47/B	Codeforces
1770	800	7105	Zoning Restrictions Again	1162/A	Codeforces
1771	1500	7103	Fly	1010/A	Codeforces
1772	1300	7093	Berland National Library	567/B	Codeforces
1773	1800	7091	Prefix-Suffix Palindrome (Hard version)	1326/D2	Codeforces
1774	1600	7089	Valera and Elections	369/C	Codeforces
1775	1200	7080	Micro-World	990/B	Codeforces
1776	1400	7074	Swap Adjacent Elements	920/C	Codeforces
1777	1400	7071	Valhalla Siege	975/C	Codeforces
1778	1500	7070	Discrete Acceleration	1408/C	Codeforces
1779	1300	7061	Cinema	670/C	Codeforces
1780	1500	7054	Count Subrectangles	1323/B	Codeforces
1781	1700	7052	Johnny and Contribution	1361/A	Codeforces
1782	1900	7050	Phoenix and Science	1348/D	Codeforces
1783	1500	7050	Convert to Ones	997/A	Codeforces
1784	1100	7033	Книга - лучший подарок	609/B	Codeforces
1785	900	7025	Lucky Year	808/A	Codeforces
1786	1200	7025	Parallelogram is Back	749/B	Codeforces
1787	2000	7018	Two Divisors	1366/D	Codeforces
1788	1700	7008	Ceil Divisions	1469/D	Codeforces
1789	1200	7006	New Year and Buggy Bot	908/B	Codeforces
1790	1700	7003	Long Beautiful Integer	1268/A	Codeforces
1791	1300	7003	Koala and Lights	1209/B	Codeforces
1792	1600	6997	Guess the K-th Zero (Easy version)	1520/F1	Codeforces
1793	1400	6996	Mike and Fun	548/B	Codeforces
1794	1600	6990	p-binary	1225/C	Codeforces
1795	1400	6981	Bus Video System	978/E	Codeforces
1796	1200	6981	Wrath	892/B	Codeforces
1797	900	6978	The Time	622/B	Codeforces
1798	1700	6975	Omkar and Bed Wars	1392/D	Codeforces
1799	1700	6970	String Deletion	1430/D	Codeforces
1800	1600	6965	Playlist	1140/C	Codeforces
1801	1600	6963	Thor	704/A	Codeforces
1802	1200	6961	Unnatural Conditions	1028/B	Codeforces
1803	1000	6957	z-sort	652/B	Codeforces
1804	1400	6949	More Cowbell	604/B	Codeforces
1805	1600	6947	Basic Diplomacy	1482/C	Codeforces
1806	1700	6945	Walk on Matrix	1332/D	Codeforces
1807	1300	6941	World Cup	996/B	Codeforces
1808	1900	6938	Replace by MEX	1375/D	Codeforces
1809	1400	6933	Optimal Point on a Line	710/B	Codeforces
1810	1600	6932	Rational Resistance	343/A	Codeforces
1811	1400	6930	Yuhao and a Parenthesis	1097/C	Codeforces
1812	1100	6928	Photo to Remember	522/B	Codeforces
1813	1100	6919	Dice Tower	225/A	Codeforces
1814	1500	6915	Kyoya and Colored Balls	553/A	Codeforces
1815	1300	6903	Browser	915/B	Codeforces
1816	1800	6897	Count The Blocks	1327/E	Codeforces
1817	1700	6888	Mysterious Present	4/D	Codeforces
1818	1100	6880	Case of Fake Numbers	556/B	Codeforces
1819	1300	6870	Simple Strings	665/C	Codeforces
1820	1500	6867	Colored Boots	1141/D	Codeforces
1821	800	6855	The King's Race	1075/A	Codeforces
1822	1600	6852	Vasya and Arrays	1036/D	Codeforces
1823	1100	6852	Coupons and Discounts	731/B	Codeforces
1824	1100	6848	Digital Counter	495/A	Codeforces
1825	2000	6846	Odd-Even Subsequence	1370/D	Codeforces
1826	1400	6831	Ehab and a 2-operation task	1088/C	Codeforces
1827	800	6828	Petr and a calendar	760/A	Codeforces
1828	1000	6828	Palindromic Times	108/A	Codeforces
1829	1900	6827	Gargari and Bishops	463/C	Codeforces
1830	1200	6826	Points on the line	940/A	Codeforces
1831	1800	6825	Cleaning the Phone	1475/D	Codeforces
1832	800	6822	Eugeny and Array	302/A	Codeforces
1833	900	6821	Bark to Unlock	868/A	Codeforces
1834	1600	6820	Permutation by Sum	1512/E	Codeforces
1835	1400	6817	Routine Problem	337/B	Codeforces
1836	1500	6814	The Child and Set	437/B	Codeforces
1837	1700	6814	Xenia and Weights	339/C	Codeforces
1838	1600	6808	Alice and Bob	346/A	Codeforces
1839	1700	6806	Program	1473/D	Codeforces
1840	1900	6804	TediousLee	1369/D	Codeforces
1841	1700	6800	Count the Arrays	1312/D	Codeforces
1842	1300	6799	Art Union	416/B	Codeforces
1843	1100	6793	Hexagons!	630/D	Codeforces
1844	1000	6792	Water The Garden	920/A	Codeforces
1845	1700	6789	Floor and Mod	1485/C	Codeforces
1846	9999	6783	Jury Meeting	1569/C	Codeforces
1847	1200	6783	Restaurant Tables	828/A	Codeforces
1848	1600	6776	Planar Reflections	1498/C	Codeforces
1849	1500	6771	Polycarp's New Job	1101/E	Codeforces
1850	1800	6769	Maximum Distributed Tree	1401/D	Codeforces
1851	1100	6768	Square Difference	1033/B	Codeforces
1852	1200	6767	Check the string	960/A	Codeforces
1853	2000	6767	The least round way	2/B	Codeforces
1854	1200	6761	Rebranding	591/B	Codeforces
1855	1400	6756	Factory	485/A	Codeforces
1856	1200	6756	Unary	133/B	Codeforces
1857	1100	6755	Far Relative’s Problem	629/B	Codeforces
1858	1300	6753	Bus of Characters	982/B	Codeforces
1859	900	6751	Mammoth's Genome Decoding	747/B	Codeforces
1860	1600	6748	Sasha and a Bit of Relax	1109/A	Codeforces
1861	1200	6747	Two Cakes	1130/B	Codeforces
1862	1200	6745	Magic Spheres	606/A	Codeforces
1863	1600	6733	Sum in the tree	1098/A	Codeforces
1864	1200	6728	Gerald is into Art	560/B	Codeforces
1865	1000	6728	Table	359/A	Codeforces
1866	1300	6724	Difference Row	347/A	Codeforces
1867	800	6723	Letter	14/A	Codeforces
1868	1600	6715	Add on a Tree	1188/A1	Codeforces
1869	2000	6705	Three Integers	1311/D	Codeforces
1870	1000	6705	Ciel and Dancing	322/A	Codeforces
1871	1200	6700	Equations of Mathematical Magic	1064/B	Codeforces
1872	1600	6699	Divide and Summarize	1461/D	Codeforces
1873	1800	6699	Task On The Board	1367/D	Codeforces
1874	1500	6697	Submarine in the Rybinsk Sea (easy edition)	1195/D1	Codeforces
1875	1600	6693	Compression and Expansion	1523/C	Codeforces
1876	1400	6693	Strongly Connected City	475/B	Codeforces
1877	1500	6687	24 Game	468/A	Codeforces
1878	800	6678	Four Segments	1468/E	Codeforces
1879	1700	6672	Infinite Fence	1260/C	Codeforces
1880	1200	6670	Alyona and flowers	740/B	Codeforces
1881	1700	6665	Harmonious Graph	1253/D	Codeforces
1882	1200	6661	Lesha and array splitting	754/A	Codeforces
1883	1300	6658	Sasha and Magnetic Machines	1113/B	Codeforces
1884	1300	6654	Dividing the numbers	899/C	Codeforces
1885	1100	6654	Making a String	624/B	Codeforces
1886	1600	6653	Remove the Substring (easy version)	1203/D1	Codeforces
1887	1500	6646	Link/Cut Tree	614/A	Codeforces
1888	1300	6643	Design Tutorial: Learn from Life	472/B	Codeforces
1889	1700	6642	Barcode	225/C	Codeforces
1890	2000	6636	Yet Another Yet Another Task	1359/D	Codeforces
1891	1600	6636	Military Problem	1006/E	Codeforces
1892	1800	6635	Going Home	1500/A	Codeforces
1893	1100	6633	Little Robber Girl's Zoo	686/B	Codeforces
1894	1400	6626	Guess a number!	416/A	Codeforces
1895	900	6623	Exams	194/A	Codeforces
1896	1300	6611	Students in Railway Carriage	962/B	Codeforces
1897	1400	6609	Cd and pwd commands	158/C	Codeforces
1898	1500	6608	Removing Columns	496/C	Codeforces
1899	1200	6606	The Modcrab	903/B	Codeforces
1900	1600	6600	Stas and the Queue at the Buffet	1151/D	Codeforces
1901	1100	6600	Rook, Bishop and King	370/A	Codeforces
1902	1800	6595	Pashmak and Parmida's problem	459/D	Codeforces
1903	1700	6592	Nastya and Scoreboard	1340/B	Codeforces
1904	1700	6592	Cover it!	1176/E	Codeforces
1905	1900	6588	The Best Vacation	1358/D	Codeforces
1906	1200	6585	Prizes, Prizes, more Prizes	208/D	Codeforces
1907	1500	6584	Nastya Is Transposing Matrices	1136/C	Codeforces
1908	1400	6582	Inscribed Figures	1156/A	Codeforces
1909	1600	6574	Weakened Common Divisor	1025/B	Codeforces
1910	1600	6573	Azamon Web Services	1281/B	Codeforces
1911	1100	6573	Guess the Permutation	618/B	Codeforces
1912	1600	6572	Party Lemonade	913/C	Codeforces
1913	1000	6571	Chat Servers Outgoing Traffic	5/A	Codeforces
1914	1400	6569	Developing Skills	581/C	Codeforces
1915	1800	6566	Dima and Lisa	584/D	Codeforces
1916	1200	6563	Switches and Lamps	985/B	Codeforces
1917	1100	6561	Intercepted Message	950/B	Codeforces
1918	1600	6552	Working out	429/B	Codeforces
1919	1000	6550	Santa Claus and Candies	753/A	Codeforces
1920	1300	6548	Drazil and His Happy Friends	515/B	Codeforces
1921	1700	6543	Graph Without Long Directed Paths	1144/F	Codeforces
1922	1800	6542	Edge Weight Assignment	1338/B	Codeforces
1923	1400	6535	Tanya and Postcard	518/B	Codeforces
1924	9999	6534	Limericks	1331/B	Codeforces
1925	1800	6532	Unmerge	1381/B	Codeforces
1926	1100	6529	Pasha and Pixels	508/A	Codeforces
1927	1800	6522	Slime	1038/D	Codeforces
1928	1300	6520	Leha and Function	840/A	Codeforces
1929	1300	6518	Recursive Queries	932/B	Codeforces
1930	1000	6518	Vlad and Cafes	886/B	Codeforces
1931	1400	6505	Connect	1130/C	Codeforces
1932	1600	6505	Joty and Chocolate	678/C	Codeforces
1933	1800	6502	Garland	1286/A	Codeforces
1934	1400	6499	Make a Square	962/C	Codeforces
1935	1100	6499	k-rounding	858/A	Codeforces
1936	1500	6493	Pasha and Tea	557/B	Codeforces
1937	1300	6489	Position in Fraction	900/B	Codeforces
1938	1700	6484	By Elevator or Stairs?	1249/E	Codeforces
1939	1700	6479	Arithmetic Progression	382/C	Codeforces
1940	1700	6473	Ladder	279/C	Codeforces
1941	1200	6472	Kvass and the Fair Nut	1084/B	Codeforces
1942	1100	6467	Chess Tourney	845/A	Codeforces
1943	1600	6463	Alternative Thinking	603/A	Codeforces
1944	1500	6454	Bear and Three Musketeers	574/B	Codeforces
1945	1500	6445	Maximum Absurdity	332/B	Codeforces
1946	800	6441	Declined Finalists	859/A	Codeforces
1947	1200	6441	Worms Evolution	31/A	Codeforces
1948	1800	6432	Extreme Subtraction	1442/A	Codeforces
1949	1000	6432	Eevee	452/A	Codeforces
1950	1600	6431	Hard Process	660/C	Codeforces
1951	1300	6429	Amr and The Large Array	558/B	Codeforces
1952	1400	6427	One Bomb	699/B	Codeforces
1953	1600	6420	New Year and Permutation	1284/C	Codeforces
1954	1400	6413	Sonya and Robots	1004/C	Codeforces
1955	1100	6403	Pouring Rain	667/A	Codeforces
1956	1500	6399	Duff and Weight Lifting	587/A	Codeforces
1957	1500	6395	Heaters	1066/B	Codeforces
1958	1100	6391	Wilbur and Swimming Pool	596/A	Codeforces
1959	1400	6377	Restoring Painting	675/B	Codeforces
1960	1500	6376	Math	1062/B	Codeforces
1961	1100	6375	Minesweeper	984/B	Codeforces
1962	1600	6373	Tennis Championship	735/C	Codeforces
1963	800	6371	System Administrator	245/A	Codeforces
1964	1600	6369	Secret Santa	1530/D	Codeforces
1965	1200	6369	And	1013/B	Codeforces
1966	1800	6362	Make The Fence Great Again	1221/D	Codeforces
1967	1400	6356	Dima and Continuous Line	358/A	Codeforces
1968	1800	6355	Three Blocks Palindrome (hard version)	1335/E2	Codeforces
1969	1100	6354	Vicious Keyboard	801/A	Codeforces
1970	1500	6353	Division and Union	1101/C	Codeforces
1971	1400	6350	Views Matter	1061/B	Codeforces
1972	1700	6348	Journey	1476/D	Codeforces
1973	1700	6339	Bargain	1422/C	Codeforces
1974	1300	6339	Shashlik Cooking	1040/B	Codeforces
1975	1800	6336	Armchairs	1525/D	Codeforces
1976	1500	6334	Cthulhu	103/B	Codeforces
1977	1500	6332	Marvolo Gaunt's Ring	855/B	Codeforces
1978	1600	6321	Vova and Trophies	1082/B	Codeforces
1979	1500	6320	Balanced Ternary String	1102/D	Codeforces
1980	800	6319	Chores	873/A	Codeforces
1981	1400	6318	Vanya and Food Processor	677/B	Codeforces
1982	1400	6317	Skier	1351/C	Codeforces
1983	1800	6312	Kefa and Dishes	580/D	Codeforces
1984	1100	6311	Ilya and tic-tac-toe game	754/B	Codeforces
1985	1400	6308	Sea and Islands	544/B	Codeforces
1986	1400	6298	Flag Day	357/B	Codeforces
1987	1700	6289	Kavi on Pairing Duty	1528/B	Codeforces
1988	1700	6287	Trailing Loves (or L'oeufs?)	1114/C	Codeforces
1989	1000	6286	Sereja and Coat Rack	368/A	Codeforces
1990	900	6275	Dividing Orange	244/A	Codeforces
1991	900	6273	Squats	424/A	Codeforces
1992	1500	6265	Hongcow Builds A Nation	744/A	Codeforces
1993	1200	6264	A Tide of Riverscape	989/B	Codeforces
1994	1100	6252	Set of Strings	544/A	Codeforces
1995	1100	6247	Code obfuscation	765/B	Codeforces
1996	1100	6245	Technogoblet of Fire	1121/A	Codeforces
1997	1100	6245	Lucky Sum	121/A	Codeforces
1998	1200	6240	New Year Present	379/B	Codeforces
1999	1900	6239	Maximum Subsequence Value	1365/E	Codeforces
2000	1700	6227	Berry Jam	1278/C	Codeforces
2001	900	6227	Bear and Three Balls	653/A	Codeforces
2002	1400	6223	Plug-in	81/A	Codeforces
2003	1200	6220	Mike and Children	1121/B	Codeforces
2004	1800	6218	Good Substrings	271/D	Codeforces
2005	1200	6214	The Wall	340/A	Codeforces
2006	1400	6211	Suit and Tie	995/B	Codeforces
2007	1100	6211	Phone numbers	25/B	Codeforces
2008	800	6208	Bear and Reverse Radewoosh	658/A	Codeforces
2009	1600	6207	Radio Towers	1452/D	Codeforces
2010	1500	6200	Cellular Network	702/C	Codeforces
2011	1900	6195	Multiset	1354/D	Codeforces
2012	1200	6194	Game	630/R	Codeforces
2013	1600	6190	Star sky	835/C	Codeforces
2014	1400	6181	Towers	479/B	Codeforces
2015	2300	6173	Lomsat gelral	600/E	Codeforces
2016	1700	6167	Close Tuples (hard version)	1462/E2	Codeforces
2017	1600	6165	Anton and Fairy Tale	785/C	Codeforces
2018	1800	6162	Same GCDs	1295/D	Codeforces
2019	1200	6158	Co-prime Array	660/A	Codeforces
2020	1500	6156	Almost Arithmetic Progression	978/D	Codeforces
2021	1700	6149	Exam in BerSU (hard version)	1185/C2	Codeforces
2022	900	6149	Interview with Oleg	729/A	Codeforces
2023	1200	6145	Garland	408/B	Codeforces
2024	1400	6144	Three Garlands	911/C	Codeforces
2025	1700	6138	Alyona and mex	739/A	Codeforces
2026	1200	6134	Print Check	631/B	Codeforces
2027	1200	6129	Levko and Permutation	361/B	Codeforces
2028	1100	6128	Binary Protocol	825/A	Codeforces
2029	1500	6123	The Fair Nut and String	1084/C	Codeforces
2030	1300	6120	Chtholly's request	897/B	Codeforces
2031	1600	6119	To Add or Not to Add	231/C	Codeforces
2032	1600	6115	Standard Free2play	1238/C	Codeforces
2033	1200	6114	Inventory	569/B	Codeforces
2034	1600	6106	Sorting Railway Cars	605/A	Codeforces
2035	1400	6103	Cutting Banner	538/A	Codeforces
2036	1700	6096	Pekora and Trampoline	1491/C	Codeforces
2037	1300	6089	Forgery	1059/B	Codeforces
2038	1700	6089	Substring	919/D	Codeforces
2039	1700	6088	Peaceful Rooks	1411/C	Codeforces
2040	1600	6088	Make It Equal	1065/C	Codeforces
2041	1200	6087	World Cup	931/B	Codeforces
2042	1400	6081	Common Divisors	182/D	Codeforces
2043	1700	6080	Serval and Parenthesis Sequence	1153/C	Codeforces
2044	1600	6077	Save the Nature	1223/C	Codeforces
2045	1600	6070	Walking Between Houses	1015/D	Codeforces
2046	1700	6065	Cow and Snacks	1209/D	Codeforces
2047	1700	6065	GCD Table	582/A	Codeforces
2048	1400	6063	Vile Grasshoppers	937/B	Codeforces
2049	1900	6057	A/B Matrix	1360/G	Codeforces
2050	1600	6053	Destroying Array	722/C	Codeforces
2051	1700	6049	Ivan the Fool and the Probability Theory	1239/A	Codeforces
2052	1800	6041	Vasiliy's Multiset	706/D	Codeforces
2053	1200	6039	Spotlights	729/B	Codeforces
2054	1300	6038	Replacement	135/A	Codeforces
2055	1500	6037	Lunar New Year and Food Ordering	1106/B	Codeforces
2056	1600	6036	Producing Snow	923/B	Codeforces
2057	1800	6035	Enlarge GCD	1034/A	Codeforces
2058	900	6034	Kitchen Utensils	1032/A	Codeforces
2059	1300	6033	Expansion coefficient of the array	1159/B	Codeforces
2060	1600	6028	Born This Way	1148/B	Codeforces
2061	1900	6022	Tree Queries	1328/E	Codeforces
2062	1800	6016	Little Elephant and Array	220/B	Codeforces
2063	1300	6014	Strings of Power	318/B	Codeforces
2064	1500	6013	Paint the Digits	1209/C	Codeforces
2065	1500	6013	Bear and Different Names	771/B	Codeforces
2066	1100	6003	Japanese Crosswords Strike Back	884/B	Codeforces
2067	800	6003	Ball Game	46/A	Codeforces
2068	1100	6002	Mancala	975/B	Codeforces
2069	1800	6000	Integers Have Friends	1548/B	Codeforces
2070	1700	6000	RPD and Rap Sheet (Easy Version)	1543/D1	Codeforces
2071	800	5997	Bank Robbery	794/A	Codeforces
2072	2000	5995	Orac and Medians	1349/B	Codeforces
2073	1600	5995	Sequence Transformation	1059/C	Codeforces
2074	1800	5992	Primitive Primes	1316/C	Codeforces
2075	1800	5991	Writing Code	543/A	Codeforces
2076	1200	5986	Tea Queue	920/B	Codeforces
2077	1700	5980	Yet Another Monster Killing Problem	1257/D	Codeforces
2078	1700	5978	Coloring Trees	711/C	Codeforces
2079	1000	5978	Inna and Choose Options	400/A	Codeforces
2080	2000	5975	The Football Season	1244/C	Codeforces
2081	1400	5972	K-Dominant Character	888/C	Codeforces
2082	1600	5972	New Reform	659/E	Codeforces
2083	1800	5958	Minimum Euler Cycle	1334/D	Codeforces
2084	1700	5946	Moamen and XOR	1557/C	Codeforces
2085	1500	5944	Mentors	978/F	Codeforces
2086	1300	5943	Dasha and friends	761/B	Codeforces
2087	1400	5941	Design Tutorial: Make It Nondeterministic	472/C	Codeforces
2088	1400	5939	T-shirt buying	799/B	Codeforces
2089	1700	5938	The Number Of Good Substrings	1217/C	Codeforces
2090	1700	5938	Beautiful Graph	1093/D	Codeforces
2091	1300	5938	K-special Tables	625/C	Codeforces
2092	1000	5935	Checking the Calendar	724/A	Codeforces
2093	1900	5927	Roads not only in Berland	25/D	Codeforces
2094	1500	5926	New Year and Curling	908/C	Codeforces
2095	1700	5925	Minimum Array	1157/E	Codeforces
2096	1000	5924	Jumping Ball	725/A	Codeforces
2097	1900	5924	Zuma	607/B	Codeforces
2098	1600	5922	Cave Painting	922/C	Codeforces
2099	1200	5918	Lucky Conversion	145/A	Codeforces
2100	1100	5917	Hate "A"	1146/B	Codeforces
2101	1500	5917	A + B Strikes Back	409/H	Codeforces
2102	1800	5909	Beautiful Numbers	300/C	Codeforces
2103	1500	5898	Prime Graph	1178/D	Codeforces
2104	1800	5897	Diane	1554/D	Codeforces
2105	1600	5889	The Meeting Place Cannot Be Changed	780/B	Codeforces
2106	1500	5887	Ramesses and Corner Inversion	1119/C	Codeforces
2107	800	5885	Game Outcome	157/A	Codeforces
2108	1100	5882	Mr. Kitayuta's Gift	505/A	Codeforces
2109	1600	5877	Character Swap (Hard Version)	1243/B2	Codeforces
2110	1600	5874	Minimum Value Rectangle	1027/C	Codeforces
2111	1600	5863	Booking System	416/C	Codeforces
2112	1000	5860	Bar	56/A	Codeforces
2113	1300	5854	Valuable Resources	485/B	Codeforces
2114	1800	5853	Two Platforms	1409/E	Codeforces
2115	1500	5846	Bishwock	991/D	Codeforces
2116	1200	5842	Table Tennis Game 2	765/C	Codeforces
2117	1400	5841	A Compatible Pair	934/A	Codeforces
2118	1400	5841	New Year Ratings Change	379/C	Codeforces
2119	1200	5835	Vladik and Complicated Book	811/B	Codeforces
2120	1600	5822	New Year and Rating	750/C	Codeforces
2121	1700	5821	Increasing Subsequence (hard version)	1157/C2	Codeforces
2122	1400	5819	Win or Freeze	150/A	Codeforces
2123	1600	5815	Coins and Queries	1003/D	Codeforces
2124	1700	5806	White Sheet	1216/C	Codeforces
2125	1900	5806	Enemy is weak	61/E	Codeforces
2126	1500	5800	Case of Matryoshkas	555/A	Codeforces
2127	1900	5796	Painting Fence	448/C	Codeforces
2128	1900	5785	Guessing the Greatest (hard version)	1486/C2	Codeforces
2129	1000	5781	Card Game	106/A	Codeforces
2130	1900	5780	Mike and Feet	547/B	Codeforces
2131	1700	5771	Square-free division (easy version)	1497/E1	Codeforces
2132	1400	5765	String Typing	954/B	Codeforces
2133	1200	5760	Sagheer and Crossroads	812/A	Codeforces
2134	1400	5749	Valera and Fruits	441/B	Codeforces
2135	1000	5744	Let's Watch Football	195/A	Codeforces
2136	1300	5744	Ice Sculptures	158/D	Codeforces
2137	1600	5742	Circular Dance	1095/D	Codeforces
2138	1600	5742	Cutting Out	1077/D	Codeforces
2139	1500	5737	Smallest Word	1043/C	Codeforces
2140	1100	5737	Polo the Penguin and Segments 	289/A	Codeforces
2141	1500	5735	History	137/C	Codeforces
2142	1200	5730	Verse Pattern	722/B	Codeforces
2143	1500	5726	Bicolored RBS	1167/D	Codeforces
2144	1700	5722	Unbearable Controversy of Being	489/D	Codeforces
2145	1100	5720	Fox and Cross	389/B	Codeforces
2146	1500	5717	Balanced Substring	873/B	Codeforces
2147	1000	5716	Businessmen Problems	981/B	Codeforces
2148	1600	5714	Maximal Intersection	1029/C	Codeforces
2149	1200	5711	Lost Array	1043/B	Codeforces
2150	1300	5704	Cards	626/B	Codeforces
2151	1900	5701	Palindrome Game (hard version)	1527/B2	Codeforces
2152	1800	5700	Paint the Tree	1244/D	Codeforces
2153	1800	5698	Mikasa	1554/C	Codeforces
2154	1200	5695	Sereja and Array	315/B	Codeforces
2155	1400	5694	Permutation	359/B	Codeforces
2156	1600	5688	Alyona and the Tree	682/C	Codeforces
2157	1600	5687	Two Arrays and Sum of Functions	1165/E	Codeforces
2158	900	5676	Waste Sorting	1468/N	Codeforces
2159	1700	5676	Permute Digits	915/C	Codeforces
2160	1300	5671	Lucky Permutation Triple	303/A	Codeforces
2161	1300	5664	Vika and Squares	610/B	Codeforces
2162	1500	5662	Dima and Staircase	272/C	Codeforces
2163	1800	5656	Rock, Paper, Scissors	1426/E	Codeforces
2164	1400	5651	Gena's Code	614/B	Codeforces
2165	1600	5650	Lakes in Berland	723/D	Codeforces
2166	1300	5642	Broken Clock	722/A	Codeforces
2167	1200	5640	Opposites Attract	131/B	Codeforces
2168	1700	5637	Correct Placement	1472/E	Codeforces
2169	1500	5628	Minimize the error	960/B	Codeforces
2170	1800	5622	Catching Cheaters	1446/B	Codeforces
2171	1900	5619	Tree Tag	1404/B	Codeforces
4556	2200	1082	Big Secret	925/C	Codeforces
2172	1300	5616	The Text Splitting	612/A	Codeforces
2173	1700	5612	Platforms Jumping	1256/C	Codeforces
2174	1000	5608	Group of Students	357/A	Codeforces
2175	1500	5602	Array	224/B	Codeforces
2176	1600	5601	Bear and Forgotten Tree 3	639/B	Codeforces
2177	1700	5594	Different Rules	1313/B	Codeforces
2178	1400	5591	Replace To Make Regular Bracket Sequence	612/C	Codeforces
2179	1200	5586	PawnChess	592/A	Codeforces
2180	1200	5586	Eugeny and Play List	302/B	Codeforces
2181	1600	5582	Polygon for the Angle	1096/C	Codeforces
2182	1400	5581	Birthday	1068/A	Codeforces
2183	1700	5580	Crazy Town	498/A	Codeforces
2184	1300	5580	Polo the Penguin and Strings	288/A	Codeforces
2185	1100	5575	Mountain Scenery	218/A	Codeforces
2186	1500	5574	Cat Party (Easy Edition)	1163/B1	Codeforces
2187	1600	5573	Cows and Sequence	283/A	Codeforces
2188	2000	5568	Ice Cave	540/C	Codeforces
2189	1700	5561	Remove the Substring (hard version)	1203/D2	Codeforces
2190	1800	5560	Christmas Trees	1283/D	Codeforces
2191	1000	5560	Appending Mex	1054/B	Codeforces
2192	1200	5560	Megacity	424/B	Codeforces
2193	1500	5559	Two TVs	845/C	Codeforces
2194	1000	5556	Lazy Security Guard	859/B	Codeforces
2195	1100	5555	Feed the cat	955/A	Codeforces
2196	1500	5554	Photo of The Sky	1012/A	Codeforces
2197	1700	5522	Anna, Svyatoslav and Maps	1204/C	Codeforces
2198	1600	5519	Bombs	350/C	Codeforces
2199	1500	5517	Glass Carving	527/C	Codeforces
2200	900	5513	Postcards and photos	137/A	Codeforces
2201	1400	5511	Non-square Equation	233/B	Codeforces
2202	800	5504	Data Center	1250/F	Codeforces
2203	1700	5502	Multiplicity	1061/C	Codeforces
2204	1300	5502	Segments	909/B	Codeforces
2205	1300	5501	Qualifying Contest	659/B	Codeforces
2206	1500	5501	Ping-Pong (Easy Version)	320/B	Codeforces
2207	1900	5500	Dr. Evil Underscores	1285/D	Codeforces
2208	1200	5500	Pizza Separation	895/A	Codeforces
2209	1800	5499	Maximum White Subtree	1324/F	Codeforces
2210	1300	5498	Vasya and Football	493/A	Codeforces
2211	1800	5497	Rescue Nibel!	1420/D	Codeforces
2212	800	5492	Good Matrix Elements	177/A1	Codeforces
2213	1600	5490	League of Leesins	1255/C	Codeforces
2214	1300	5487	A Trivial Problem	633/B	Codeforces
2215	1200	5480	Dima and To-do List	366/B	Codeforces
2216	800	5473	Diplomas and Certificates	818/A	Codeforces
2217	1200	5473	HDD is Outdated Technology	612/B	Codeforces
2218	1600	5469	Electrification	1175/C	Codeforces
2219	1700	5464	Dreamoon Likes Sequences	1329/B	Codeforces
2220	1700	5456	3-Coloring	1503/B	Codeforces
2221	1700	5452	New Year and the Permutation Concatenation	1091/D	Codeforces
2222	1200	5443	Moore's Law	630/B	Codeforces
2223	1600	5434	Longest k-Good Segment	616/D	Codeforces
2224	1700	5433	Choosing Capital for Treeland	219/D	Codeforces
2225	1500	5431	Peculiar apple-tree	930/A	Codeforces
2226	1600	5429	Merge Equals	962/D	Codeforces
2227	1300	5423	MUH and Important Things	471/B	Codeforces
2228	9999	5419	Nineteen	393/A	Codeforces
2229	1700	5416	Extra Element	1185/D	Codeforces
2230	1000	5415	Cows and Poker Game	284/B	Codeforces
2231	1600	5414	Alyona and Spreadsheet	777/C	Codeforces
2232	800	5411	Determine Line	1056/A	Codeforces
2233	1500	5411	Bubble Sort Graph	340/D	Codeforces
2234	1100	5404	Sereja and Stairs	381/B	Codeforces
2235	1800	5399	Playoff Tournament	1535/D	Codeforces
2236	1800	5394	Apollo versus Pan	1466/E	Codeforces
2237	1000	5390	Canvas Frames	127/B	Codeforces
2238	1100	5388	Correct Solution?	12/B	Codeforces
2239	1800	5387	String Coloring (easy version)	1296/E1	Codeforces
2240	1100	5386	Heads or Tails	242/A	Codeforces
2241	1500	5383	Colorful Bricks	1081/C	Codeforces
2242	1700	5375	Berland Fair	1073/D	Codeforces
2243	1700	5367	Average Superhero Gang Power 	1111/B	Codeforces
2244	1800	5365	Easy Problem	1096/D	Codeforces
2245	1600	5364	Anya and Smartphone	518/C	Codeforces
2246	1000	5363	Robot Sequence	626/A	Codeforces
2247	1600	5360	Socks	731/C	Codeforces
2248	1500	5354	Bus	864/C	Codeforces
2249	1600	5346	Spanning Tree with Maximum Degree	1133/F1	Codeforces
2250	1600	5345	Love Rescue	939/D	Codeforces
2251	1400	5344	USB vs. PS/2	762/B	Codeforces
2252	1500	5340	Okabe and Boxes	821/C	Codeforces
2253	1300	5336	Rectangles	844/B	Codeforces
2254	1400	5335	Mishka and trip	703/B	Codeforces
2255	1900	5331	K-periodic Garland	1353/E	Codeforces
2256	1600	5324	Vasya and Basketball	493/C	Codeforces
2257	1500	5322	Voting	749/C	Codeforces
2258	1600	5322	Color Stripe	219/C	Codeforces
2259	800	5322	Good Matrix Elements	177/A2	Codeforces
2260	1800	5317	A and B and Interesting Substrings	519/D	Codeforces
2261	1500	5312	Vanya and Label	677/C	Codeforces
2262	1500	5311	Lorenzo Von Matterhorn	696/A	Codeforces
2263	1800	5309	Explorer Space	1517/D	Codeforces
2264	1700	5308	Mouse Hunt	1027/D	Codeforces
2265	1000	5307	Ksusha and Array	299/A	Codeforces
2266	1600	5305	Tourist's Notes	538/C	Codeforces
2267	1300	5300	Order Book	572/B	Codeforces
2268	1300	5297	Playing Cubes	257/B	Codeforces
2269	1800	5295	Boboniu Chats with Du	1394/A	Codeforces
2270	1700	5285	Bicolorings	1051/D	Codeforces
2271	1600	5284	Long Path	407/B	Codeforces
2272	1600	5281	Cat Party (Hard Edition)	1163/B2	Codeforces
2273	1500	5281	Nested Segments	976/C	Codeforces
2274	1500	5279	Split a Number	1181/B	Codeforces
2275	1500	5278	Hamming Distance Sum	608/B	Codeforces
2276	1500	5277	Bicycle Race	659/D	Codeforces
2277	1100	5276	Sockets	257/A	Codeforces
2278	1000	5275	Reading	234/B	Codeforces
2279	1500	5273	Planning	853/A	Codeforces
2280	1500	5268	The Party and Sweets	1158/A	Codeforces
2281	1600	5264	Nastya Studies Informatics	992/B	Codeforces
2282	1600	5259	New Year Book Reading	500/C	Codeforces
2283	900	5258	Oleg and shares	793/A	Codeforces
2284	1900	5248	Pashmak and Buses	459/C	Codeforces
2285	1700	5234	Superhero Battle	1141/E	Codeforces
2286	1700	5230	The Meaningless Game	833/A	Codeforces
2287	1800	5221	Tokitsukaze, CSL and Stone Game	1190/B	Codeforces
2288	1900	5219	Painting the Array I	1479/B1	Codeforces
2289	1000	5218	Little Artem and Grasshopper	641/A	Codeforces
2290	1200	5218	Inna and New Matrix of Candies	400/B	Codeforces
2291	9999	5212	Seating Arrangements (hard version) 	1566/D2	Codeforces
2292	1900	5211	Fill The Bag	1303/D	Codeforces
2293	1700	5203	Creative Snap	1111/C	Codeforces
2294	1000	5203	Vasya's Calendar	182/B	Codeforces
2295	1500	5202	Make a Permutation!	864/D	Codeforces
2296	1700	5198	1-2-K Game	1194/D	Codeforces
2297	2100	5198	Maximum Value	484/B	Codeforces
2298	1300	5192	Lara Croft and the New Game	976/B	Codeforces
2299	1300	5183	Okabe and Banana Trees	821/B	Codeforces
2300	1400	5161	Barnicle	697/B	Codeforces
2301	2000	5152	Tree Shuffling	1363/E	Codeforces
2302	1400	5147	Pasha Maximizes	435/B	Codeforces
2303	1300	5144	Black Square	828/B	Codeforces
2304	1700	5143	No to Palindromes!	464/A	Codeforces
2305	1700	5140	Marina and Vasya	584/C	Codeforces
2306	1300	5138	Not Afraid	787/B	Codeforces
2307	1500	5136	Treasure	494/A	Codeforces
2308	1600	5135	The Phone Number	1017/C	Codeforces
2309	1800	5134	King's Path	242/C	Codeforces
2310	1800	5133	Zookeeper and The Infinite Zoo	1491/D	Codeforces
2311	1200	5129	Network Topology	292/B	Codeforces
2312	1900	5128	Classy Numbers	1036/C	Codeforces
2313	1200	5126	Cutting Carrot	794/B	Codeforces
2314	1800	5125	Polycarp and String Transformation	1560/E	Codeforces
2315	1200	5121	2Char	593/A	Codeforces
2316	1700	5120	Triangles	1453/C	Codeforces
2317	1600	5118	Diagonal Walking v.2	1036/B	Codeforces
2318	1600	5116	Plasticine zebra	1025/C	Codeforces
2319	1700	5113	Shurikens	1413/D	Codeforces
2320	1700	5109	Ilya and Escalator	518/D	Codeforces
2321	1200	5108	Months and Years	899/B	Codeforces
2322	1600	5108	Heap Operations	681/C	Codeforces
2323	1900	5102	Multiple Testcases	1342/D	Codeforces
2324	1900	5099	Shortest Cycle	1205/B	Codeforces
2325	1600	5098	Optimal Subsequences (Easy Version)	1227/D1	Codeforces
2326	2000	5097	Prefixes and Suffixes	432/D	Codeforces
2327	1600	5094	Fair	986/A	Codeforces
2328	1700	5090	Karen and Game	815/A	Codeforces
2329	1600	5090	Plus and Square Root	715/A	Codeforces
2330	1400	5086	Letter	180/C	Codeforces
2331	1700	5085	Marcin and Training Camp	1210/B	Codeforces
2332	1500	5081	Bracket Sequences Concatenation Problem	990/C	Codeforces
2333	1300	5074	An express train to reveries	814/B	Codeforces
2334	1200	5074	Bear and Displayed Friends	639/A	Codeforces
2335	1400	5074	Cows and Primitive Roots	284/A	Codeforces
2336	1300	5072	Average Sleep Time	808/B	Codeforces
2337	1700	5067	Balanced Removals (Easier)	1237/C1	Codeforces
2338	1400	5066	Valera and Contest	369/B	Codeforces
2339	1800	5065	Vasya And Array	1187/C	Codeforces
2340	900	5063	University Classes	847/G	Codeforces
2341	1700	5060	Ticket Game	1215/D	Codeforces
2342	800	5052	Spyke Talks	291/A	Codeforces
2343	1700	5047	Relatively Prime Graph	1009/D	Codeforces
2344	1600	5035	Ilya and Sticks	525/C	Codeforces
2345	1800	5030	Vasya and Triangle	1030/D	Codeforces
2346	1800	5028	Vus the Cossack and Strings	1186/C	Codeforces
2347	1000	5024	Numbers	13/A	Codeforces
2348	1100	5018	Kalevitch and Chess	7/A	Codeforces
2349	1300	5017	Masha and Bears	907/A	Codeforces
2350	1700	5014	Short Task	1512/G	Codeforces
2351	1000	5014	Weather Tomorrow	847/M	Codeforces
2352	1800	5009	Neko does Maths	1152/C	Codeforces
2353	1900	5007	Beautiful Array	1155/D	Codeforces
2354	1500	5004	Liebig's Barrels	985/C	Codeforces
2355	1200	5003	Distances to Zero	803/B	Codeforces
2356	1500	4999	Secret Combination	496/B	Codeforces
2357	1800	4998	Shortest and Longest LIS	1304/D	Codeforces
2358	1600	4995	Arpa's loud Owf and Mehrdad's evil plan	741/A	Codeforces
2359	1800	4994	Points and Powers of Two	988/D	Codeforces
2360	1500	4994	Queue	490/B	Codeforces
2361	1200	4989	Cards with Numbers	254/A	Codeforces
2362	1800	4987	Magic Grid	1208/C	Codeforces
2363	1000	4977	Tennis Tournament	628/A	Codeforces
2364	1200	4976	Treasure Hunt	817/A	Codeforces
2365	1900	4974	Array Division	808/D	Codeforces
2366	2000	4971	Not So Simple Polygon Embedding	1354/C2	Codeforces
2367	1800	4969	Power Products	1225/D	Codeforces
2368	1300	4968	Petya and Java	66/A	Codeforces
2369	2000	4965	Monopole Magnets	1344/B	Codeforces
2370	1600	4964	Memory and De-Evolution	712/C	Codeforces
2371	1800	4958	Tic-tac-toe	3/C	Codeforces
2372	1600	4957	Modular Equations	495/B	Codeforces
2373	1900	4945	Three Bags	1467/C	Codeforces
2374	1600	4943	Connect Three	1085/C	Codeforces
2375	2000	4939	Captain Flint and Treasure	1388/D	Codeforces
2376	1100	4929	Coat of Anticubism	667/B	Codeforces
2377	1500	4916	Load Balancing	609/C	Codeforces
2378	1300	4915	Counting-out Rhyme	792/B	Codeforces
2379	1700	4915	Greenhouse Effect	269/B	Codeforces
2380	1700	4908	Navigation System	1320/B	Codeforces
2381	1900	4903	Strange Definition	1470/B	Codeforces
2382	1300	4899	Finding Team Member	579/B	Codeforces
2383	1300	4892	Laurenty and Shop	586/B	Codeforces
2384	1000	4891	Watering System	967/B	Codeforces
2385	1300	4890	Cosmic Tables	222/B	Codeforces
2386	1200	4890	Phone Numbers	151/B	Codeforces
2387	1300	4888	Petya and Catacombs	886/C	Codeforces
2388	1600	4877	Slava and tanks	877/C	Codeforces
2389	1100	4866	Domino Effect	405/B	Codeforces
2390	1700	4863	Increasing by Modulo	1168/A	Codeforces
2391	1500	4859	Did you mean...	858/C	Codeforces
2392	1800	4858	Labyrinth	1063/B	Codeforces
2393	1700	4855	Glider	1041/D	Codeforces
2394	1500	4854	Dasha and Password	761/C	Codeforces
2395	800	4854	Password Check	411/A	Codeforces
2396	1600	4852	Dreamoon and Sums	476/C	Codeforces
2397	2000	4842	Jzzhu and Cities	449/B	Codeforces
2398	1300	4834	Tritonic Iridescence	957/A	Codeforces
2399	1500	4829	Mashmokh and Tokens	415/B	Codeforces
2400	1800	4823	New Year Parties	1283/E	Codeforces
2401	1700	4818	Guest From the Past	625/A	Codeforces
2402	1800	4811	Molly's Chemicals	776/C	Codeforces
2403	1500	4810	Median	166/C	Codeforces
2404	1700	4799	Aroma's Search	1292/B	Codeforces
2405	1500	4799	Mahmoud and Ehab and the wrong algorithm	959/C	Codeforces
2406	1700	4791	Two Strings Swaps	1006/D	Codeforces
2407	1000	4790	Spit Problem	29/A	Codeforces
2408	1900	4785	Genius's Gambit	1492/D	Codeforces
2409	1900	4784	Beautiful Sequence	1264/B	Codeforces
2410	1900	4782	Divide and Sum	1444/B	Codeforces
2411	2200	4782	Circular RMQ	52/C	Codeforces
2412	1400	4770	Knights of a Polygonal Table	994/B	Codeforces
2413	1400	4767	Sorting by Subsequences	843/A	Codeforces
2414	1200	4760	Fortune Telling	59/B	Codeforces
2415	1500	4757	Santa Claus and Keyboard Check	748/B	Codeforces
2416	1800	4756	Ugly Pairs	1156/B	Codeforces
2417	1900	4753	Let's Go Hiking	1495/B	Codeforces
2418	1100	4748	Walking in the Rain	192/B	Codeforces
2419	1300	4745	Selection of Personnel	630/F	Codeforces
2420	1800	4745	Interesting Array	482/B	Codeforces
2421	1600	4743	Really Big Numbers	817/C	Codeforces
2422	1400	4742	Ilya and Matrix	313/C	Codeforces
2423	2000	4737	Directing Edges	1385/E	Codeforces
2424	1000	4737	K-Periodic Array	371/A	Codeforces
2425	900	4737	Indian Summer	44/A	Codeforces
2426	1800	4735	MUH and Cube Walls	471/D	Codeforces
2427	1600	4733	Kuro and Walking Route	979/C	Codeforces
2428	1500	4732	Misha and Forest	501/C	Codeforces
2429	1500	4731	Coach	300/B	Codeforces
2430	1600	4728	Multi-Subject Competition	1082/C	Codeforces
2431	1600	4727	Code For 1	768/B	Codeforces
2432	1700	4716	Pipeline	287/B	Codeforces
2433	2000	4715	Minimax Problem	1288/D	Codeforces
2434	1500	4713	Pyramid of Glasses	676/B	Codeforces
2435	1900	4711	0-1 MST	1242/B	Codeforces
2436	1700	4711	Asya And Kittens	1131/F	Codeforces
2437	1500	4704	Phone Numbers	940/C	Codeforces
2438	1700	4703	Not Equal on a Segment	622/C	Codeforces
2439	1600	4701	Bear and Blocks	573/B	Codeforces
2440	1600	4699	Banh-mi	1062/C	Codeforces
2441	1900	4692	Skyscrapers (hard version)	1313/C2	Codeforces
2442	1500	4691	Pearls in a Row	620/C	Codeforces
2443	1400	4689	Little Elephant and Sorting	205/B	Codeforces
2444	1900	4685	Flood Fill	1114/D	Codeforces
2445	1400	4678	Mike and Cellphone	689/A	Codeforces
2446	1600	4677	An impassioned circulation of affection	814/C	Codeforces
2447	2400	4675	Xenia and Tree	342/E	Codeforces
2448	1100	4675	Testing Pants for Sadness	103/A	Codeforces
2449	900	4675	123-sequence	52/A	Codeforces
2450	1600	4674	Anton and Making Potions	734/C	Codeforces
2451	1300	4672	Mister B and Angle in Polygon	820/B	Codeforces
2452	1700	4671	Mike and gcd problem	798/C	Codeforces
2453	1900	4668	Gargari and Permutations	463/D	Codeforces
2454	1900	4663	Vanya and Scales	552/C	Codeforces
2455	800	4661	Help Far Away Kingdom	99/A	Codeforces
2456	1800	4658	The Treasure of The Segments	1462/F	Codeforces
2457	1700	4656	Present	460/C	Codeforces
2458	1400	4652	Fibonacci Words	1505/C	Codeforces
2459	1500	4645	Queue	91/B	Codeforces
2460	1400	4643	Tea Party	808/C	Codeforces
2461	1600	4640	Fight Against Traffic	954/D	Codeforces
2462	1200	4640	Food on the Plane	725/B	Codeforces
2463	1000	4637	Copying Homework	1252/A	Codeforces
2464	1700	4634	Domino (easy version)	1551/D1	Codeforces
2465	1600	4631	Three-level Laser	924/B	Codeforces
2466	1800	4630	Array Differentiation	1552/D	Codeforces
2467	1800	4630	Maximize the Intersections	1552/C	Codeforces
2468	1700	4627	Binary Numbers AND Sum	1066/E	Codeforces
2469	1900	4626	Cow and Fields	1307/D	Codeforces
2470	1600	4622	Cram Time	1031/C	Codeforces
2471	1900	4620	AB-string	1238/D	Codeforces
2472	1400	4618	Chessboard	961/C	Codeforces
2473	1700	4617	Anadi and Domino	1210/A	Codeforces
2474	2100	4614	Ant colony	474/F	Codeforces
2475	1000	4613	Shell Game	35/A	Codeforces
2476	800	4606	Chores	169/A	Codeforces
2477	1500	4604	Sorting the Coins	875/B	Codeforces
2478	1700	4603	Covered Points Count	1000/C	Codeforces
2479	1900	4599	Binary Literature	1508/A	Codeforces
2480	1700	4599	Fix a Tree	698/B	Codeforces
2481	1700	4598	Annoying Present	1009/C	Codeforces
2483	1600	4597	Mike and Shortcuts	689/B	Codeforces
2484	2000	4595	Watto and Mechanism	514/C	Codeforces
2485	1200	4594	Heidi Learns Hashing (Easy)	1184/A1	Codeforces
2486	1300	4591	Mystical Mosaic	924/A	Codeforces
2487	1700	4589	Palindromic Matrix	1118/C	Codeforces
2488	1100	4589	Vasya and the Bus	190/A	Codeforces
2489	1400	4588	Double Matrix	1162/B	Codeforces
2490	1300	4587	Magical Array	83/A	Codeforces
2491	1600	4585	Plate Game	197/A	Codeforces
2492	1200	4581	Personalized Cup	1032/B	Codeforces
2493	1400	4568	Arpa and an exam about geometry	851/B	Codeforces
2494	1200	4564	Little Frog	53/C	Codeforces
2495	2000	4562	Weights Division (easy version)	1399/E1	Codeforces
2496	1800	4561	Number Of Permutations	1207/D	Codeforces
2497	2000	4561	XOR on Segment	242/E	Codeforces
2498	1500	4559	Vasya and Robot	354/A	Codeforces
2499	1700	4557	Minimum Diameter Tree	1085/D	Codeforces
2500	1600	4547	Zebras	949/A	Codeforces
2501	1600	4545	Milking cows	383/A	Codeforces
2502	1600	4544	Short Program	878/A	Codeforces
2503	1400	4541	Photographer	203/C	Codeforces
2504	1900	4540	String Reversal	1430/E	Codeforces
2505	800	4540	Series of Crimes	181/A	Codeforces
2506	1600	4536	Almost Identity Permutations	888/D	Codeforces
2507	1300	4528	Cubes for Masha	887/B	Codeforces
2508	1600	4527	Round Table Knights	71/C	Codeforces
2509	1700	4517	Messy	1227/C	Codeforces
2510	1400	4513	Point on Spiral	279/A	Codeforces
2511	2000	4504	Modular Stability	1359/E	Codeforces
2512	1300	4504	Plant	185/A	Codeforces
2513	1300	4503	I.O.U.	376/B	Codeforces
2514	1500	4499	Hashing Trees	901/A	Codeforces
2515	1600	4494	From Y to Y	848/A	Codeforces
2516	900	4494	Subtractions	267/A	Codeforces
2517	1700	4492	Primal Sport	923/A	Codeforces
2518	1700	4491	Prefixes and Suffixes	1092/C	Codeforces
2519	1500	4489	Division into Teams	149/C	Codeforces
2520	1700	4481	"Or" Game	578/B	Codeforces
2521	1900	4476	Fools and Roads	191/C	Codeforces
2522	2000	4474	Make Them Equal	1416/B	Codeforces
2523	2200	4464	XOR and Favorite Number	617/E	Codeforces
2524	800	4462	Forgotten Episode	440/A	Codeforces
2525	1900	4460	Bandit in a City	1436/D	Codeforces
2526	1800	4456	Office Keys	830/A	Codeforces
2527	1700	4454	Coffee and Coursework (Hard Version)	1118/D2	Codeforces
2528	1500	4453	Biridian Forest	329/B	Codeforces
2529	1400	4453	Colorful Field	79/B	Codeforces
2530	1800	4439	Nezzar and Board	1477/A	Codeforces
2531	1800	4436	Aerodynamic	1299/B	Codeforces
2532	1400	4436	Guess the Array	727/C	Codeforces
2533	1500	4435	Frodo and pillows	760/B	Codeforces
2534	1700	4429	Two Hundred Twenty One (easy version)	1562/D1	Codeforces
2535	1600	4429	Sagheer, the Hausmeister	812/B	Codeforces
2536	1100	4429	Internet Address	245/B	Codeforces
2537	1700	4428	Painting the Fence	1132/C	Codeforces
2538	1400	4426	Berpizza	1468/C	Codeforces
2539	1300	4426	Steps	152/B	Codeforces
2540	2100	4425	Omkar and Circle	1372/D	Codeforces
2541	1500	4425	Light It Up	1000/B	Codeforces
2542	1500	4425	Searching for Graph	402/C	Codeforces
2543	1900	4424	Salary Changing	1251/D	Codeforces
2544	1700	4423	Santa's Bot	1279/D	Codeforces
2545	800	4414	Year of University Entrance	769/A	Codeforces
2546	1100	4414	Lexicographically Maximum Subsequence	196/A	Codeforces
2547	1800	4414	Bag of mice	148/D	Codeforces
2548	1000	4403	Voting for Photos	637/A	Codeforces
2549	1000	4402	Young Photographer	14/B	Codeforces
2550	2000	4399	Domino for Young	1268/B	Codeforces
2551	800	4398	Phone Code	172/A	Codeforces
2552	1300	4397	Bear and String Distance	628/C	Codeforces
2553	1800	4393	Busy Robot	1463/C	Codeforces
2554	1900	4387	XOR Guessing	1207/E	Codeforces
2555	1500	4383	Little Elephant and Interval	204/A	Codeforces
2556	2000	4375	Reachability from the Capital	999/E	Codeforces
2557	1900	4374	Perform Easily	1413/C	Codeforces
2558	1300	4369	King of Thieves	526/A	Codeforces
2559	1000	4361	Start Up	420/A	Codeforces
2560	1600	4359	Arpa's weak amphitheater and Mehrdad's valuab...	741/B	Codeforces
2561	1900	4356	Complete Tripartite	1228/D	Codeforces
2562	1000	4344	Choosing Laptop	106/B	Codeforces
2563	1400	4343	Special Offer! Super Price 999 Bourles!	219/B	Codeforces
2564	1700	4340	Wet Shark and Flowers	621/C	Codeforces
2565	1900	4339	Mr. Kitayuta, the Treasure Hunter	505/C	Codeforces
2566	1500	4335	Kayaking	863/B	Codeforces
2567	1600	4328	Primes on Interval	237/C	Codeforces
2568	1600	4320	Permutation Game	1033/C	Codeforces
2569	2100	4318	Errich-Tac-Toe (Easy Version)	1450/C1	Codeforces
2570	1600	4316	DMCA	1505/B	Codeforces
2571	1100	4315	Bayan Bus	475/A	Codeforces
2572	1700	4311	Minimal string	797/C	Codeforces
2573	1300	4311	Bear and Compressing	653/B	Codeforces
2574	2000	4310	Clear the String	1132/F	Codeforces
2575	1700	4304	Crazy Diamond	1148/C	Codeforces
2576	2000	4301	The Hard Work of Paparazzi	1427/C	Codeforces
2577	1100	4292	The Contest	813/A	Codeforces
2578	2000	4282	Match Points	1156/C	Codeforces
2579	800	4281	Pasha and Hamsters	421/A	Codeforces
2580	1900	4278	A Lot of Games	455/B	Codeforces
2581	1600	4273	Maximum Submatrix 2	375/B	Codeforces
2582	1000	4272	Seating On Bus	660/B	Codeforces
2583	1700	4271	Feeding Chicken	1254/A	Codeforces
2584	1700	4270	The Smallest String Concatenation	632/C	Codeforces
2585	1600	4269	Decorate Apple Tree	1056/D	Codeforces
2586	1500	4265	Do you want a date?	809/A	Codeforces
2587	1300	4265	Weather	234/C	Codeforces
2588	1400	4264	Phone Numbers	898/C	Codeforces
2589	1700	4264	A Problem about Polyline	578/A	Codeforces
2590	2100	4262	Ciel the Commander	321/C	Codeforces
2591	1600	4261	Primes or Palindromes?	568/A	Codeforces
2592	2100	4257	Zero Remainder Sum 	1433/F	Codeforces
2593	1500	4253	Music	569/A	Codeforces
2594	1900	4249	Shichikuji and Power Grid	1245/D	Codeforces
2595	1800	4249	Two Teams	1154/E	Codeforces
2596	1600	4242	Watering Flowers	617/C	Codeforces
2597	1500	4240	Checkpoints	709/B	Codeforces
2598	1800	4238	Take a Guess	1556/D	Codeforces
2599	1800	4236	Cloud of Hashtags	777/D	Codeforces
2600	1400	4236	Maxim and Discounts	261/A	Codeforces
2601	1700	4233	Long Jumps	479/D	Codeforces
2602	1700	4229	Coffee and Coursework (Easy version)	1118/D1	Codeforces
2603	1900	4228	Necklace Assembly	1367/E	Codeforces
2604	1900	4225	Asterism (Easy Version)	1371/E1	Codeforces
2605	1800	4221	Journey	721/C	Codeforces
2606	1700	4220	Forming Teams	216/B	Codeforces
2607	1900	4216	Strange Beauty	1475/G	Codeforces
2608	1100	4216	The Great Julya Calendar	331/C1	Codeforces
2609	1800	4215	Lost Tree	1534/D	Codeforces
2610	1800	4214	Path Queries	1213/G	Codeforces
2611	1600	4214	Luba And The Ticket	845/B	Codeforces
2612	1400	4213	Arena of Greed	1425/A	Codeforces
2613	1600	4212	Fifa and Fafa	935/C	Codeforces
2614	2000	4212	Red-Green Towers	478/D	Codeforces
2615	1400	4211	Santa Claus and Robot	748/C	Codeforces
2616	1800	4208	Rating Compression	1450/D	Codeforces
2617	1700	4197	Monotonic Renumeration	1102/E	Codeforces
2618	2000	4197	Propagating tree	383/C	Codeforces
2619	1800	4196	Remainders Game	687/B	Codeforces
2620	1500	4194	Hide and Seek	1147/A	Codeforces
2621	1500	4193	Magic Odd Square	710/C	Codeforces
2622	1800	4190	Andrey and Problem	442/B	Codeforces
2623	1900	4189	Need for Pink Slips	1543/C	Codeforces
2624	1900	4189	Array Splitting	1175/D	Codeforces
2625	1700	4188	Devu and his Brother	439/D	Codeforces
2626	1500	4180	Green and Black Tea	746/D	Codeforces
2627	1500	4179	Choosing Symbol Pairs	50/B	Codeforces
2628	1600	4176	Longtail Hedgehog	615/B	Codeforces
2629	1700	4172	Cut and Paste	1280/A	Codeforces
2630	1700	4169	School Marks	540/B	Codeforces
2631	1800	4168	Problem for Nazar	1151/C	Codeforces
2632	1600	4166	Marlin	980/B	Codeforces
2633	1600	4162	Quiz	337/C	Codeforces
2634	1800	4161	XOR-pyramid	983/B	Codeforces
2635	1800	4159	Compressed Bracket Sequence	1556/C	Codeforces
2636	1800	4154	Boxes Packing	1066/D	Codeforces
2637	1500	4143	Pie Rules	859/C	Codeforces
2638	1600	4142	Magic Formulas	424/C	Codeforces
2639	1900	4139	Pashmak and Graph	459/E	Codeforces
2640	1600	4137	Jamie and Interesting Graph	916/C	Codeforces
2641	1800	4136	Eternal Victory	61/D	Codeforces
2642	1900	4132	1D Sokoban	1494/C	Codeforces
2643	1800	4130	Rocket	1010/B	Codeforces
2644	1700	4128	Recommendations	1310/A	Codeforces
2645	1600	4127	Polycarpus' Dice	534/C	Codeforces
2646	1700	4125	The Tag Game	813/C	Codeforces
2647	1700	4125	Masha and geometric depression	789/B	Codeforces
2648	1200	4124	Tiling with Hexagons	216/A	Codeforces
2649	1500	4122	Makes And The Product	817/B	Codeforces
2650	1600	4122	Unusual Product	405/C	Codeforces
2651	1900	4117	Education	1512/F	Codeforces
2652	1100	4117	Whose sentence is it?	312/A	Codeforces
2653	1600	4116	Polycarp at the Radio	723/C	Codeforces
2654	1100	4115	Video Posts	1070/K	Codeforces
2655	1700	4114	Finite or not?	983/A	Codeforces
2656	1600	4111	Nastya and a Wardrobe	992/C	Codeforces
2657	1400	4109	Om Nom and Dark Park	526/B	Codeforces
2658	1800	4107	Nauuo and Cards	1172/A	Codeforces
2659	1900	4106	Magic Ship	1117/C	Codeforces
2660	800	4103	Fake News (easy)	802/G	Codeforces
2661	1000	4099	The Pleasant Walk	1090/M	Codeforces
2662	1200	4095	Code Parsing	255/B	Codeforces
2663	1200	4094	Help Kingdom of Far Far Away 2	143/B	Codeforces
2664	2000	4093	Number of Simple Paths	1454/E	Codeforces
2665	2000	4093	Compress Words	1200/E	Codeforces
2666	1400	4091	Hopscotch	141/B	Codeforces
2667	1900	4090	Treasure Island	1214/D	Codeforces
2668	1100	4090	Nuts	402/A	Codeforces
2669	1300	4090	Semifinals	378/B	Codeforces
2670	1100	4078	Little Xor	252/A	Codeforces
2671	2100	4078	Ancient Berland Circus	1/C	Codeforces
2672	1500	4073	Purification	329/A	Codeforces
2673	1900	4065	Yet Another Subarray Problem	1197/D	Codeforces
2674	1900	4062	Old Floppy Drive 	1490/G	Codeforces
2675	2100	4062	Max Median	1486/D	Codeforces
2676	1800	4058	Dirty Deeds Done Dirt Cheap	1148/D	Codeforces
2677	1600	4058	Camp Schedule	1137/B	Codeforces
2678	1800	4057	Make Palindrome	600/C	Codeforces
2679	1600	4056	Convenient For Everybody	939/C	Codeforces
2680	1900	4054	Binary Table (Hard Version)	1439/A2	Codeforces
2681	1600	4051	Day at the Beach	599/C	Codeforces
2682	1500	4050	Triangle	18/A	Codeforces
2683	2100	4049	Tree Painting	1187/E	Codeforces
2684	1200	4047	Sereja and Contests	401/B	Codeforces
2685	1300	4046	Garbage Disposal	1070/D	Codeforces
2686	1400	4046	Chilly Willy	248/B	Codeforces
2687	1600	4044	Matrix	364/A	Codeforces
2688	2200	4040	Tree Requests	570/D	Codeforces
2689	1900	4035	Riding in a Lift	479/E	Codeforces
2691	1400	4029	Not simply beatiful strings	955/B	Codeforces
2692	1800	4023	Restore Graph	404/C	Codeforces
2693	1900	4018	Nearest Opposite Parity	1272/E	Codeforces
2694	1400	4018	Useful Decomposition	981/C	Codeforces
2695	1800	4007	Recover it!	1176/D	Codeforces
2696	1600	4006	The Labyrinth	616/C	Codeforces
2697	1700	4005	Beautiful Lyrics	1182/C	Codeforces
2698	1500	4004	Little Elephant and Cards	204/B	Codeforces
2699	1600	3996	Maximum Subrectangle	1060/C	Codeforces
2700	1300	3995	Battleship	965/B	Codeforces
2701	1800	3992	Frets On Fire	1119/D	Codeforces
2702	1600	3990	Perfect Pair	317/A	Codeforces
2703	2000	3989	Book of Evil	337/D	Codeforces
2704	1300	3986	Alice and Hairdresser	1055/B	Codeforces
2705	1700	3986	Elections	1019/A	Codeforces
2706	1300	3986	After Training	195/B	Codeforces
2707	1700	3985	Buns	106/C	Codeforces
2708	1700	3984	Save Energy!	936/A	Codeforces
2709	1700	3981	Efim and Strange Grade	718/A	Codeforces
2710	1500	3980	Spongebob and Joke	599/B	Codeforces
2711	2100	3979	Civilization	455/C	Codeforces
2712	1400	3976	Football	417/C	Codeforces
2713	2200	3975	Gerald and Giant Chess	559/C	Codeforces
2714	1900	3972	Bad Luck Island	540/D	Codeforces
2715	1300	3971	Olympic Medal	215/B	Codeforces
2716	1200	3971	Center Alignment	5/B	Codeforces
2717	1900	3968	Two Small Strings	1213/E	Codeforces
2718	1500	3963	Fire Again	35/C	Codeforces
2719	1700	3962	Array Product	1042/C	Codeforces
2720	1600	3954	Hometask	214/B	Codeforces
2721	1800	3953	Border	1010/C	Codeforces
2722	1900	3951	Obtain a Permutation	1294/E	Codeforces
2723	1100	3949	Dima and Guards	366/A	Codeforces
2724	2000	3940	Choosing flowers	1379/C	Codeforces
2725	1600	3933	Anya and Ghosts	508/C	Codeforces
2726	1500	3931	Sereja and Algorithm 	367/A	Codeforces
2727	2100	3927	A and B and Lecture Rooms	519/E	Codeforces
2728	2100	3921	Binary Subsequence Rotation	1370/E	Codeforces
2729	1600	3919	Petya and Exam	832/B	Codeforces
2730	1800	3916	Tree Cutting (Easy Version)	1118/F1	Codeforces
2731	1000	3912	Parliament of Berland	644/A	Codeforces
2732	1600	3910	Hacker, pack your bags!	822/C	Codeforces
2733	2300	3907	The Child and Sequence	438/D	Codeforces
2734	1600	3900	Find Maximum	353/C	Codeforces
2735	1500	3894	Farewell Party	1081/B	Codeforces
2736	900	3894	Power Consumption Calculation	10/A	Codeforces
2737	1200	3894	Train and Peter	8/A	Codeforces
2738	2100	3892	Minimum spanning tree for each edge	609/E	Codeforces
2739	1500	3886	Escape	148/B	Codeforces
2740	1300	3884	Dress'em in Vests!	161/A	Codeforces
2741	1800	3882	Petya and Array	1042/D	Codeforces
2742	1800	3875	A Twisty Movement	933/A	Codeforces
2743	900	3874	Bmail Computer Network	1057/A	Codeforces
2744	1800	3874	Maximum Subsequence	888/E	Codeforces
2745	1300	3872	Servers	747/C	Codeforces
2746	1700	3872	BerOS file system	20/A	Codeforces
2747	1800	3871	The Fair Nut and the Best Path	1083/A	Codeforces
2748	1900	3869	Print a 1337-string...	1202/D	Codeforces
2749	1900	3865	GameGame	1383/B	Codeforces
2750	1800	3862	Submarine in the Rybinsk Sea (hard edition)	1195/D2	Codeforces
2751	1900	3861	Nearest Beautiful Number (easy version)	1560/F1	Codeforces
2752	1900	3861	Kuroni and the Celebration	1305/D	Codeforces
2753	1800	3861	Zero Tree	274/B	Codeforces
2754	2100	3860	Array Shrinking	1312/E	Codeforces
2755	1800	3860	Vessels	371/D	Codeforces
2756	1900	3858	Fox And Jumping	510/D	Codeforces
2757	2100	3857	Coloring Edges	1217/D	Codeforces
2758	1800	3856	Petr and Permutations	986/B	Codeforces
2759	2100	3852	Weights Distributing	1343/E	Codeforces
2760	1600	3851	Extract Numbers	600/A	Codeforces
2761	1900	3850	The Values You Can Make	687/C	Codeforces
2762	1800	3849	Too Easy Problems	913/D	Codeforces
2763	2000	3843	505	1391/D	Codeforces
2764	1800	3843	Recycling Bottles	671/A	Codeforces
2765	1600	3842	s-palindrome	691/B	Codeforces
2766	900	3841	Rock-paper-scissors	48/A	Codeforces
2767	1900	3840	AquaMoon and Chess	1545/B	Codeforces
2768	1800	3840	Irreducible Anagrams	1290/B	Codeforces
2769	1800	3839	Gennady the Dentist	585/A	Codeforces
2770	1300	3837	Messages	964/B	Codeforces
2771	1100	3837	Fruits	12/C	Codeforces
2772	1500	3834	Almost Arithmetical Progression	255/C	Codeforces
2773	1500	3822	Bertown Subway	884/C	Codeforces
2774	2000	3821	Wonder Room	466/B	Codeforces
2775	2000	3821	Count Good Substrings	451/D	Codeforces
2776	1600	3820	Block Towers	626/C	Codeforces
2777	1500	3816	Trains	87/A	Codeforces
2778	1900	3815	Unusual Matrix	1475/F	Codeforces
2779	2000	3814	Bertown roads	118/E	Codeforces
2780	1700	3812	Mysterious Crime	1043/D	Codeforces
2781	1700	3811	Robbers' watch	685/A	Codeforces
2782	1100	3811	Vasya and Public Transport	355/B	Codeforces
2783	900	3810	Network Configuration	412/B	Codeforces
2784	1300	3807	Meeting	144/B	Codeforces
2785	1600	3806	Rectangles	1028/C	Codeforces
2786	1700	3804	Stars Drawing (Easy Edition)	1015/E1	Codeforces
2787	1800	3803	Treasure Hunt	979/B	Codeforces
2788	1100	3799	Mind the Gap	967/A	Codeforces
2789	2000	3796	Appleman and Tree	461/B	Codeforces
2790	1400	3786	Petya and Inequiations	111/A	Codeforces
2791	1800	3785	Clique Problem	527/D	Codeforces
2792	1000	3782	Room Leader	74/A	Codeforces
2793	1800	3780	Ralph And His Magic Field	894/B	Codeforces
2794	1300	3778	Little Elephant and Numbers	221/B	Codeforces
2795	1900	3773	Restore Permutation	1208/D	Codeforces
2796	1800	3772	Graph and String	623/A	Codeforces
2797	1900	3772	Roads in Berland	25/C	Codeforces
2798	1600	3771	Shockers	906/A	Codeforces
2799	1100	3766	African Crossword	90/B	Codeforces
2800	1400	3765	Save the problem!	865/A	Codeforces
2801	2200	3762	Multiples and Power Differences	1485/D	Codeforces
2802	1800	3762	Vasya And The Matrix	1016/D	Codeforces
2803	1700	3762	Mahmoud and a Message	766/C	Codeforces
2804	1100	3760	Irrational problem	68/A	Codeforces
2805	1900	3757	Pavel and Triangles	1119/E	Codeforces
2806	1600	3756	Squares and not squares	898/E	Codeforces
2807	1500	3755	Candies Distribution	1054/C	Codeforces
2808	1600	3754	Divisible by Seven	375/A	Codeforces
2809	1900	3749	Ehab and the Expected XOR Problem	1174/D	Codeforces
2810	1700	3749	Success Rate	773/A	Codeforces
2811	1600	3748	Kostya the Sculptor	733/D	Codeforces
2812	1100	3745	Ternary Logic	136/B	Codeforces
2813	1900	3744	Strange Device	1270/D	Codeforces
2814	1500	3743	Palindrome pairs	159/D	Codeforces
2815	1700	3742	Parking Lot	630/I	Codeforces
2816	2000	3736	Three Paths on a Tree	1294/F	Codeforces
2817	1500	3735	DNA Alignment	520/C	Codeforces
2818	1700	3729	You Are Given a Decimal String...	1202/B	Codeforces
2819	1200	3729	Grandma Laura and Apples	632/A	Codeforces
2820	1900	3728	Tree with Maximum Cost	1092/F	Codeforces
2821	1600	3728	Multi-judge Solving	825/C	Codeforces
2822	2000	3727	Berserk And Fireball	1380/D	Codeforces
2823	1700	3726	Polyline	617/D	Codeforces
2824	1200	3722	King's Task	1510/K	Codeforces
2825	1900	3719	Vanya and Triangles	552/D	Codeforces
2826	1800	3718	Python Indentation	909/C	Codeforces
2827	1700	3712	One-Dimensional Battle Ships	567/D	Codeforces
2828	1200	3711	Taxi drivers and Lyft	1075/B	Codeforces
2829	2400	3707	Tree and Queries	375/D	Codeforces
2830	2000	3704	XOR-gun	1415/D	Codeforces
2831	1600	3701	Skyscrapers	1137/A	Codeforces
2832	1400	3698	Maximal Binary Matrix	803/A	Codeforces
2833	1600	3692	Subway	131/D	Codeforces
2834	1200	3687	Growing Mushrooms	186/B	Codeforces
2835	1800	3682	Voltage Keepsake	772/A	Codeforces
2836	1400	3678	Tic-Tac-Toe	907/B	Codeforces
2837	1700	3677	Guess Your Way Out!	507/C	Codeforces
2838	1400	3676	Multithreading	270/B	Codeforces
2839	1900	3669	Bouncing Boomerangs	1428/D	Codeforces
2840	1200	3667	Two Problems	203/A	Codeforces
2841	2000	3663	String Coloring (hard version)	1296/E2	Codeforces
2842	9999	3655	Pages	399/A	Codeforces
2843	1700	3653	Remove Extra One	900/C	Codeforces
2844	1500	3653	Qualification Rounds	868/C	Codeforces
2845	1500	3653	Bear and Colors	643/A	Codeforces
2846	1400	3650	Gabriel and Caterpillar	652/A	Codeforces
2847	1400	3650	Dorm Water Supply	107/A	Codeforces
2848	1700	3646	New Year Table	140/A	Codeforces
2849	1800	3642	Too Many Segments (easy version)	1249/D1	Codeforces
2850	2000	3638	SUM and REPLACE	920/F	Codeforces
2851	1500	3630	Batch Sort	724/B	Codeforces
2852	1800	3626	Tolik and His Uncle	1179/B	Codeforces
2853	1900	3626	Alyona and a tree	739/B	Codeforces
2854	2000	3625	Minimizing Difference	1244/E	Codeforces
2855	1200	3624	Lefthanders and Righthanders 	234/A	Codeforces
2856	900	3620	Codecraft III	45/A	Codeforces
2857	1800	3619	Edge Deletion	1076/D	Codeforces
2858	2000	3617	Generate a String	710/E	Codeforces
2859	2000	3616	Pair of Numbers	359/D	Codeforces
2860	1300	3612	Binary Number	92/B	Codeforces
2861	1600	3611	The Robot	1468/K	Codeforces
2862	2200	3611	Clear the Multiset	1400/E	Codeforces
2863	1800	3610	Sasha and One More Name	1109/B	Codeforces
2864	1900	3609	Marco and GCD Sequence	894/C	Codeforces
2865	1500	3605	Masha and two friends	1080/C	Codeforces
2866	1800	3604	Vasya and Robot	1073/C	Codeforces
2867	1600	3603	Anton and Lines	593/B	Codeforces
2868	1800	3596	Too Many Segments (hard version)	1249/D2	Codeforces
2869	2100	3595	The Number of Pairs	1499/D	Codeforces
2870	1700	3592	Swaps in Permutation	691/D	Codeforces
2871	1700	3591	Jzzhu and Chocolate	449/A	Codeforces
2872	1600	3588	Constellation	618/C	Codeforces
2873	1800	3585	Chloe and pleasant prizes	743/D	Codeforces
2874	1700	3585	Median Smoothing	590/A	Codeforces
2875	1300	3581	The Closest Pair	311/A	Codeforces
2876	2100	3580	Swaps Again	1365/F	Codeforces
2877	2000	3579	1-Trees and Queries	1304/E	Codeforces
2878	1600	3579	Permutation Cycle	932/C	Codeforces
2879	1600	3578	Magic Box	231/D	Codeforces
2880	2000	3573	Omkar and Medians	1536/D	Codeforces
2881	1900	3570	Make It Connected	1095/F	Codeforces
2882	2000	3569	Nastia and a Hidden Permutation	1521/C	Codeforces
2883	2100	3567	Binary Median	1360/H	Codeforces
2884	1800	3563	Array and Segments (Easy version)	1108/E1	Codeforces
2885	1800	3562	Numbers on Tree	1286/B	Codeforces
2886	1500	3561	Curiosity Has No Limits	1031/B	Codeforces
2887	1600	3560	Igor and his way to work	793/B	Codeforces
2888	1700	3558	Up the Strip (simplified version)	1561/D1	Codeforces
2889	1900	3558	Maximal GCD	803/C	Codeforces
2890	1200	3553	Settlers' Training	63/B	Codeforces
2891	2000	3552	Number of Subsequences	1426/F	Codeforces
2892	1900	3550	Two Fairs	1276/B	Codeforces
2893	1800	3550	Perfect Security	923/C	Codeforces
2894	1800	3548	Inversion Counting	911/D	Codeforces
2895	2000	3545	Orac and Game of Life	1349/C	Codeforces
2896	1900	3545	Arthur and Table	557/C	Codeforces
2897	1500	3545	Kolya and Tandem Repeat	443/B	Codeforces
2898	800	3540	Candies	306/A	Codeforces
2899	1300	3538	Tournament	27/B	Codeforces
2900	2100	3537	Pokémon Army (hard version)	1420/C2	Codeforces
2901	1800	3534	Robot Vacuum Cleaner	922/D	Codeforces
2902	1600	3533	Restaurant	597/B	Codeforces
2903	800	3529	Second-Price Auction	386/A	Codeforces
2904	1900	3526	Directed Roads	711/D	Codeforces
2905	1300	3523	Forecast	630/N	Codeforces
2906	1400	3519	Little Artem and Matrix	641/B	Codeforces
2907	1900	3519	Design Tutorial: Inverse the Problem	472/D	Codeforces
2908	1600	3519	Strange Addition	305/A	Codeforces
2909	1900	3518	Archaeology	1178/E	Codeforces
2910	1400	3517	Limit	197/B	Codeforces
2911	1800	3515	The Intriguing Obsession	869/C	Codeforces
2912	1900	3514	Hexagons	1421/D	Codeforces
2913	1500	3511	Error Correct System	527/B	Codeforces
2914	2200	3511	Compatible Numbers	165/E	Codeforces
2915	1800	3509	Petya and Exam	1282/C	Codeforces
2916	1400	3509	The Doctor Meets Vader (Easy)	1184/B1	Codeforces
2917	2000	3505	AB Graph	1481/D	Codeforces
2918	2000	3504	K-beautiful Strings	1493/C	Codeforces
2919	1800	3501	Friends and Presents	483/B	Codeforces
2920	2100	3497	Restorer Distance	1355/E	Codeforces
2921	1600	3497	Secrets	333/A	Codeforces
2922	1200	3497	Running Student	9/B	Codeforces
2923	1900	3490	Serval and Rooted Tree	1153/D	Codeforces
2924	1600	3487	Divide Candies	1056/B	Codeforces
2925	1800	3485	View Angle	257/C	Codeforces
2926	2000	3484	The Door Problem	776/D	Codeforces
2927	1000	3476	Elevator	120/A	Codeforces
2928	1700	3475	Mike and Chocolate Thieves	689/C	Codeforces
2929	1000	3474	Digits Sequence (Easy Edition)	1177/A	Codeforces
2930	1600	3471	Divisibility	597/A	Codeforces
2931	1800	3466	Optimal Subsequences (Hard Version)	1227/D2	Codeforces
2932	1100	3463	Autocomplete	53/A	Codeforces
2933	1700	3461	Array Restoration	1023/D	Codeforces
2934	1700	3459	Unfair Poll	758/C	Codeforces
2935	1800	3457	Toy Train	1129/A2	Codeforces
2936	2200	3455	Discrete Centrifugal Jumps	1407/D	Codeforces
2937	2100	3447	Segment Intersections	1389/D	Codeforces
2938	1800	3445	Send Boxes to Alice (Easy Version)	1254/B1	Codeforces
2939	1900	3444	Amr and Chemistry	558/C	Codeforces
2940	1900	3439	Array Stabilization (GCD version)	1547/F	Codeforces
2941	1900	3438	Balanced Removals (Harder)	1237/C2	Codeforces
2942	1500	3434	Curriculum Vitae	846/A	Codeforces
2943	1300	3434	Lucky Mask	146/B	Codeforces
2944	1700	3433	Toy Train (Simplified)	1129/A1	Codeforces
2945	1600	3431	Tourist Problem	340/C	Codeforces
2946	1300	3430	Progress Bar	71/B	Codeforces
2947	1600	3426	The Same Calendar	678/B	Codeforces
2948	1800	3424	Thematic Contests	1077/E	Codeforces
2949	1500	3423	Two Seals	837/C	Codeforces
2950	1800	3423	New Year Snowmen	140/C	Codeforces
2951	2000	3418	Little Pony and Harmony Chest	453/B	Codeforces
2952	1900	3415	Bash and a Tough Math Puzzle	914/D	Codeforces
2953	1800	3414	ZgukistringZ	551/B	Codeforces
2954	1900	3413	Checkpoints	1453/D	Codeforces
2955	1600	3411	Two Squares	993/A	Codeforces
2956	1800	3401	Maximum Xor Secondary	280/B	Codeforces
2957	1400	3400	Hongcow Solves A Puzzle	745/B	Codeforces
2958	1500	3400	Indivisibility	630/K	Codeforces
2959	1700	3399	Anton and Chess	734/D	Codeforces
2960	2000	3397	Subsequences (easy version)	1183/E	Codeforces
2961	1700	3397	String Reconstruction	827/A	Codeforces
2962	1800	3397	Jon Snow and his Favourite Number	768/C	Codeforces
2963	1900	3392	White Lines	1200/D	Codeforces
2964	1700	3388	Posterized	980/C	Codeforces
2965	900	3387	Ksusha the Squirrel	299/B	Codeforces
2966	1600	3382	Undoubtedly Lucky Numbers	244/B	Codeforces
2967	1400	3381	Dima and Sequence	272/B	Codeforces
2968	1000	3380	Cableway	90/A	Codeforces
2969	1400	3380	Ring road	24/A	Codeforces
2970	1600	3377	Flag of Berland	837/B	Codeforces
2971	1300	3376	Years	1424/G	Codeforces
2972	1500	3375	Xenia and Spies	342/B	Codeforces
2973	1600	3374	Five-In-a-Row	825/B	Codeforces
2974	1700	3374	Shaass and Bookshelf	294/B	Codeforces
2975	1600	3369	Tram	746/C	Codeforces
2976	1600	3366	Road Map	34/D	Codeforces
2977	2100	3365	Trash Problem	1418/D	Codeforces
2978	2000	3364	Buy a Ticket	938/D	Codeforces
2979	1300	3364	T-Shirt Hunt	807/B	Codeforces
2980	1900	3364	Dreamoon and Sets	476/D	Codeforces
2981	2200	3363	Erase and Extend (Hard Version)	1537/E2	Codeforces
2982	1900	3361	Tavas and Karafs	535/C	Codeforces
2983	1800	3360	Identify the Operations	1442/B	Codeforces
2984	2100	3359	Blood Cousins	208/E	Codeforces
2985	1200	3359	Depression	80/B	Codeforces
2986	1800	3355	K Balanced Teams	1133/E	Codeforces
2987	1400	3354	Permutations	513/B1	Codeforces
2988	1800	3354	Queries for Number of Palindromes	245/H	Codeforces
2989	1800	3347	Fun with Integers	1062/D	Codeforces
2990	1300	3345	Lucky Tickets	43/C	Codeforces
2991	2000	3339	Searchlights	1408/D	Codeforces
2992	2000	3339	The Contest	1257/E	Codeforces
2993	1700	3336	Road to Cinema	729/C	Codeforces
2994	1200	3335	Petya and Square	112/B	Codeforces
2995	2100	3334	Water Tree	343/D	Codeforces
2996	1300	3323	Sereja and Mirroring	426/B	Codeforces
2997	1500	3323	Dima and Text Messages	358/B	Codeforces
2998	2100	3319	Connected Components?	920/E	Codeforces
2999	1200	3319	You're Given a String...	23/A	Codeforces
3000	2100	3317	GCD of an Array	1493/D	Codeforces
3001	1700	3316	Jury Marks	831/C	Codeforces
3002	1700	3316	Devu and Partitioning of the Array	439/C	Codeforces
3003	1600	3308	Hometask	154/A	Codeforces
3004	1700	3307	MUH and House of Cards	471/C	Codeforces
3005	2000	3303	Sequence Sorting	1223/D	Codeforces
3006	1300	3298	Where do I Turn?	227/A	Codeforces
3007	2200	3296	Kate and imperfection	1333/F	Codeforces
3008	1800	3294	Fight the Monster	487/A	Codeforces
3009	1900	3293	Kilani and the Game	1105/D	Codeforces
3010	1400	3292	Serial Time!	60/B	Codeforces
3011	1800	3291	Timetable	946/D	Codeforces
3012	2000	3290	Robot Collisions	1525/C	Codeforces
3013	1700	3286	Subsequence Counting	960/C	Codeforces
3014	1700	3283	Iterated Linear Function	678/D	Codeforces
3015	1900	3282	Pairs	1463/D	Codeforces
3016	2000	3274	Time to Run	1301/D	Codeforces
3017	1900	3273	Koa and the Beach (Easy Version)	1384/B1	Codeforces
3018	1700	3270	A Leapfrog in the Array	949/B	Codeforces
3019	1700	3268	Riverside Curio	924/C	Codeforces
3020	1900	3267	Psychos in a Line	319/B	Codeforces
3021	2300	3266	A Simple Task	558/E	Codeforces
3022	1200	3266	Bus Game	79/A	Codeforces
3023	1300	3261	Friends	94/B	Codeforces
3024	1900	3256	Mahmoud and Ehab and the xor	862/C	Codeforces
3025	1700	3254	XOR Equation	627/A	Codeforces
3026	1500	3253	Anagram Search	144/C	Codeforces
3027	1400	3252	Anfisa the Monkey	44/E	Codeforces
3028	2000	3250	Cheap Dinner	1487/E	Codeforces
3029	2100	3249	Challenges in school №41	1333/D	Codeforces
3030	1700	3247	Planets	229/B	Codeforces
3031	1300	3245	Problems for Round	673/B	Codeforces
3032	1400	3243	Alice, Bob, Two Teams	632/B	Codeforces
3033	1500	3240	Which floor?	858/B	Codeforces
3034	2100	3238	Gift Set	1538/G	Codeforces
3035	2100	3237	Subsequences of Length Two	1409/F	Codeforces
3036	1800	3237	Compression	1107/D	Codeforces
3037	2000	3234	Paths and Trees	545/E	Codeforces
3038	1700	3233	Report	631/C	Codeforces
3039	1400	3230	Race Against Time	868/B	Codeforces
3040	1500	3227	Sereja and Swaps	425/A	Codeforces
3041	1700	3226	Dasha and Very Difficult Problem	761/D	Codeforces
3042	2000	3224	Bitwise Queries (Easy Version)	1451/E1	Codeforces
3043	2300	3222	Count Pairs	1188/B	Codeforces
3044	1300	3212	Down the Hatch!	332/A	Codeforces
3045	2100	3210	Guess The Maximums	1363/D	Codeforces
3046	900	3206	Poster	412/A	Codeforces
3047	1700	3195	Parity Game	297/A	Codeforces
3048	1900	3194	Median String	1144/E	Codeforces
3049	1700	3193	Ciel and Robot	321/A	Codeforces
3050	2100	3188	Kalila and Dimna in the Logging Industry	319/C	Codeforces
3051	1900	3187	Dima and Salad	366/C	Codeforces
3052	2000	3185	Weakness and Poorness	578/C	Codeforces
3053	1400	3185	Flying Saucer Segments	226/A	Codeforces
3054	2100	3184	Two Arrays	1366/E	Codeforces
3055	1700	3184	Graph And Its Complement	990/D	Codeforces
3056	1800	3183	Monitor	16/C	Codeforces
3057	1400	3171	Benches	630/H	Codeforces
3058	1100	3170	Home Numbers	638/A	Codeforces
3059	2000	3162	GCD and MST	1513/D	Codeforces
3060	1800	3162	Vasya And The Mushrooms	1016/C	Codeforces
3061	1700	3162	Petya's Exams	978/G	Codeforces
3062	2000	3161	Fire	864/E	Codeforces
3063	1600	3161	The Brand New Function	243/A	Codeforces
3064	1500	3160	Happy Birthday	1250/H	Codeforces
3065	2200	3159	Powerful Ksenia	1438/D	Codeforces
3066	1800	3157	Nastya Is Buying Lunch	1136/D	Codeforces
3067	1400	3156	Berstagram	1250/A	Codeforces
3068	1200	3155	Mysterious numbers - 1	171/A	Codeforces
3069	1600	3153	Alena And The Heater	940/D	Codeforces
3070	2100	3150	Rarity and New Dress	1393/D	Codeforces
3071	2100	3150	Police Stations	796/D	Codeforces
3072	1700	3149	Matrix Walk	954/C	Codeforces
3073	1800	3147	A Mist of Florescence	989/C	Codeforces
3074	1100	3147	Matchmaker	159/B	Codeforces
3075	1400	3146	Flamingoes of Mystery	1425/F	Codeforces
3076	1900	3145	Equalize the Remainders	999/D	Codeforces
3077	1700	3142	Cow Program	283/B	Codeforces
3078	2200	3141	Cleaning	1474/D	Codeforces
3079	1600	3138	Tell Your World	849/B	Codeforces
3080	1800	3133	The Monster	917/A	Codeforces
3081	2000	3133	Case of Fugitive	555/B	Codeforces
3082	1400	3133	Eight Point Sets	334/B	Codeforces
3083	1200	3130	Potions Homework	717/C	Codeforces
3084	1600	3130	Quantity of Strings	150/B	Codeforces
3085	2000	3127	Expression Evaluation Error	1567/D	Codeforces
3086	1900	3115	Alex and Julian	1220/D	Codeforces
3087	1500	3115	BerOS File Suggestion	1070/H	Codeforces
3088	1800	3114	Reberland Linguistics	666/A	Codeforces
3089	1300	3108	Huge Boxes of Animal Toys	1425/H	Codeforces
3090	1800	3107	Beingawesomeism	1280/B	Codeforces
3091	1500	3105	Debate	1070/F	Codeforces
3092	1000	3105	Rectangular Game	177/B1	Codeforces
3093	1800	3104	Circus	1138/B	Codeforces
3094	1700	3101	Yet Another Ball Problem	1118/E	Codeforces
3095	1900	3101	Social Circles	1060/D	Codeforces
3096	1900	3100	Same Sum Blocks (Hard)	1141/F2	Codeforces
3097	1600	3095	Polycarp's phone book	858/D	Codeforces
3098	1900	3092	Nauuo and Circle	1172/B	Codeforces
3099	1300	3086	Page Numbers	34/C	Codeforces
3100	2000	3082	Pair Of Lines	961/D	Codeforces
3101	2000	3080	Cut and Stick	1514/D	Codeforces
3102	1700	3079	Phillip and Trains	585/B	Codeforces
3103	2100	3077	Money Transfers	675/C	Codeforces
3104	2000	3076	Chocolate Bar	598/E	Codeforces
3105	1900	3070	Da Vinci Powers	656/A	Codeforces
3106	2100	3063	Destroying Roads	543/B	Codeforces
3107	1400	3061	Trees in a Row	402/B	Codeforces
3108	1800	3060	Fountains	799/C	Codeforces
3109	2100	3058	Ehab's Last Corollary	1364/D	Codeforces
3110	2000	3057	Babaei and Birthday Cake	629/D	Codeforces
3111	1600	3056	Ancient Prophesy	260/B	Codeforces
3112	1500	3055	Bargaining Table	22/B	Codeforces
3113	1600	3054	Magical Boxes	269/A	Codeforces
3114	1300	3051	Counting Rhombi	189/B	Codeforces
3115	2000	3050	Garland	767/C	Codeforces
3116	1700	3045	Sea Battle	729/D	Codeforces
3117	1200	3043	Chord	88/A	Codeforces
3118	2000	3042	GCD Counting	1101/D	Codeforces
3119	1900	3039	Game of the Rows	839/B	Codeforces
3120	2000	3039	Divide by Three	792/C	Codeforces
3121	1500	3039	Shifts	229/A	Codeforces
3122	2000	3030	Balanced Playlist	1237/D	Codeforces
3123	2200	3030	Magic Stones	1110/E	Codeforces
3124	1500	3029	New Problem	278/B	Codeforces
3125	1800	3023	Dima and Hares	358/D	Codeforces
3126	1900	3022	Up the Strip	1558/B	Codeforces
3127	1700	3021	Firecrackers	1468/D	Codeforces
3128	1400	3018	Two Tables	228/B	Codeforces
3129	2000	3017	Two Sets	468/B	Codeforces
3130	2000	3016	Multipliers	615/D	Codeforces
3131	1800	3014	Maximum Diameter Graph	1082/D	Codeforces
3132	2100	3014	Valid Sets	486/D	Codeforces
3133	1600	3012	Lonely Numbers	1423/K	Codeforces
3134	1300	3012	Hard Work	61/B	Codeforces
3135	1800	3009	High Load	827/B	Codeforces
3136	1900	3009	Copying Data	292/E	Codeforces
3137	1800	3008	Epidemic in Monstropolis	733/C	Codeforces
3138	1900	3007	Tavas and Malekas	535/D	Codeforces
3139	1900	3006	Same Sum Blocks (Easy)	1141/F1	Codeforces
3140	1900	3005	Image Preview	650/B	Codeforces
3141	1900	3004	A Game with Traps	1260/D	Codeforces
3142	1700	3003	Nephren gives a riddle	896/A	Codeforces
3143	1800	3003	Subsegments	69/E	Codeforces
3144	1500	2999	Divide The Students	1250/L	Codeforces
3145	1600	2999	Fish Weight	297/B	Codeforces
3146	2000	2992	Maximize the Remaining String	1506/G	Codeforces
3147	1900	2992	Two Paths	14/D	Codeforces
3148	2100	2991	Painting the Array II	1479/B2	Codeforces
3149	1800	2991	Maximum Distance	1081/D	Codeforces
3150	1600	2991	Alarm Clock	898/D	Codeforces
3151	1400	2989	Balls Game	430/B	Codeforces
3152	1500	2986	Multitasking	384/B	Codeforces
3153	1900	2985	Chemical table	1012/B	Codeforces
3154	1800	2980	Travelling Salesman and Special Numbers	914/C	Codeforces
3155	1700	2979	Lazy Student	605/B	Codeforces
3156	1700	2977	Laboratory Work	931/C	Codeforces
3157	9999	2977	Inna and Alarm Clock	390/A	Codeforces
3158	1900	2976	Lorry	3/B	Codeforces
3159	1800	2972	Tree Construction	675/D	Codeforces
3160	2100	2971	Reducing Delivery Cost	1433/G	Codeforces
3161	1700	2967	XK Segments	895/B	Codeforces
3162	1200	2964	Homework	101/A	Codeforces
3163	2100	2961	New Year Tree	620/E	Codeforces
3164	1800	2957	Connecting Universities	700/B	Codeforces
3165	2000	2957	DZY Loves Modification	446/B	Codeforces
3166	1500	2957	Magic, Wizardry and Wonders	231/B	Codeforces
3167	1600	2951	Preparing for Merge Sort	847/B	Codeforces
3168	1700	2945	Predict Outcome of the Game	451/C	Codeforces
3169	2000	2941	Danil and a Part-time Job	877/E	Codeforces
3170	9999	2940	...And after happily lived ever they	1331/C	Codeforces
3171	1700	2940	Playing Piano	1032/C	Codeforces
3172	1900	2939	Concatenated Multiples	1029/D	Codeforces
3173	1800	2939	The Golden Age	813/B	Codeforces
3174	2100	2935	Remainder Problem	1207/F	Codeforces
3175	2000	2935	R2D2 and Droid Army	514/D	Codeforces
3176	1700	2933	Mail Stamps	29/C	Codeforces
3177	1500	2930	Feed with Candy	436/A	Codeforces
3178	1200	2928	News About Credit	769/B	Codeforces
3179	1200	2926	Login Verification	928/A	Codeforces
3180	1600	2925	Even Path	1252/C	Codeforces
3181	2000	2924	Decreasing Debts	1266/D	Codeforces
3182	2200	2922	Magic Numbers	628/D	Codeforces
3183	1700	2920	MADMAX	917/B	Codeforces
3184	1600	2918	DZY Loves Physics	444/A	Codeforces
3185	1000	2918	Paper Work	250/A	Codeforces
3186	1800	2917	Connected Component on a Chessboard	1196/E	Codeforces
3187	1700	2917	The Beatles	1142/A	Codeforces
3188	1900	2916	Playlist	1482/D	Codeforces
3189	2000	2915	Yet Another Division Into Teams	1256/E	Codeforces
3190	2000	2915	Ilya And The Tree	842/C	Codeforces
3191	1900	2915	New Year and Fireworks	750/D	Codeforces
3192	2000	2914	Square Subsets	895/C	Codeforces
3193	1900	2912	Yet Another Problem On a Subsequence	1000/D	Codeforces
3194	1500	2911	Sysadmin Bob	31/B	Codeforces
3195	1800	2907	Renting Bikes	363/D	Codeforces
3196	2100	2903	Height All the Same	1332/E	Codeforces
3197	1700	2899	Puzzles	696/B	Codeforces
3198	1600	2898	Colliders	154/B	Codeforces
3199	1900	2897	Peter and Snow Blower	613/A	Codeforces
3200	1800	2890	Line	7/C	Codeforces
3201	1900	2889	Tree Reconstruction	1041/E	Codeforces
3202	2000	2889	Hanoi Factory	777/E	Codeforces
3203	1900	2888	Petya and Divisors	111/B	Codeforces
3204	1300	2887	Star	171/B	Codeforces
3205	1100	2885	Winnie-the-Pooh and honey	120/C	Codeforces
3206	1700	2882	Tree Diameter	1146/C	Codeforces
3207	2100	2876	Water Balance	1299/C	Codeforces
3208	1600	2874	Stairs and Elevators	925/A	Codeforces
3209	2200	2874	Almost Difference	903/D	Codeforces
3210	2000	2873	Roman and Numbers	401/D	Codeforces
3211	1700	2873	Find Pair	160/C	Codeforces
3212	1400	2873	Obsession with Robots	8/B	Codeforces
3213	2000	2867	Unshuffling a Deck	1427/D	Codeforces
3214	1700	2867	Multicolored Cars	818/D	Codeforces
3215	1200	2859	Maximum Number	774/C	Codeforces
3216	1900	2852	Vasya and a Tree	1076/E	Codeforces
3217	1900	2850	Moving Points	1311/F	Codeforces
3218	1300	2847	2-3-numbers	926/A	Codeforces
3219	1900	2846	As Fast As Possible	700/A	Codeforces
3220	1600	2844	Bear and Two Paths	643/B	Codeforces
3221	1700	2843	Constructing Tests	938/C	Codeforces
3222	2100	2842	Moving to the Capital	1472/G	Codeforces
3223	1500	2842	Union of Doubly Linked Lists	847/A	Codeforces
3224	1400	2840	Jumping on Walls	198/B	Codeforces
3225	1200	2839	Pattern	412/C	Codeforces
3226	1400	2837	Shopping	665/B	Codeforces
3227	2100	2832	Segment Tree	1278/D	Codeforces
3228	1900	2832	Once Again...	582/B	Codeforces
3229	1900	2830	Johnny and Grandmaster	1361/B	Codeforces
3230	1400	2824	Om Nom and Spiders	436/B	Codeforces
3231	2000	2822	XOR Inverse	1416/C	Codeforces
3232	1700	2821	Toy Sum	405/D	Codeforces
3233	2100	2818	Present	1322/B	Codeforces
3234	2200	2815	Sum of Paths	1467/D	Codeforces
3235	1800	2813	Vanya and Computer Game	492/D	Codeforces
3236	9999	2812	Inconvenient Pairs	1569/D	Codeforces
3237	1100	2812	Quadcopter Competition	883/M	Codeforces
3238	2200	2810	Carrots for Rabbits	1428/E	Codeforces
3239	1800	2810	Rebus	663/A	Codeforces
3240	1900	2806	Kay and Snowflake	685/B	Codeforces
3241	1200	2798	Amity Assessment	645/A	Codeforces
3242	1200	2797	Mischievous Mess Makers	645/B	Codeforces
3243	1900	2797	Shaass and Lights	294/C	Codeforces
3244	1900	2795	Palindromic characteristics	835/D	Codeforces
3245	1900	2795	Recover the String	708/B	Codeforces
3246	1300	2794	Company Merging	1090/A	Codeforces
3247	1900	2794	Vladik and Memorable Trip	811/C	Codeforces
3248	1800	2792	The Big Race	592/C	Codeforces
3249	1400	2792	Spiders	120/F	Codeforces
3250	1700	2791	Correct Bracket Sequence Editor	670/E	Codeforces
3251	1700	2789	Three Logos	581/D	Codeforces
3252	1500	2786	Hierarchy	17/B	Codeforces
3253	1800	2779	Median on Segments (Permutations Edition)	1005/E1	Codeforces
3254	1300	2778	Command Line Arguments	291/B	Codeforces
3255	1600	2778	pSort	28/B	Codeforces
3256	2100	2777	Olya and Energy Drinks	877/D	Codeforces
3257	1300	2775	Island Puzzle	634/A	Codeforces
3258	2200	2773	GukiZ hates Boxes	551/C	Codeforces
3259	2100	2770	Divisibility by 25	988/E	Codeforces
3260	1900	2770	Mahmoud and Ehab and the xor-MST	959/E	Codeforces
3261	2100	2768	Magic Gems	1117/D	Codeforces
3262	1300	2768	A Student's Dream	62/A	Codeforces
3263	1500	2767	Inna and Nine	374/B	Codeforces
3264	1700	2765	Pavel and barbecue	756/A	Codeforces
3265	1700	2764	Five Dimensional Points	850/A	Codeforces
3266	2000	2761	CGCDSSQ	475/D	Codeforces
3267	1600	2760	Jumping Jack	11/B	Codeforces
3268	2100	2759	Array Partition	1454/F	Codeforces
3269	1900	2759	Generating Sets	722/D	Codeforces
3270	1900	2757	The Wu	1017/D	Codeforces
3271	1900	2756	Number of Parallelograms	660/D	Codeforces
3272	1500	2755	Clique in the Divisibility Graph	566/F	Codeforces
3273	2100	2754	Nearest Beautiful Number (hard version)	1560/F2	Codeforces
3274	2700	2751	Holes	13/E	Codeforces
3275	1900	2750	Almost Regular Bracket Sequence	1095/E	Codeforces
3276	2000	2748	Game with modulo	1103/B	Codeforces
3277	1900	2748	Alyona and Strings	682/D	Codeforces
3278	1500	2748	Dynasty Puzzles	191/A	Codeforces
3279	2200	2745	Three Sequences	1406/D	Codeforces
3280	1900	2741	New Year Santa Network	500/D	Codeforces
3281	1400	2741	Lucky Permutation	286/A	Codeforces
3282	1300	2740	Spoilt Permutation	56/B	Codeforces
3283	1400	2737	Permutations	124/B	Codeforces
3284	1800	2735	Almost Sorted	1508/B	Codeforces
3285	1800	2735	Alternating Sum	963/A	Codeforces
3286	900	2734	Lazyland	1089/L	Codeforces
3287	1900	2728	Regular Bridge	550/D	Codeforces
3288	2000	2721	Nash Matrix	1316/D	Codeforces
3289	1300	2721	Punctuation	147/A	Codeforces
3290	1300	2720	Cookies	70/A	Codeforces
3291	1900	2719	Numerical Sequence (easy version)	1216/E1	Codeforces
3292	1200	2719	Square	194/B	Codeforces
3293	1500	2718	Marathon	404/B	Codeforces
3294	1300	2716	Where Are My Flakes?	60/A	Codeforces
3295	1800	2714	The Union of k-Segments	612/D	Codeforces
3296	900	2713	Balls of Buma	1267/B	Codeforces
3297	2000	2710	Captain Marmot	474/C	Codeforces
3298	1700	2709	Message	156/A	Codeforces
3299	1800	2707	Naming Company	794/C	Codeforces
3300	1400	2703	Cracking the Code	630/L	Codeforces
3301	1900	2703	Tennis Game	496/D	Codeforces
3302	2100	2701	Cut	1516/D	Codeforces
3303	1600	2701	Pasha and Phone	595/B	Codeforces
3304	1500	2701	Resort	350/B	Codeforces
3305	1900	2697	Power Transmission (Hard Edition)	1163/C2	Codeforces
3306	1600	2696	Well-known Numbers	225/B	Codeforces
3307	1900	2694	Missile Silos	144/D	Codeforces
3308	2100	2693	Omkar and Duck	1392/E	Codeforces
3309	1300	2691	Prime Permutation	123/A	Codeforces
3310	1900	2690	Good Triple	1168/B	Codeforces
3311	1700	2690	Numbers Joke	784/A	Codeforces
3312	2200	2688	Kaavi and Magic Spell	1336/C	Codeforces
3313	1700	2688	Colored Rooks	1068/C	Codeforces
3314	1100	2688	Quiz League	120/B	Codeforces
3315	1600	2687	Strange Game On Matrix	873/C	Codeforces
3316	1700	2683	About Bacteria	198/A	Codeforces
3317	1900	2681	Tufurama	961/E	Codeforces
3318	1600	2681	Travel Card	756/B	Codeforces
3319	1900	2680	Imbalanced Array	817/D	Codeforces
3320	1900	2678	Stars Drawing (Hard Edition)	1015/E2	Codeforces
3321	1200	2678	What is for dinner?	33/A	Codeforces
3322	1900	2675	Misha, Grisha and Underground	832/D	Codeforces
3323	1500	2675	Inna and Huge Candy Matrix	400/C	Codeforces
3324	1400	2672	Mishap in Club	245/E	Codeforces
3325	1800	2671	Volatile Kite	772/B	Codeforces
3326	1400	2670	Martian Dollar	41/B	Codeforces
3327	1700	2664	Cutting Figure	193/A	Codeforces
3328	2000	2657	Kamil and Making a Stream	1210/C	Codeforces
3329	1800	2653	My pretty girl Noora	822/D	Codeforces
3330	1900	2651	Road to Post Office	702/D	Codeforces
3331	1500	2646	Keyboard	88/B	Codeforces
3332	2300	2642	Legacy	786/B	Codeforces
3333	2300	2637	Nearest vectors	598/C	Codeforces
3334	2300	2635	Errich-Tac-Toe (Hard Version)	1450/C2	Codeforces
3335	1800	2634	Yaroslav and Sequence	301/A	Codeforces
3336	2100	2622	Decryption	1419/E	Codeforces
3337	1800	2622	Little Artem and Dance	641/C	Codeforces
3338	1300	2622	Email address	41/C	Codeforces
3339	2000	2621	Strip	487/B	Codeforces
3340	1500	2618	Newspaper Headline	91/A	Codeforces
3341	1700	2616	Magic Five	327/C	Codeforces
3342	1800	2613	Bus Number	991/E	Codeforces
3343	1900	2613	Innokenty and a Football League	780/D	Codeforces
3344	2000	2613	Robin Hood	671/B	Codeforces
3345	1900	2610	N Problems During K Days	1157/D	Codeforces
3346	1700	2606	Full Turn	1468/F	Codeforces
3347	1900	2605	The Child and Zoo	437/D	Codeforces
3348	1900	2605	Porcelain	148/E	Codeforces
3349	2100	2604	Round Subset	837/D	Codeforces
3350	1900	2599	Flag	1181/C	Codeforces
3351	2200	2595	Infinite Path	1327/D	Codeforces
3352	1800	2594	Harmony Analysis	610/C	Codeforces
3353	2000	2594	Number With The Given Amount Of Divisors	27/E	Codeforces
3354	1900	2588	Bookshelves	981/D	Codeforces
3355	1600	2583	Testing Robots	606/B	Codeforces
3356	2100	2579	Boring Segments	1555/E	Codeforces
3357	2000	2578	Glass Half Spilled	1458/B	Codeforces
3358	1600	2578	Basketball Team	107/B	Codeforces
3359	1500	2576	PFAST Inc.	114/B	Codeforces
3360	1900	2575	Bank Hacking	796/C	Codeforces
3361	1700	2574	Clear Symmetry	201/A	Codeforces
3362	2600	2573	Ciel and Gondolas	321/E	Codeforces
3363	2100	2568	Recovering BST	1025/D	Codeforces
3364	1500	2567	Secret	271/C	Codeforces
3365	1600	2566	Permutation Game	818/B	Codeforces
3366	1500	2562	Suitable Replacement	825/D	Codeforces
3367	2000	2560	Increasing Frequency	1082/E	Codeforces
3368	2100	2559	Soldier and Traveling	546/E	Codeforces
3369	1300	2557	Delete Them	730/H	Codeforces
3370	1500	2556	Statues	128/A	Codeforces
3371	2200	2554	Make It Increasing	1437/E	Codeforces
3372	1200	2553	Chess	38/B	Codeforces
3373	2200	2550	Jongmah	1110/D	Codeforces
3374	2000	2545	Roman Digits	997/B	Codeforces
3375	1100	2544	T-shirts from Sponsor	46/B	Codeforces
3376	2200	2541	Great Vova Wall (Version 1)	1092/D1	Codeforces
3377	1500	2541	Solution for Cube	887/C	Codeforces
3378	1100	2540	Cubical Planet	39/D	Codeforces
3379	2100	2536	Sleepy Game	936/B	Codeforces
3380	1900	2535	Let's Play the Words?	1277/D	Codeforces
3381	2100	2535	Kirk and a Binary String (hard version)	1204/D2	Codeforces
3382	1400	2535	Mysterious strings	290/A	Codeforces
3383	1900	2533	Power Transmission (Easy Edition)	1163/C1	Codeforces
3384	2200	2531	Decreasing Heights	1353/F	Codeforces
3385	1800	2531	Nested Segments	652/D	Codeforces
3386	1700	2531	Terse princess	148/C	Codeforces
3387	2200	2525	Strange Housing	1470/D	Codeforces
3388	1300	2521	Calendar	304/B	Codeforces
3389	9999	2519	Buds Re-hanging	1566/E	Codeforces
3390	1000	2516	Maximum Control (easy)	958/B1	Codeforces
3391	1700	2511	Nearest Fraction	281/B	Codeforces
3392	2000	2510	Messenger Simulator	1288/E	Codeforces
3393	2100	2509	Xor-Paths	1006/F	Codeforces
3394	1600	2509	Enduring Exodus	645/C	Codeforces
3395	1600	2509	Energy exchange	68/B	Codeforces
3396	1800	2505	Winter Is Coming	747/D	Codeforces
3397	1900	2505	Subsequences	597/C	Codeforces
3398	1200	2503	Bets	69/B	Codeforces
3399	1200	2503	Flea travel	55/A	Codeforces
3400	2000	2501	Matching vs  Independent Set	1198/C	Codeforces
3401	2000	2500	Lucky Common Subsequence	346/B	Codeforces
3402	1900	2500	Fish	16/E	Codeforces
3403	2000	2496	Drazil and Tiles	515/D	Codeforces
3404	2000	2495	Inna and Pink Pony	374/A	Codeforces
3405	1600	2494	Ravioli Sort	952/C	Codeforces
3406	2200	2493	Make k Equal	1328/F	Codeforces
3407	2200	2492	Duff in the Army	587/C	Codeforces
3408	2200	2489	Calendar Ambiguity	1389/E	Codeforces
3409	1800	2489	Yet Another Array Queries Problem	863/D	Codeforces
3410	1200	2485	Average Numbers	134/A	Codeforces
3411	2100	2482	Mishka and Interesting sum	703/D	Codeforces
3412	1200	2481	Cottage Village	15/A	Codeforces
3413	1900	2479	Checkout Assistant	19/B	Codeforces
3414	1600	2478	Palindrome Pairs	1045/I	Codeforces
3415	2100	2478	Anton and Tree	734/E	Codeforces
3416	2200	2478	A Simple Task	11/D	Codeforces
3417	2200	2477	To Go Or Not To Go?	1520/G	Codeforces
3418	2200	2474	Perfect Triples	1338/C	Codeforces
3419	1300	2474	Turing Tape	132/A	Codeforces
3420	9999	2471	Counting Sticks	394/A	Codeforces
3421	1700	2470	The Tower is Going Home	1044/A	Codeforces
3422	2300	2464	Dominant Indices	1009/F	Codeforces
3423	2000	2463	Gourmet choice	1131/D	Codeforces
3424	2100	2462	Array and Operations	498/C	Codeforces
3425	1100	2460	Increasing Matrix	1231/C	Codeforces
3426	2000	2450	Kirk and a Binary String (easy version)	1204/D1	Codeforces
3427	1400	2447	Send the Fool Further! (easy)	802/J	Codeforces
3428	1500	2447	Two Semiknights Meet	362/A	Codeforces
3429	2000	2441	Mahmoud and a Dictionary	766/D	Codeforces
3430	1900	2436	Read Time	343/C	Codeforces
3431	2100	2435	Euclid's nightmare	1466/F	Codeforces
3432	1400	2435	String Manipulation 1.0	159/C	Codeforces
3433	1900	2433	Mahmoud and Ehab and another array constructi...	959/D	Codeforces
3434	1900	2433	Prime Number	359/C	Codeforces
3435	2000	2431	Gluttony	891/B	Codeforces
3436	1700	2429	Balls and Boxes	260/C	Codeforces
3437	1800	2428	Jeff and Rounding	351/A	Codeforces
3438	1300	2426	Find Color	40/A	Codeforces
3439	2100	2425	Permutation Shift	1553/E	Codeforces
3440	1600	2424	Cards Sorting	830/B	Codeforces
3441	1900	2423	Pictures with Kittens (easy version)	1077/F1	Codeforces
3442	1600	2422	Malek Dance Club	319/A	Codeforces
3443	1100	2420	Replacing Digits	169/B	Codeforces
3444	1900	2418	Video Cards	731/F	Codeforces
3445	1400	2414	Прокат велосипедов	929/A	Codeforces
3446	2000	2407	Vasya and Good Sequences	1030/E	Codeforces
3447	1800	2406	Maximize!	939/E	Codeforces
3448	1800	2401	Surrounded	190/B	Codeforces
3449	1400	2398	Space Formula	1046/C	Codeforces
3450	1900	2398	Train Hard, Win Easy	1043/E	Codeforces
3451	2200	2396	The Bakery	833/B	Codeforces
3452	1100	2395	Orchestra	635/A	Codeforces
3453	2100	2393	Common Number	1271/E	Codeforces
3454	2200	2393	Palindrome Degree	7/D	Codeforces
3455	1800	2392	Cycle in Graph	263/D	Codeforces
3456	2000	2390	World of Darkraft: Battle for Azathoth	1320/C	Codeforces
3457	2100	2390	New Year and Conference	1284/D	Codeforces
3458	1800	2390	Permutations	513/B2	Codeforces
3459	2000	2388	Ability To Convert	758/D	Codeforces
3460	1900	2383	Credit Card	893/D	Codeforces
3461	1700	2383	Processing Queries	644/B	Codeforces
3462	1600	2382	Hidden Word	725/C	Codeforces
3463	1900	2381	Single-use Stones	965/D	Codeforces
3464	2200	2379	Kuroni and the Score Distribution	1305/E	Codeforces
3465	2300	2379	Sonya and Problem Wihtout a Legend	713/C	Codeforces
3466	2100	2377	Graph Coloring	1354/E	Codeforces
3467	1500	2376	Polo the Penguin and Houses 	288/B	Codeforces
3468	1800	2374	Contest Balloons	725/D	Codeforces
3469	2000	2370	Equalizing Two Strings	1256/F	Codeforces
3470	2000	2367	Triangular Paths	1506/F	Codeforces
3471	1800	2366	Chips	333/B	Codeforces
3472	1900	2365	Hills	1012/C	Codeforces
3473	1700	2364	Convex Shape	275/B	Codeforces
3474	1800	2360	Road Reform	1468/J	Codeforces
3475	1600	2360	Buses Between Cities	665/A	Codeforces
3476	1900	2359	Nezzar and Binary String	1477/B	Codeforces
3477	1400	2359	Accounting	30/A	Codeforces
3478	1100	2358	SMSC	292/A	Codeforces
3479	2200	2357	Almost Acyclic Graph	915/D	Codeforces
3480	1800	2353	String Problem	33/B	Codeforces
3481	2100	2347	Xor Tree	1446/C	Codeforces
3482	1600	2347	Sereja and Prefixes	380/A	Codeforces
3483	2400	2346	Jzzhu and Numbers	449/D	Codeforces
3484	1700	2344	Four Segments	14/C	Codeforces
3485	1600	2343	Cardiogram	435/C	Codeforces
3486	2100	2340	Complete the Projects (easy version)	1203/F1	Codeforces
3487	1900	2340	Paths in a Complete Binary Tree	792/D	Codeforces
3488	1800	2339	Jerry's Protest	626/D	Codeforces
3489	2200	2338	Sum of Digits	1373/E	Codeforces
3490	1900	2338	Spongebob and Squares	599/D	Codeforces
3491	2200	2337	Sausage Maximization	282/E	Codeforces
3492	1200	2332	Rotate, Flip and Zoom	523/A	Codeforces
3493	2000	2332	Fox and Card Game	388/C	Codeforces
3494	2200	2329	0-1-Tree	1156/D	Codeforces
3495	2100	2328	Pencils and Boxes	985/E	Codeforces
3496	2100	2326	New Year's Puzzle	1472/F	Codeforces
3497	2200	2321	Travelling Salesman Problem	1503/C	Codeforces
3498	2000	2321	Cashback	940/E	Codeforces
3499	1200	2319	Clothes	102/A	Codeforces
3500	2000	2318	Equation	20/B	Codeforces
3501	1500	2317	Brain Network (medium)	690/C2	Codeforces
3502	2000	2316	Famil Door and Brackets	629/C	Codeforces
3503	2000	2311	Intercity Travelling	1009/E	Codeforces
3504	1800	2308	Dungeons and Candies	436/C	Codeforces
3505	1300	2304	Game on Paper	203/B	Codeforces
3506	2100	2302	Flying Sort (Easy Version)	1367/F1	Codeforces
3507	1800	2302	Jury Meeting	853/B	Codeforces
3508	1800	2302	Weird Chess	538/D	Codeforces
3509	2100	2301	Vasya and Beautiful Arrays	354/C	Codeforces
3510	1500	2297	Facetook Priority Wall	75/B	Codeforces
3511	2100	2296	Send Boxes to Alice (Hard Version)	1254/B2	Codeforces
3512	1300	2296	Square Earth?	57/A	Codeforces
3513	1900	2291	Barcelonian Distance	1032/D	Codeforces
3514	1300	2291	Maximize Sum of Digits	770/B	Codeforces
3515	2000	2289	Dima and Bacteria	400/D	Codeforces
3516	1800	2286	Simple Subset	665/D	Codeforces
3517	1400	2286	Promocodes with Mistakes	637/C	Codeforces
3518	1300	2279	Help Chef Gerasim	99/B	Codeforces
3519	1600	2276	Beauty Pageant	246/C	Codeforces
3520	2100	2273	Timofey and rectangles	763/B	Codeforces
3521	1100	2269	Collective Mindsets (easy)	690/A1	Codeforces
3522	1100	2268	Special Task	316/A1	Codeforces
3523	2000	2266	Vitya and Strange Lesson	842/D	Codeforces
3524	1900	2265	Dwarves, Hats and Extrasensory Abilities	1063/C	Codeforces
3525	1800	2263	Foe Pairs	652/C	Codeforces
3526	1300	2261	Berland Bingo	370/B	Codeforces
3527	1500	2258	Guest Student	1089/G	Codeforces
3528	2000	2249	Array Queries	797/E	Codeforces
3529	1800	2249	Moodular Arithmetic	603/B	Codeforces
3530	1500	2249	Permutations	187/A	Codeforces
3531	2100	2247	Minimax	1530/E	Codeforces
3532	2000	2247	Looking for Order	8/C	Codeforces
3533	1700	2246	Elections	1267/E	Codeforces
3534	2100	2246	OpenStreetMap	1195/E	Codeforces
3535	1400	2245	Name Quest	523/C	Codeforces
3536	2300	2245	Antimatter	383/D	Codeforces
3537	1900	2243	Lucky Tree	109/C	Codeforces
3538	1600	2241	Game with String	930/B	Codeforces
3539	1500	2237	Weird Game	293/A	Codeforces
3540	1800	2235	Robot Rapping Results Report	645/D	Codeforces
3541	2100	2231	Number of Components	1151/E	Codeforces
3542	1700	2227	Artsem and Saunders	765/D	Codeforces
3543	1600	2227	Dima and Two Sequences	272/D	Codeforces
3544	2000	2224	Little Artem and Time Machine	641/E	Codeforces
3545	1600	2224	Help Farmer	142/A	Codeforces
3546	2800	2222	LCIS	10/D	Codeforces
3547	1200	2219	Pseudorandom Sequence Period	172/B	Codeforces
3548	1900	2216	Minimum path	1031/D	Codeforces
3549	1700	2216	Factory Repairs	627/B	Codeforces
3550	2200	2213	Guess the K-th Zero (Hard version)	1520/F2	Codeforces
3551	1700	2212	Petya and His Friends	66/D	Codeforces
3552	2200	2211	Marbles	1215/E	Codeforces
3553	2000	2211	PolandBall and Polygon	755/D	Codeforces
3554	2000	2210	Obsessive String	494/B	Codeforces
3555	2100	2208	The LCMs Must be Large	1166/E	Codeforces
3556	1900	2208	Chladni Figure	1147/B	Codeforces
3557	2000	2207	Sergey and Subway	1060/E	Codeforces
3558	2000	2206	Counting Arrays	893/E	Codeforces
3559	1200	2206	Rectangular Game	177/B2	Codeforces
3560	1400	2206	Put Knight!	120/E	Codeforces
3561	2000	2203	Fixed Points	1551/E	Codeforces
3562	1900	2202	Magazine Ad	803/D	Codeforces
3563	1500	2202	Lucky Transformation	121/B	Codeforces
3564	1400	2201	Friends or Not	159/A	Codeforces
3565	2000	2199	Choosing Balls	264/C	Codeforces
3566	1900	2192	Optimal Number Permutation	622/D	Codeforces
3567	2000	2191	New Year and Ancient Prophecy	611/D	Codeforces
3568	2100	2190	Bear and Tree Jumps	771/C	Codeforces
3569	9999	2186	On Segment's Own Points	397/A	Codeforces
3570	1900	2184	Ciel and Duel	321/B	Codeforces
3571	2000	2182	Let's Play Osu!	235/B	Codeforces
3572	1800	2180	Merge Sort	873/D	Codeforces
3573	2000	2176	Into Blocks (easy version)	1209/G1	Codeforces
3574	2200	2173	Phoenix and Computers	1515/E	Codeforces
3575	2200	2173	Winter is here	839/D	Codeforces
3576	1500	2173	Elimination	417/A	Codeforces
3577	2200	2172	Trips	1037/E	Codeforces
3578	1800	2172	Prime Swaps	432/C	Codeforces
3579	2000	2170	Thanos Nim	1147/C	Codeforces
3580	1900	2170	How many trees?	9/D	Codeforces
3581	2200	2169	Non-Decreasing Dilemma	1567/E	Codeforces
3582	2500	2168	Beautiful numbers	55/D	Codeforces
3583	1400	2166	Chat	928/B	Codeforces
3584	1400	2165	Splitting money	1046/F	Codeforces
3585	2100	2162	Longest Subsequence	632/D	Codeforces
3586	1400	2160	Guilty --- to the kitchen!	42/A	Codeforces
3587	2000	2159	Leaving Auction	749/D	Codeforces
3588	2200	2158	Mike and Frog	547/A	Codeforces
3589	1600	2158	Making Sequences is Fun	373/B	Codeforces
3590	2000	2156	Pillars	474/E	Codeforces
3591	1900	2156	Inna and Dima	374/C	Codeforces
3592	1900	2156	Sereja ans Anagrams	367/B	Codeforces
3593	2400	2153	Buy Low Sell High	865/D	Codeforces
3594	2100	2151	Increase Sequence	466/D	Codeforces
3595	1800	2150	Twin Buildings	1252/H	Codeforces
3596	1300	2144	Extra-terrestrial Intelligence	36/A	Codeforces
3597	1700	2143	Substring and Subsequence	163/A	Codeforces
3598	2000	2141	Polycarp and Snakes	1185/E	Codeforces
3599	2100	2141	Breaking Good	507/E	Codeforces
3600	1900	2141	Exposition	6/E	Codeforces
3601	1900	2140	Fafa and Ancient Alphabet	935/D	Codeforces
3602	2300	2134	Bitwise Queries (Hard Version)	1451/E2	Codeforces
3603	1700	2134	Animals	35/D	Codeforces
3604	1600	2132	Party	23/B	Codeforces
3605	1900	2130	Felicity is Coming!	757/C	Codeforces
3606	1700	2130	Wilbur and Points	596/C	Codeforces
3607	2000	2129	Ehab and another another xor problem	1088/D	Codeforces
3608	2200	2129	Sequence	13/C	Codeforces
3609	1800	2127	The Parade	1250/J	Codeforces
3610	1800	2126	Shovel Sale	899/D	Codeforces
3611	2000	2123	Levko and Array	360/B	Codeforces
3612	2200	2120	Arithmetic Progression	1114/E	Codeforces
3613	1200	2119	April Fools' Problem (easy)	802/M	Codeforces
3614	1800	2116	Vasily the Bear and Sequence	336/C	Codeforces
3615	1900	2115	Spanning Tree with One Fixed Degree	1133/F2	Codeforces
3616	2100	2114	Funny Substrings	1538/E	Codeforces
3617	1900	2114	Array Without Local Maximums 	1067/A	Codeforces
3618	1800	2112	Ryouko's Memory Note	433/C	Codeforces
3619	2200	2111	Nature Reserve	1059/D	Codeforces
3620	2100	2111	Points on Plane	576/C	Codeforces
3621	1900	2109	Subsequences (hard version)	1183/H	Codeforces
3622	2000	2106	Destruction of a Tree	963/B	Codeforces
3623	2100	2105	Friends and Subsequences	689/D	Codeforces
3624	2200	2104	Antenna Coverage	1253/E	Codeforces
3625	1500	2103	Workout plan	1218/F	Codeforces
3626	1700	2103	Bracket Sequence	223/A	Codeforces
3627	2000	2102	Special Permutations	1234/E	Codeforces
3628	2000	2102	Unusual Sequences	900/D	Codeforces
3629	1500	2102	Online Courses In BSU	770/C	Codeforces
3630	2000	2099	Petya and Construction Set	1214/E	Codeforces
3631	2100	2097	Editor	1263/E	Codeforces
3632	1800	2097	Falling Anvils	77/B	Codeforces
3633	2000	2093	Fibonacci-ish	633/D	Codeforces
3634	1400	2092	Robot Bicorn Attack	175/A	Codeforces
3635	2000	2089	Minimization	571/B	Codeforces
3636	1900	2086	Counting Rectangles is Fun	372/B	Codeforces
3637	2000	2084	Rotate Columns (easy version)	1209/E1	Codeforces
3638	1200	2083	Encryption (easy)	958/C1	Codeforces
3639	2200	2083	Persistent Bookcase 	707/D	Codeforces
3640	2300	2082	Physical Education Lessons	915/E	Codeforces
3641	2300	2080	Returning Home	1422/D	Codeforces
3642	1800	2080	Upgrading Array	402/D	Codeforces
3643	2600	2078	Least Cost Bracket Sequence	3/D	Codeforces
3644	1800	2077	Lexicography	1267/L	Codeforces
3645	1700	2075	The Great Game	409/A	Codeforces
3646	2200	2074	Koa and the Beach (Hard Version)	1384/B2	Codeforces
3647	2100	2074	Berland Beauty	1296/F	Codeforces
3648	2200	2074	Happy Line	549/G	Codeforces
3649	1600	2074	Ivan and Powers of Two	305/C	Codeforces
3650	2100	2073	We Need More Bosses	1000/E	Codeforces
3651	1800	2069	Math Show	846/B	Codeforces
3652	1600	2068	Literature Lesson	138/A	Codeforces
3653	2200	2067	Paired Payment	1486/E	Codeforces
3654	1200	2067	Data Recovery	413/A	Codeforces
3655	2000	2065	Om Nom and Candies	526/C	Codeforces
3656	1500	2065	Lawnmower	115/B	Codeforces
3657	1600	2063	Load Testing	847/H	Codeforces
3658	1800	2060	The Feast and the Bus	1250/B	Codeforces
3659	2000	2058	Bottom-Tier Reversals	1558/C	Codeforces
3660	1600	2058	Cycles	232/A	Codeforces
3661	1900	2057	Handshakes	534/D	Codeforces
3662	2000	2057	Queue	353/D	Codeforces
3663	2200	2056	Makoto and a Blackboard	1097/D	Codeforces
3664	1700	2055	System Administrator	22/C	Codeforces
3665	2100	2054	Beautiful Mirrors	1265/E	Codeforces
3666	2100	2050	Paint the Tree	1223/E	Codeforces
3667	1500	2049	Young Table	237/B	Codeforces
3668	2300	2048	Team Building	1316/E	Codeforces
3669	1900	2046	Dense Subsequence	724/D	Codeforces
3670	2000	2046	Maxim and Array	721/D	Codeforces
3671	1800	2042	New Year Contest	140/D	Codeforces
3672	1500	2040	Traffic Lights	29/B	Codeforces
3673	1800	2039	1-2-3	863/C	Codeforces
3674	2100	2038	Watching Fireworks is Fun	372/C	Codeforces
3675	1900	2038	Unordered Subsequence	27/C	Codeforces
3676	1500	2037	QR code	290/B	Codeforces
3677	2100	2035	Skyline Photo	1482/E	Codeforces
3678	2000	2034	Wet Shark and Blocks	621/E	Codeforces
3679	1900	2034	Volleyball	95/C	Codeforces
3680	1600	2031	Parallel Universes (Easy)	1184/D1	Codeforces
3681	1800	2031	Multihedgehog	1067/B	Codeforces
3682	2200	2029	Divisor Paths	1334/E	Codeforces
3683	2500	2029	Tanya and Password	508/D	Codeforces
3684	1300	2029	Old Peykan	241/A	Codeforces
3685	1900	2026	Spy Syndrome 2	633/C	Codeforces
3686	1900	2026	Haar Features	549/D	Codeforces
3687	2000	2024	Games with Rectangle	128/C	Codeforces
3688	2300	2023	Rectangle Painting 1	1198/D	Codeforces
3689	2100	2023	Game of Stones	768/E	Codeforces
3690	2100	2022	Mahmoud and a xor trip	766/E	Codeforces
3691	1300	2020	Brain Network (easy)	690/C1	Codeforces
3692	1400	2020	Measuring Lengths in Baden	125/A	Codeforces
3693	1500	2011	STL	190/C	Codeforces
3694	1900	2008	Two Heaps	353/B	Codeforces
3695	2200	2007	Erase Subsequences	1303/E	Codeforces
3696	2200	2005	Keyboard Purchase	1238/E	Codeforces
3697	2100	2004	Grime Zoo	1411/D	Codeforces
3698	1900	2004	Fancy Number	118/C	Codeforces
3699	1200	2003	The Wall (easy)	690/D1	Codeforces
3700	1900	2002	Missing Numbers	1081/E	Codeforces
3701	1300	2001	Места в самолёте	929/B	Codeforces
3702	1300	2001	Number of Triplets	181/B	Codeforces
3703	1800	2001	Wonderful Randomized Sum	33/C	Codeforces
3704	2400	2000	Minimum Path	1473/E	Codeforces
3705	2200	1998	Three States	590/C	Codeforces
3706	2000	1996	Running Track	615/C	Codeforces
3707	2500	1986	Inversion SwapSort	1375/E	Codeforces
3708	2200	1986	Tricky Function	429/D	Codeforces
3709	2000	1985	Stack Sorting	911/E	Codeforces
3710	1800	1984	Queue	141/C	Codeforces
3711	2100	1983	Shovels Shop	1154/F	Codeforces
3712	1800	1983	Sum of Nestings	847/C	Codeforces
3713	1900	1983	Bottles	730/J	Codeforces
3714	2300	1983	Sasha and Array	718/C	Codeforces
3715	2000	1979	Mars rover	1010/D	Codeforces
3716	1700	1979	George and Number	387/C	Codeforces
3717	2400	1976	DZY Loves Fibonacci Numbers	446/C	Codeforces
3718	1800	1974	I'm Feeling Lucky!	952/D	Codeforces
3719	1800	1974	Driving Test	845/D	Codeforces
3720	1800	1973	Minimum and Maximum	730/B	Codeforces
3721	1600	1973	Rectangle and Square	135/B	Codeforces
3722	1900	1971	Fox and Minimal path	388/B	Codeforces
3723	1600	1970	Text Editor	253/C	Codeforces
3724	1900	1969	Restructuring Company	566/D	Codeforces
3726	2300	1968	Complete The Graph	715/B	Codeforces
3727	1900	1966	Symmetric and Transitive	568/B	Codeforces
3728	2000	1965	The World Is Just a Programming Task (Easy Ve...	1248/D1	Codeforces
3729	2000	1965	Multicolored Markers	1029/F	Codeforces
3730	1600	1965	Martian Clock	149/B	Codeforces
3731	1400	1960	Datatypes	108/B	Codeforces
3732	2300	1959	Asterism (Hard Version)	1371/E2	Codeforces
3733	2300	1953	Mike and Foam	547/C	Codeforces
3734	2200	1953	Game on Tree	280/C	Codeforces
3735	2200	1950	Minimum Possible LCM	1154/G	Codeforces
3736	1600	1948	Points and Segments (easy)	430/A	Codeforces
3737	2000	1946	TV Shows	1061/D	Codeforces
3738	1300	1943	Broken checker	171/D	Codeforces
3739	2100	1942	Underground Lab	780/E	Codeforces
3740	2000	1941	Petr#	113/B	Codeforces
3741	2300	1940	Minimal Labels	825/E	Codeforces
3742	2000	1939	Misha and Permutations Summation	501/D	Codeforces
3743	1900	1935	Candy Boxes	488/B	Codeforces
3744	2000	1934	Cycle	117/C	Codeforces
3745	1800	1932	Bitwise Formula	778/B	Codeforces
3746	2200	1931	Priority Queue	1542/D	Codeforces
3747	1900	1931	Kyoya and Permutation	553/B	Codeforces
3748	2200	1930	Tourism	1220/E	Codeforces
3749	1700	1929	Resource Distribution	925/B	Codeforces
3750	2300	1927	Dogeforces	1494/D	Codeforces
3751	2100	1926	Weird journey	788/B	Codeforces
3752	1700	1923	Borya and Hanabi	442/A	Codeforces
3753	1700	1922	Pick Heroes	1056/C	Codeforces
3754	2300	1918	Devu and Flowers	451/E	Codeforces
3755	2200	1917	Super M	592/D	Codeforces
3756	2200	1916	Great Vova Wall (Version 2)	1092/D2	Codeforces
3757	1800	1916	Exponential notation	691/C	Codeforces
3758	2200	1916	Bear and Tower of Cubes	679/B	Codeforces
3759	1900	1915	Shark	982/D	Codeforces
3760	2300	1909	Anton and School - 2	785/D	Codeforces
3761	2000	1908	Jeremy Bearimy	1280/C	Codeforces
3762	2200	1907	Gold Transfer	1535/E	Codeforces
3763	2300	1904	Garden of the Sun	1495/C	Codeforces
3764	1600	1902	Car Repair Shop	730/G	Codeforces
3765	2000	1901	Segments Removal	899/E	Codeforces
3766	1400	1901	Special Task	316/A2	Codeforces
3767	1500	1900	Spelling Check	39/J	Codeforces
3768	2200	1898	Minimal Segment Cover	1175/E	Codeforces
3769	2300	1895	Product Oriented Recurrence	1182/E	Codeforces
3770	2100	1894	Colorings and Dominoes	1511/E	Codeforces
3771	1700	1893	k-Interesting Pairs Of Integers	769/D	Codeforces
3772	1700	1893	Levko and Array Recovery	360/A	Codeforces
3773	2100	1892	Portals	1271/D	Codeforces
3774	2100	1891	Pathwalks	960/F	Codeforces
3775	1200	1891	Land Lot	48/B	Codeforces
3776	2300	1890	Fixed Point Removal	1404/C	Codeforces
3777	2100	1890	Sad powers	955/C	Codeforces
3778	1600	1889	Challenge Pennants	630/G	Codeforces
3779	2400	1887	The Fair Nut and Rectangles	1083/E	Codeforces
3780	1900	1887	Chocolate	490/D	Codeforces
3781	2000	1886	Divisors	1033/D	Codeforces
3782	1800	1886	Four Segments	846/C	Codeforces
3783	1700	1886	Board Game	533/C	Codeforces
3784	2100	1885	Tree with Small Distances	1029/E	Codeforces
3785	2400	1885	Lucky Queries	145/E	Codeforces
3786	2000	1884	Turn Off The TV	863/E	Codeforces
3787	1600	1883	Sereja and Contest	314/A	Codeforces
3788	1100	1879	Problem About Equation	174/A	Codeforces
3789	1900	1879	Coloring Brackets	149/D	Codeforces
3790	2000	1878	Lynyrd Skynyrd	1142/B	Codeforces
3791	1900	1878	Block Tower	327/D	Codeforces
3792	1300	1878	Rock-Paper-Scissors	173/A	Codeforces
3793	2000	1877	Vitaly and Cycle	557/D	Codeforces
3794	2300	1876	Placing Rooks	1342/E	Codeforces
3795	1900	1876	Jeff and Furik	351/B	Codeforces
3796	2300	1874	Monster Invaders	1396/C	Codeforces
3797	1500	1874	Jury Size	254/B	Codeforces
3798	2200	1872	Mr. Kitayuta's Technology	505/D	Codeforces
3799	2100	1870	Yaroslav and Time	301/B	Codeforces
3800	2000	1869	Berzerk	786/A	Codeforces
3801	1000	1866	Simple XML	125/B	Codeforces
3802	2100	1864	Tree Constructing	1003/E	Codeforces
3803	1300	1863	Holidays	44/C	Codeforces
3804	2100	1862	Domino (hard version)	1551/D2	Codeforces
3805	2000	1862	Gadgets for dollars and pounds	609/D	Codeforces
3806	1800	1862	Help General	142/B	Codeforces
3807	1600	1861	Wizards and Trolleybuses	167/A	Codeforces
3808	1700	1857	Polo the Penguin and XOR operation	288/C	Codeforces
3809	1900	1856	The Art of Dealing with ATM	524/C	Codeforces
3810	1800	1853	Just Arrange the Icons	1267/J	Codeforces
3811	2100	1853	String	128/B	Codeforces
3812	2200	1851	Bananas in a Microwave	1498/D	Codeforces
3813	1900	1851	Subordinates	729/E	Codeforces
3814	2100	1850	Two strings	762/C	Codeforces
3815	1800	1849	Correcting Mistakes	533/E	Codeforces
3816	2100	1847	Playlist for Polycarp (easy version)	1185/G1	Codeforces
3817	1300	1847	Lost in Transliteration	883/F	Codeforces
3818	1800	1845	4-point polyline	452/B	Codeforces
3819	2200	1844	Kill Anton	1526/D	Codeforces
3820	2200	1844	New Game Plus!	1415/E	Codeforces
3821	2400	1843	Subarray Sorting	1187/D	Codeforces
3822	1400	1843	World Football Cup	19/A	Codeforces
3823	2000	1842	Iahub and Permutations	340/E	Codeforces
3824	2200	1841	Telepanting	1552/F	Codeforces
3825	1900	1841	Changing Array	1054/D	Codeforces
3826	1800	1841	Logo Turtle	132/C	Codeforces
3827	2000	1840	Coprime Subsequences	803/F	Codeforces
3828	2100	1840	Fedor and coupons	754/D	Codeforces
3829	2000	1838	Greedy Arkady	965/C	Codeforces
3830	1800	1836	Lucky Number 2	145/B	Codeforces
3831	1700	1835	Buses	101/B	Codeforces
3832	2700	1830	Serega and Fun	455/D	Codeforces
3833	1600	1829	Grammar Lessons	113/A	Codeforces
3834	2200	1828	Ezzat and Grid	1557/D	Codeforces
3835	2200	1828	Permutation Separation	1295/E	Codeforces
3836	1600	1828	Suspects	156/B	Codeforces
3837	2100	1827	You Are Given a WASD-string...	1202/C	Codeforces
3838	1900	1827	Skills	613/B	Codeforces
3839	1500	1827	Sum	49/B	Codeforces
3840	2100	1826	Range Deleting	1167/E	Codeforces
3841	1600	1823	Heidi and the Turing Test (Easy)	1184/C1	Codeforces
3842	2000	1817	Tokitsukaze and Strange Rectangle	1190/D	Codeforces
3843	2000	1817	Candy Box (hard version)	1183/G	Codeforces
3844	1400	1816	Jeopardy!	413/C	Codeforces
3845	1300	1815	Company Income Growth	39/B	Codeforces
3846	2100	1812	How Many Paths?	1547/G	Codeforces
3847	2500	1812	Jzzhu and Apples	449/C	Codeforces
3848	1800	1811	Ray Tracing	724/C	Codeforces
3849	2200	1810	Equilibrium	1556/E	Codeforces
3850	2100	1809	Well played!	976/E	Codeforces
3851	2300	1808	Two Different	1408/F	Codeforces
3852	2200	1808	Jon and Orbs	768/D	Codeforces
3853	2300	1805	Trains and Statistic	675/E	Codeforces
3854	1900	1805	Olympiad	222/D	Codeforces
3855	1700	1803	Continued Fractions	305/B	Codeforces
3856	1900	1803	Segments	22/D	Codeforces
3857	2300	1801	Trees of Tranquillity	1528/C	Codeforces
3858	2200	1799	Two Types of Spells	1398/E	Codeforces
3859	2100	1798	Anya and Cubes	525/E	Codeforces
3860	1900	1798	Connected Components	292/D	Codeforces
3861	2000	1797	Wrong Answer	1129/B	Codeforces
3862	1000	1797	Up the hill	491/A	Codeforces
3863	2400	1796	DZY Loves Colors	444/C	Codeforces
3864	2000	1793	Infinite Maze	196/B	Codeforces
3865	1800	1791	Let's Go Rolling!	38/E	Codeforces
3866	2200	1790	Special Segments of Permutation	1156/E	Codeforces
3867	2100	1790	Subway Pursuit	1039/B	Codeforces
3868	1300	1787	Not Wool Sequences	238/A	Codeforces
3869	2100	1786	Neko and Aki's Prank	1152/D	Codeforces
3870	2400	1786	Cats Transport	311/B	Codeforces
3871	2100	1785	Sand Fortress	985/D	Codeforces
3872	2100	1785	Cartons of milk	767/D	Codeforces
3873	1300	1783	Elevator	117/A	Codeforces
3874	2200	1782	Little C Loves 3 II	1034/B	Codeforces
3875	1900	1781	Preparing for the Contest	377/B	Codeforces
3876	2100	1779	Beautiful Subarrays	665/E	Codeforces
3877	2100	1779	Mashmokh and Reverse Operation	414/C	Codeforces
3878	1600	1777	Statistics of Recompressing Videos	523/D	Codeforces
3879	2300	1776	Omkar and Forest	1536/E	Codeforces
3880	1500	1776	Party	177/C2	Codeforces
3881	1600	1775	Memory Manager	7/B	Codeforces
3882	2300	1774	Complete the Projects (hard version)	1203/F2	Codeforces
3883	2200	1769	Andrew and Taxi	1100/E	Codeforces
3884	2100	1769	Leha and another game about graph	840/B	Codeforces
3885	2000	1769	Relay Race	213/C	Codeforces
3886	1900	1767	Open Communication	993/B	Codeforces
3887	1900	1765	Monitor	846/D	Codeforces
3888	2100	1764	MST Unification	1108/F	Codeforces
3889	2300	1764	Prefix Product Sequence	487/C	Codeforces
3890	1900	1764	The Road to Berland is Paved With Good Intentions	228/E	Codeforces
3891	2200	1761	Case of Chocolate	555/C	Codeforces
3892	2200	1760	Water Level	1461/E	Codeforces
3893	2200	1760	Weights Division (hard version)	1399/E2	Codeforces
3894	2100	1760	Lunar New Year and Red Envelopes	1106/E	Codeforces
3895	2000	1759	Cards and Joy	999/F	Codeforces
3896	2400	1759	Team Work	932/E	Codeforces
3897	1500	1759	Party	177/C1	Codeforces
3898	2100	1757	Unstable String Sort	1213/F	Codeforces
3899	2200	1753	The minimal unique substring	1158/B	Codeforces
3900	1800	1749	Digits Sequence (Hard Edition)	1177/B	Codeforces
3901	2200	1748	And Reachability	1168/C	Codeforces
3902	2400	1736	One Occurrence	1000/F	Codeforces
3903	1300	1735	Tree of Life (easy)	690/F1	Codeforces
3904	1500	1734	Restoring Table	245/D	Codeforces
3905	1800	1734	Chamber of Secrets	173/B	Codeforces
3906	2300	1733	Double Profiles	154/C	Codeforces
3907	2000	1733	Shortest Path	59/E	Codeforces
3908	2300	1732	Xor-MST	888/G	Codeforces
3909	1700	1732	Comments	747/E	Codeforces
3910	2100	1731	Field expansion	799/D	Codeforces
3911	1600	1731	Running with Obstacles	637/D	Codeforces
3912	2100	1731	Maximal Area Quadrilateral	340/B	Codeforces
3913	2300	1730	Divide Points	1270/E	Codeforces
3914	1200	1730	Mathematical Analysis Rocks!	180/F	Codeforces
3915	1700	1730	Discounts	161/B	Codeforces
3916	2200	1727	New Year and Arbitrary Arrangement	908/D	Codeforces
3917	1900	1726	Cunning Gena	417/D	Codeforces
3918	1700	1725	Frames	93/A	Codeforces
3919	2000	1724	PLEASE	696/C	Codeforces
3920	2000	1723	A Determined Cleanup	933/B	Codeforces
3921	1600	1722	System Testing	1121/C	Codeforces
3922	2200	1721	K-th Path	1196/F	Codeforces
3923	2000	1720	Cipher	156/C	Codeforces
3924	2100	1717	Spaceship Solitaire	1266/E	Codeforces
3925	2300	1714	Pattern Matching	1476/E	Codeforces
3926	2000	1714	An overnight dance in discotheque	814/D	Codeforces
3927	2100	1712	Lipshitz Sequence	601/B	Codeforces
3928	2200	1710	Find a Number	1070/A	Codeforces
3929	2200	1710	Delivery Bears	653/D	Codeforces
3930	1600	1708	Bill Total Value	727/B	Codeforces
3931	2200	1707	Nezzar and Nice Beatmap	1477/C	Codeforces
3932	1600	1707	Hamsters and Tigers	46/C	Codeforces
4658	2100	991	Guide	1510/G	Codeforces
3933	2200	1706	Yet Another Substring Reverse	1234/F	Codeforces
3934	2300	1706	Fox And Dinner	510/E	Codeforces
3935	2300	1705	Centroids	708/C	Codeforces
3936	1700	1705	Tablecity	575/D	Codeforces
3937	2400	1705	Kindergarten	484/D	Codeforces
3938	2200	1703	Cute Sequences	1166/D	Codeforces
3939	2200	1701	Figure Fixing	1537/F	Codeforces
3940	2100	1701	Apple Tree	348/B	Codeforces
3941	2100	1698	Treasure Hunting	1201/D	Codeforces
3942	2100	1698	Lengthening Sticks	571/A	Codeforces
3943	2100	1697	Messenger	631/D	Codeforces
3944	2200	1697	Ring Road 2	27/D	Codeforces
3945	2000	1695	World Tour	666/B	Codeforces
3946	2000	1693	Closest Equals	522/D	Codeforces
3947	2100	1692	Post Lamps	990/E	Codeforces
3948	9999	1692	Red and Blue Balls	399/B	Codeforces
3949	2000	1691	Ithea Plays With Chtholly	896/B	Codeforces
3950	1800	1689	Wizards and Huge Prize	167/B	Codeforces
3951	2300	1683	Another Filling the Grid	1228/E	Codeforces
3952	2100	1682	Random Task	431/D	Codeforces
3953	1900	1680	A Map of the Cat	952/B	Codeforces
3954	1700	1676	Magnum Opus	409/C	Codeforces
3955	1600	1676	Smallest number	55/B	Codeforces
3956	2400	1675	Divide Square	1401/E	Codeforces
3957	1800	1674	Mr. Bender and Square	255/D	Codeforces
3958	1400	1673	Hyperspace Jump (easy)	958/D1	Codeforces
3959	1800	1673	Packmen	847/E	Codeforces
3960	2000	1673	Interactive LowerBound	843/B	Codeforces
3961	2400	1672	Are You Fired?	1358/E	Codeforces
3962	1900	1672	Privatization of Roads in Treeland	1141/G	Codeforces
3963	1900	1672	Lucky Days	1055/C	Codeforces
3964	2000	1672	Sums of Digits	509/C	Codeforces
3965	1400	1671	File List	174/B	Codeforces
3966	2400	1670	Group Projects	626/F	Codeforces
3967	1500	1669	Lie or Truth	774/D	Codeforces
3968	1700	1669	Sequence Formatting	81/B	Codeforces
3969	1900	1664	000001	409/F	Codeforces
3970	1500	1664	Permutations	48/D	Codeforces
3971	1300	1663	Multiplication Table	39/H	Codeforces
3972	2100	1661	Pictures with Kittens (hard version)	1077/F2	Codeforces
3973	2300	1661	The Great Mixing	788/C	Codeforces
3974	1900	1661	Xenia and Hamming	356/B	Codeforces
3975	2100	1657	Arpa and a list of numbers	850/B	Codeforces
3976	2300	1655	Enchanted Artifact	1282/D	Codeforces
3977	2400	1654	DeadLee	1369/E	Codeforces
3978	2000	1651	Ghosts	975/D	Codeforces
3979	2400	1647	Nastya and Unexpected Guest	1340/C	Codeforces
3980	2200	1647	Strictly Positive Matrix	402/E	Codeforces
3981	1400	1646	Three Sons	120/D	Codeforces
3982	1500	1645	Square and Rectangles	325/A	Codeforces
3983	1800	1644	Random Query	846/F	Codeforces
3984	2100	1644	Degenerate Matrix	549/H	Codeforces
3985	1700	1643	Sets	82/B	Codeforces
3986	2300	1642	Removing Leaves	1385/F	Codeforces
3987	2000	1642	Cloud Computing	1070/C	Codeforces
3988	1400	1642	Blinds	38/C	Codeforces
3989	1800	1638	Reducing Fractions	222/C	Codeforces
3990	1400	1637	Banana	335/A	Codeforces
3991	2200	1635	Sum of Remainders	616/E	Codeforces
3992	2100	1632	Wi-Fi	1216/F	Codeforces
3993	1600	1632	Balancer	440/B	Codeforces
3994	1900	1629	A rectangle	630/E	Codeforces
3995	2500	1628	Mocha and Diana (Hard Version)	1559/D2	Codeforces
3996	1700	1628	Yet Another Task with Queens	131/E	Codeforces
3997	2100	1622	The Holmes Children	776/E	Codeforces
3998	1500	1619	Restoring IPv6	250/B	Codeforces
3999	2000	1619	Industrial Nim	15/C	Codeforces
4000	2200	1615	Let Them Slide	1208/E	Codeforces
4001	2000	1615	Twisted Circuit	784/E	Codeforces
4002	1500	1614	Making Genome in Berland	638/B	Codeforces
4003	1400	1613	Fly, freebies, fly!	386/B	Codeforces
4004	2200	1611	Robots on a Grid	1335/F	Codeforces
4005	1900	1611	Decoding Genome	222/E	Codeforces
4006	1900	1610	Teodor is not a liar!	930/C	Codeforces
4007	1900	1609	Data Center Maintenance	949/C	Codeforces
4008	1900	1609	Minesweeper 1D	404/D	Codeforces
4009	1900	1609	Cupboard and Balloons	342/C	Codeforces
4010	2100	1608	Array and Segments (Hard version)	1108/E2	Codeforces
4011	1800	1606	Inversions problem	513/G1	Codeforces
4012	2600	1605	Arpa’s overnight party and Mehrdad’s silent e...	741/C	Codeforces
4013	1600	1605	Network Mask	291/C	Codeforces
4014	2100	1604	Down or Right	1023/E	Codeforces
4015	2000	1603	Theseus and labyrinth	676/D	Codeforces
4016	2100	1602	Perfect Groups	980/D	Codeforces
4017	2400	1601	Phoenix and Berries	1348/E	Codeforces
4018	2100	1598	National Property	875/C	Codeforces
4019	2400	1596	Fruit Sequences	1428/F	Codeforces
4020	2000	1592	Pretty Song	509/E	Codeforces
4021	2000	1591	The hat	1019/B	Codeforces
4022	2400	1588	Omkar and Landslide	1392/F	Codeforces
4023	2200	1587	Lieges of Legendre	603/C	Codeforces
4024	1200	1587	Encrypting Messages	177/D1	Codeforces
4025	1700	1587	Transmigration	105/A	Codeforces
4026	1600	1586	Multicolored Marbles	209/A	Codeforces
4027	2000	1585	Maximum Balanced Circle	1157/F	Codeforces
4028	2400	1584	Voting (Hard Version)	1251/E2	Codeforces
4029	2200	1584	Table Compression	650/C	Codeforces
4030	2400	1582	The Shortest Statement	1051/F	Codeforces
4031	2200	1578	Three Religions	1149/B	Codeforces
4032	2200	1577	Mocha and Stars	1559/E	Codeforces
4033	2100	1576	Chip 'n Dale Rescue Rangers	590/B	Codeforces
4034	1300	1571	Presents	54/A	Codeforces
4035	2300	1570	Array GCD	623/B	Codeforces
4036	2600	1570	The Sum of the k-th Powers	622/F	Codeforces
4037	1000	1569	Color Revolution	1346/A	Codeforces
4038	2300	1569	Road Improvement	543/D	Codeforces
4039	2000	1569	Work Group	533/B	Codeforces
4040	2300	1568	Tree Array	1540/B	Codeforces
4041	2200	1568	Yaroslav and Divisors	301/D	Codeforces
4042	1400	1568	Orange	290/D	Codeforces
4043	2100	1567	Compress String	1120/C	Codeforces
4044	2500	1567	AND Graph	986/C	Codeforces
4045	2000	1565	Dima and Containers	358/C	Codeforces
4046	1800	1564	Partial Teacher	67/A	Codeforces
4047	2000	1562	Roma and Poker	803/E	Codeforces
4048	2200	1561	Construct the Binary Tree	1311/E	Codeforces
4049	2300	1560	Dog Snacks	1453/E	Codeforces
4050	2400	1559	Karen and Supermarket	815/C	Codeforces
4051	2000	1558	Restore Cube 	464/B	Codeforces
4052	1900	1558	Non-Secret Cypher	190/D	Codeforces
4053	2000	1556	Dasha and Puzzle	761/E	Codeforces
4054	2200	1554	The Game Of Parity	549/C	Codeforces
4055	2200	1553	Palindrome-less Arrays	1140/E	Codeforces
4056	1700	1553	Is This a Zebra?	926/C	Codeforces
4057	2000	1552	Gifts by the List	681/D	Codeforces
4058	2000	1551	Restoration of string	886/D	Codeforces
4059	2400	1550	Blood Cousins Return	246/E	Codeforces
4060	1700	1549	Easy Chess	1089/E	Codeforces
4061	1500	1549	Field of Wonders	883/E	Codeforces
4062	2400	1545	Fib-tree	1491/E	Codeforces
4063	2100	1544	Rain and Umbrellas	988/F	Codeforces
4064	2000	1544	Ant on the Tree	29/D	Codeforces
4065	1900	1542	Rooter's Song	848/B	Codeforces
4066	2100	1541	Solo mid Oracle	1413/E	Codeforces
4067	2100	1541	Santa Claus and a Palindrome	748/D	Codeforces
4068	2200	1539	Match & Catch	427/D	Codeforces
4069	1800	1538	T-shirts Distribution	727/D	Codeforces
4070	1600	1538	Movie Critics	250/C	Codeforces
4071	2100	1538	Lucky Subsequence	145/C	Codeforces
4072	2200	1536	RPD and Rap Sheet (Hard Version)	1543/D2	Codeforces
4073	2100	1536	Fishes	912/D	Codeforces
4074	2200	1536	Pluses everywhere	520/E	Codeforces
4075	2000	1535	Choosing The Commander	817/E	Codeforces
4076	2100	1535	Information Graph	466/E	Codeforces
4077	1700	1534	Cycle In Maze	769/C	Codeforces
4078	1900	1534	Xor-sequences	691/E	Codeforces
4079	2000	1534	Sereja and Subsequences	314/C	Codeforces
4080	2200	1532	High Cry	875/D	Codeforces
4081	2200	1532	Dreamoon and Strings	476/E	Codeforces
4082	2300	1531	Boxes And Balls	884/D	Codeforces
4083	2300	1530	Martian Strings	149/E	Codeforces
4084	2200	1529	Two Hundred Twenty One (hard version)	1562/D2	Codeforces
4085	2500	1529	Ski Accidents	1368/E	Codeforces
4086	1400	1529	Crash	417/B	Codeforces
4087	1700	1529	Platforms	18/B	Codeforces
4088	1900	1527	Ordering Pizza	865/B	Codeforces
4089	2400	1525	Bombs	1326/E	Codeforces
4090	1900	1521	Numbers Exchange	746/E	Codeforces
4091	2100	1519	Infinite Inversions	540/E	Codeforces
4092	2300	1518	Edges in MST	160/D	Codeforces
4093	2100	1517	Analysis of Pathes in Functional Graph	702/E	Codeforces
4094	2000	1517	Area of Two Circles' Intersection	600/D	Codeforces
4095	2000	1517	Sereja and the Arrangement of Numbers	367/C	Codeforces
4096	1400	1515	Heroes	77/A	Codeforces
4097	2500	1510	Fuzzy Search	528/D	Codeforces
4098	2100	1510	Characteristics of Rectangles	333/D	Codeforces
4099	2000	1509	The Fair Nut and Strings	1083/B	Codeforces
4100	2400	1509	New Year Tree	379/F	Codeforces
4101	2100	1508	GukiZ and Binary Operations	551/D	Codeforces
4102	2200	1507	Two chandeliers	1500/B	Codeforces
4103	2400	1507	Thief in a Shop	632/E	Codeforces
4104	2200	1507	LIS of Sequence	486/E	Codeforces
4105	1700	1506	Scrambled	656/B	Codeforces
4106	2200	1506	Love Triangles	553/C	Codeforces
4107	2400	1500	Love-Hate	1523/D	Codeforces
4108	2600	1500	Integer Game	1375/F	Codeforces
4109	2000	1499	International Olympiad	662/D	Codeforces
4110	9999	1498	Three matrices	393/B	Codeforces
4111	1300	1498	Domino	85/A	Codeforces
4112	1400	1497	Draw Brackets!	770/D	Codeforces
4113	2300	1496	Segment Sum	1073/E	Codeforces
4114	1800	1496	Trees	58/C	Codeforces
4115	1900	1493	Numbers	213/B	Codeforces
4116	1700	1493	Flea	32/C	Codeforces
4117	1900	1492	Bear and Up-Down	653/C	Codeforces
4118	2200	1491	Irrigation	1181/D	Codeforces
4119	2400	1491	Till I Collapse	786/C	Codeforces
4120	2400	1490	Avoid Rainbow Cycles	1408/E	Codeforces
4121	2300	1490	Xenon's Attack on the Gangs	1292/C	Codeforces
4122	2000	1490	Microtransactions (hard version)	1165/F2	Codeforces
4123	1900	1490	Hongcow's Game	744/B	Codeforces
4124	1700	1489	Plus and xor	76/D	Codeforces
4125	2300	1488	Boboniu Walks on Graph	1394/B	Codeforces
4126	1700	1488	Game	213/A	Codeforces
4127	1600	1486	Title	59/C	Codeforces
4128	2000	1485	Polycarp and Hay	659/F	Codeforces
4129	2300	1485	Drazil and Park	515/E	Codeforces
4130	2100	1481	Polygons	166/B	Codeforces
4131	2300	1480	Alice and the Doll	1236/D	Codeforces
4132	2200	1476	Rock Is Push	1225/E	Codeforces
4133	2100	1476	Order book	1028/D	Codeforces
4134	2100	1476	Substitutes in Number	464/C	Codeforces
4135	2400	1475	Mike and distribution	798/D	Codeforces
4136	2200	1474	Army Creation	813/E	Codeforces
4137	1800	1474	Hiring Staff	216/C	Codeforces
4138	1900	1473	Array	57/C	Codeforces
4139	1800	1472	LionAge II	73/C	Codeforces
4140	1800	1472	Harry Potter and Three Spells	65/A	Codeforces
4141	2200	1471	One-Way Reform	723/E	Codeforces
4142	2100	1469	Inverse Coloring	1027/E	Codeforces
4143	2000	1469	Water Taps	954/E	Codeforces
4144	1800	1469	AlgoRace	187/B	Codeforces
4145	2100	1467	Sockets	732/E	Codeforces
4146	1800	1467	Unsorting Array	252/B	Codeforces
4147	2400	1464	A Bit Similar	1469/E	Codeforces
4148	2200	1464	Hamiltonian Spanning Tree	618/D	Codeforces
4149	2100	1463	Two Pizzas	1185/F	Codeforces
4150	1400	1462	DDoS	1057/B	Codeforces
4151	2200	1462	Ice cream coloring	804/C	Codeforces
4152	2100	1461	Cubes	520/D	Codeforces
4153	2200	1459	Valera and Queries	369/E	Codeforces
4154	2200	1453	Om Nom and Necklace	526/D	Codeforces
4155	1300	1452	Cheaterius's Problem	51/A	Codeforces
4156	2300	1450	Voting (Easy Version)	1251/E1	Codeforces
4157	1400	1450	Death Stars (easy)	958/A1	Codeforces
4158	1900	1449	Fractions	1089/F	Codeforces
4159	1400	1447	TCMCF+++	45/I	Codeforces
4160	2000	1446	Jamie and Binary Sequence (changed after round)	916/B	Codeforces
4161	2000	1446	Ants	317/B	Codeforces
4162	1600	1446	Text Messaging	70/B	Codeforces
4163	2000	1445	Castle Defense	954/G	Codeforces
4164	2400	1443	Make Them Similar	1257/F	Codeforces
4165	2200	1442	Two Houses	1498/E	Codeforces
4166	2000	1442	Vanya and Field	492/E	Codeforces
4167	2000	1440	Giving Awards	412/D	Codeforces
4168	1900	1439	Mister B and PR Shifts	819/B	Codeforces
4169	2300	1438	Merging Towers	1380/E	Codeforces
4170	2000	1438	Mahmoud and Ehab and the binary string	862/D	Codeforces
4171	2000	1436	Beaver Game	78/C	Codeforces
4172	2200	1435	Birds	922/E	Codeforces
4173	2600	1434	Mike and Fish	547/D	Codeforces
4174	2100	1434	Dispute	242/D	Codeforces
4175	2500	1429	Kuroni and the Punishment	1305/F	Codeforces
4176	1800	1429	Bots	575/H	Codeforces
4177	1900	1428	Card Game Again	818/E	Codeforces
4178	2300	1427	Pairwise Modulo	1553/F	Codeforces
4179	2100	1426	Chris and Road	703/C	Codeforces
4180	2300	1425	Tokitsukaze and Duel	1190/C	Codeforces
4181	2200	1425	Addition on Segments	981/E	Codeforces
4182	1800	1423	Doctor	83/B	Codeforces
4183	2300	1422	Instant Noodles	1322/C	Codeforces
4184	2100	1422	Congruence Equation	919/E	Codeforces
4185	2000	1422	Helga Hufflepuff's Cup	855/C	Codeforces
4186	2500	1421	Sorting Books	1481/E	Codeforces
4187	2100	1421	Greg and Friends	295/C	Codeforces
4188	2500	1419	Yet Another Minimization Problem	868/F	Codeforces
4189	2400	1418	Fedor and Essay	467/D	Codeforces
4190	2100	1416	Full Binary Tree Queries	960/D	Codeforces
4191	1300	1416	Spyke Chatting	413/B	Codeforces
4192	1800	1415	Mushroom Scientists	185/B	Codeforces
4193	1900	1414	Diana and Liana	1120/A	Codeforces
4194	2100	1414	Nastya and a Game	992/D	Codeforces
4195	1500	1414	Cola	44/B	Codeforces
4196	2000	1414	Stripe 2	21/C	Codeforces
4197	2100	1413	Colorful Points	909/D	Codeforces
4198	1600	1413	Hockey	95/A	Codeforces
4199	1900	1413	3-cycles	41/E	Codeforces
4200	2600	1412	Product Sum	631/E	Codeforces
4201	1800	1411	Cakewalk	1505/E	Codeforces
4202	2300	1411	Earth Wind and Fire	1148/E	Codeforces
4203	1900	1411	Police Station	208/C	Codeforces
4204	2000	1410	Little Elephant and LCM	258/C	Codeforces
4205	2200	1407	Count The Rectangles	1194/E	Codeforces
4206	2100	1407	Distributing Parts 	496/E	Codeforces
4207	1600	1406	Door Frames	910/B	Codeforces
4208	1800	1406	Fence	234/F	Codeforces
4209	1600	1405	Parallel Programming	291/D	Codeforces
4210	1800	1405	Game	49/D	Codeforces
4211	2300	1403	Pig and Palindromes	570/E	Codeforces
4212	2000	1403	Two out of Three	82/D	Codeforces
4213	2200	1402	Ants in Leaves	622/E	Codeforces
4214	1600	1402	Cinema	234/D	Codeforces
4215	2100	1399	Invariance of Tree	576/B	Codeforces
4216	2100	1399	Special Matrices	489/F	Codeforces
4217	1800	1398	Very Interesting Game	117/B	Codeforces
4218	1800	1398	Beaver	79/C	Codeforces
4219	1900	1395	Coprocessor	909/E	Codeforces
4220	2300	1394	Stressful Training	1132/D	Codeforces
4221	2200	1393	Serge and Dining Room	1179/C	Codeforces
4222	2600	1391	Quantifier Question	1344/C	Codeforces
4223	2100	1391	Topforces Strikes Back	1183/F	Codeforces
4224	1600	1391	EKG	316/B2	Codeforces
4225	2200	1390	Domino Principle	56/E	Codeforces
4226	2200	1389	Maximum Weight Subset	1249/F	Codeforces
4227	2400	1388	Complicated Computations	1436/E	Codeforces
4228	2400	1388	Mr. Kitayuta's Colorful Graph	506/D	Codeforces
4229	1900	1388	Triangles	229/C	Codeforces
4230	1600	1388	Right Triangles	52/B	Codeforces
4231	1700	1385	Average Score	81/C	Codeforces
4232	2200	1384	Short Colorful Strip	1178/F1	Codeforces
4233	2200	1384	The Number Games	980/E	Codeforces
4234	2100	1382	Flawed Flow	269/C	Codeforces
4235	2600	1378	Ehab's REAL Number Theory Problem	1325/E	Codeforces
4236	2300	1377	Lost Array	1534/E	Codeforces
4237	1900	1377	Sum	257/D	Codeforces
4238	2200	1376	Test	25/E	Codeforces
4239	2300	1375	Sum of Medians	85/D	Codeforces
4240	1900	1374	Hot Days	215/D	Codeforces
4241	1800	1370	Toda 2	730/A	Codeforces
4242	1700	1370	Game with Coins	245/C	Codeforces
4243	2400	1369	Vasya and Binary String	1107/E	Codeforces
4244	1900	1368	Intersecting Subtrees	1044/B	Codeforces
4245	1800	1367	Add Points	926/B	Codeforces
4246	2300	1361	Colors and Intervals	1552/E	Codeforces
4866	2300	839	String	123/D	Codeforces
4247	2200	1361	Another Sith Tournament	678/E	Codeforces
4248	1800	1360	Shooting Gallery	30/C	Codeforces
4249	2100	1357	Addition Robot	1252/K	Codeforces
4250	2100	1356	Towers	229/D	Codeforces
4251	2300	1355	Tourist Reform	732/F	Codeforces
4252	2800	1354	Kingdom and its Cities	613/D	Codeforces
4253	2000	1352	Elongated Matrix	1102/F	Codeforces
4254	2400	1352	Imbalance Value of a Tree	915/F	Codeforces
4255	1700	1349	Minimum Sum	910/C	Codeforces
4256	1700	1349	Фото на память - 2 (round version)	524/B	Codeforces
4257	1800	1348	Mittens	370/C	Codeforces
4258	2000	1347	Microtransactions (easy version)	1165/F1	Codeforces
4259	1900	1347	Phone Talks	158/E	Codeforces
4260	1800	1347	New Year Cards	140/B	Codeforces
4261	2100	1347	Time to Raid Cowavans	103/D	Codeforces
4262	1500	1346	Lightsabers (easy)	958/F1	Codeforces
4263	1700	1344	Big Data	409/D	Codeforces
4264	2100	1343	DNA Evolution	827/C	Codeforces
4265	2000	1341	Second price auction	513/C	Codeforces
4266	1900	1340	Noise Level	847/I	Codeforces
4267	2300	1339	Sum Queries?	1217/E	Codeforces
4268	2200	1337	Wrong Answer on test 233 (Easy Version)	1227/F1	Codeforces
4269	2300	1337	Leaving the Bar	995/C	Codeforces
4270	1700	1337	Schedule	31/C	Codeforces
4271	2000	1335	Restoring Increasing Sequence	490/E	Codeforces
4272	1600	1334	Возможно, вы знаете этих людей?	524/A	Codeforces
4273	2400	1334	Ball	12/D	Codeforces
4274	2300	1333	Multidimensional Queries	1093/G	Codeforces
4275	2700	1330	Vowels	383/E	Codeforces
4276	1900	1330	Permutation Sum	285/D	Codeforces
4277	2200	1329	Tests for problem D	1278/E	Codeforces
4278	2300	1328	K Integers	1268/C	Codeforces
4279	2200	1328	Tree	932/D	Codeforces
4280	2800	1328	Case of Computer Network	555/E	Codeforces
4281	1700	1327	Periodic integer number	1219/C	Codeforces
4282	2600	1327	Willem, Chtholly and Seniorious	896/C	Codeforces
4283	2200	1327	Demiurges Play Again	538/E	Codeforces
4284	2500	1327	Sign on Fence	484/E	Codeforces
4285	1900	1326	Valuable Paper	1423/B	Codeforces
4286	2100	1326	Permutation recovery	1158/C	Codeforces
4287	2100	1326	Tesla	995/A	Codeforces
4288	2500	1326	Destiny	840/D	Codeforces
4289	2000	1324	Olya and magical square	1080/D	Codeforces
4290	2100	1323	Ralph and Mushrooms	894/E	Codeforces
4291	2500	1323	Subset Sums	348/C	Codeforces
4292	2200	1321	Memory and Scores	712/D	Codeforces
4293	1900	1320	Palindrome	335/B	Codeforces
4294	2400	1319	Drazil Likes Heap	1329/C	Codeforces
4295	2200	1317	Little Pony and Summer Sun Celebration	453/C	Codeforces
4296	2000	1315	Sereja and Periods	314/B	Codeforces
4297	2300	1313	Looksery Party	549/B	Codeforces
4298	2300	1312	Excellent Arrays	1550/D	Codeforces
4299	2500	1309	Make It One	1043/F	Codeforces
4300	2000	1308	New Year Letter	379/D	Codeforces
4301	2300	1307	Steps to One	1139/D	Codeforces
4302	1800	1307	Cubes	180/E	Codeforces
4303	1700	1307	Points	76/E	Codeforces
4304	2600	1307	Lizards and Basements 2	6/D	Codeforces
4305	2300	1304	Envy	891/C	Codeforces
4306	1900	1303	Naughty Stone Piles	226/B	Codeforces
4307	2300	1302	Daniel and Spring Cleaning	1245/F	Codeforces
4308	1900	1301	Two Strings	223/B	Codeforces
4309	2400	1300	Network Coverage	1373/F	Codeforces
4310	2300	1298	Delete a Segment	1285/E	Codeforces
4311	2200	1298	Searching Rectangles	713/B	Codeforces
4312	1500	1298	Physical Education	53/D	Codeforces
4313	1500	1297	Summer Homework	316/E1	Codeforces
4314	2100	1296	Santa Claus and Tangerines	748/E	Codeforces
4315	2400	1295	Expected Damage	1418/E	Codeforces
4316	2100	1295	Yet another 2D Walking	1066/F	Codeforces
4317	2200	1295	Arthur and Brackets	508/E	Codeforces
4318	9999	1294	Зингер | color	1531/A	Codeforces
4319	2000	1292	Police Patrol	427/E	Codeforces
4320	1500	1292	F1 Champions	24/B	Codeforces
4321	2900	1291	Arpa’s letter-marked tree and Mehrdad’s Dokht...	741/D	Codeforces
4322	2300	1290	Poman Numbers	1411/E	Codeforces
4323	2300	1289	Selling Souvenirs	808/E	Codeforces
4324	1500	1289	Cinema Cashier	10/B	Codeforces
4325	2100	1286	Check Transcription	1056/E	Codeforces
4326	2700	1286	Digit Tree	715/C	Codeforces
4327	2400	1286	Arthur and Walls	525/D	Codeforces
4328	2000	1285	Wires	1250/N	Codeforces
4329	1900	1285	Pawn	41/D	Codeforces
4330	2200	1284	The Maths Lecture	507/D	Codeforces
4331	1700	1284	Bulls and Cows	63/C	Codeforces
4332	2100	1283	Assimilation IV	1525/E	Codeforces
4333	2200	1283	A Heap of Heaps	538/F	Codeforces
4334	1700	1283	Biathlon	84/C	Codeforces
4335	1800	1281	Palindromic Cut	883/H	Codeforces
4336	1700	1279	Hit Ball	203/D	Codeforces
4337	2200	1278	K and Medians	1468/H	Codeforces
4338	1800	1276	Robbery	89/A	Codeforces
4339	2300	1275	Warrior and Archer	594/A	Codeforces
4340	2100	1273	Desk Disorder	859/E	Codeforces
4341	9999	1272	On Changing Tree	396/C	Codeforces
4342	2700	1271	Escape Through Leaf	932/F	Codeforces
4343	2200	1271	Anton and Permutation	785/E	Codeforces
4344	1900	1271	Palindromes	137/D	Codeforces
4345	2500	1270	Rotate Columns (hard version)	1209/E2	Codeforces
4346	2500	1270	Kefa and Watch	580/E	Codeforces
4347	2200	1270	Number Transformation II	346/C	Codeforces
4348	1800	1269	Similar Arrays	1090/D	Codeforces
4349	2100	1268	Digits	1510/D	Codeforces
4350	2200	1266	Helping Hiasat 	1105/E	Codeforces
4351	2200	1265	GCD of Polynomials	901/B	Codeforces
4352	2500	1264	GukiZ and GukiZiana	551/E	Codeforces
4353	2000	1264	Rectangle Puzzle	280/A	Codeforces
4354	2100	1262	Careful Maneuvering	993/C	Codeforces
4355	2600	1261	Nearest Leaf	1110/F	Codeforces
4356	2100	1261	Vanya and Brackets	552/E	Codeforces
4357	1500	1259	Train	74/B	Codeforces
4358	1900	1256	Little Elephant and Elections	258/B	Codeforces
4359	2400	1255	Tournament	1260/E	Codeforces
4360	2100	1255	Broken BST	797/D	Codeforces
4361	1900	1255	Pairs of Numbers	134/B	Codeforces
4362	2200	1254	Glad to see you!	809/B	Codeforces
4363	2400	1253	Copy or Prefix Sum	1485/F	Codeforces
4364	2100	1253	Key Storage	1267/K	Codeforces
4365	2200	1252	Two Bracket Sequences	1272/F	Codeforces
4366	2300	1251	MEX Queries	817/F	Codeforces
4367	2400	1251	Bindian Signalizing	5/E	Codeforces
4368	1500	1250	EKG	316/B1	Codeforces
4369	2000	1250	Big Maximum Sum	75/D	Codeforces
4370	2100	1249	The Unbearable Lightness of Weights	1032/E	Codeforces
4371	2100	1247	Boredom	853/C	Codeforces
4372	1900	1246	Daleks' Invasion (easy)	1184/E1	Codeforces
4373	2500	1246	Artem and Array 	442/C	Codeforces
4374	1500	1246	Encrypting Messages	177/D2	Codeforces
4375	2100	1243	Duff in Beach	587/B	Codeforces
4376	2600	1242	Binary Table	662/C	Codeforces
4377	1900	1242	Washer, Dryer, Folder	452/D	Codeforces
4378	2100	1241	Vladik and Favorite Game	811/D	Codeforces
4379	2000	1241	Number Busters	382/B	Codeforces
4380	1700	1241	Disposition	49/C	Codeforces
4381	9999	1240	Kanban Numbers	1145/B	Codeforces
4382	2200	1239	Brackets in Implications	550/E	Codeforces
4383	2200	1235	Serval and Snake	1153/E	Codeforces
4384	2200	1233	The Maximum Subtree	1238/F	Codeforces
4385	2100	1233	Nice table	1098/B	Codeforces
4386	2000	1233	Mike and Geometry Problem	689/E	Codeforces
4387	2200	1233	Professor GukiZ and Two Arrays	620/D	Codeforces
4388	9999	1233	On Number of Decompositions into Multipliers	396/A	Codeforces
4389	2100	1231	Destroy it!	1176/F	Codeforces
4390	1700	1231	Word Cut	176/B	Codeforces
4391	2400	1230	A-Z Graph	1494/E	Codeforces
4392	2400	1229	Konrad and Company Evaluation	1210/D	Codeforces
4393	2400	1228	MEX Tree	1527/D	Codeforces
4394	1500	1227	Easy Tape Programming	239/B	Codeforces
4395	1800	1225	Travel Cards	847/K	Codeforces
4396	2200	1224	List Of Integers	920/G	Codeforces
4397	2100	1223	Letters Removing	899/F	Codeforces
4398	2300	1223	Vanya and Treasure	677/D	Codeforces
4399	1600	1219	Guard Duty (easy)	958/E1	Codeforces
4400	2200	1218	Kuro and GCD and XOR and SUM	979/D	Codeforces
4401	1900	1217	Partial Sums	223/C	Codeforces
4402	9999	1216	Three Integers Again	1170/A	Codeforces
4403	2200	1215	Divisors	448/E	Codeforces
4404	2000	1215	Build String	237/E	Codeforces
4405	1900	1215	Hot Bath	126/A	Codeforces
4406	2500	1214	Ehab's Last Theorem	1325/F	Codeforces
4407	2300	1214	Inversion Expectation	1096/F	Codeforces
4408	1600	1214	Practice	234/G	Codeforces
4409	1900	1213	Photo Processing	883/I	Codeforces
4410	2200	1211	Graph Coloring	662/B	Codeforces
4411	2300	1211	Anton and Ira	584/E	Codeforces
4412	2200	1210	Vladik and cards	743/E	Codeforces
4413	2100	1209	Below the Diagonal	266/C	Codeforces
4414	1500	1202	Large Bouquets	926/G	Codeforces
4415	2200	1202	President and Roads	567/E	Codeforces
4416	2200	1202	Appleman and a Sheet of Paper	461/C	Codeforces
4417	1700	1201	Rectangle Puzzle II	303/B	Codeforces
4418	2200	1199	Karen and Test	815/B	Codeforces
4419	2200	1199	Jeff and Permutation	351/E	Codeforces
4420	1500	1199	Oh Sweet Beaverette	331/A2	Codeforces
4421	1800	1198	IQ Test	328/A	Codeforces
4422	1900	1198	Pie or die	55/C	Codeforces
4423	2500	1196	Two Editorials	1452/E	Codeforces
4424	2100	1196	Vasya's Function	837/E	Codeforces
4425	1800	1195	Anagram	254/C	Codeforces
4426	1800	1195	Wooden Fence	182/E	Codeforces
4427	2500	1194	The Three Little Pigs	1548/C	Codeforces
4428	2200	1194	Arson In Berland Forest	1227/E	Codeforces
4429	2100	1193	Okabe and El Psy Kongroo	821/E	Codeforces
4430	1500	1193	Calendar Reform	172/D	Codeforces
4431	2600	1192	Greedy Shopping	1439/C	Codeforces
4432	1700	1191	WTF?	290/C	Codeforces
4433	2400	1190	Catowice City	1239/D	Codeforces
4434	1900	1189	Paint it really, really dark gray	717/E	Codeforces
4435	2100	1184	Magic Trick	452/C	Codeforces
4436	2500	1182	Nastia Plays with a Tree	1521/D	Codeforces
4437	2500	1181	Hack it!	468/C	Codeforces
4438	1500	1180	IT Restaurants	212/E	Codeforces
4439	1000	1180	Educational Game	178/A2	Codeforces
4440	2100	1178	Main Sequence	286/C	Codeforces
4441	2800	1178	Points	19/D	Codeforces
4442	2300	1177	Animal Observation (easy version)	1304/F1	Codeforces
4443	1900	1177	Beautiful Decomposition	279/E	Codeforces
4444	2500	1176	Egor in the Republic of Dagestan	1407/E	Codeforces
4445	1400	1175	Plane of Tanks: Pro	175/B	Codeforces
4446	1900	1175	Jabber ID	21/A	Codeforces
4447	2100	1174	Ilya and Roads	313/D	Codeforces
4448	2200	1173	Decypher the String	1117/E	Codeforces
4449	2100	1173	Little Girl and Problem on Trees	276/E	Codeforces
4450	1400	1172	Oh Sweet Beaverette	331/A1	Codeforces
4451	2300	1171	Pursuit For Artifacts	652/E	Codeforces
4452	2500	1170	Mass Change Queries	911/G	Codeforces
4453	1900	1170	Insertion Sort	362/C	Codeforces
4454	2300	1169	Yet Another Segments Subset	1399/F	Codeforces
4455	2500	1166	Mastermind	1381/C	Codeforces
4456	2400	1166	Please, another Queries on Array?	1114/F	Codeforces
4457	1900	1166	Maxim and Restaurant	261/B	Codeforces
4458	2300	1165	Company	1062/E	Codeforces
4459	1900	1165	Dexterina’s Lab	717/D	Codeforces
4460	2400	1164	Sum Balance	1242/C	Codeforces
4461	2300	1162	Beautiful Rectangle	1276/C	Codeforces
4462	2300	1162	Isomorphic Strings	985/F	Codeforces
4463	2400	1161	Four Points	1455/E	Codeforces
4464	2300	1160	Alternating Tree	960/E	Codeforces
4465	2300	1160	st-Spanning Tree	723/F	Codeforces
4466	2700	1157	Cyclical Quest	235/C	Codeforces
4467	2400	1155	Covered Points	1036/E	Codeforces
4468	2600	1155	Machine Learning	940/F	Codeforces
4469	2100	1155	Devu and Birthday Celebration	439/E	Codeforces
4470	1700	1155	Mysterious Language	409/B	Codeforces
4471	1900	1155	Logging	16/D	Codeforces
4472	9999	1153	Genetic Engineering	391/A	Codeforces
4473	2400	1152	Graph Transpositions	1442/C	Codeforces
4474	1600	1151	Multi-core Processor	411/B	Codeforces
4475	2100	1150	Caisa and Tree	463/E	Codeforces
4476	1000	1150	Educational Game	178/A1	Codeforces
4477	1800	1149	Playing with Permutations	251/B	Codeforces
4478	2100	1148	Presents in Bankopolis	793/D	Codeforces
4479	1600	1148	Wallpaper	139/B	Codeforces
4480	2000	1147	Yaroslav and Two Strings	296/B	Codeforces
4481	1900	1147	Zero-One	135/C	Codeforces
4482	1200	1143	Trading Business	176/A	Codeforces
4483	3100	1142	The Child and Binary Tree	438/E	Codeforces
4484	2800	1140	Tree Modification	1375/G	Codeforces
4485	1700	1140	Harry Potter and the History of Magic	65/B	Codeforces
4486	2600	1138	Bits And Pieces	1208/F	Codeforces
4487	2400	1137	Two Merged Sequences	1144/G	Codeforces
4488	2300	1137	Sonya and Matrix	1004/D	Codeforces
4489	1900	1136	Table	232/B	Codeforces
4490	2400	1134	Prefix Enlightenment	1290/C	Codeforces
4491	2300	1134	Culture Code	1197/E	Codeforces
4492	2300	1134	Lizard Era: Beginning	585/D	Codeforces
4493	1900	1132	Solitaire	208/B	Codeforces
4494	1800	1128	Road Improvement	638/C	Codeforces
4495	2000	1128	Interesting Game	87/C	Codeforces
4496	2600	1127	Deleting Numbers	1406/E	Codeforces
4497	2200	1124	Felicity's Big Secret Revealed	757/D	Codeforces
4498	2600	1124	Data Center Drama	527/E	Codeforces
4499	2600	1122	Commentator problem	2/C	Codeforces
4500	2200	1120	DIY Garland	1283/F	Codeforces
4501	2400	1120	New Year and Rainbow Roads	908/F	Codeforces
4502	2500	1119	Ray in the tube	1041/F	Codeforces
4503	2300	1119	New Year Domino	500/E	Codeforces
4504	2900	1116	Ghd	364/D	Codeforces
4505	2500	1115	Array Beauty	1188/C	Codeforces
4506	3000	1115	Gosha is hunting	739/E	Codeforces
4507	2300	1115	ZS and The Birthday Paradox	711/E	Codeforces
4508	1900	1115	Vasily the Bear and Fly	336/B	Codeforces
4509	1900	1115	Event Dates	45/D	Codeforces
4510	2300	1114	Chips	1244/F	Codeforces
4511	1600	1114	Stepan and Vowels	774/K	Codeforces
4512	2000	1112	Minimal Diameter Forest	1092/E	Codeforces
4513	2200	1111	Sereja and Table 	425/B	Codeforces
4514	2200	1109	Tree Folding	765/E	Codeforces
4515	2500	1109	Remembering Strings	543/C	Codeforces
4516	9999	1108	Inna, Dima and Song	390/B	Codeforces
4517	1800	1108	Guess That Car!	201/B	Codeforces
4518	1700	1108	Wizards and Minimal Spell	168/B	Codeforces
4519	1800	1108	Three Base Stations	51/C	Codeforces
4520	1700	1107	Golden System	457/A	Codeforces
4521	2400	1106	Road to 1600	1333/E	Codeforces
4522	2400	1105	Petya and Graph	1082/G	Codeforces
4523	2200	1105	Network Safety	1039/C	Codeforces
4524	1900	1105	Orientation of Edges	883/G	Codeforces
4525	1800	1105	Stadium and Games	325/B	Codeforces
4526	2100	1105	Beard Graph	165/D	Codeforces
4527	2100	1104	Compartments	356/C	Codeforces
4528	1600	1104	Fractal	36/B	Codeforces
4529	1700	1103	Phone Number	44/H	Codeforces
4530	1900	1100	Lucky Probability	109/B	Codeforces
4531	2000	1099	Olympiad in Programming and Sports	730/I	Codeforces
4532	2100	1099	Follow Traffic Rules	5/D	Codeforces
4533	1600	1098	Set Theory	856/A	Codeforces
4534	2200	1096	Funny Game	731/E	Codeforces
4535	2100	1096	Yet Another Number Game	282/D	Codeforces
4536	2200	1095	LaIS	1468/A	Codeforces
4537	9999	1091	Jordan Smiley	1331/E	Codeforces
4538	2400	1091	Ehab and a component choosing problem	1088/E	Codeforces
4539	2300	1090	Scalar Queries	1167/F	Codeforces
4540	1600	1089	The Elder Trolls IV: Oblivon	73/A	Codeforces
4541	2500	1088	Ant Man	704/B	Codeforces
4542	2200	1088	Bear and Polynomials	639/C	Codeforces
4543	1700	1088	Treasure Island	106/D	Codeforces
4544	1800	1088	Tyndex.Brome	62/B	Codeforces
4545	2400	1087	GCD Counting	990/G	Codeforces
4546	2300	1087	Sereja and Squares	425/D	Codeforces
4547	800	1085	Selling Hamburgers	1431/A	Codeforces
4548	2600	1085	Graph and Queries	1416/D	Codeforces
4549	2200	1085	Guess the Root	1155/E	Codeforces
4550	2300	1085	Anthem of Berland	808/G	Codeforces
4551	2400	1084	Useful Edges	1482/F	Codeforces
4552	2300	1083	Gregor and the Odd Cows (Easy)	1548/D1	Codeforces
4553	2300	1083	Cost Equilibrium	1513/E	Codeforces
4554	2300	1083	Natasha, Sasha and the Prefix Sums	1204/E	Codeforces
4555	2700	1082	Subset with Zero Sum	1270/G	Codeforces
4557	2400	1082	Bear and Forgotten Tree 2	653/E	Codeforces
4558	1700	1080	Bathroom terminal	852/G	Codeforces
4559	1300	1080	Pacifist frogs	39/F	Codeforces
4560	2100	1078	New Roads	746/G	Codeforces
4561	2500	1077	Partition Game	1527/E	Codeforces
4562	2400	1077	Reverse and Swap	1401/F	Codeforces
4563	2100	1077	Coin Troubles	283/C	Codeforces
4564	2500	1075	Genius	1497/D	Codeforces
4565	2200	1075	Numerical Sequence (hard version)	1216/E2	Codeforces
4566	2100	1075	Cactus	231/E	Codeforces
4567	2600	1074	Phoenix and Earthquake	1515/F	Codeforces
4568	1700	1073	Красивая команда	929/C	Codeforces
4569	2300	1073	Graph Cutting	405/E	Codeforces
4570	2100	1072	Berland and the Shortest Paths	1005/F	Codeforces
4571	1900	1072	Distributed Join	457/B	Codeforces
4572	2000	1071	Fragile Bridges	201/C	Codeforces
4573	2300	1070	Mice problem	793/C	Codeforces
4574	2000	1069	Tree-String Problem	291/E	Codeforces
4575	2200	1068	Three Pieces	1065/D	Codeforces
4576	2800	1068	Mike and Friends	547/E	Codeforces
4577	2300	1067	Vasya and Magic Matrix	1042/E	Codeforces
4578	2000	1065	Dynamic Problem Scoring	773/B	Codeforces
4579	2000	1063	Something with XOR Queries	870/D	Codeforces
4580	2300	1062	Queue in the Train	1239/C	Codeforces
4581	2400	1059	Plan of Lectures	1463/E	Codeforces
4582	2200	1059	Treeland Tour	490/F	Codeforces
4583	2400	1058	Lucky Array	121/E	Codeforces
4584	1900	1058	Lucky Permutation	121/C	Codeforces
4585	2400	1057	The Hidden Pair (Easy Version)	1370/F1	Codeforces
4586	1800	1057	Boring Partition	238/B	Codeforces
4587	2200	1054	Nikita and stack	756/C	Codeforces
4588	1100	1054	Educational Game	178/A3	Codeforces
4589	2400	1053	Cyclic Shifts Sorting	1374/F	Codeforces
4590	2400	1053	Running in Pairs	1244/G	Codeforces
4591	2100	1052	Trip to Saint Petersburg	1250/C	Codeforces
4592	2000	1052	Weak Memory	187/C	Codeforces
4593	9999	1051	A+B (Trial Problem)	1532/A	Codeforces
4594	2400	1051	The Struggling Contestant	1450/F	Codeforces
4595	2200	1051	Intellectual Inquiry	645/E	Codeforces
4596	2000	1051	Digital Root	10/C	Codeforces
4597	2400	1048	Mahmoud and Ehab and yet another xor task	959/F	Codeforces
4598	1000	1048	Fibonacci army	72/G	Codeforces
4599	2300	1044	Kleofáš and the n-thlon	601/C	Codeforces
4600	1700	1043	Spider's Web	216/D	Codeforces
4601	2400	1042	Maximize Mex	1139/E	Codeforces
4602	1800	1042	The Wall (medium)	690/D2	Codeforces
4603	2100	1042	Black and White Tree	260/D	Codeforces
4604	1800	1041	Brevity is Soul of Wit	120/H	Codeforces
4605	1900	1040	Bug in Code	420/C	Codeforces
4606	2200	1038	Darth Vader and Tree	514/E	Codeforces
4607	2500	1035	Frequency of String	963/D	Codeforces
4608	2400	1035	The Untended Antiquity	869/E	Codeforces
4609	2300	1035	Vika and Segments	610/D	Codeforces
4610	2100	1034	Performance Review	1252/G	Codeforces
4611	2200	1032	Okabe and City	821/D	Codeforces
4612	1900	1032	Optical Experiment	67/D	Codeforces
4613	2400	1031	Wrong Answer on test 233 (Hard Version)	1227/F2	Codeforces
4614	2300	1030	Subtree Minimum Query	893/F	Codeforces
4615	1700	1030	Help Victoria the Wise	98/A	Codeforces
4616	3000	1029	Pudding Monsters	526/F	Codeforces
4617	1600	1029	Geometry Horse	175/C	Codeforces
4618	9999	1028	Мониторинг	1531/B1	Codeforces
4619	2400	1027	Restore the Permutation by Sorted Segments	1343/F	Codeforces
4620	2400	1026	Simple Skewness	626/E	Codeforces
4621	1500	1025	Bus	172/C	Codeforces
4622	2500	1024	Strange Shuffle	1470/C	Codeforces
4623	2400	1024	Flying Sort (Hard Version)	1367/F2	Codeforces
4624	2200	1023	Equidistant Vertices	1551/F	Codeforces
4625	2500	1023	Johnny and Megan's Necklace	1361/C	Codeforces
4626	2100	1023	Mahmoud and Ehab and the function	862/E	Codeforces
4627	1900	1023	Camels	14/E	Codeforces
4628	2500	1021	President's Path	416/E	Codeforces
4629	2000	1021	Hydra	243/B	Codeforces
4630	2500	1020	What Is It?	1474/E	Codeforces
4631	2300	1019	(Zero XOR Subset)-less	1101/G	Codeforces
4632	2000	1019	Idempotent functions	542/C	Codeforces
4633	2200	1018	Square Root of Permutation	612/E	Codeforces
4634	2400	1016	Intersection of Permutations	1093/E	Codeforces
4635	2000	1015	Last Chance	137/E	Codeforces
4636	2500	1014	Sky Full of Stars	997/C	Codeforces
4637	2000	1014	Dima and Trap Graph	366/D	Codeforces
4638	2400	1011	Bear and Square Grid	679/C	Codeforces
4639	2100	1010	Getting Deals Done	1070/E	Codeforces
4640	2700	1010	Power Tower	906/D	Codeforces
4641	2500	1009	Square-free division (hard version)	1497/E2	Codeforces
4642	2300	1007	Point Ordering	1254/C	Codeforces
4643	2300	1007	Guess Your Way Out! II	558/D	Codeforces
4644	2400	1006	Session in BSU	1027/F	Codeforces
4645	1600	1006	Interactive Bulls and Cows (Easy)	753/B	Codeforces
4646	2200	1005	Math	1505/F	Codeforces
4647	2200	1004	Arpa and a game with Mojtaba	850/C	Codeforces
4648	1800	1001	Heidi and Library (easy)	802/A	Codeforces
4649	2200	1001	Shifting	286/B	Codeforces
4650	2500	1000	On the Bench	840/C	Codeforces
4651	2200	999	Swapping Characters	903/E	Codeforces
4652	2500	997	Team-Building	1444/C	Codeforces
4653	1900	996	Old Berland Language	37/C	Codeforces
4654	1700	994	Blog Photo	53/B	Codeforces
4655	2200	993	80-th Level Archeology	731/D	Codeforces
4656	2100	993	Petya and Spiders	111/C	Codeforces
4657	2100	992	Counter Attack	190/E	Codeforces
4659	2600	991	Graph Subset Problem	1439/B	Codeforces
4660	2000	989	Intersection	21/B	Codeforces
4661	2300	987	Nikita and Order Statistics	993/E	Codeforces
4662	2400	986	Chaotic Merge	1499/E	Codeforces
4663	2500	986	AND Segments	1327/F	Codeforces
4664	2400	985	Restore Array	1028/E	Codeforces
4665	2300	983	Vulnerable Kerbals	772/C	Codeforces
4666	2400	982	Long Permutation	1443/E	Codeforces
4667	2200	982	Free Market	364/B	Codeforces
4668	2400	982	Little Elephant and Inversions	220/E	Codeforces
4669	1800	982	Vasya and Types	87/B	Codeforces
4670	1800	982	Sequence of points	24/C	Codeforces
4671	2200	981	Package Delivery	627/C	Codeforces
4672	2400	979	LRU	698/C	Codeforces
4673	2200	979	Dima and Horses	272/E	Codeforces
4674	2200	978	AI robots	1045/G	Codeforces
4675	2000	977	Sofa Thief	818/C	Codeforces
4676	2300	977	Top Secret Task	590/D	Codeforces
4677	1800	976	Lightsabers (medium)	958/F2	Codeforces
4678	1600	976	Reflection	86/A	Codeforces
4679	2100	974	Mysterious Code	1163/D	Codeforces
4680	2100	972	Optimal Polygon Perimeter	1044/C	Codeforces
4681	2200	972	Hill Climbing	406/D	Codeforces
4682	2300	970	String Multiplication	1131/E	Codeforces
4683	2500	970	Anton and School	734/F	Codeforces
4684	2900	969	Fairy	19/E	Codeforces
4685	2400	967	Balanced Binary Search Trees	1237/E	Codeforces
4686	2200	967	Seating of Students	906/B	Codeforces
4687	2500	966	Almost Fault-Tolerant Database	1492/E	Codeforces
4688	2000	966	Circle of Numbers	263/C	Codeforces
4689	2400	965	Relatively Prime Powers	1036/F	Codeforces
4690	2600	963	Pairs of Pairs	1391/E	Codeforces
4691	2300	963	Columns Swaps	1385/G	Codeforces
4692	2400	963	Split the Tree	1059/E	Codeforces
4693	2600	962	Crypto Lights	1523/E	Codeforces
4694	2500	962	Picking Strings	923/D	Codeforces
4695	2400	962	Name That Tune	498/B	Codeforces
4696	2500	961	Stringforces	1550/E	Codeforces
4697	2300	961	Bamboo Partition	830/C	Codeforces
4698	2600	961	New Year and Old Subsequence	750/E	Codeforces
4699	2300	961	Axis Walking	327/E	Codeforces
4700	2200	959	Double Happiness	113/C	Codeforces
4701	2100	959	Changing a String	56/D	Codeforces
4702	9999	958	Pigeon d'Or	1145/D	Codeforces
4703	2400	957	Party	906/C	Codeforces
4704	900	956	Hexagonal numbers	130/A	Codeforces
4705	1600	955	ucyhf	171/F	Codeforces
4706	2500	954	Continuous City	1479/C	Codeforces
4707	2500	954	REQ	594/D	Codeforces
4708	2000	954	Nanami's Digital Board	433/D	Codeforces
4709	1900	953	Before Exam	119/B	Codeforces
4710	2400	952	Freelancer's Dreams	605/C	Codeforces
4711	1800	952	Laser	15/B	Codeforces
4712	2300	951	Lock Puzzle	936/C	Codeforces
4713	2300	951	Maximum path	762/D	Codeforces
4714	2900	951	Palisection	17/E	Codeforces
4715	2200	949	Songwriter	1252/E	Codeforces
4716	1800	949	Lucky Numbers	95/B	Codeforces
4717	2400	947	Palindromic Paths	1205/C	Codeforces
4718	1100	947	Generate plus state or minus state	1001/A	Codeforces
4719	2000	947	Subway Innovation	371/E	Codeforces
4720	2300	946	Wizard's Tour	858/F	Codeforces
4721	2300	945	Knapsack	1132/E	Codeforces
4722	2400	945	Lucky Tickets	1096/G	Codeforces
4723	2500	943	Ehab and the Expected GCD Problem	1174/E	Codeforces
4724	2400	943	Tree Destruction	911/F	Codeforces
4725	2600	942	Frequency Problem (Easy Version)	1446/D1	Codeforces
4726	2200	942	Ralph And His Tour in Binary Country	894/D	Codeforces
4727	2400	941	Leaf Sets	1042/F	Codeforces
4728	2400	941	Levels and Regions	643/C	Codeforces
4729	1600	939	Constellation	32/D	Codeforces
4730	2300	939	Scheme	22/E	Codeforces
4731	2700	938	The Hidden Pair (Hard Version)	1370/F2	Codeforces
4732	1800	938	Online Meeting	420/B	Codeforces
4733	2500	937	Nanosoft	1301/E	Codeforces
4734	2300	934	Bipartite Segments	901/C	Codeforces
4735	2400	934	Happy Tree Party	593/D	Codeforces
4736	2400	933	Sasha and Interesting Fact from Graph Theory	1109/D	Codeforces
4737	2400	933	Prime Gift	912/E	Codeforces
4738	2200	933	Salazar Slytherin's Locket	855/E	Codeforces
4739	2600	932	Zip-line	650/D	Codeforces
4740	1700	932	Corporation Mail	56/C	Codeforces
4741	3200	931	Tourists	487/E	Codeforces
4742	1700	930	Pyramids	630/Q	Codeforces
4743	1700	929	Kicker	411/C	Codeforces
4744	2500	928	Move and Swap	1485/E	Codeforces
4745	2200	928	Couple Cover	691/F	Codeforces
4746	2200	928	Captains Mode	377/C	Codeforces
4747	2400	927	Madhouse (Easy version)	1286/C1	Codeforces
4748	2500	926	Ivan and Burgers	1100/F	Codeforces
4749	2500	926	Expected diameter of a tree	804/D	Codeforces
4750	2400	925	You Are Given Some Strings...	1202/E	Codeforces
4751	2100	925	Valera and Swaps	441/D	Codeforces
4752	2500	924	Distinctive Roots in a Tree	1467/E	Codeforces
4753	2400	924	Animal Observation (hard version)	1304/F2	Codeforces
4754	2500	923	Alex and a TV Show	1097/F	Codeforces
4755	2500	922	Alyona and towers	739/C	Codeforces
4756	2500	921	It's a bird! No, it's a plane! No, it's AaParsa!	1528/D	Codeforces
4757	2400	921	Ehab and the Big Finale	1174/F	Codeforces
4758	2000	919	MYSTERIOUS LANGUAGE	171/E	Codeforces
4759	2100	918	Frog Jumping	1146/D	Codeforces
4760	1400	916	Boot Camp	1346/B	Codeforces
4761	2300	916	Beautiful Pairs of Numbers	403/D	Codeforces
4969	2400	760	Garlands	707/E	Codeforces
4762	2300	915	Hyakugoku and Ladders	1245/E	Codeforces
4763	2000	915	Numbers	128/D	Codeforces
4764	2000	914	Number Transformation	251/C	Codeforces
4765	1900	914	Dividing Island	63/D	Codeforces
4766	2800	911	Shop	521/D	Codeforces
4767	1700	911	Demonstration	191/B	Codeforces
4768	9999	910	Travel to Bertown	1533/A	Codeforces
4769	2500	910	Bear and Company	771/D	Codeforces
4770	2000	910	Little Elephant and Furik and Rubik	204/C	Codeforces
4771	1500	908	Mean Requests	523/B	Codeforces
4772	2300	907	Max History	938/E	Codeforces
4773	2500	905	Yurii Can Do Everything	1438/E	Codeforces
4774	2200	905	Valera and Fools	369/D	Codeforces
4775	1800	902	Try and Catch	195/C	Codeforces
4776	1800	902	Squares	123/B	Codeforces
4777	2100	901	Bulmart	730/C	Codeforces
4778	2500	899	Royal Questions	875/F	Codeforces
4779	2300	895	Ann and Half-Palindrome	557/E	Codeforces
4780	1700	894	Zebra Tower	159/E	Codeforces
4781	1700	894	Codeforces World Finals	30/B	Codeforces
4782	2000	893	Journey	43/D	Codeforces
4783	2500	891	Complete the MST	1508/C	Codeforces
4784	2200	891	Byteland, Berland and Disputed Cities	962/E	Codeforces
4785	2000	891	Neural Network country	852/B	Codeforces
4786	2500	888	Three Occurrences	1418/G	Codeforces
4787	2300	887	Tourism	1310/D	Codeforces
4788	2500	887	Bear and Bowling 4	660/F	Codeforces
4789	2500	886	Add on a Tree: Revolution	1188/A2	Codeforces
4790	2200	886	Short Code	965/E	Codeforces
4791	2500	885	Cow and Treats	1307/E	Codeforces
4792	2300	885	DZY Loves FFT	444/B	Codeforces
4793	1500	885	Sheldon and Ice Pieces	328/B	Codeforces
4794	9999	883	Bad Days	1170/B	Codeforces
4795	2000	883	Lemmings	163/B	Codeforces
4796	2500	881	Working routine	706/E	Codeforces
4797	2100	880	Social Network	524/D	Codeforces
4798	2500	880	Lucky Country	95/E	Codeforces
4799	2400	880	Broken robot	24/D	Codeforces
4800	9999	879	On Sum of Fractions	396/B	Codeforces
4801	2200	878	Drivers Dissatisfaction	733/F	Codeforces
4802	2100	877	String Mark	895/D	Codeforces
4803	2600	877	TorCoder	240/F	Codeforces
4804	2100	877	World Eater Brothers	238/C	Codeforces
4805	2100	876	Hexagons	615/E	Codeforces
4806	2400	876	Rooks and Rectangles	524/E	Codeforces
4807	2500	873	Xum	1427/E	Codeforces
4808	9999	873	Скрытый друг	1275/A	Codeforces
4809	2200	873	Nastya Hasn't Written a Legend	1136/E	Codeforces
4810	1800	873	Embassy Queue	85/B	Codeforces
4811	2400	871	Rat Kwesh and Cheese	621/D	Codeforces
4812	1900	871	Memory for Arrays	309/C	Codeforces
4813	2300	870	Teams Formation	878/B	Codeforces
4814	2500	868	Cheap Robot	1253/F	Codeforces
4815	1900	868	Analyzing Polyline	195/D	Codeforces
4816	2500	868	Oranges and Apples	23/C	Codeforces
4817	2400	867	Cooperative Game	1137/D	Codeforces
4818	1800	867	Turn	630/M	Codeforces
4819	2600	866	Break Up	700/C	Codeforces
4820	2500	865	Reachable Strings	1320/D	Codeforces
4821	2400	865	Beautiful Mirrors with queries	1264/C	Codeforces
4822	2500	865	Bash Plays with Functions	757/E	Codeforces
4823	2100	865	Bulbo	575/F	Codeforces
4824	2300	865	Nudist Beach	553/D	Codeforces
4825	2300	865	Empire Strikes Back	300/E	Codeforces
4826	2000	865	First Digit Law	54/C	Codeforces
4827	2200	864	Divisor Tree	337/E	Codeforces
4828	2400	863	Alice, Bob, Oranges and Apples	585/C	Codeforces
4829	9999	863	Cards	398/A	Codeforces
4830	2500	862	Falling Sand (Easy Version)	1534/F1	Codeforces
4831	2400	861	U2	1142/C	Codeforces
4832	1800	860	Football Championship	200/C	Codeforces
4833	2700	859	Flights for Regular Customers	576/D	Codeforces
4834	9999	858	Blocked Points	392/A	Codeforces
4835	2300	857	New Passenger Trams	1379/D	Codeforces
4836	2600	856	Cards	1278/F	Codeforces
4837	2300	856	Restoring the Expression	898/F	Codeforces
4838	2100	855	Playlist	268/E	Codeforces
4839	2400	854	New Year and the Acquaintance Estimation	1091/E	Codeforces
4840	2000	854	Beautiful IP Addresses	292/C	Codeforces
4841	2000	854	Knights	33/D	Codeforces
4842	2300	853	Bear and Drawing	573/C	Codeforces
4843	2300	853	Game with Powers	317/D	Codeforces
4844	1800	852	Road Widening	883/K	Codeforces
4845	2200	852	Radio stations	762/E	Codeforces
4846	2500	851	Necklace	613/C	Codeforces
4847	1600	850	Champions' League	234/E	Codeforces
4848	2200	850	Gift	76/A	Codeforces
4849	2200	847	Largest Beautiful Number	946/E	Codeforces
4850	1900	847	Dependency management	928/C	Codeforces
4851	2400	847	Axel and Marston in Bitland	780/F	Codeforces
4852	1900	846	LaTeX Expert	1090/B	Codeforces
4853	2400	846	Palindromes in a Tree	914/E	Codeforces
4854	2600	845	Rotating Substrings	1363/F	Codeforces
4855	1000	845	Three Problems	1211/A	Codeforces
4856	2300	845	Sagheer and Apple Tree	812/E	Codeforces
4857	1800	845	Petya and File System	66/C	Codeforces
4858	2100	844	Maximum Questions	900/E	Codeforces
4859	1800	844	Range Increments	174/C	Codeforces
4860	2800	843	Drazil and Morning Exercise	516/D	Codeforces
4861	2100	841	Hostname Aliases	644/C	Codeforces
4862	2400	841	Transmitting Levels	526/E	Codeforces
4863	2500	840	Up and Down the Tree	1065/F	Codeforces
4864	2300	839	Shortest Path Problem?	845/G	Codeforces
4865	2400	839	String Compression	825/F	Codeforces
4867	2500	838	New Year and Castle Construction	1284/E	Codeforces
4868	2400	837	Median on Segments (General Case Edition)	1005/E2	Codeforces
4869	2200	837	Prairie Partition	773/C	Codeforces
4870	2200	836	Almost Permutation	863/F	Codeforces
4871	1600	835	Martian Architecture	57/B	Codeforces
4872	2300	833	Barrels and boxes	768/F	Codeforces
4873	1900	833	Digits Permutations	138/B	Codeforces
4874	2500	831	Turtles	348/D	Codeforces
4875	2400	830	Jamie and Tree	916/E	Codeforces
4876	2000	830	Seller Bob	18/D	Codeforces
4877	2500	829	Game With String	1221/E	Codeforces
4878	2000	829	Encryption (medium)	958/C2	Codeforces
4879	2400	829	String Set Queries	710/F	Codeforces
4880	2100	829	Little Elephant and Shifts	220/C	Codeforces
4881	1700	829	Warehouse	35/B	Codeforces
4882	2300	827	Card Bag	1156/F	Codeforces
4883	2200	827	Alice the Fan	1089/A	Codeforces
4884	2400	826	Traffic Jams in the Land	498/D	Codeforces
4885	2200	826	Lovely Matrix	274/D	Codeforces
4886	9999	824	Likes Display	1297/A	Codeforces
4887	2500	823	The Number of Subpermutations	1175/F	Codeforces
4888	2100	823	Level Generation	818/F	Codeforces
4889	2300	823	Hiking	489/E	Codeforces
4890	2800	823	e-Government	163/E	Codeforces
4891	2400	822	Trucks and Cities	1101/F	Codeforces
4892	2300	822	Ann and Books	877/F	Codeforces
4893	3100	821	Forensic Examination	666/E	Codeforces
4894	2100	821	The table	226/D	Codeforces
4895	2400	820	Acyclic Organic Compounds	601/D	Codeforces
4896	1600	820	Repaintings	40/B	Codeforces
4897	1800	819	Fancy Fence	1402/A	Codeforces
4898	1800	819	Parking Lot	46/D	Codeforces
4899	900	818	From Zero To Y	1488/A	Codeforces
4900	2400	818	Forbidden Indices	873/F	Codeforces
4901	2300	818	Little Victor and Set	460/D	Codeforces
4902	2300	817	Points, Lines and Ready-made Titles	870/E	Codeforces
4903	2200	817	Arthur and Questions	518/E	Codeforces
4904	1800	816	Greedy Merchants	178/B3	Codeforces
4905	2500	815	The World Is Just a Programming Task (Hard Ve...	1239/B	Codeforces
4906	2700	814	Close Vertices	293/E	Codeforces
4907	2500	813	Museums Tour	1137/C	Codeforces
4908	1700	813	Recover Polygon (easy)	690/B1	Codeforces
4909	2500	811	Rescue Niwen!	1562/E	Codeforces
4910	1700	811	Variable, or There and Back Again	164/A	Codeforces
4911	9999	810	Code Review	1275/B	Codeforces
4912	2400	810	The Last Fight Between Human and AI	676/E	Codeforces
4913	1700	809	Good Substrings	316/G1	Codeforces
4914	2800	808	Sum	1442/D	Codeforces
4915	2300	808	Fence Divercity	659/G	Codeforces
4916	2900	807	Mr. Kitayuta vs. Bamboos	505/E	Codeforces
4917	2200	805	Dog Show	847/D	Codeforces
4918	2300	800	Sereja and Two Sequences	425/C	Codeforces
4919	2100	800	Vasily the Bear and Beautiful Strings	336/D	Codeforces
4920	2200	799	Vladik and chat	754/C	Codeforces
4921	2500	798	Case of a Top Secret	555/D	Codeforces
4922	2600	797	BFS Trees	1495/D	Codeforces
4923	2900	797	Goods transportation	724/E	Codeforces
4924	1900	797	Spiral Maximum	173/C	Codeforces
4925	1900	797	Russian Roulette	103/C	Codeforces
4926	2300	796	Side Transmutations	1065/E	Codeforces
4927	2100	795	Heidi Learns Hashing (Medium)	1184/A2	Codeforces
4928	2200	795	Bribes	575/B	Codeforces
4929	2200	795	Students' Revenge	332/C	Codeforces
4930	2400	793	Maximum Matching	1038/E	Codeforces
4931	2400	793	Little Artem and Random Variable	641/D	Codeforces
4932	2500	793	Clues	156/D	Codeforces
4933	2500	792	Independent Set	1332/F	Codeforces
4934	1900	792	End of Exams	93/B	Codeforces
4935	2400	790	Hongcow Buys a Deck of Cards	744/C	Codeforces
4936	2000	788	Xor	193/B	Codeforces
4937	2500	787	Controversial Rounds	1398/F	Codeforces
4938	2500	787	Iahub and Xors	341/D	Codeforces
4939	2400	787	Splitting the Uniqueness	297/C	Codeforces
4940	9999	785	Frog Jumping	1532/B	Codeforces
4941	2500	781	Nastya and King-Shamans	992/E	Codeforces
4942	1800	781	Heidi and Library (medium)	802/B	Codeforces
4943	1800	781	Programming Language	200/D	Codeforces
4944	2400	779	Pave the Parallelepiped	1007/B	Codeforces
4945	2300	779	Restore a Number	670/F	Codeforces
4946	2600	779	Little Elephant and Broken Sorting	258/D	Codeforces
4947	2800	778	New Year and Original Order	908/G	Codeforces
4948	2200	777	Huge Strings	868/D	Codeforces
4949	9999	777	Painting The Wall	398/B	Codeforces
4950	2100	776	Inna and Binary Logic	400/E	Codeforces
4951	2200	776	Deletion of Repeats	19/C	Codeforces
4952	2600	775	Super Jaber	1301/F	Codeforces
4953	2400	775	The Cake Is a Lie	1282/E	Codeforces
4954	2200	774	Abbreviation	1003/F	Codeforces
4955	2400	774	Binary Tree on Plane	277/E	Codeforces
4956	2100	774	Beavermuncher-0xFF	77/C	Codeforces
4957	2500	773	Group Photo	1517/E	Codeforces
4958	2400	773	TV Game	31/E	Codeforces
4959	2500	771	Strange Function	1334/F	Codeforces
4960	2400	770	Abnormal Permutation Pairs (easy version)	1542/E1	Codeforces
4961	2400	769	New Year and Three Musketeers	611/E	Codeforces
4962	2600	767	Goodbye Souvenir	848/C	Codeforces
4963	2500	767	Levko and Strings	360/C	Codeforces
4964	2200	766	Snake	225/D	Codeforces
4965	2600	761	Stack Exterminable Arrays	1223/F	Codeforces
4966	2000	761	Berland University	1090/L	Codeforces
4967	2200	761	Lucky Number Representation	354/E	Codeforces
4968	1600	760	Choose Place	926/D	Codeforces
4970	2700	758	X-OR	1364/E	Codeforces
4971	2500	758	Maximum Reduction	1037/F	Codeforces
4972	2300	758	Coprime Arrays	915/G	Codeforces
4973	2500	758	Colored Balls	792/E	Codeforces
4974	2600	758	PolandBall and Gifts	755/F	Codeforces
4975	2400	758	Developing Game	377/D	Codeforces
4976	2500	757	Legen...	696/D	Codeforces
4977	2100	757	Start of the session	12/E	Codeforces
4978	2400	756	Rest In The Shades	1016/E	Codeforces
4979	2700	753	Latin Square	1458/C	Codeforces
4980	2500	753	Aquarium decoration	799/E	Codeforces
4981	2300	752	Fafa and Ancient Mathematics	935/E	Codeforces
4982	1900	752	Group Photo 2 (online mirror version)	529/B	Codeforces
4983	2100	752	Fools and Foolproof Roads	362/D	Codeforces
4984	9999	751	Tower of Hanoi	392/B	Codeforces
4985	2400	750	Neko and Flashback	1152/E	Codeforces
4986	2400	750	The penguin's game	835/E	Codeforces
4987	2400	750	Bacterial Melee	756/D	Codeforces
4988	2700	749	Animals and Puzzle	713/D	Codeforces
4989	2700	749	Intergalaxy Trips	605/E	Codeforces
4990	1900	748	Autocompletion	928/D	Codeforces
4991	1900	748	Minimum Sum	120/J	Codeforces
4992	2600	747	Beautiful Bracket Sequence (easy version)	1264/D1	Codeforces
4993	1900	746	Merge Equal Elements	926/E	Codeforces
4994	1300	746	Factorial	64/A	Codeforces
4995	2500	745	Summoning Minions	1354/F	Codeforces
4996	2300	745	Nauuo and Pictures (easy version)	1172/C1	Codeforces
4997	2300	745	Vasya and Templates	1085/E	Codeforces
4998	2500	745	Contact ATC	924/D	Codeforces
4999	2400	745	Change-free	767/E	Codeforces
5000	2800	743	You Are Given a Tree	1039/D	Codeforces
5001	1900	743	Building Bridge	250/D	Codeforces
5002	2500	742	Financiers Game	729/F	Codeforces
5003	2200	742	Furlo and Rublo and Game	255/E	Codeforces
5004	1900	741	Crunching Numbers Just for You	784/F	Codeforces
5005	2300	741	Famil Door and Roads	629/E	Codeforces
5006	1700	740	Brand New Easy Problem	202/B	Codeforces
5007	2300	739	Games on a CD	727/E	Codeforces
5008	2100	739	Blackboard Fibonacci	217/B	Codeforces
5009	2300	738	Sonya and Informatics	1151/F	Codeforces
5010	2100	738	Berland Elections	847/F	Codeforces
5011	2500	735	Sports Betting	1556/F	Codeforces
5012	2400	735	Three strings	452/E	Codeforces
5013	1700	735	bHTML Tables Analisys	51/B	Codeforces
5014	2600	733	You	1554/E	Codeforces
5015	1800	733	Computer Game	37/B	Codeforces
5016	1700	732	Game of chess unfinished	42/B	Codeforces
5017	2600	731	Awesome Substrings	1270/F	Codeforces
5018	2500	731	Two Arithmetic Progressions	710/D	Codeforces
5019	2100	729	Third Month Insanity	859/D	Codeforces
5020	2300	729	Guess the Tree	429/C	Codeforces
5021	2800	728	Team Rocket Rises Again	757/F	Codeforces
5022	2400	728	Little Elephant and Tree	258/E	Codeforces
5023	2700	727	Tree Generator™	1149/C	Codeforces
5024	9999	726	Мониторинг	1531/B2	Codeforces
5025	2700	726	Sereja and Intervals	367/E	Codeforces
5026	2400	725	King Kog's Reception	1089/K	Codeforces
5027	2400	725	Elevator	983/C	Codeforces
5028	2700	725	Best Edge Weight	827/D	Codeforces
5029	2400	725	Encoding	533/F	Codeforces
5030	2100	725	Kamal-ol-molk's Painting	475/C	Codeforces
5031	1400	723	Polycarp and the Language of Gods	1431/B	Codeforces
5032	3300	723	Cool Slogans	700/E	Codeforces
5033	2200	722	Excitation of Atoms	1425/E	Codeforces
5034	2400	722	Simple Cycles Edges	962/F	Codeforces
5035	3100	722	Souvenirs	765/F	Codeforces
5036	2400	721	Vasya and Maximum Profit	1107/G	Codeforces
5037	2900	721	Roads in Yusland	671/D	Codeforces
5038	1900	721	E-mail Addresses	412/E	Codeforces
5039	2400	721	Linear Kingdom Races	115/E	Codeforces
5040	2300	720	Fake News (hard)	802/I	Codeforces
5041	2500	720	Frogs and mosquitoes	609/F	Codeforces
5042	2200	720	Mushroom Gnomes - 2	138/C	Codeforces
5043	2000	720	Flag 2	18/E	Codeforces
5044	2400	719	Sonya and Ice Cream	1004/E	Codeforces
5045	2400	719	Graph Reconstruction	329/C	Codeforces
5046	2500	718	Curious Array	407/C	Codeforces
5047	2100	717	Elections	457/C	Codeforces
5048	2400	716	Maximum Element	886/E	Codeforces
5049	2200	715	Brain Network (hard)	690/C3	Codeforces
5050	2100	714	Runner's Problem	954/F	Codeforces
5051	2300	714	Periodic RMQ Problem	803/G	Codeforces
5052	3000	713	Sergey's problem	1019/C	Codeforces
5053	1800	713	One-Based Arithmetic	440/C	Codeforces
5054	1800	713	Dark Assembly	105/B	Codeforces
5055	2000	713	General Mobilization	82/C	Codeforces
5056	2400	712	Oolimry and Suffix Array	1526/E	Codeforces
5057	2700	711	Foo Fighters	1148/F	Codeforces
5058	2100	711	Area of a Star	630/P	Codeforces
5059	2300	709	Graph Traveler	1200/F	Codeforces
5060	2300	709	Help Caretaker	142/C	Codeforces
5061	2500	708	Dasha and Chess	1100/D	Codeforces
5062	2500	708	Peterson Polyglot	778/C	Codeforces
5063	2400	708	Minimum Modular	303/C	Codeforces
5064	2000	707	Inna and Sequence 	374/D	Codeforces
5065	2700	706	Résumé Review	1344/D	Codeforces
5066	2000	706	A Piece of Cake	171/C	Codeforces
5067	2300	706	Ski Base	91/C	Codeforces
5068	2100	706	Chessboard Billiard	74/C	Codeforces
5069	2500	704	Leaf Partition	1146/F	Codeforces
5070	2400	703	Construct a tree	1098/C	Codeforces
5071	2000	703	Death Stars (medium)	958/A2	Codeforces
5072	2500	703	Dividing Kingdom II	687/D	Codeforces
5073	2400	702	Inversions After Shuffle	749/E	Codeforces
5074	2600	700	Tavas and Pashmaks	535/E	Codeforces
5075	1900	700	Dot	69/D	Codeforces
5076	2400	697	Machine Programming	164/C	Codeforces
5077	2100	697	Harry Potter and the Golden Snitch	65/C	Codeforces
5078	1900	697	Comb	46/E	Codeforces
5079	2300	696	Monsters and Potions	1070/G	Codeforces
5080	3000	695	Double Knapsack	618/F	Codeforces
5081	9999	693	Minus and Minus Give Plus	1170/C	Codeforces
5082	2400	693	Population Size	416/D	Codeforces
5083	1400	692	Binary Blocks	838/A	Codeforces
5084	2900	692	GCD Table	338/D	Codeforces
5085	2000	692	Log Stream Analysis	245/F	Codeforces
5086	2500	691	Marbles	607/C	Codeforces
5087	2900	691	Present for Vitalik the Philatelist 	585/E	Codeforces
5088	2400	689	Lunar New Year and a Recursive Sequence	1106/F	Codeforces
5089	2700	689	Jeff and Removing Periods	351/D	Codeforces
5090	2400	688	Diameter Cuts	1499/F	Codeforces
5091	2200	688	Run for beer	575/G	Codeforces
5092	2400	686	Choose a Square	1221/F	Codeforces
5093	2700	686	Tournament	878/C	Codeforces
5094	2500	685	Reading Books (hard version)	1374/E2	Codeforces
5095	1600	685	Hobbits' Party	125/C	Codeforces
5096	2600	684	Flip the Cards	1503/D	Codeforces
5097	9999	684	On Corruption and Numbers	397/B	Codeforces
5098	2400	683	Morse Code	1129/C	Codeforces
5099	2300	683	Curfew	949/D	Codeforces
5100	2000	683	Chocolate	31/D	Codeforces
5101	2600	682	Koala and Notebook	1209/F	Codeforces
5102	2500	682	Rectangle Painting 2	1198/E	Codeforces
5103	2100	682	Quest	542/F	Codeforces
5104	2300	682	Shaass the Great	294/E	Codeforces
5105	2600	681	Bicolored Segments	1389/F	Codeforces
5106	2100	681	Daleks' Invasion (medium)	1184/E2	Codeforces
5107	2400	681	Bear and Contribution	639/D	Codeforces
5108	2200	681	George and Cards	387/E	Codeforces
5109	2600	680	Destroy the Colony	1111/D	Codeforces
5110	800	680	Generate superposition of all basis states	1002/A1	Codeforces
5111	2000	680	What Has Dirichlet Got to Do with That?	39/E	Codeforces
5112	2100	679	Rosetta Problem	656/D	Codeforces
5113	1400	677	Generate Bell state	1001/B	Codeforces
5114	2000	677	Education Reform	119/C	Codeforces
5115	2000	676	Robo-Footballer	248/C	Codeforces
5116	2400	675	PolandBall and White-Red graph	755/E	Codeforces
5117	2600	674	Lamps on a Circle	1368/F	Codeforces
5118	2400	674	Cookies	1099/F	Codeforces
5119	2300	674	Bracket Substring	1015/F	Codeforces
5120	2600	673	Adam and Tree	442/D	Codeforces
5121	2300	672	Progress Monitoring	509/F	Codeforces
5122	2600	669	Emotional Fishermen	1437/F	Codeforces
5123	2100	669	Village (Minimum)	1387/B1	Codeforces
5124	2700	669	Tree Queries	1254/D	Codeforces
5125	2700	669	Conveyor Belts	487/D	Codeforces
5126	2000	669	Special Grid	435/D	Codeforces
5127	2400	668	Deduction Queries	1044/D	Codeforces
5128	2000	668	Maxim and Matrix	261/C	Codeforces
5129	2100	667	Chicken or Fish?	522/C	Codeforces
5130	2500	666	Swapping Problem	1513/F	Codeforces
5131	9999	665	Mystery Circuit	1145/C	Codeforces
5132	2300	665	Timetable	1039/A	Codeforces
5133	2100	664	Casinos and travel	852/E	Codeforces
5134	2300	664	Matching Names	566/A	Codeforces
5135	2200	664	Paint Tree	196/C	Codeforces
5136	2300	664	Beautiful Road	87/D	Codeforces
5137	2700	662	Capitalism	1450/E	Codeforces
5138	2600	662	New Year and the Mallard Expedition	1091/F	Codeforces
5139	2300	662	Different Subsets For All Tuples	660/E	Codeforces
5140	1700	661	Shave Beaver!	331/B1	Codeforces
5141	1800	660	Planting Trees	45/J	Codeforces
5142	2600	659	Boboniu and String	1394/C	Codeforces
5143	2900	658	Omkar and Last Floor	1372/E	Codeforces
5144	9999	658	#define Задача B ...	1275/C	Codeforces
5145	2400	658	Logical Expression	913/E	Codeforces
5146	2200	657	Restoring Numbers	509/D	Codeforces
5147	2300	657	Set of Points	277/B	Codeforces
5148	9999	656	Nearest Point Function	1533/B	Codeforces
5149	2600	655	Game with Strings	482/C	Codeforces
5150	2800	655	Little Elephant and Strings	204/E	Codeforces
5151	1400	652	Distinguish plus state and minus state	1001/D	Codeforces
5152	2700	652	Partitions	961/G	Codeforces
5153	1200	652	The Check of the Point	683/A	Codeforces
5154	2100	651	Exploration plan	852/D	Codeforces
5155	1800	651	Restoration of the Permutation	67/B	Codeforces
5156	2000	650	BF Calculator	784/G	Codeforces
5157	2500	650	Board Game	605/D	Codeforces
5158	2400	650	MST Company	125/E	Codeforces
5159	2200	650	Bath Queue	28/C	Codeforces
5160	2400	649	Crossword Expert	1194/F	Codeforces
5161	2900	649	Bandit Blues	960/G	Codeforces
5162	2700	649	Bags and Coins	356/D	Codeforces
5163	2200	649	Thwarting Demonstrations	191/E	Codeforces
5164	2700	648	Common Divisor Graph	1553/G	Codeforces
5165	2600	648	Song of the Sirens	1466/G	Codeforces
5166	2300	648	The Coronation	1250/E	Codeforces
5167	2300	648	Fibonacci Sums	126/D	Codeforces
5168	2500	647	Tree Factory	1225/F	Codeforces
5169	2500	647	Ostap and Tree	735/E	Codeforces
5170	2200	647	George and Interesting Graph	387/D	Codeforces
5171	2500	647	Summer Earnings	333/E	Codeforces
5172	2600	646	Xor-matic Number of the Graph	724/G	Codeforces
5173	2000	646	Table with Letters - 2	253/D	Codeforces
5174	1500	644	Quadratic equation	530/A	Codeforces
5175	2400	643	Anniversary	226/C	Codeforces
5176	2500	642	The Neutral Zone	1017/F	Codeforces
5177	2600	642	Two Melodies	813/D	Codeforces
5178	1900	642	Special Olympics	199/B	Codeforces
5179	2400	641	Labelling Cities	794/D	Codeforces
5180	2200	641	Wrong Floyd	350/E	Codeforces
5181	2400	640	Vasya and Array	1093/F	Codeforces
5182	2200	640	Dima and Magic Guitar	366/E	Codeforces
5183	2400	640	Notepad	17/D	Codeforces
5184	2000	639	Kids' Riddle	784/B	Codeforces
5185	2600	638	Optimize!	338/E	Codeforces
5186	2100	638	Unsolvable	225/E	Codeforces
5187	2400	637	Hot is Cold	1146/E	Codeforces
5188	2400	637	The Supersonic Rocket	1017/E	Codeforces
5189	2400	636	Economic Difficulties	1263/F	Codeforces
5190	2700	635	Magnets	1491/F	Codeforces
5191	2500	635	Dead Ends	53/E	Codeforces
5192	2000	634	Out of Controls	656/E	Codeforces
5193	1500	633	Traveling Around the Golden Ring of Berland	1211/B	Codeforces
5194	2700	633	Permutation	452/F	Codeforces
5195	2000	633	Letter A	13/B	Codeforces
5196	2500	632	Happy New Year	1313/D	Codeforces
5197	2400	632	Flow Control	990/F	Codeforces
5198	2400	632	Square Table	417/E	Codeforces
5199	2200	629	Inverse of Rows and Columns	1157/G	Codeforces
5200	2800	629	Ladies' Shop	286/E	Codeforces
5201	3100	627	Welcome home, Chtholly	896/E	Codeforces
5202	2200	626	Yet Another String Matching Problem	954/I	Codeforces
5203	2700	625	Nullify The Matrix	1451/F	Codeforces
5204	2400	625	Greedy Subsequences	1132/G	Codeforces
5205	2400	624	Sonya and Matrix Beauty	1080/E	Codeforces
5206	2400	624	Superior Periodic Subarrays	582/C	Codeforces
5207	1800	624	Boom	120/G	Codeforces
5208	1900	624	Dancing Lessons	45/C	Codeforces
5209	2600	623	Realistic Gameplay	1430/F	Codeforces
5210	2300	623	Eyes Closed	895/E	Codeforces
5211	2500	622	Putting Boxes Together	1030/F	Codeforces
5212	2600	622	Mobile Phone Network	1023/F	Codeforces
5213	2300	622	Berland collider	24/E	Codeforces
5214	2600	621	Power Sockets	1469/F	Codeforces
5215	1400	621	Generate GHZ state	1001/C	Codeforces
5216	2400	620	Complete Mirror	1182/D	Codeforces
5217	2600	620	Paper task	653/F	Codeforces
5218	2300	620	Take-off Ramps	141/D	Codeforces
5219	2900	619	Classical?	1285/F	Codeforces
5220	2200	619	Award Ceremony	730/E	Codeforces
5221	2000	618	Right Expansion Of The Mind	1090/K	Codeforces
5222	2500	618	Tree Queries	825/G	Codeforces
5223	2800	618	Yura and Developers	549/F	Codeforces
5224	2600	618	Flights	241/E	Codeforces
5225	2600	617	Top-Notch Insertions	1558/D	Codeforces
5226	9999	617	Симметричный амфитеатр	1531/C	Codeforces
5227	2500	617	Power Tree	1120/D	Codeforces
5228	2000	617	Closing ceremony	720/A	Codeforces
5229	2500	616	Game with Cards	1539/E	Codeforces
5230	2800	616	Game of Pairs	1404/D	Codeforces
5231	2600	616	New Language	568/C	Codeforces
5232	2800	616	Password	79/D	Codeforces
5233	2500	615	Battle Lemmings	1420/E	Codeforces
5234	2700	615	Cowmpany Cowmpensation	995/F	Codeforces
5235	2600	614	Strange Array	1539/F	Codeforces
5236	2600	613	Omkar and Akmar	1536/F	Codeforces
5237	2300	613	Edo and Magnets	594/C	Codeforces
5238	2600	612	Choosing Subtree is Fun	372/D	Codeforces
5239	2300	611	Danger of Mad Snakes	1425/D	Codeforces
5240	2400	611	Vus the Cossack and a Graph	1186/F	Codeforces
5241	2500	611	Codeword	666/C	Codeforces
5242	2300	611	Painting Square	300/D	Codeforces
5243	2600	610	Mercenaries	1400/G	Codeforces
5244	2600	610	Mice and Holes	797/F	Codeforces
5245	1900	610	Name	180/D	Codeforces
5246	1600	610	Bender Problem	28/A	Codeforces
5247	1600	609	Mysterious numbers - 2	171/G	Codeforces
5248	2100	609	Space Rescuers	106/E	Codeforces
5249	2700	608	Off by One	1519/E	Codeforces
5250	2400	608	Regular Forestation	1252/F	Codeforces
5251	2000	608	Parquet	26/C	Codeforces
5252	9999	607	Figure out direction of CNOT	1357/A1	Codeforces
5253	1800	607	Three-dimensional Turtle Super Computer 	638/D	Codeforces
5254	2500	607	Misha and Palindrome Degree	501/E	Codeforces
5255	9999	606	Uniform String	1532/C	Codeforces
5256	2500	606	Balance	17/C	Codeforces
5257	2400	605	Palindrome XOR	1147/D	Codeforces
5258	2500	605	Game	995/D	Codeforces
5259	2000	605	Building Forest	195/E	Codeforces
5260	2500	603	Hobbits	1468/G	Codeforces
5261	2400	601	Gotta Go Fast	865/C	Codeforces
5262	1800	601	Photographs (I)	690/E1	Codeforces
5263	1800	601	The Race	48/C	Codeforces
5264	2700	600	Phoenix and Odometers	1515/G	Codeforces
5265	2600	600	Cardboard Box	436/E	Codeforces
5266	1900	599	Ace It!	656/F	Codeforces
5267	3000	598	Substrings in a String	914/F	Codeforces
5268	2300	598	Wilbur and Trees	596/D	Codeforces
5269	2900	598	Fox And Travelling	512/D	Codeforces
5270	2700	597	Good Contest	1295/F	Codeforces
5271	2600	597	Guard Towers	85/E	Codeforces
5272	2400	597	Numbers	83/D	Codeforces
5273	2600	596	Preorder Test	627/D	Codeforces
5274	2300	596	Alex and Complicated Task	467/E	Codeforces
5275	2600	595	Long Colorful Strip	1178/F2	Codeforces
5276	2700	595	Professor's task	70/D	Codeforces
5277	2300	595	Interestring graph and Apples	9/E	Codeforces
5278	2400	594	Zublicanes and Mumocrates	581/F	Codeforces
5279	2300	594	Superset	97/B	Codeforces
5280	2800	593	Bricks	1404/E	Codeforces
5281	2000	593	Minimal Product	1090/I	Codeforces
5282	2000	593	Optimal Sum	182/C	Codeforces
5283	1800	591	Cutting Jigsaw Puzzle	54/B	Codeforces
5284	2700	590	Chaotic V.	1292/D	Codeforces
5285	2500	590	New Year and Entity Enumeration	908/E	Codeforces
5286	1100	590	Pentagonal numbers	162/A	Codeforces
5287	2600	589	Nastya and Time Machine	1340/D	Codeforces
5288	2600	589	Playing on Graph	542/E	Codeforces
5289	2500	588	Baby Ehab Plays with Permutations	1516/E	Codeforces
5290	2700	588	Rusty String	827/E	Codeforces
5291	2600	588	Timofey and remoduling	763/C	Codeforces
5292	2300	587	Discarding Game	1250/G	Codeforces
5293	2200	587	Running Over The Bridges	730/D	Codeforces
5294	2400	586	Polo the Penguin and Trees 	288/D	Codeforces
5295	2300	584	Petya and Pipes	362/E	Codeforces
5296	1100	584	Carpeting the Room	100/A	Codeforces
5297	1900	583	Shave Beaver!	331/B2	Codeforces
5298	2400	582	Vasya and Maximum Matching	1032/F	Codeforces
5299	2800	582	k-Maximum Subsequence Sum	280/D	Codeforces
5300	2000	582	Happy Farm 5	50/C	Codeforces
5301	2600	581	Sum the Fibonacci	914/G	Codeforces
5302	9999	580	Distinguish I from X	1356/A1	Codeforces
5303	2300	580	Clearing Up	141/E	Codeforces
5304	2200	580	Prime Problem	45/G	Codeforces
5305	2400	579	Card Game	808/F	Codeforces
5306	2300	579	Mashmokh and Water Tanks	414/D	Codeforces
5307	2000	579	Capture Valerian	61/C	Codeforces
5308	2600	578	Delivery Club	875/E	Codeforces
5309	1600	578	Black-and-White Cube	323/A	Codeforces
5310	2600	577	Enormous XOR	1493/E	Codeforces
5311	2600	577	Wise Men (Easy Version)	1326/F1	Codeforces
5312	1700	577	A Vital Problem	926/I	Codeforces
5313	2300	577	Chemistry in Berland	846/E	Codeforces
5314	2600	576	Phoenix and Memory	1348/F	Codeforces
5315	2600	576	Not Same	1227/G	Codeforces
5316	2400	575	Apprentice Learning Trajectory	1267/A	Codeforces
5317	9999	575	Inna and Candy Boxes	390/C	Codeforces
5318	1600	575	Greedy Merchants	178/B1	Codeforces
5319	2500	574	Anti-Palindromize	884/F	Codeforces
5320	2200	574	Bear and Floodlight	385/D	Codeforces
5321	2700	574	Distinct Paths	293/B	Codeforces
5322	2700	573	Strange Set	1473/F	Codeforces
5323	2300	573	Biologist	311/E	Codeforces
5324	2700	572	Mother of Dragons	839/E	Codeforces
5325	2400	572	Magic Matrix	632/F	Codeforces
5326	2000	572	E-reader Display	126/C	Codeforces
5327	2600	571	Balanced Domino Placements	1237/F	Codeforces
5328	2500	569	Smile House	147/B	Codeforces
5329	2600	568	Death DBMS	1437/G	Codeforces
5330	2300	568	Polycarp's problems	727/F	Codeforces
5331	2200	568	Ksenia and Pawns	382/D	Codeforces
5332	2200	567	Music in Car	746/F	Codeforces
5333	2600	566	The Chocolate Spree	633/F	Codeforces
5334	3000	563	The Classic Problem	464/E	Codeforces
5335	2800	562	Secure Password	1365/G	Codeforces
5336	2700	562	Johnny Solving	1103/C	Codeforces
5337	9999	561	Points Movement	1566/F	Codeforces
5338	2300	561	Zbazi in Zeydabad	628/E	Codeforces
5339	2400	558	Finals in arithmetic	625/D	Codeforces
5340	2100	558	Parade	35/E	Codeforces
5341	9999	557	Teams Forming	1532/D	Codeforces
5342	2400	557	Bubble Cup hypothesis	1423/J	Codeforces
5343	2500	557	Roads in the Kingdom	835/F	Codeforces
5344	2600	557	Positions in Permutations	285/E	Codeforces
5345	2600	555	Guess Divisors Count	1355/F	Codeforces
5346	2700	554	Nested Rubber Bands	1338/D	Codeforces
5347	2600	554	Helping People	494/C	Codeforces
5348	2100	554	Polycarp's Picture Gallery	81/D	Codeforces
5349	2500	553	Bipartite Checking	813/F	Codeforces
5350	2600	553	Find a car	809/C	Codeforces
5351	2600	553	Too Much Money	725/E	Codeforces
5352	1800	553	Hyperdrive	44/D	Codeforces
5353	2400	552	Refactoring	1055/D	Codeforces
5354	2500	552	Volcanoes	383/B	Codeforces
5355	2400	552	Sereja and Sets	367/D	Codeforces
5356	2700	551	Minlexes	1422/E	Codeforces
5357	2000	551	Arrow	630/O	Codeforces
5358	2500	549	Miss Punyverse	1280/D	Codeforces
5359	2300	549	Tiling Terrace	1252/J	Codeforces
5360	2000	548	2048	413/D	Codeforces
5361	2500	548	More Queries to Array...	266/E	Codeforces
5362	2500	547	Segments on the Line	1055/E	Codeforces
5363	2600	547	Road Projects	1016/F	Codeforces
5364	2400	547	Sleep in Class	733/E	Codeforces
5365	2600	546	Extending Set of Points	1140/F	Codeforces
5366	2200	546	Cup Trick	420/D	Codeforces
5367	2000	546	C*++ Calculations	39/A	Codeforces
5368	2000	544	Vectors	101/C	Codeforces
5369	1600	543	Black Friday	1431/C	Codeforces
5370	2500	543	Degree Set	976/D	Codeforces
5371	2300	542	Square Tiling	432/E	Codeforces
5372	2200	542	The Minimum Number of Variables	279/D	Codeforces
5373	2600	542	Opening Portals	196/E	Codeforces
5374	2600	541	Stranger Trees	917/D	Codeforces
5375	2000	541	Calendar	58/D	Codeforces
5376	2500	540	Alphabet Permutations	610/E	Codeforces
5377	2600	539	Pawns	1373/G	Codeforces
5378	2600	539	Autocompletion	1312/G	Codeforces
5379	2300	538	Similar Sets	1468/M	Codeforces
5380	2400	538	Michael and Charging Stations	853/D	Codeforces
5381	3100	538	Archaeology	176/E	Codeforces
5382	2000	538	Lucky Sorting	109/D	Codeforces
5383	2200	537	Parking Lot	219/E	Codeforces
5384	2500	536	Expected Square Beauty	1187/F	Codeforces
5385	1500	536	Magic Squares	178/D1	Codeforces
5386	2200	536	Plumber	115/C	Codeforces
5387	2000	535	Tanya and Colored Candies	1057/C	Codeforces
5388	3000	535	Gerald and Path	559/E	Codeforces
5389	2100	535	Constants in the language of Shakespeare	132/D	Codeforces
5390	2600	534	Strange Addition	1380/F	Codeforces
5391	2200	534	Smart Cheater	150/C	Codeforces
5392	2400	534	Quarrel	29/E	Codeforces
5393	2400	533	Prefix Sums	837/F	Codeforces
5394	1600	532	Distinguish Bell states	1001/E	Codeforces
5395	2600	532	Alyona and Triangles	682/E	Codeforces
5396	2000	532	Petya and Post	66/E	Codeforces
5397	2000	532	Sweets Game	63/E	Codeforces
5398	2700	530	Indie Album	1207/G	Codeforces
5399	2700	529	Clusterization Counting	1408/G	Codeforces
5400	1800	529	INTERCALC	784/C	Codeforces
5401	2400	529	Cinema	200/A	Codeforces
5402	2600	528	Vladik and Entertaining Flags	811/E	Codeforces
5403	2700	528	LCS Again	578/D	Codeforces
5404	2700	527	Good Graph	1555/F	Codeforces
5405	2900	527	Research Rover	722/E	Codeforces
5406	2800	527	Ultimate Weirdness of an Array	671/C	Codeforces
5407	2300	526	Santa Clauses and a Soccer Championship	748/F	Codeforces
5408	2100	526	Broken Monitor	370/D	Codeforces
5409	2600	526	Number Challenge	235/E	Codeforces
5410	1600	525	Greedy Merchants	178/B2	Codeforces
5411	2700	524	Even Harder	1453/F	Codeforces
5412	2400	524	Allowed Letters	1009/G	Codeforces
5413	2800	524	Leha and security system	794/F	Codeforces
5414	2000	524	Without Text	656/C	Codeforces
5415	9999	523	It's showtime	1331/H	Codeforces
5416	2600	523	Vasya and Big Integers	1051/E	Codeforces
5417	3100	523	Cycling City	521/E	Codeforces
5418	2500	521	DZY Loves Strings	444/D	Codeforces
5419	3000	521	Points and Segments	429/E	Codeforces
5420	2400	520	Traveling Graph	21/D	Codeforces
5421	1300	519	Generate superposition of zero state and a ba...	1002/A2	Codeforces
5422	2500	518	Tree	1111/E	Codeforces
5423	9999	518	Very Beautiful Number	394/B	Codeforces
5424	2600	518	Interval Cubing	311/D	Codeforces
5425	2300	516	Playing with String	305/E	Codeforces
5426	2400	516	Lucky Arrays	256/E	Codeforces
5427	2500	515	Red-White Fence	1251/F	Codeforces
5428	2600	515	Nauuo and Pictures (hard version)	1172/C2	Codeforces
5429	2300	515	Vanya and Balloons	677/E	Codeforces
5430	2300	515	Beautiful Set	364/C	Codeforces
5431	2300	514	Wizards and Numbers	167/C	Codeforces
5432	2500	513	The Top Scorer	1096/E	Codeforces
5433	1600	512	String inside out	530/B	Codeforces
5434	2400	512	BerDonalds	266/D	Codeforces
5435	2000	512	Merging Two Decks	234/H	Codeforces
5436	2200	512	Safe	47/D	Codeforces
5437	2500	511	Attack on Red Kingdom	1312/F	Codeforces
5438	2000	511	Present to Mom	131/F	Codeforces
5439	2400	511	Tickets	26/D	Codeforces
5440	2600	511	Defining Macros	7/E	Codeforces
5441	2800	510	Assiut Chess	1557/E	Codeforces
5442	2800	510	Polygons	1208/G	Codeforces
5443	2600	509	Vasya and Endless Credits	1107/F	Codeforces
5444	2300	509	Streets and Avenues in Berhattan	1070/J	Codeforces
5445	1400	509	Oracle for f(x) = k-th element of x	1001/G	Codeforces
5446	2700	508	Swedish Heroes	1421/E	Codeforces
5447	1300	508	Distinguish multi-qubit basis states	1001/F	Codeforces
5448	2600	508	Robot Control	346/D	Codeforces
5449	2300	507	Collective Mindsets (medium)	690/A2	Codeforces
5450	2000	506	Crossword	47/C	Codeforces
5451	2700	505	Fedor Runs for President	1179/D	Codeforces
5452	2600	505	An unavoidable detour for home	814/E	Codeforces
5453	1300	505	Lazy Caterer Sequence	661/A	Codeforces
5454	2500	505	Cowslip Collections	645/F	Codeforces
5455	2700	505	DZY Loves Planting	444/E	Codeforces
5456	2400	505	Trails and Glades	209/C	Codeforces
5457	1700	505	Space Voyage	177/E1	Codeforces
5458	2600	504	Matrix Sorting	1500/C	Codeforces
5459	2800	504	Yash And Trees	633/G	Codeforces
5460	2300	504	Chip Play	89/C	Codeforces
5461	2500	503	Alice and the Unfair Game	1236/E	Codeforces
5462	3300	502	Painting Edges	576/E	Codeforces
5463	2200	501	Heidi and the Turing Test (Medium)	1184/C2	Codeforces
5464	1700	501	Zoo	183/B	Codeforces
5465	2900	500	Odd Mineral Resource	1479/D	Codeforces
5466	3000	500	Pastoral Oddities	603/E	Codeforces
5467	1900	500	Challenging Balloons	241/G	Codeforces
5468	2400	499	Startup Funding	633/E	Codeforces
5469	2300	499	Queue	38/G	Codeforces
5470	1600	498	Spring Cleaning	1346/C	Codeforces
5471	1200	498	Oracle for f(x) = parity of the number of 1s in x	1001/H	Codeforces
5472	2300	498	Downloading B++	883/C	Codeforces
5473	2500	498	Robot Arm	618/E	Codeforces
5474	2400	497	Greg and Caves	295/D	Codeforces
5475	2100	496	Conveyor	163/C	Codeforces
5476	2800	495	New Year and Handle Change	1279/F	Codeforces
5477	2400	495	Tanks	920/D	Codeforces
5478	2500	495	Yaroslav and Points	295/E	Codeforces
5479	2000	495	Game	69/C	Codeforces
5480	2700	494	Gardener Alex	1220/F	Codeforces
5481	2600	494	Playlist for Polycarp (hard version)	1185/G2	Codeforces
5482	2700	494	Region Separation	1034/C	Codeforces
5483	2200	494	Antichain	353/E	Codeforces
5484	2500	493	Compute Power	993/D	Codeforces
5485	2900	493	Function	455/E	Codeforces
5486	9999	493	Instant Messanger	398/D	Codeforces
5487	9999	492	Distinguish I, CNOTs and SWAP	1357/A2	Codeforces
5488	2000	492	Diverse Substrings	386/C	Codeforces
5489	2500	492	Very simple problem	55/E	Codeforces
5490	2700	491	Boring Queries	1422/F	Codeforces
5491	2600	491	Running Competition	1398/G	Codeforces
5492	2500	491	Geometers Anonymous Club	1195/F	Codeforces
5493	2700	491	Cities Excursions	864/F	Codeforces
5494	2400	491	Underfail	717/G	Codeforces
5495	2500	491	Genetic engineering	86/C	Codeforces
5496	2300	491	New Game with a Chess Piece	36/D	Codeforces
5497	2600	490	Intriguing Selection	1267/I	Codeforces
5498	2500	490	CNF 2	571/C	Codeforces
5499	2900	489	Duff as a Queen	587/E	Codeforces
5500	2500	489	Igloo Skyscraper	91/E	Codeforces
5501	2200	488	Middle-Out	1231/E	Codeforces
5502	2400	488	Students Initiation	847/J	Codeforces
5503	2400	488	Geometrical Progression	758/F	Codeforces
5504	2900	487	Max Mex	1083/C	Codeforces
5505	2600	487	Billiard	982/E	Codeforces
5506	2500	486	Magic multisets	981/G	Codeforces
5507	3000	486	Duff is Mad	587/F	Codeforces
5508	2700	486	Fibonotci	575/A	Codeforces
5509	2300	486	Biathlon Track	424/D	Codeforces
5510	1100	486	Hexagonal Numbers	188/A	Codeforces
5511	2500	485	Summer Practice Report	1076/F	Codeforces
5512	2800	485	Prince's Problem	986/E	Codeforces
5513	1800	485	Defragmentation	180/A	Codeforces
5514	2000	485	Collisions	34/E	Codeforces
5515	3000	484	Frequency Problem (Hard Version)	1446/D2	Codeforces
5516	2400	484	Divisibility	922/F	Codeforces
5517	2400	484	Liar	822/E	Codeforces
5518	2500	484	Map	15/D	Codeforces
5519	2900	483	Isolation	1129/D	Codeforces
5520	2800	483	Singer House	830/D	Codeforces
5521	2300	483	Brackets	123/C	Codeforces
5522	2300	483	Common ancestor	49/E	Codeforces
5523	2700	482	Zoning Restrictions	1146/G	Codeforces
5524	2300	482	Tidying Up	316/C2	Codeforces
5525	2600	482	Greedy Change	10/E	Codeforces
5526	2800	481	NN country	983/E	Codeforces
5527	2000	481	Cheese Board	952/E	Codeforces
5528	2500	481	Memory and Casinos	712/E	Codeforces
5529	1400	480	Crystal Ball Sequence	470/A	Codeforces
5530	2600	480	Beads	8/E	Codeforces
5531	2600	479	Knights	1067/C	Codeforces
5532	2500	479	Binary Matrix	884/E	Codeforces
5533	2200	479	Petya and Tree	85/C	Codeforces
5534	9999	478	Playoff Restoration	1569/E	Codeforces
5535	2600	478	Winding polygonal line	1158/D	Codeforces
5536	2600	478	Serval and Bonus Problem	1153/F	Codeforces
5537	2000	478	Team Arrangement	59/D	Codeforces
5538	9999	477	Elementary!	1331/F	Codeforces
5539	2400	477	Vicky's Delivery Service	1166/F	Codeforces
5540	2400	477	Katya and Segments Sets	1080/F	Codeforces
5541	2700	477	Disjoint Triangles	1025/F	Codeforces
5542	2300	477	Widget Library	89/B	Codeforces
5543	2300	475	Hyperspace Highways	1045/C	Codeforces
5544	2200	475	Guard Duty (medium)	958/E2	Codeforces
5545	2200	475	Maximum Control (medium)	958/B2	Codeforces
5546	2200	474	Automatic Door	883/A	Codeforces
5547	2900	474	Tavas in Kansas	536/D	Codeforces
5548	2400	474	Abracadabra	161/C	Codeforces
5549	2500	473	Rock-Paper-Scissors Champion	1085/F	Codeforces
5550	2400	472	Lost Root	1061/F	Codeforces
5551	3200	472	Security	1037/H	Codeforces
5552	2500	472	Round Marriage	981/F	Codeforces
5553	2000	472	Martian Luck	216/E	Codeforces
5554	2100	471	Send the Fool Further! (medium)	802/K	Codeforces
5555	2500	471	Bear and Fair Set	628/F	Codeforces
5556	2700	470	World of Darkraft - 2	464/D	Codeforces
5557	2700	469	Radio Stations	1215/F	Codeforces
5558	2200	469	How Many Squares?	11/C	Codeforces
5559	9999	468	Distinguish I from Z	1356/A2	Codeforces
5560	2300	468	Bear in the Field	385/E	Codeforces
5561	2100	468	Bombing	50/D	Codeforces
5562	2400	467	Cutlet	939/F	Codeforces
5563	2600	467	Mishka and Divisors	703/E	Codeforces
5564	2700	467	New Year Shopping	500/F	Codeforces
5565	2200	467	Chemistry Experiment	431/E	Codeforces
5566	2500	467	Sereja and Straight Lines	314/D	Codeforces
5567	2600	467	Triangles	13/D	Codeforces
5568	2400	466	Inversions problem	513/G2	Codeforces
5569	2500	466	The Child and Polygon	437/E	Codeforces
5570	9999	466	Dominoes	394/C	Codeforces
5571	2400	466	Sereja and Tree	380/B	Codeforces
5572	2400	465	April Fools' Problem (medium)	802/N	Codeforces
5573	2400	465	Cube Problem	293/C	Codeforces
5574	2700	464	Abnormal Permutation Pairs (hard version)	1542/E2	Codeforces
5575	2800	464	Strange Operation	1383/E	Codeforces
5576	2500	464	Lena and Queries	678/F	Codeforces
5577	2600	464	Strange Sorting	484/C	Codeforces
5578	2200	464	Tidying Up	316/C1	Codeforces
5579	2700	463	Chiori and Doll Picking (easy version)	1336/E1	Codeforces
5580	2400	463	Exam Cheating	796/E	Codeforces
5581	2300	463	Ilya and Two Numbers	313/E	Codeforces
5582	1800	462	Xenolith? Hippodrome?	1505/D	Codeforces
5583	2600	462	Circular Dungeon	1380/G	Codeforces
5584	2200	462	Clear The Matrix	903/F	Codeforces
5585	3200	462	Birthday	590/E	Codeforces
5586	2700	462	Two Permutations	213/E	Codeforces
5587	2300	462	Petya and Coloring	111/D	Codeforces
5588	2000	461	Dominoes	267/B	Codeforces
5589	2000	461	Mirror Box	241/C	Codeforces
5590	2400	460	Don't fear, DravDe is kind	28/D	Codeforces
5591	2600	459	Button Lock	1510/B	Codeforces
5592	9999	459	Distinguish H from X	1357/A3	Codeforces
5593	2600	459	Yet Another LCP Problem	1073/G	Codeforces
5594	3200	459	PolandBall and Many Other Balls	755/G	Codeforces
5595	2400	459	Place Your Ad Here	542/A	Codeforces
5596	1800	459	Dome	409/E	Codeforces
5597	2800	459	Cow Tennis Tournament	283/E	Codeforces
5598	2000	459	T-decomposition	237/D	Codeforces
5599	3100	458	Duff in Mafia	587/D	Codeforces
5600	2200	458	Maze 1D	404/E	Codeforces
5601	2700	457	BareLee	1369/F	Codeforces
5602	2700	457	Large Triangle	1019/D	Codeforces
5603	3000	457	Misha and LCP on Tree	504/E	Codeforces
5604	2400	456	Cows and Cool Sequences	283/D	Codeforces
5605	2100	456	Mushroom Strife	60/C	Codeforces
5606	2500	455	Vus the Cossack and a Field	1186/E	Codeforces
5607	2500	455	Perun, Ult!	912/C	Codeforces
5608	2700	454	Nastia and a Beautiful Matrix	1521/E	Codeforces
5609	2800	453	Roads and Ramen	1413/F	Codeforces
5610	9999	453	Dynamic Diameter	1192/B	Codeforces
5611	3000	453	Lust	891/E	Codeforces
5612	2600	453	Power Tree	607/D	Codeforces
5613	2600	452	Cutting Rectangle	963/C	Codeforces
5614	1200	452	Extraordinarily Nice Numbers	72/C	Codeforces
5615	2300	451	Road Construction	1252/L	Codeforces
5616	2800	451	Choosing Carrot	794/E	Codeforces
5617	2700	451	Birthday	494/D	Codeforces
5618	2500	451	Jeff and Brackets	351/C	Codeforces
5619	2800	450	Reality Show	1322/D	Codeforces
5620	2900	450	Incorrect Flow	708/D	Codeforces
5621	2700	450	Walking!	578/E	Codeforces
5622	2200	450	Lucky Tickets	70/C	Codeforces
5623	2800	449	Switch and Flip	1491/G	Codeforces
5624	2000	449	Harvester	1219/G	Codeforces
5625	2200	449	Tests Renumeration	858/E	Codeforces
5626	2200	449	Cyclic Coloring	183/C	Codeforces
5627	2800	449	Tricky and Clever Password	30/E	Codeforces
5628	2300	448	Tourist	76/F	Codeforces
5629	2500	448	Tree	23/E	Codeforces
5630	2600	447	Find a Gift	1354/G	Codeforces
5631	2700	446	Jog Around The Graph	1366/F	Codeforces
5632	2400	446	Magical Permutation	1163/E	Codeforces
5633	2700	446	A Colourful Prospect	933/C	Codeforces
5634	2500	446	Connecting Vertices	888/F	Codeforces
5635	2300	446	Summer Homework	316/E3	Codeforces
5636	1800	445	RBS Deletion	1488/B	Codeforces
5637	2200	445	The Doctor Meets Vader (Medium)	1184/B2	Codeforces
5638	1300	445	Distinguish zero state and W state	1002/B1	Codeforces
5639	2800	445	T-Shirts	702/F	Codeforces
5640	2400	445	Mausoleum	567/F	Codeforces
5641	2200	445	Solitaire	71/D	Codeforces
5642	2600	444	Sandy and Nuts	599/E	Codeforces
5643	1700	444	Headquarters	183/A	Codeforces
5644	2600	444	New Year Garland	140/E	Codeforces
5645	2100	443	The Light Square	1218/I	Codeforces
5646	2800	443	Xors on Segments	620/F	Codeforces
5647	9999	442	Distinguish I ⊗ X from CNOT	1356/A4	Codeforces
5648	9999	442	Distinguish Z from S	1356/A3	Codeforces
5649	1500	442	Generate superposition of two basis states	1002/A3	Codeforces
5650	2200	442	Product transformation	852/F	Codeforces
5651	2700	441	Three Swaps	339/E	Codeforces
5652	2200	441	Colorado Potato Beetle	243/C	Codeforces
5653	2300	441	Castle	101/D	Codeforces
5654	2900	439	Palindrome Partition	932/G	Codeforces
5655	2200	439	Printer	253/E	Codeforces
5656	2100	438	Graph	1387/A	Codeforces
5657	2800	438	Eels	1098/D	Codeforces
5658	2500	438	A Shade of Moonlight	989/D	Codeforces
5659	2200	438	FreeDiv	73/D	Codeforces
5660	2700	437	Almost All	1205/D	Codeforces
5661	2200	437	Interstellar battle	1045/D	Codeforces
5662	2000	437	Triminoes	44/J	Codeforces
5663	1500	436	Diophantine equation	530/C	Codeforces
5664	2200	436	Nuclear Fusion	71/E	Codeforces
5665	2800	434	x-prime Substrings	1400/F	Codeforces
5666	2700	434	Colored Cubes	1025/E	Codeforces
5667	2500	433	Christmas Game	1498/F	Codeforces
5668	2800	432	Madhouse (Hard version)	1286/C2	Codeforces
5669	2400	432	Renovation	883/J	Codeforces
5670	2800	432	A Museum Robbery	601/E	Codeforces
5671	1600	432	Set subtraction	530/D	Codeforces
5672	2600	431	Bingo	1530/F	Codeforces
5673	2900	431	Hitchhiking in the Baltic States	809/D	Codeforces
5674	2500	430	Max and Bike	594/B	Codeforces
5675	2100	430	Crosses	215/C	Codeforces
5676	2900	430	Buying Sets	103/E	Codeforces
5677	2000	430	Need For Brake	73/B	Codeforces
5678	2000	430	Director	45/E	Codeforces
5679	2700	429	Sum of Prefix Sums	1303/G	Codeforces
5680	2700	429	Perishable Roads	773/D	Codeforces
5681	2100	429	Periodical Numbers	215/E	Codeforces
5682	2100	429	Moon Craters	39/C	Codeforces
5683	2800	428	Bear and Paradox	639/E	Codeforces
5684	2400	427	Minegraphed	1089/M	Codeforces
5685	2700	426	Wardrobe	924/E	Codeforces
5686	3100	424	Surprise me!	809/E	Codeforces
5687	9999	424	Yet Another Number Sequence	392/C	Codeforces
5688	3300	423	String Journey	1063/F	Codeforces
5689	3100	423	Captain America	704/D	Codeforces
5690	2100	423	Piet	132/B	Codeforces
5691	2400	422	Chips Puzzle	1054/E	Codeforces
5692	2100	422	More Reclamation	335/C	Codeforces
5693	9999	420	Storage2	1275/D	Codeforces
5694	2600	420	Divisor Set	1257/G	Codeforces
5695	9999	420	Inna and Sweet Matrix	390/D	Codeforces
5696	2100	420	Xenia and Dominoes	342/D	Codeforces
5697	2500	420	Maze	123/E	Codeforces
5698	9999	419	Lingua Romana	1331/G	Codeforces
5699	2600	419	Superhero's Job	542/D	Codeforces
5700	2600	418	Lightsabers (hard)	958/F3	Codeforces
5701	2000	418	Morning run	309/A	Codeforces
5702	2900	417	Optimal Point	685/C	Codeforces
5703	1900	417	You're a Professional	656/G	Codeforces
5704	9999	416	Sweets	1533/C	Codeforces
5705	2900	416	Make Symmetrical	1028/F	Codeforces
5706	1600	416	Distinguish GHZ state and W state	1002/B2	Codeforces
5707	2100	416	The Wall (hard)	690/D3	Codeforces
5708	3200	416	Choosing Ads	643/G	Codeforces
5709	2200	416	Maze 2D	413/E	Codeforces
5710	2500	415	AND-permutations	909/F	Codeforces
5711	2400	415	Ratings and Reality Shows	887/D	Codeforces
5712	2700	415	Largest Submatrix 3	407/D	Codeforces
5713	9999	414	Neat Words	1145/F	Codeforces
5714	2500	414	Rowena Ravenclaw's Diadem	855/D	Codeforces
5715	1600	414	Smart Beaver and Resolving Collisions	178/C1	Codeforces
5716	2200	414	Competition	144/E	Codeforces
5717	1500	414	Expression	64/B	Codeforces
5718	2400	413	Buses and People	160/E	Codeforces
5719	2700	413	Museum	113/D	Codeforces
5720	2700	412	One-Four Overload	1567/F	Codeforces
5721	2600	412	Maxim and Increasing Subsequence	261/D	Codeforces
5722	1400	412	Gnikool Ssalg	130/B	Codeforces
5723	2600	412	Two Friends	8/D	Codeforces
5724	2800	411	Rearrange	1383/D	Codeforces
5725	3200	411	Slime and Biscuits	1349/D	Codeforces
5726	2200	411	Olya and Graph	305/D	Codeforces
5727	2500	410	Recursive Queries	1117/G	Codeforces
5728	2700	410	Andryusha and Nervous Barriers	780/G	Codeforces
5729	2900	410	Bears and Juice	643/F	Codeforces
5730	1500	409	Expecting Trouble	345/A	Codeforces
5731	2400	409	Game	277/C	Codeforces
5732	2800	407	Levko and Game	360/E	Codeforces
5733	2400	407	Hamming Distance	193/C	Codeforces
5734	2100	407	Ivan the Fool VS Gorynych the Dragon	48/E	Codeforces
5735	3100	406	Flip and Reverse	1458/D	Codeforces
5736	1600	406	Constructing the Dungeon	1346/D	Codeforces
5737	2700	406	Varying Kibibits	772/D	Codeforces
5738	1700	405	Ice Cream	1211/C	Codeforces
5739	3000	405	Good Subsegments	997/E	Codeforces
5740	2700	405	Subarray Cuts	513/E2	Codeforces
5741	2400	405	PE Lesson	316/D3	Codeforces
5742	2200	404	Ancient Language	1424/M	Codeforces
5743	2500	404	Double Elimination	1310/B	Codeforces
5744	2300	404	Cleaning Robots	1252/B	Codeforces
5745	2700	404	Number Clicker	995/E	Codeforces
5746	2300	404	Dating	852/I	Codeforces
5747	2600	403	Pairs of Paths	1486/F	Codeforces
5748	2900	403	GCD Groups 2	1198/F	Codeforces
5749	2400	403	Berkomnadzor	1070/B	Codeforces
5750	3100	403	Campus	571/D	Codeforces
5751	2800	403	The Red Button	325/E	Codeforces
5752	2600	403	Triangles	15/E	Codeforces
5753	2400	402	Two permutations	323/C	Codeforces
5754	2200	401	Three Horses	271/E	Codeforces
5755	2000	401	Fractal Detector	228/C	Codeforces
5756	2600	400	Kay and Eternity	685/D	Codeforces
5757	2500	400	New Year and Cleaning	611/F	Codeforces
5758	2800	400	Vasya and Polynomial	493/E	Codeforces
5759	2100	400	New York Hotel	491/B	Codeforces
5760	2600	400	Parcels	480/D	Codeforces
5761	2500	399	Functions On The Segments	837/G	Codeforces
5762	3100	399	Bear and Bad Powers of 42	679/E	Codeforces
5763	2700	397	No Game No Life	1411/G	Codeforces
5764	2600	397	Aztec Catacombs	925/D	Codeforces
5765	2900	397	Magic Breeding	878/D	Codeforces
5766	3200	397	Digits of Number Pi	585/F	Codeforces
5767	3000	397	Logistical Questions	566/C	Codeforces
5768	2000	397	Playing with Superglue	176/C	Codeforces
5769	2600	397	Sequence of Balls	67/C	Codeforces
5770	2800	396	Karen and Cards	815/D	Codeforces
5771	2600	396	Camping Groups	173/E	Codeforces
5772	2800	395	Strongly Connected Tournament	913/F	Codeforces
5773	3200	395	Bear and Bowling	573/E	Codeforces
5774	2700	395	And Yet Another Bracket Sequence	524/F	Codeforces
5775	3000	395	Mr. Kitayuta's Gift	506/E	Codeforces
5776	2500	394	Village (Maximum)	1387/B2	Codeforces
5777	2700	394	Bear and Destroying Subtrees	643/E	Codeforces
5778	2700	394	Dreamoon and Binary	477/D	Codeforces
5779	1500	394	Decimal sum	130/C	Codeforces
5780	2700	393	String Counting	1487/G	Codeforces
5781	3000	393	Treeland and Viruses	1320/E	Codeforces
5782	2400	393	Constrained Tree	513/D1	Codeforces
5783	2400	392	Neatness	359/E	Codeforces
5784	2700	391	Chips on a Board	1511/G	Codeforces
5785	2400	391	Valera and Number	441/E	Codeforces
5786	2700	391	Friends	241/B	Codeforces
5787	2700	390	Converging Array (Easy Version)	1540/C1	Codeforces
5788	2400	390	Privatization of Roads in Berland	1070/I	Codeforces
5789	2500	390	Minimal k-covering	976/F	Codeforces
5790	2400	390	Fire in the City	845/E	Codeforces
5791	3100	390	Student's Camp	708/E	Codeforces
5792	1900	390	Vasya the Architect	38/D	Codeforces
5793	3000	389	Longest Increasing Subsequence	568/E	Codeforces
5794	2800	389	Parking Lot	480/E	Codeforces
5795	2500	389	Sereja and Sets	425/E	Codeforces
5796	1900	388	Bug in Code	421/D	Codeforces
5797	2200	388	Suggested Friends	245/G	Codeforces
5798	2500	388	Number Table	40/E	Codeforces
5799	2400	387	Four Divisors	665/F	Codeforces
5800	2800	387	Have You Ever Heard About the Word?	319/D	Codeforces
5801	2300	386	Similar Words	856/B	Codeforces
5802	2600	385	Limak and Shooting Points	698/D	Codeforces
5803	3200	385	Clockwork Bomb	650/E	Codeforces
5804	3200	385	Kyoya and Train	553/E	Codeforces
5805	2600	385	Circling Round Treasures	375/C	Codeforces
5806	2800	384	AquaMoon and Permutations	1545/C	Codeforces
5807	1600	384	Distinguish four 2-qubit states	1002/B3	Codeforces
5808	2600	384	Trial for Chief	37/E	Codeforces
5809	2900	383	Beautiful Bracket Sequence (hard version)	1264/D2	Codeforces
5810	1700	383	Deutsch-Jozsa algorithm	1001/I	Codeforces
5811	2800	382	Boboniu and Jianghu	1394/D	Codeforces
5812	2900	382	Electric Charges	623/C	Codeforces
5813	2500	381	Runaway to a Shadow	681/E	Codeforces
5814	2500	381	Balance	317/C	Codeforces
5815	2100	381	Mice	76/B	Codeforces
5816	2800	380	Number of Components	1303/F	Codeforces
5817	2300	380	Sweets for Everyone!	248/D	Codeforces
5818	2400	379	Space Isaac	1045/B	Codeforces
5819	2300	378	Evacuation	78/E	Codeforces
5820	2500	377	Yaroslav and Algorithm	301/C	Codeforces
5821	1300	377	A + Reverse B	188/B	Codeforces
5822	2200	376	Good Substrings	316/G2	Codeforces
5823	2500	376	Color the Carpet	297/D	Codeforces
5824	1400	376	A+B	100/C	Codeforces
5825	2700	375	Birthday	623/D	Codeforces
5826	2800	375	Edge coloring of bipartite graph	600/F	Codeforces
5827	2500	375	Fetch the Treasure	311/C	Codeforces
5828	2300	375	Wall Bars	268/D	Codeforces
5829	2100	375	Dormitory	254/E	Codeforces
5830	2000	375	Ancient Berland Hieroglyphs	164/B	Codeforces
5831	2700	374	Expensive Strings	616/F	Codeforces
5832	2400	374	Game with Strings	354/B	Codeforces
5833	2100	374	Context Advertising	309/B	Codeforces
5834	3000	374	Quick Tortoise	232/E	Codeforces
5835	2500	373	Choosing Two Paths	1073/F	Codeforces
5836	2000	373	Mad Joe	250/E	Codeforces
5837	3000	373	Freezing with Style	150/E	Codeforces
5838	2700	372	Construct the String	1366/G	Codeforces
5839	2500	372	Write The Contest	1056/F	Codeforces
5840	2200	372	On a plane	409/G	Codeforces
5841	2900	371	Shortest Path Queries	938/G	Codeforces
5842	2600	371	Subarray Cuts	513/E1	Codeforces
5843	1200	370	Oracle for f(x) = b * x mod 2	1002/D1	Codeforces
5844	3200	370	Summer Dichotomy	538/H	Codeforces
5845	3100	370	k-d-sequence	407/E	Codeforces
5846	2500	370	Polycarpus the Safecracker	161/E	Codeforces
5847	2400	369	Kuro and Topological Parity	979/E	Codeforces
5848	2700	369	Binary Cards	949/E	Codeforces
5849	9999	368	Good Array	1532/E	Codeforces
5850	2200	368	Swaps	134/C	Codeforces
5851	2200	368	Safe cracking	42/C	Codeforces
5852	2700	367	Mathematical Expression	1461/F	Codeforces
5853	2800	367	Rain of Fire	1419/F	Codeforces
5854	9999	367	Decoding of Integer Sequences	1170/D	Codeforces
5855	3100	367	Tree-Tac-Toe 	1110/G	Codeforces
5856	2600	367	Gifts	229/E	Codeforces
5857	2400	366	Fibonacci String Subsequences	946/F	Codeforces
5858	2500	366	Sereja and Cinema	380/D	Codeforces
5859	2600	365	Yet Another DAG Problem	1430/G	Codeforces
5860	2500	365	Crisp String	1117/F	Codeforces
5861	2500	365	Almost Increasing Array	946/G	Codeforces
5862	2700	365	Parquet Re-laying	778/D	Codeforces
5863	2600	365	Dasha and cyclic table	754/E	Codeforces
5864	3200	364	Yui and Mahjong Set	1336/D	Codeforces
5865	2700	364	Paths	870/F	Codeforces
5866	2500	364	Tachibana Kanade's Tofu	433/E	Codeforces
5867	9999	363	Dream Team	1297/C	Codeforces
5868	2900	363	Pumping Stations	343/E	Codeforces
5869	2500	363	World of Darkraft	138/D	Codeforces
5870	2800	362	Hidden Bipartite Graph	1033/E	Codeforces
5871	2700	362	k-substrings	961/F	Codeforces
5872	3000	361	Vladislav and a Great Legend	1097/G	Codeforces
5873	2100	361	Diverging Directions	838/B	Codeforces
5874	2500	361	Strange Radiation	832/C	Codeforces
5875	2200	361	Harry Potter and the Sorting Hat	65/D	Codeforces
5876	3400	360	Niyaz and Small Degrees	1119/F	Codeforces
5877	2100	360	Optimizer	306/B	Codeforces
5878	2700	359	Baby Ehab's Hyper Apartment	1514/E	Codeforces
5879	1500	359	Used Markers	1431/D	Codeforces
5880	9999	359	Segment tree or Fenwick?	1302/C	Codeforces
5881	9999	359	Cartoons	1297/B	Codeforces
5882	3100	359	Raffles	626/G	Codeforces
5883	2800	358	Raging Thunder	1371/F	Codeforces
5884	1100	358	AND oracle	1115/G1	Codeforces
5885	3000	357	Abandoning Roads	1149/D	Codeforces
5886	3100	356	Turtle	1239/E	Codeforces
5887	2700	355	Tasty Cookie	1358/F	Codeforces
5888	2600	355	Piglet's Birthday	248/E	Codeforces
5889	2400	354	Flatland Fencing	154/D	Codeforces
5890	2700	353	Train Car Selection	1137/E	Codeforces
5891	2600	353	Politics	1061/E	Codeforces
5892	9999	352	Сортировка слиянием	1531/E1	Codeforces
5893	2300	351	PE Lesson	316/D1	Codeforces
5894	2500	351	String Transformation	119/D	Codeforces
5895	3400	350	Dynamic Shortest Path	843/D	Codeforces
5896	2400	350	Pokermon League challenge	717/H	Codeforces
5897	3300	350	Spiders Evil Plan	526/G	Codeforces
5898	2500	350	Dividing Kingdom	260/E	Codeforces
5899	3200	349	New Year  and Forgotten Tree	611/H	Codeforces
5900	2400	349	Simplified Nonogram	534/F	Codeforces
5901	3500	348	Kuroni and Antihype	1305/G	Codeforces
5902	2800	348	New Year and Finding Roots	750/F	Codeforces
5903	2400	348	Track	83/C	Codeforces
5904	2500	347	One Node is Gone	1228/F	Codeforces
5905	2600	347	Triple Flips	1031/E	Codeforces
5906	2100	347	Marmots (easy)	802/D	Codeforces
5907	2500	347	Igor and Interesting Numbers	747/F	Codeforces
5908	2600	347	Maximum Waterfall	269/D	Codeforces
5909	2700	346	Jumping Around	1550/F	Codeforces
5910	2200	346	Jamie and To-do List	916/D	Codeforces
5911	2700	346	Random Function and Tree	482/D	Codeforces
5912	3500	345	Cactus Revenge	1267/C	Codeforces
5913	2500	345	Path Counting	954/H	Codeforces
5914	2600	344	Sonya and Bitwise OR	1004/F	Codeforces
5915	1300	344	Oracle for f(x) = b * x + (1 - b) * (1 - x) mod 2	1002/D2	Codeforces
5916	3200	344	ALT	786/E	Codeforces
5917	3300	344	Transforming Sequence	623/E	Codeforces
5918	9999	343	Редактируем Зингер | color	1531/D	Codeforces
5919	2900	343	Make Square	1028/H	Codeforces
5920	2600	342	Broken Tree	758/E	Codeforces
5921	2300	342	Rats	254/D	Codeforces
5922	2600	342	Mission Impassable	150/D	Codeforces
5923	3000	341	Coffee Varieties (hard version)	1290/D	Codeforces
5924	2800	341	Cyclic Cipher	722/F	Codeforces
5925	2300	341	Dima and Kicks	358/E	Codeforces
5926	3000	341	Ping-Pong	319/E	Codeforces
5927	2900	340	Timofey and our friends animals	763/E	Codeforces
5928	3200	340	Restoring Map	566/E	Codeforces
5929	2700	339	Employment	1214/F	Codeforces
5930	2700	339	Sasha and a Very Easy Test	1109/E	Codeforces
5931	2800	339	Big Problems for Organizers	418/D	Codeforces
5932	2500	339	The Great Julya Calendar	331/C3	Codeforces
5933	2400	339	Good Substrings	316/G3	Codeforces
5934	2400	339	Gripping Story	198/E	Codeforces
5935	2700	339	Bits of merry old England	132/E	Codeforces
5936	2800	339	Caterpillar	51/F	Codeforces
5937	2500	338	Plane Tiling	1468/I	Codeforces
5938	2800	338	Battalion Strength	1316/F	Codeforces
5939	2300	337	Awards For Contestants	873/E	Codeforces
5940	2900	337	Timofey and a flat tree	763/D	Codeforces
5941	2200	337	Tetris revisited	86/B	Codeforces
5942	9999	336	Prepare superposition of basis states with 0s	1357/C1	Codeforces
5943	2400	336	Daleks' Invasion (hard)	1184/E3	Codeforces
5944	3000	336	Orchestra	627/E	Codeforces
5945	2300	336	Summer Homework	316/E2	Codeforces
5946	2900	336	Fence	232/D	Codeforces
5947	2700	336	Information Reform	70/E	Codeforces
5948	2700	335	Ever-Hungry Krakozyabra	833/C	Codeforces
5949	2900	335	New Year and Cake	611/G	Codeforces
5950	2700	335	Two Sets	251/D	Codeforces
5951	2900	335	Large Refrigerator	163/D	Codeforces
5952	2900	334	Noble Knight's Path	226/E	Codeforces
5953	1100	334	Asterisks	188/D	Codeforces
5954	2900	334	Wizards and Bets	167/E	Codeforces
5955	9999	333	Distinguish Rz from R1	1357/A4	Codeforces
5956	2700	333	Beautiful League	1264/E	Codeforces
5957	2500	333	A Story of One Country (Easy)	1181/E1	Codeforces
5958	2100	333	Writing a Song	54/D	Codeforces
5959	2600	332	Four Melodies	818/G	Codeforces
5960	2600	332	Constrained Tree	513/D2	Codeforces
5961	9999	332	On Sum of Number of Inversions in Permutations	396/D	Codeforces
5962	2900	332	Reclamation	325/D	Codeforces
5963	2500	332	Cutting a Fence	212/D	Codeforces
5964	1900	332	Space Voyage	177/E2	Codeforces
5965	3000	331	Lucky Numbers (Hard Version)	1428/G2	Codeforces
5966	3000	331	Boolean Function	582/E	Codeforces
5967	2200	331	Berland Federalization	440/D	Codeforces
5968	2100	331	Zigzag	228/D	Codeforces
5969	2200	331	Geometrical problem	51/D	Codeforces
5970	2300	330	Horseback Riding	1090/E	Codeforces
5971	2800	330	Ehab and a weird weight formula	1088/F	Codeforces
5972	2600	330	Candies for Children	1063/D	Codeforces
5973	2900	330	Black Widow	704/C	Codeforces
5974	2500	329	Virus	1423/H	Codeforces
5975	2700	329	DFS	1044/F	Codeforces
5976	1400	329	LCM	188/C	Codeforces
5977	3100	328	LCC	1286/D	Codeforces
5978	2500	328	Gang Up	1187/G	Codeforces
5979	2900	328	Chattering	1032/G	Codeforces
5980	3200	328	The Tree	1017/G	Codeforces
5981	2600	328	Dasha and Photos	761/F	Codeforces
5982	2700	328	Fox and Perfect Sets	388/D	Codeforces
5983	9999	327	Сортировка слиянием	1531/E2	Codeforces
5984	2700	327	Stairs and Lines	498/E	Codeforces
5985	2600	326	Scissors	955/D	Codeforces
5986	3300	326	Number of Binominal Coefficients	582/D	Codeforces
5987	2100	326	White, Black and White Again	306/C	Codeforces
5988	3000	325	ZS Shuffles Cards	1392/H	Codeforces
5989	2800	325	Travelling Through the Snow Queen's Kingdom	685/E	Codeforces
5990	2400	325	Strange Calculation and Cats	593/E	Codeforces
5991	2400	325	Theft of Blueprints	332/D	Codeforces
5992	2600	325	New Year Snowflake	140/F	Codeforces
5993	2400	325	Crime Management	107/D	Codeforces
5994	2700	324	Concatenation with intersection	1313/E	Codeforces
5995	2900	324	Nauuo and Portals	1172/D	Codeforces
5996	2100	324	Cowboys	212/C	Codeforces
5997	2400	324	Little Elephant and Retro Strings	204/D	Codeforces
5998	2500	324	Garden	152/E	Codeforces
5999	2800	323	Sum Over Subsets	1436/F	Codeforces
6000	2700	323	Erasing Substrings	938/F	Codeforces
6001	2500	323	The Evil Temple and the Moving Rocks	329/D	Codeforces
6002	2300	323	PE Lesson	316/D2	Codeforces
6003	3000	323	Graph Game	235/D	Codeforces
6004	3300	322	Cow and Vacation	1307/F	Codeforces
6005	2500	322	Game with Tokens	930/D	Codeforces
6006	2700	322	Yet Another Maxflow Problem	903/G	Codeforces
6007	2500	322	Colorful Stones	264/D	Codeforces
6008	2500	322	Candies and Stones	101/E	Codeforces
6009	3000	321	Little Pony and Elements of Harmony	453/D	Codeforces
6010	2400	321	Delivering Carcinogen	198/C	Codeforces
6011	2600	320	Foolprüf Security	1267/F	Codeforces
6012	2700	320	Two-Paths	1000/G	Codeforces
6013	2700	320	Arkady and a Nobody-men	860/E	Codeforces
6014	2500	320	Azembler	93/C	Codeforces
6015	2600	319	Brand New Problem	201/D	Codeforces
6016	2800	319	The Next Good String	196/D	Codeforces
6017	2500	319	Half-decay tree	68/D	Codeforces
6018	2800	318	Permutations	736/D	Codeforces
6019	2700	317	Once in a casino	1120/B	Codeforces
6020	3200	317	Company Acquisitions	1025/G	Codeforces
6021	2500	317	Wilbur and Strings	596/E	Codeforces
6022	3000	316	Falling Sand (Hard Version)	1534/F2	Codeforces
6023	2900	316	Lucky Numbers (Easy Version)	1428/G1	Codeforces
6024	2900	316	Tree and XOR	1055/F	Codeforces
6025	3100	316	Fibonacci-ish II	633/H	Codeforces
6026	9999	315	Distinguish Z from -Z	1356/A5	Codeforces
6027	2400	315	Dima and Figure	273/D	Codeforces
6028	2800	315	Maxim and Calculator	261/E	Codeforces
6029	2600	314	Tricky Interactor	1081/F	Codeforces
6030	3100	314	Little Pony and Lord Tirek	453/E	Codeforces
6031	2300	314	Strange town	42/D	Codeforces
6032	2200	312	Fake News (medium)	802/H	Codeforces
6033	1900	312	Touchy-Feely Palindromes	784/D	Codeforces
6034	3000	312	...Wait for it...	696/E	Codeforces
6035	2800	312	Randomizer	559/D	Codeforces
6036	2600	312	Lostborn	93/E	Codeforces
6037	2600	312	King's Problem?	30/D	Codeforces
6038	9999	311	String Searching	1533/D	Codeforces
6039	2800	311	Nezzar and Hidden Permutations	1477/D	Codeforces
6040	2900	311	Omkar and Pies	1392/G	Codeforces
6041	3100	311	Berserk Robot 	538/G	Codeforces
6042	2700	311	Lucky Tickets	333/C	Codeforces
6043	9999	310	Fourier Doodles	1145/E	Codeforces
6044	9999	310	Word Folding	391/B	Codeforces
6045	2700	309	Colored Tree	1260/F	Codeforces
6046	1600	309	Oracle for majority function	1002/D3	Codeforces
6047	2400	309	Eleventh Birthday	856/C	Codeforces
6048	1900	308	Two Policemen	1488/C	Codeforces
6049	3100	308	Make Equal	1188/D	Codeforces
6050	2900	307	XOR and Distance	1553/H	Codeforces
6051	2700	307	Uncle Bogdan and Projections	1388/E	Codeforces
6052	2700	307	Most Dangerous Shark	1131/G	Codeforces
6053	2100	307	Game with Points	386/D	Codeforces
6054	1500	307	Exponentiation	130/D	Codeforces
6055	3000	306	Olha and Igor	1438/F	Codeforces
6056	3000	306	Guess the number	1028/G	Codeforces
6057	3100	306	Huffman Coding on Segment	700/D	Codeforces
6058	2400	306	Berland Local Positioning System	534/E	Codeforces
6059	3100	305	String Transformation 2	1383/C	Codeforces
6060	9999	305	Generate state |00⟩ + |01⟩ + |10⟩	1116/A1	Codeforces
6061	2500	305	Horse Races	95/D	Codeforces
6062	2600	304	Heidi and Library (hard)	802/C	Codeforces
6063	2500	304	New Year Tree Decorations	379/E	Codeforces
6064	2800	304	Pilgrims	348/E	Codeforces
6065	2300	304	Lesson Timetable	37/D	Codeforces
6066	2700	303	Wojtek and Card Tricks	1210/E	Codeforces
6067	3400	303	Egor and an RPG game	1097/E	Codeforces
6068	1700	302	Magic Tricks	1346/E	Codeforces
6069	2600	302	Forced Online Queries Problem	1217/F	Codeforces
6070	2700	302	Tree Cutting (Hard Version)	1118/F2	Codeforces
6071	3000	301	Indecisive Taxi Fee	1163/F	Codeforces
6072	2900	301	Upgrading Cities	1062/F	Codeforces
6073	2900	301	Cycles in product	997/D	Codeforces
6074	3200	301	Mirror Box	578/F	Codeforces
6075	2900	301	Fox And Polygon	512/E	Codeforces
6076	2900	301	Nanami's Power Plant	434/D	Codeforces
6077	2600	301	Levko and Sets	360/D	Codeforces
6078	2400	301	Hanger	74/D	Codeforces
6079	2200	299	Mysterious language again, seriously?	1505/I	Codeforces
6080	2500	299	Cactus Search	1089/C	Codeforces
6081	2800	299	Speed Dial	1082/F	Codeforces
6082	1500	299	Bernstein-Vazirani algorithm	1002/E1	Codeforces
6083	2700	299	Airplane Arrangements	838/D	Codeforces
6084	3100	299	The same permutation 	804/E	Codeforces
6085	2800	299	Sherlock's bet to Moriarty	776/F	Codeforces
6086	2600	299	Tourists	286/D	Codeforces
6087	2600	299	The Last Hole!	274/C	Codeforces
6088	2500	299	Rhombus	263/E	Codeforces
6089	2900	299	Two Segments	193/D	Codeforces
6090	2800	297	Letters and Question Marks	1327/G	Codeforces
6091	2700	297	Policeman and a Tree	868/E	Codeforces
6092	2800	296	Appleman and Complicated Task	461/D	Codeforces
6093	2900	296	Ciel and Flipboard	321/D	Codeforces
6094	2500	296	Shoe Store	166/D	Codeforces
6095	1600	295	OR oracle	1115/G2	Codeforces
6096	2300	295	Pasha and Pipe	518/F	Codeforces
6097	2300	295	Stars	213/D	Codeforces
6098	2500	295	Not Quick Transformation	117/D	Codeforces
6099	2400	295	Multithreading	26/E	Codeforces
6100	2500	293	SmartGarden	1250/M	Codeforces
6101	2600	293	Thoroughly Bureaucratic Organization	201/E	Codeforces
6102	9999	292	Prepare superposition of basis states with th...	1357/C2	Codeforces
6103	2700	292	Weighting a Tree	901/D	Codeforces
6104	2500	291	L BREAK into program	1505/H	Codeforces
6105	2400	291	New Year Presents	1090/C	Codeforces
6106	2400	291	Self-exploration	1045/H	Codeforces
6107	1600	291	The Teacher of Physical Education	683/B	Codeforces
6108	2200	291	Tournament-graph	323/B	Codeforces
6109	2300	291	Polycarpus is Looking for Good Substrings	212/B	Codeforces
6110	2700	291	T-shirt	183/D	Codeforces
6111	2400	291	Arrangement	107/C	Codeforces
6112	2900	290	Beautiful Matrix	1085/G	Codeforces
6113	2800	290	Two Subsequences	83/E	Codeforces
6114	9999	289	Prepare state |01⟩ + |10⟩ + |11⟩	1356/C	Codeforces
6115	3000	289	Make It Ascending	1342/F	Codeforces
6116	2900	289	Graph And Numbers	1221/G	Codeforces
6117	2000	289	Stepan's Series	774/J	Codeforces
6118	3000	289	Red and Black Tree	375/E	Codeforces
6119	3000	289	Roadside Trees	264/E	Codeforces
6120	2300	289	Race	43/E	Codeforces
6121	2600	289	Two Paths	36/E	Codeforces
6122	3000	288	Black, White and Grey Tree	1442/E	Codeforces
6123	9999	288	Nash equilibrium	1302/A	Codeforces
6124	2800	288	Mister B and Flight to the Moon	819/E	Codeforces
6125	1600	288	Symmetric Difference	683/C	Codeforces
6126	1800	288	Binary notation	162/B	Codeforces
6127	2200	288	Two progressions	125/D	Codeforces
6128	2800	286	String and Operations	1455/F	Codeforces
6129	2900	286	Rectangular Polyline	1444/D	Codeforces
6130	2700	286	Roland and Rose	460/E	Codeforces
6131	1800	286	Representative Sampling	178/F1	Codeforces
6132	2100	286	Smart Boy	38/F	Codeforces
6133	1700	285	Distinguish four 2-qubit states - 2	1002/B4	Codeforces
6134	3100	285	Move by Prime	653/G	Codeforces
6135	2700	284	The Final Pursuit	1543/E	Codeforces
6136	2700	284	Is It Rated?	1510/I	Codeforces
6137	3400	284	Yuezheng Ling and Dynamic Tree	1491/H	Codeforces
6138	2300	284	Spring cleaning	1403/B	Codeforces
6139	3100	284	Drazil and His Happy Friends	516/E	Codeforces
6140	2600	284	Meeting Her	238/E	Codeforces
6141	2300	284	Divisibility Rules	180/B	Codeforces
6142	2800	283	Tiles Placement	1214/H	Codeforces
6143	2900	283	Shrinking Tree	1060/F	Codeforces
6144	3200	283	Puzzle Lover	613/E	Codeforces
6145	2600	282	Upgrading Tree	843/C	Codeforces
6146	2800	281	Foreigner	1142/D	Codeforces
6147	2700	281	Sources and Sinks	1036/G	Codeforces
6148	2500	281	Digits	852/A	Codeforces
6149	1700	281	Sum and product	530/E	Codeforces
6150	2300	281	Deciphering	491/C	Codeforces
6151	2800	281	Cookie Clicker	377/E	Codeforces
6152	2700	280	Omkar and Modes	1372/F	Codeforces
6153	2800	280	BRT Contract 	187/D	Codeforces
6154	2600	280	Help Shrek and Donkey 2	142/D	Codeforces
6155	3000	279	James and the Chase	1361/E	Codeforces
6156	9999	279	Magic Tree	1193/B	Codeforces
6157	1700	279	Distinguish zero state and plus state with mi...	1002/C1	Codeforces
6158	1600	279	Table	64/C	Codeforces
6159	2700	278	Adilbek and the Watering System	1238/G	Codeforces
6160	2400	278	Cactusophobia	720/B	Codeforces
6161	2400	277	Gambling Nim	662/A	Codeforces
6162	3000	277	Candies Game	341/E	Codeforces
6163	2600	277	Unambiguous Arithmetic Expression	115/D	Codeforces
6164	2300	277	Wormhouse	62/D	Codeforces
6165	2300	277	Square Equation Roots	50/E	Codeforces
6166	1600	276	Balanced brackets	130/H	Codeforces
6167	2200	276	Cannon	47/E	Codeforces
6168	2500	275	Max and Min	566/G	Codeforces
6169	2600	274	Light switches	1423/L	Codeforces
6170	2900	274	Andrew and Chemistry	718/D	Codeforces
6171	2400	274	The Great Julya Calendar	331/C2	Codeforces
6172	2600	274	Tetragon	23/D	Codeforces
6173	2900	273	Linear Congruential Generator	1030/G	Codeforces
6174	2700	273	Sagheer and Kindergarten	812/D	Codeforces
6175	2600	273	Visit of the Great	185/D	Codeforces
6176	1500	273	Goofy Numbers	72/I	Codeforces
6177	2700	272	Chess Strikes Back (easy version)	1379/F1	Codeforces
6178	3100	272	Perpetual Subtraction	923/E	Codeforces
6179	1400	272	Chocolate Bar	683/D	Codeforces
6180	2500	271	Dish Shopping	1139/F	Codeforces
6181	2900	270	Mashtali and Hagh Trees	1528/E	Codeforces
6182	3000	270	Swap Pass	1508/D	Codeforces
6183	2400	270	Masha and Cactus	856/D	Codeforces
6184	2800	270	Random Elections	850/E	Codeforces
6185	2200	270	Luck is in Numbers	120/I	Codeforces
6186	2200	270	Synchrophasotron	68/C	Codeforces
6187	9999	269	Decrement	1356/B2	Codeforces
6188	9999	269	Increment	1356/B1	Codeforces
6189	2800	269	Road Repairs	240/E	Codeforces
6190	2900	268	Ruminations on Ruminants	603/D	Codeforces
6191	2600	268	Ksenia and Combinatorics	382/E	Codeforces
6192	2600	267	Hag's Khashba	975/E	Codeforces
6193	2600	267	Fafa and Array	935/F	Codeforces
6194	2100	267	Pixels	209/B	Codeforces
6195	2500	267	Journey	57/D	Codeforces
6196	9999	266	Cubeword	1192/C	Codeforces
6197	2700	266	Uniformly Branched Trees	724/F	Codeforces
6198	2700	266	Road to Home	721/E	Codeforces
6199	2800	265	Boolean Computer	1033/F	Codeforces
6200	2100	265	Property	852/C	Codeforces
6201	2800	265	Rainbow Balls	850/F	Codeforces
6202	3000	264	AquaMoon and Wrong Coordinate	1545/D	Codeforces
6203	2900	264	RC Kaboom Show	1359/F	Codeforces
6204	2900	264	Substring Search	1334/G	Codeforces
6205	3000	264	Around the World	1299/D	Codeforces
6206	2400	264	Berland SU Computer Network	847/L	Codeforces
6207	2100	264	Amusement Park	774/A	Codeforces
6208	2800	264	Ants on a Circle	652/F	Codeforces
6209	2800	264	Sign Posts	568/D	Codeforces
6210	2500	264	Cycle	135/D	Codeforces
6211	2500	264	Flags	93/D	Codeforces
6212	9999	263	Сортировка слиянием	1531/E3	Codeforces
6213	2000	263	Smart Beaver and Resolving Collisions	178/C3	Codeforces
6214	2600	262	Enchanted Matrix	1493/F	Codeforces
6215	2800	262	Au Pont Rouge	1310/C	Codeforces
6216	2700	262	New Year Permutations	1279/E	Codeforces
6217	3200	262	New Year and the Tricolore Recreation	1091/H	Codeforces
6218	1600	262	A + B	153/A	Codeforces
6219	2800	262	Martian Food	77/E	Codeforces
6220	9999	261	Block diagonal matrix	1116/D1	Codeforces
6221	2600	261	Berland Army	883/B	Codeforces
6222	2600	261	Formurosa	217/C	Codeforces
6223	3000	260	The Majestic Brown Tree Snake	1381/D	Codeforces
6224	2800	260	Delivery Oligopoly	1155/F	Codeforces
6225	3000	260	Mike and code of a permutation	798/E	Codeforces
6226	1400	260	HQ9+	188/E	Codeforces
6227	2700	259	Japanese Game	1510/J	Codeforces
6228	3400	259	Matches Are Not a Child's Play 	1137/F	Codeforces
6229	3100	259	New Year and Boolean Bridges	908/H	Codeforces
6230	2800	259	Yaroslav and Arrangements	301/E	Codeforces
6231	1900	259	The Beaver's Problem - 2	178/E1	Codeforces
6232	1800	258	Script Generation	177/F1	Codeforces
6233	2900	257	Cakes for Clones	1415/F	Codeforces
6234	2700	257	Store	1010/E	Codeforces
6235	2900	257	May Holidays	925/E	Codeforces
6236	2900	257	Family Photos	725/F	Codeforces
6237	2400	257	Tractor College	200/E	Codeforces
6238	2700	256	Misha and XOR	504/D	Codeforces
6239	2700	256	Strongly Connected City 2	475/E	Codeforces
6240	2400	256	Pentagon	51/E	Codeforces
6241	1900	255	Problemsolving Marathon	1488/D	Codeforces
6242	3300	255	Bear and Chemistry	639/F	Codeforces
6243	1500	255	World of Mouth	100/D	Codeforces
6244	2800	254	Coffee Varieties (easy version)	1291/F	Codeforces
6245	9999	254	Контрольная сумма	1275/E1	Codeforces
6246	2400	254	2 + 2 != 4	952/F	Codeforces
6247	2900	254	Bearish Fanpages	643/D	Codeforces
6248	1900	254	Smart Beaver and Resolving Collisions	178/C2	Codeforces
6249	2400	254	Hide-and-Seek	32/E	Codeforces
6250	2900	253	Satanic Panic	1146/H	Codeforces
6251	2900	253	Nephren Runs a Cinema	896/D	Codeforces
6252	2300	253	Convex Countour	838/E	Codeforces
6253	2900	253	Bear and Chase	679/D	Codeforces
6254	2500	253	Savior	60/D	Codeforces
6255	2300	253	Hercule Poirot Problem	46/F	Codeforces
6256	3100	252	Legendary Tree	1129/E	Codeforces
6257	3100	252	Professional layer	1103/D	Codeforces
6258	3300	252	Numbers on the blackboard	878/E	Codeforces
6259	3000	252	Julia the snail	793/F	Codeforces
6260	2900	252	Sereja and Squares	314/E	Codeforces
6261	2500	252	Shaass and Painter Robot	294/D	Codeforces
6262	2900	252	Fibonacci Number	193/E	Codeforces
6263	2500	251	Guards In The Storehouse	845/F	Codeforces
6264	9999	250	Alternating bits oracle	1116/C1	Codeforces
6265	2500	250	Encryption (hard)	958/C3	Codeforces
6266	2800	250	Design Tutorial: Increase the Constraints	472/G	Codeforces
6267	3000	250	Appleman and a Game	461/E	Codeforces
6268	2500	250	Hyper String	176/D	Codeforces
6269	2600	249	Monsters and Diamonds	325/C	Codeforces
6270	2900	248	Converging Array (Hard Version)	1540/C2	Codeforces
6271	2900	248	Delete The Edges	1494/F	Codeforces
6272	2900	248	Ones	1487/F	Codeforces
6273	3300	248	Oppa Funcan Style Remastered	986/F	Codeforces
6274	3100	248	Circles of Waiting	963/E	Codeforces
6275	2700	248	Help Shrek and Donkey	98/E	Codeforces
6276	2600	248	Mushroom Gnomes	60/E	Codeforces
6277	2800	247	Tiles	1473/G	Codeforces
6278	1800	247	Distinguish zero state and plus state without...	1002/C2	Codeforces
6279	2700	247	Team Players	985/G	Codeforces
6280	2200	247	Mister B and Boring Game	819/A	Codeforces
6281	2700	247	Donkey and Stars	249/D	Codeforces
6282	2400	247	Winning Strategy	97/C	Codeforces
6283	2400	247	Morrowindows	73/E	Codeforces
6284	3000	246	String Distance	1535/F	Codeforces
6285	3000	246	Game Relics	1267/G	Codeforces
6286	3000	246	Guess two numbers	1007/C	Codeforces
6287	2800	246	Tournament Construction	850/D	Codeforces
6288	2800	246	Robots protection	575/I	Codeforces
6289	2800	246	Pudding Monsters	436/D	Codeforces
6290	2900	245	Red-Blue Graph	1288/F	Codeforces
6291	2700	245	You Are Given Some Letters...	1202/F	Codeforces
6292	3100	245	Tree	468/D	Codeforces
6293	2500	245	Little Elephant and Triangle	220/D	Codeforces
6294	2400	245	Plane of Tanks: Duel	175/D	Codeforces
6295	2200	245	BHTML+BCSS	172/E	Codeforces
6296	2500	245	Help Greg the Dwarf	98/C	Codeforces
6297	2500	244	Product Tuples	1218/E	Codeforces
6298	1900	244	Generate W state	1002/A4	Codeforces
6299	2800	244	Red-Black Cobweb	833/D	Codeforces
6300	3000	244	Empty Rectangles	364/E	Codeforces
6301	1800	244	Presents	64/D	Codeforces
6302	2600	243	Simba on the Circle	612/F	Codeforces
6303	1800	243	Hexakosioihexekontahexaphobia	470/B	Codeforces
6304	2400	242	Collective Mindsets (hard)	690/A3	Codeforces
6305	2400	242	Binary Key	332/E	Codeforces
6306	2500	241	Packmen Strike Back	883/D	Codeforces
6307	3000	241	Bear and Rectangle Strips	771/E	Codeforces
6308	3000	241	Bear and Cavalry	573/D	Codeforces
6309	9999	241	Physical Education and Buns	394/D	Codeforces
6310	2200	241	Battlefield	182/A	Codeforces
6311	2300	241	Domino Carpet	77/D	Codeforces
6312	3100	240	Perfect Encoding	986/D	Codeforces
6313	2900	239	Cut Length	598/F	Codeforces
6314	2300	239	Race	241/F	Codeforces
6315	3100	238	Max Correct Set	1463/F	Codeforces
6316	9999	238	Bonus Distribution 	1297/D	Codeforces
6317	1500	238	Anti-diagonal unitary	1115/U1	Codeforces
6318	2900	237	Johnny and James	1361/D	Codeforces
6319	2800	237	Random Forest Rank	1067/E	Codeforces
6320	2700	237	Concise and clear	991/F	Codeforces
6321	2400	237	Rectangles and Square	335/D	Codeforces
6322	2900	236	Tree Elimination	1276/D	Codeforces
6323	2600	236	Heroes of Making Magic III	717/F	Codeforces
6324	2900	236	TOF	687/E	Codeforces
6325	3000	235	A Serious Referee	1552/G	Codeforces
6326	3100	235	Cow and Exercise	1307/G	Codeforces
6327	1400	235	Binary Notation	188/F	Codeforces
6328	3200	234	In a Trap	840/E	Codeforces
6329	3100	234	Tavas on the Path	536/E	Codeforces
6330	2300	234	Archer's Shot	78/D	Codeforces
6331	2700	233	Prime Divisors Selection	1468/L	Codeforces
6332	2800	233	Directing Edges	1389/G	Codeforces
6333	3200	233	Triple	1119/H	Codeforces
6334	2800	233	DZY Loves Games	446/D	Codeforces
6335	3200	232	Election Promises	1149/E	Codeforces
6336	2600	232	A Game With Numbers	919/F	Codeforces
6337	3400	232	Can Bash Save the Day?	757/G	Codeforces
6338	2900	232	Transferring Pyramid	354/D	Codeforces
6339	2500	232	Save the City!	67/E	Codeforces
6340	2300	231	Transportation	203/E	Codeforces
6341	2200	231	Leaders	97/E	Codeforces
6342	3300	229	Number of Components	1270/H	Codeforces
6343	3200	229	Little C Loves 3 III	1034/E	Codeforces
6344	2900	229	New task	788/E	Codeforces
6345	2500	229	Interactive Bulls and Cows (Hard)	753/C	Codeforces
6346	2200	229	Bowls	36/C	Codeforces
6347	9999	228	Distinguish Rz(θ) from Ry(θ)	1357/A5	Codeforces
6348	3200	228	Wise Men (Hard Version)	1326/F2	Codeforces
6349	2700	228	Maximum Sine	1182/F	Codeforces
6350	2900	228	Pollywog	917/C	Codeforces
6351	2200	228	Beautiful Function	593/C	Codeforces
6352	2600	228	Dima and Game	273/E	Codeforces
6353	2500	228	Lucky Segments	121/D	Codeforces
6354	2200	228	Item World	105/C	Codeforces
6355	2900	227	Multithreading (Easy Version)	1450/H1	Codeforces
6356	2400	227	The Potion of Great Power	1403/A	Codeforces
6357	1500	227	Friendly Numbers	100/B	Codeforces
6358	3100	226	Slime and Sequences (Easy Version)	1349/F1	Codeforces
6359	9999	226	Sliding Doors	1170/E	Codeforces
6360	3000	226	Rainbow Coins	1147/E	Codeforces
6361	3000	226	Selling Numbers	778/E	Codeforces
6362	2600	226	Sereja and Dividing	380/E	Codeforces
6363	3000	226	Xenia and String Problem	356/E	Codeforces
6364	2800	226	Alien DNA	217/E	Codeforces
6365	2400	226	Ship's Shortest Path	75/E	Codeforces
6366	3100	225	Minimum Difference	1476/G	Codeforces
6367	2900	224	Coins Exhibition	930/E	Codeforces
6368	3200	224	New Year and Binary Tree Paths	750/G	Codeforces
6369	3000	224	Banners	436/F	Codeforces
6370	1900	224	Magic Squares	178/D2	Codeforces
6371	3100	223	Dreamoon Likes Strings	1329/D	Codeforces
6372	2800	223	Neko Rules the Catniverse (Small Version)	1152/F1	Codeforces
6373	2700	223	Electric Scheme	1054/F	Codeforces
6374	2600	223	X-mouse in the Campus	1027/G	Codeforces
6375	2900	223	Sherlock and the Encrypted Data	776/G	Codeforces
6376	2800	223	Google Code Jam	277/D	Codeforces
6377	2700	223	Liars and Serge	256/D	Codeforces
6378	2500	223	Representative Sampling	178/F3	Codeforces
6379	1600	223	Tribonacci numbers	130/E	Codeforces
6380	2700	222	Chainword	1511/F	Codeforces
6381	3100	222	AB Tree	1481/F	Codeforces
6382	3100	222	To Make 1	1225/G	Codeforces
6383	2300	222	Say Hello	1046/I	Codeforces
6384	3000	221	Array Game	1076/G	Codeforces
6385	2800	221	Nikita and game	842/E	Codeforces
6386	9999	221	Inna and Large Sweet Matrix	390/E	Codeforces
6387	2700	220	Double Tree	1140/G	Codeforces
6388	3100	220	Get Ready for the Battle	1119/G	Codeforces
6389	9999	220	Pattern of increasing blocks	1116/D2	Codeforces
6390	3400	220	Complete the Permutations	715/E	Codeforces
6391	2600	220	Replicating Processes	566/B	Codeforces
6392	2900	219	Almost Same Distance	1266/F	Codeforces
6393	3000	219	Mod Mod Mod	889/E	Codeforces
6394	3100	219	Nagini	855/F	Codeforces
6395	1600	219	Beaver's Calculator 1.0	207/A1	Codeforces
6396	2300	219	Inquisition	62/C	Codeforces
6397	3100	218	Nim Shortcuts	1458/E	Codeforces
6398	1600	218	Chessboard unitary	1115/U2	Codeforces
6399	2400	218	Domino	97/A	Codeforces
6400	2600	218	Grocer's Problem	91/D	Codeforces
6401	2700	218	Pairs	81/E	Codeforces
6402	2700	217	Coins	1423/F	Codeforces
6403	3000	217	Equal Product	1418/F	Codeforces
6404	2800	217	Chess Strikes Back (hard version)	1379/F2	Codeforces
6405	3500	217	Beautiful fountains rows	799/F	Codeforces
6406	1600	216	Palindrome checker oracle	1115/G3	Codeforces
6407	2500	216	Last chance	1045/A	Codeforces
6408	2900	216	Wrap Around	1038/F	Codeforces
6409	2900	216	Symmetric Projections	886/F	Codeforces
6410	3000	216	Mystic Carvings	297/E	Codeforces
6411	2900	216	Bitonix' Patrol	217/D	Codeforces
6412	3000	215	Neko Rules the Catniverse (Large Version)	1152/F2	Codeforces
6413	3000	215	Lasers and Mirrors	1063/E	Codeforces
6414	2800	215	Familiar Operations	1031/F	Codeforces
6415	2700	215	Design Tutorial: Change the Goal	472/F	Codeforces
6416	2200	215	Greedy Elevator	257/E	Codeforces
6417	1600	215	Prime factorization	130/F	Codeforces
6418	2600	215	Mogohu-Rea Idol	87/E	Codeforces
6419	9999	214	Chess Team Forming	1533/E	Codeforces
6420	2500	214	Madness	822/F	Codeforces
6421	2800	214	Scaygerboss	513/F2	Codeforces
6422	2900	213	Tiles for Bathroom	1500/D	Codeforces
6423	2700	213	Game On Tree	1452/G	Codeforces
6424	2400	213	Xor Spanning Tree	1218/D	Codeforces
6425	3200	213	Raining season	1019/E	Codeforces
6426	2600	213	Frames	152/D	Codeforces
6427	3100	212	2-Coloring	1503/E	Codeforces
6428	2700	212	Bingo!	457/D	Codeforces
6429	2800	212	Polo the Penguin and Lucky Numbers	288/E	Codeforces
6430	3200	211	Try Booking	1523/G	Codeforces
6431	2800	211	Joker	1386/C	Codeforces
6432	2100	211	Segments	926/J	Codeforces
6433	2200	211	Repairing Of String	774/H	Codeforces
6434	2700	211	Scaygerboss	513/F1	Codeforces
6435	2500	211	Deputies	173/D	Codeforces
6436	2800	210	Twilight and Ancient Scroll (easier version)	1393/E1	Codeforces
6437	1700	210	CAPS LOCK ON	130/G	Codeforces
6438	3100	209	Tree Calendar	1508/E	Codeforces
6439	2800	209	Inverse Genealogy	1379/E	Codeforces
6440	2800	209	AB-Strings	1012/D	Codeforces
6441	3000	209	Finding lines	788/D	Codeforces
6442	2000	209	Bars	774/L	Codeforces
6443	3300	209	The Winds of Winter	768/G	Codeforces
6444	2300	209	Polygon	306/D	Codeforces
6445	2600	209	Power Defence	175/E	Codeforces
6446	2600	207	Doe Graphs	232/C	Codeforces
6447	1600	206	Reverse It!	72/H	Codeforces
6448	9999	205	"Is the bit string balanced?" oracle	1357/B1	Codeforces
6449	3200	205	Invertation in Tournament	1268/D	Codeforces
6450	2100	205	Magic Squares	178/D3	Codeforces
6451	2400	205	Expression	58/E	Codeforces
6452	9999	204	Prefixes and Suffixes	1532/F	Codeforces
6453	3300	204	Set Merging	1375/H	Codeforces
6454	9999	204	"Is the number divisible by 3?" oracle	1357/B2	Codeforces
6455	2900	204	April Fools' Problem (hard)	802/O	Codeforces
6456	2600	204	Rotatable Number	303/D	Codeforces
6457	3000	204	Mirror Room	274/E	Codeforces
6458	3000	203	The Thorny Path	1411/F	Codeforces
6459	3000	203	The Awesomest Vertex	1178/G	Codeforces
6460	3000	203	Chain Reaction	666/D	Codeforces
6461	2900	203	Jzzhu and Squares	449/E	Codeforces
6462	2200	203	Representative Sampling	178/F2	Codeforces
6463	3200	202	Distance Matching	1396/E	Codeforces
6464	3200	202	Pink Floyd	1142/E	Codeforces
6465	2900	202	Subsequences Return	497/E	Codeforces
6466	3000	201	Down Below	1558/E	Codeforces
6467	1800	201	Stack	188/H	Codeforces
6468	3200	200	New Year and Social Network	1284/F	Codeforces
6469	3200	199	Reunion	1517/F	Codeforces
6470	3500	199	Beautiful Fibonacci Problem	1264/F	Codeforces
6471	3300	199	Reverses	906/E	Codeforces
6472	1900	199	Seasons	661/B	Codeforces
6473	2000	199	The Beaver's Problem - 2	178/E2	Codeforces
6474	2500	199	Space mines	89/D	Codeforces
6475	2000	198	Dune II: Battle For Arrakis	1346/F	Codeforces
6476	3300	198	Cross Sum	607/E	Codeforces
6477	3000	198	Berland Miners	533/A	Codeforces
6478	2500	198	Summer Reading	370/E	Codeforces
6479	2900	198	Lucky Pair	145/D	Codeforces
6480	3300	197	Starry Night Camping	1517/G	Codeforces
6481	2600	197	Encoded message	1505/G	Codeforces
6482	2900	197	Divide Powers	1452/F	Codeforces
6483	3500	197	Density of subarrays	1158/F	Codeforces
6484	2600	197	Vasya and Shifts	832/E	Codeforces
6485	3000	197	Blog Post Rating	773/E	Codeforces
6486	3000	197	Buy One, Get One Free	335/F	Codeforces
6487	1900	197	Remove digits	162/D	Codeforces
6488	2300	197	Berland Square	40/C	Codeforces
6489	3200	196	A Game on Strings	1037/G	Codeforces
6490	3300	196	Matvey's Birthday	718/E	Codeforces
6491	9999	196	Tree and Array	398/C	Codeforces
6492	2000	195	Chess Match	1431/E	Codeforces
6493	2900	195	Gears	497/D	Codeforces
6494	1500	195	Rotation	100/I	Codeforces
6495	2700	195	Mutation	76/C	Codeforces
6496	2800	194	Goblins And Gnomes	1525/F	Codeforces
6497	3000	194	Anagram Paths	1168/D	Codeforces
6498	2800	193	Sasha and a Patient Friend	1109/C	Codeforces
6499	2900	193	Shake It!	848/D	Codeforces
6500	2400	193	Looking for Owls	350/D	Codeforces
6501	1700	193	A polyline	171/H	Codeforces
6502	2700	192	A Trance of Nightfall	989/E	Codeforces
6503	3300	191	A New Beginning	1534/G	Codeforces
6504	3100	191	No Monotone Triples	1332/G	Codeforces
6505	2600	191	Two Prefixes	1090/J	Codeforces
6506	3500	191	Intervals of Intervals	1034/D	Codeforces
6507	2700	191	Ksusha and Square	293/D	Codeforces
6508	9999	190	X-wing fighter	1116/D3	Codeforces
6509	2900	189	Forbidden Value	1455/G	Codeforces
6510	3100	189	INOI Final Contests	1439/D	Codeforces
6511	2600	189	Blue and Red of Our Faculty!	1425/B	Codeforces
6512	2900	189	Festival Organization	717/A	Codeforces
6513	2900	189	Tree or not Tree	117/E	Codeforces
6514	2600	189	Corridor	82/E	Codeforces
6515	2200	189	School	45/B	Codeforces
6516	1700	188	Block unitary	1115/U3	Codeforces
6517	9999	188	Supercollider	391/D1	Codeforces
6518	3300	187	Favorite Game	1523/F	Codeforces
6519	3200	186	Shifting Dominoes	1368/G	Codeforces
6520	3000	186	Find String in a Grid	1252/D	Codeforces
6521	3000	186	A Story of One Country (Hard)	1181/E2	Codeforces
6522	2200	186	Marmots (medium)	802/E	Codeforces
6523	2800	186	Cowboy Beblop at his computer	717/I	Codeforces
6524	2900	185	Tubular Bells	1562/F	Codeforces
6525	3300	184	Arkady and Rectangles	983/D	Codeforces
6526	2900	184	A Creative Cutout	933/D	Codeforces
6527	9999	184	Three Arrays	392/D	Codeforces
6528	2900	184	Numbers	241/D	Codeforces
6529	1900	183	Another array reconstruction algorithm	1002/E2	Codeforces
6530	3400	183	Replace All	794/G	Codeforces
6531	3400	183	Oleg and chess	793/G	Codeforces
6532	2800	183	Spectator Riots	575/E	Codeforces
6533	3300	182	Organizing a Race	671/E	Codeforces
6534	3100	182	Minimum Diameter	164/D	Codeforces
6535	1800	182	Prime Segment	64/E	Codeforces
6536	9999	181	Power of quantum Fourier transform	1357/E1	Codeforces
6537	2900	181	Problem of offices	793/E	Codeforces
6538	3100	181	Triangles 3000	528/E	Codeforces
6539	3200	181	Sharti	494/E	Codeforces
6540	2800	181	Hamming Triples	406/E	Codeforces
6541	1800	181	Beaver's Calculator 1.0	207/A2	Codeforces
6542	3000	181	Weak Subsequence	135/E	Codeforces
6543	2800	181	Forward, march!	11/E	Codeforces
6544	3100	180	Xor-Set	1261/F	Codeforces
6545	2100	180	Significant Cups	774/B	Codeforces
6546	3300	180	Sonya Partymaker	713/E	Codeforces
6547	3100	179	K Paths	981/H	Codeforces
6548	2800	179	Frog Fights	625/E	Codeforces
6549	2600	179	Endless Matrix	249/E	Codeforces
6550	1600	179	Military Trainings	207/B1	Codeforces
6551	3200	178	Mergesort Strikes Back	1081/G	Codeforces
6552	2700	177	Colors	1386/A	Codeforces
6553	2000	177	Beaver's Calculator 1.0	207/A3	Codeforces
6554	2700	177	Metro Scheme	191/D	Codeforces
6555	2700	176	Appropriate Team	1016/G	Codeforces
6556	3200	176	Geometric Progressions	571/E	Codeforces
6557	1900	176	Chessboard	470/E	Codeforces
6558	2500	176	Special Graph	435/E	Codeforces
6559	3000	176	Random Ranking	303/E	Codeforces
6560	3000	175	Lanterns	1476/F	Codeforces
6561	3300	175	Rainbow Rectangles	1396/D	Codeforces
6562	2900	175	Karen and Neighborhood	815/E	Codeforces
6563	2300	175	Big Number and Remainder	774/E	Codeforces
6564	3300	175	Iron Man	704/E	Codeforces
6565	3200	174	Feeling Good	1214/G	Codeforces
6566	2500	174	Berland.Taxi	883/L	Codeforces
6567	9999	173	Modernization of Treeland	1297/E	Codeforces
6568	2000	173	Teams	1211/D	Codeforces
6569	9999	173	``Is the bit string periodic?'' oracle	1116/C2	Codeforces
6570	2800	173	Tree nesting	762/F	Codeforces
6571	3000	173	Furukawa Nagisa's Tree	434/E	Codeforces
6572	3000	173	Doodle Jump	346/E	Codeforces
6573	2500	173	Shooting Gallery	44/G	Codeforces
6574	2900	172	Distinctification	1051/G	Codeforces
6575	2900	172	Tape Programming	238/D	Codeforces
6576	2300	172	The Beaver's Problem - 2	178/E3	Codeforces
6577	2400	172	The Great Marathon	38/H	Codeforces
6578	9999	171	``Is the number of ones divisible by 3?'' oracle	1116/C3	Codeforces
6579	9999	170	Distinguish Y, XZ, -Y and -XZ	1357/A7	Codeforces
6580	2600	170	Interval-Free Permutations	1089/I	Codeforces
6581	2200	170	Puzzling Language	952/G	Codeforces
6582	3200	170	Dirty Arkady's Kitchen	827/F	Codeforces
6583	3300	169	Nastya and CBS	1340/F	Codeforces
6584	3400	169	Summer Oenothera Exhibition	1039/E	Codeforces
6585	2700	169	Party	575/C	Codeforces
6586	1600	169	Array Sorting	188/G	Codeforces
6587	9999	168	The Tournament	391/C1	Codeforces
6588	3400	167	Asterisk Substrings	1276/F	Codeforces
6589	2900	167	Take Metro	1056/G	Codeforces
6590	1800	167	Hammer throwing	683/E	Codeforces
6591	9999	166	Generate equal superposition of four basis states	1116/A2	Codeforces
6592	2900	166	Mister B and Beacons on Field	819/C	Codeforces
6593	2700	166	BCPC	592/E	Codeforces
6594	3300	165	Nauuo and ODT	1172/E	Codeforces
6595	1800	165	Prime factorization	162/C	Codeforces
6596	9999	164	Binary String Partition	1533/F	Codeforces
6597	3300	164	Send Tree to Charlie	1254/E	Codeforces
6598	2700	164	Coloring Game	1197/F	Codeforces
6599	2600	164	Recover Polygon (medium)	690/B2	Codeforces
6600	2000	163	Double Permutation Inc.	1211/E	Codeforces
6601	3000	163	World of Tank	936/D	Codeforces
6602	2400	163	Send the Fool Further! (hard)	802/L	Codeforces
6603	2700	161	Cubes	243/D	Codeforces
6604	3300	160	Balanced Reversals	1237/H	Codeforces
6605	2600	160	Playing the ball	420/E	Codeforces
6606	3100	159	Tokitsukaze and Explosion	1190/E	Codeforces
6607	3200	159	Sasha and Algorithm of Silence's Sounds	1109/F	Codeforces
6608	9999	158	Four Vertices	1566/G	Codeforces
6609	1900	158	Eval	470/C	Codeforces
6610	2500	158	Two Circles	363/E	Codeforces
6611	9999	157	Distinguish four Pauli gates	1357/A6	Codeforces
6612	9999	157	TIE fighter	1116/D4	Codeforces
6613	3500	157	Modest Substrings	1110/H	Codeforces
6614	3100	157	Cycle sort	1012/E	Codeforces
6615	3200	156	Qingshan and Daniel	1495/E	Codeforces
6616	2600	156	Heaps	955/F	Codeforces
6617	3400	156	Days of Floral Colours	848/E	Codeforces
6618	9999	156	Deleting Substrings	392/E	Codeforces
6619	2200	155	Palindromic Doubles	1488/E	Codeforces
6620	3100	155	Computer Game	1067/D	Codeforces
6621	2300	155	Array Sorting	470/H	Codeforces
6622	3100	155	Tricky Password	418/E	Codeforces
6623	9999	155	Supercollider	391/D2	Codeforces
6624	2600	155	Inna and Babies	374/E	Codeforces
6625	1800	155	HQ9+	162/E	Codeforces
6626	3500	154	Chiori and Doll Picking (hard version)	1336/E2	Codeforces
6627	3300	154	Gold Experience	1148/G	Codeforces
6628	2700	154	Robot in Basement	97/D	Codeforces
6629	3000	154	Chess	57/E	Codeforces
6630	3300	153	Gregor and the Odd Cows (Hard)	1548/D2	Codeforces
6631	3200	153	Twilight and Ancient Scroll (harder version)	1393/E2	Codeforces
6632	3100	153	Expected Value Again	1205/E	Codeforces
6633	2700	153	Fibonacci Suffix	1065/G	Codeforces
6634	2900	153	Meta-universe	475/F	Codeforces
6635	2500	153	Help Monks	98/D	Codeforces
6636	1800	153	Goshtasp, Vishtasp and Eidi	72/A	Codeforces
6637	2700	153	World Evil	62/E	Codeforces
6638	3200	152	Chests and Keys	1519/F	Codeforces
6639	3500	152	Rin and The Unknown Flower	1292/E	Codeforces
6640	3300	152	Nauuo and Bug	1172/F	Codeforces
6641	2600	152	Odd Federalization	1070/L	Codeforces
6642	2200	152	Endless Roses Most Beautiful	926/H	Codeforces
6643	3100	152	Create a Maze	715/D	Codeforces
6644	2300	152	Script Generation	177/F2	Codeforces
6645	2700	151	Equilibrium Point /\\textbackslash/\\textbackslash	1510/E	Codeforces
6646	3100	151	Permanent	468/E	Codeforces
6647	2700	151	Tennis Rackets	309/D	Codeforces
6648	2700	151	Baldman and the military	42/E	Codeforces
6649	2900	150	Wavy numbers	478/E	Codeforces
6650	2500	150	Olympic Games	401/E	Codeforces
6651	2400	150	Escaping on Beaveractor	331/D1	Codeforces
6652	2500	150	Lift and Throw	105/E	Codeforces
6653	2700	150	Long sequence	86/E	Codeforces
6654	3300	149	Guess the Perimeter	1552/H	Codeforces
6655	2900	149	Chess Championship	736/E	Codeforces
6656	3000	149	Landmarks	533/D	Codeforces
6657	3400	148	Tree	1010/F	Codeforces
6658	2200	148	Suns and Rays	316/F1	Codeforces
6659	3300	147	Cartesian Tree 	1290/E	Codeforces
6660	3100	147	Xor Permutations	1168/E	Codeforces
6661	3300	147	Harry Vs Voldemort	855/G	Codeforces
6662	3000	147	Coprime Permutation	698/F	Codeforces
6663	3200	146	Strange Permutation	1470/E	Codeforces
6664	2700	146	Guard Duty (hard)	958/E3	Codeforces
6665	3200	146	ELCA	482/E	Codeforces
6666	2500	146	HQ	290/E	Codeforces
6667	2300	146	Toys	44/I	Codeforces
6668	3200	145	Wooden Raft	1223/G	Codeforces
6669	2600	145	How to Learn You Score	1090/F	Codeforces
6670	3100	145	Perpetual Motion Machine	830/E	Codeforces
6671	2200	145	Suns and Rays	316/F3	Codeforces
6672	2800	144	Impressive Harvesting of The Orchard	1425/I	Codeforces
6673	3300	144	Rainbow Triples	1408/H	Codeforces
6674	3100	144	Harry The Potter	1286/F	Codeforces
6675	3200	144	Bimatching	1089/B	Codeforces
6676	2800	144	Kojiro and Furrari	581/E	Codeforces
6677	2000	144	Domain	64/F	Codeforces
6678	3400	143	Exam	1482/H	Codeforces
6679	2800	143	DevOps Best Practices	1267/D	Codeforces
6680	3000	143	Yet Another Partiton Problem	1175/G	Codeforces
6681	3400	143	Radix sum	1103/E	Codeforces
6682	3200	143	Power Substring	913/G	Codeforces
6683	3200	143	Listening to Music	543/E	Codeforces
6684	3300	142	Squares	1495/F	Codeforces
6685	2600	142	Star Trek	1402/C	Codeforces
6686	3200	142	Into Blocks (hard version)	1209/G2	Codeforces
6687	2900	141	Mister B and Astronomers	819/D	Codeforces
6688	2900	141	Two Rooted Trees	403/E	Codeforces
6689	3000	141	Drawing Circles is Fun	372/E	Codeforces
6690	3200	140	Vabank	1482/G	Codeforces
6691	3200	140	Fedya the Potter Strikes Back	1286/E	Codeforces
6692	3100	139	Inversions problem	513/G3	Codeforces
6693	3000	139	Wizards and Roads	167/D	Codeforces
6694	2400	138	Пограничные врата	929/D	Codeforces
6695	3400	138	Island Puzzle	627/F	Codeforces
6696	3100	138	Gena and Second Distance	442/E	Codeforces
6697	9999	137	DAG	1302/B	Codeforces
6698	9999	137	Creeper	1116/D5	Codeforces
6699	2700	137	The Meeting Place Cannot Be Changed	982/F	Codeforces
6700	2800	137	Counting Skyscrapers	335/E	Codeforces
6701	3200	136	Line Distance	1446/F	Codeforces
6702	2100	136	Neural Network Problem	1431/F	Codeforces
6703	3400	136	Iqea	936/E	Codeforces
6704	1800	136	Factorial zeros	162/F	Codeforces
6705	3200	135	Split	1416/E	Codeforces
6706	2900	135	Strange Function	1310/E	Codeforces
6707	2300	135	Suns and Rays	316/F2	Codeforces
6708	1600	135	Lamps in a Line	100/E	Codeforces
6709	2700	135	Vacuum Сleaner	54/E	Codeforces
6710	2900	134	Mahmoud and Ehab and the final stage	862/F	Codeforces
6711	9999	133	Amusement Park	1193/A	Codeforces
6712	2900	132	Kirchhoff's Current Loss	1280/E	Codeforces
6713	2700	132	The Doctor Meets Vader (Hard)	1184/B3	Codeforces
6714	1900	132	Caesar Cipher	470/D	Codeforces
6715	3000	132	Sequence Transformation	280/E	Codeforces
6716	2900	131	Cactus Not Enough	1510/C	Codeforces
6717	3500	131	Euler tour	1053/E	Codeforces
6718	3100	131	Evil	329/E	Codeforces
6719	3000	131	Mrs. Hudson's Pancakes	156/E	Codeforces
6720	3200	130	Inverse Inversions	1540/D	Codeforces
6721	9999	130	Контрольная сумма	1275/E2	Codeforces
6722	2800	130	The Overdosing Ubiquity	869/D	Codeforces
6723	3200	129	Piet's Palette	1344/F	Codeforces
6724	3400	129	Arpa’s abnormal DNA and Mehrdad’s deep interest	741/E	Codeforces
6725	9999	129	The Tournament	391/C3	Codeforces
6726	1800	129	Binary notation	153/B	Codeforces
6727	2700	129	Galaxy Union	48/G	Codeforces
6728	2100	129	Road Problem	45/H	Codeforces
6729	9999	128	Quantum Classification - 1	1356/D1	Codeforces
6730	3300	128	Median Mountain Range	1322/E	Codeforces
6731	2700	128	Divide The Students	1271/F	Codeforces
6732	3200	128	Ants	1007/D	Codeforces
6733	3300	127	One Billion Shades of Grey	1427/G	Codeforces
6734	3500	126	Nora's Toy Boxes	1292/F	Codeforces
6735	3000	126	Little Artem and 2-SAT	641/F	Codeforces
6736	3300	126	Combining Slimes	618/G	Codeforces
6737	3000	126	Matrix	243/E	Codeforces
6738	1800	125	Reformat the String	683/F	Codeforces
6739	1900	125	Military Trainings	207/B2	Codeforces
6740	3400	124	Number Discovery	1242/D	Codeforces
6741	3500	124	The Fair Nut's getting crazy	1083/D	Codeforces
6742	3300	123	Gates to Another World	1556/G	Codeforces
6743	3300	123	AmShZ Farm	1528/F	Codeforces
6744	3200	123	New Year and the Factorisation Collaboration	1091/G	Codeforces
6745	3300	123	New Road Network	1054/G	Codeforces
6746	2800	123	Sequence Recovery	796/F	Codeforces
6747	1800	123	Ali goes shopping	72/E	Codeforces
6748	3300	122	Breadboard Capacity (easy version)	1368/H1	Codeforces
6749	3000	122	Planar Graph	223/E	Codeforces
6750	3300	121	Showing Off	1416/F	Codeforces
6751	2700	121	Another Meme Problem	1194/G	Codeforces
6752	3500	121	Zigzag Game	1147/F	Codeforces
6753	3200	121	Mashmokh's Designed Problem	414/E	Codeforces
6754	3000	120	Median Queries	1526/F	Codeforces
6755	3300	120	Problem from Red Panda	1188/E	Codeforces
6756	3100	120	Santa's Gift	960/H	Codeforces
6757	3200	120	A Preponderant Reunion	933/E	Codeforces
6758	2300	120	Array sorting	130/I	Codeforces
6759	9999	119	Distinguish three-qubit states	1116/B1	Codeforces
6760	3500	119	Epic Convolution	1054/H	Codeforces
6761	2800	119	Future Failure	838/C	Codeforces
6762	3100	119	Mages and Monsters	792/F	Codeforces
6763	9999	118	Quantum Classification - 2	1356/D2	Codeforces
6764	2300	118	Two IP Cameras	1346/G	Codeforces
6765	2600	118	Photographs (II)	690/E2	Codeforces
6766	2300	117	Dogecoin	1488/F	Codeforces
6767	2900	117	Bakery	1468/B	Codeforces
6768	3500	117	Xor on Figures	1270/I	Codeforces
6769	3100	117	Secret Letters	1120/F	Codeforces
6770	3400	117	Test Data Generation	773/F	Codeforces
6771	3000	117	Escaping on Beaveractor	331/D3	Codeforces
6772	1700	117	Military Trainings	207/B3	Codeforces
6773	3500	116	Phoenix and Bits	1515/H	Codeforces
6774	3300	116	Subset Trick	1500/E	Codeforces
6775	9999	116	Quantum Classification - Dataset 3	1357/D1	Codeforces
6776	2600	116	Jumping Transformers	1218/C	Codeforces
6777	2700	116	Berland Traffic	267/C	Codeforces
6778	3200	115	Boring Card Game	1427/F	Codeforces
6779	3500	115	Making Shapes	1290/F	Codeforces
6780	9999	115	The Tournament	391/C2	Codeforces
6781	3500	114	JYPnation	1338/E	Codeforces
6782	2100	114	Maximal Difference	661/D	Codeforces
6783	9999	114	Stock Trading	391/F1	Codeforces
6784	3200	113	Special Edges	1383/F	Codeforces
6785	2000	113	Mobile Communications	926/F	Codeforces
6786	2000	113	Array Sum	661/C	Codeforces
6787	2100	113	Points in triangle	530/H	Codeforces
6788	2100	113	Triskaidekaphobia	345/B	Codeforces
6789	3100	112	Marek and Matching (easy version)	1210/F1	Codeforces
6790	2800	112	Ordering T-Shirts	859/F	Codeforces
6791	3100	112	Slalom	720/D	Codeforces
6792	1900	112	The Fraction	683/G	Codeforces
6793	2700	112	Entertaining Geodetics	105/D	Codeforces
6794	9999	111	Palindromic Hamiltonian Path	1569/F	Codeforces
6795	3200	111	Bitwise Magic	1408/I	Codeforces
6796	3400	111	Fedya the Potter	1098/E	Codeforces
6797	9999	111	Three Trees	391/E2	Codeforces
6798	2000	111	Counting Fridays	345/C	Codeforces
6799	3100	111	Princess and Her Shadow	317/E	Codeforces
6800	3000	111	Privatization	212/A	Codeforces
6801	1800	111	Polynom	100/F	Codeforces
6802	3100	110	Train Tracks	1344/E	Codeforces
6803	3400	110	Swiper, no swiping!	1239/F	Codeforces
6804	3300	110	Sophisticated Device	1060/H	Codeforces
6805	3400	110	Recover a functional graph	739/D	Codeforces
6806	2700	110	R3D3’s Summer Adventure	717/B	Codeforces
6807	2100	109	Number Deletion Game	1431/G	Codeforces
6808	3100	109	Low Budget Inception	1167/G	Codeforces
6809	3400	109	Mini Metro	1007/E	Codeforces
6810	2900	109	Hellish Constraints	138/E	Codeforces
6811	3500	108	Journey	1336/F	Codeforces
6812	3400	108	Happy Cactus	1268/E	Codeforces
6813	3100	108	Show Must Go On	1250/I	Codeforces
6814	9999	108	AI Takeover	1145/G	Codeforces
6815	3300	108	The Fair Nut and Amusing Xor	1083/F	Codeforces
6816	3300	107	Finding satisfactory solutions	1466/H	Codeforces
6817	2700	107	Sasha Circle	549/E	Codeforces
6818	2600	107	Fibonacci Strings	177/G2	Codeforces
6819	2400	107	Fibonacci Strings	177/G1	Codeforces
6820	3300	106	DIY Tree	1556/H	Codeforces
6821	3100	106	Deja Vu	331/E2	Codeforces
6822	3500	105	Communism	1450/G	Codeforces
6823	2600	105	Moonwalk challenge	1045/J	Codeforces
6824	3100	104	ASCII Automata Art	1510/A	Codeforces
6825	3400	104	Fake bullions	804/F	Codeforces
6826	9999	104	On Iteration of One Well-Known Function	396/E	Codeforces
6827	1800	104	Date calculation	130/J	Codeforces
6828	3000	103	1 2 3 4 ...	1474/F	Codeforces
6829	9999	103	Quantum Classification - Dataset 4	1357/D2	Codeforces
6830	3100	103	Football	1240/F	Codeforces
6831	1900	103	Primes in Interval	661/F	Codeforces
6832	2800	103	Shift It!	74/E	Codeforces
6833	2500	102	Row of Models	887/F	Codeforces
6834	2800	102	Design Tutorial: Learn from a Game	472/E	Codeforces
6835	3400	101	The Riddle of the Sphinx	1466/I	Codeforces
6836	3500	101	Range Diameter Sum	1458/F	Codeforces
6837	2800	101	Little Brother	887/E	Codeforces
6838	3100	101	Cutting the Line	594/E	Codeforces
6839	2700	101	Darts	107/E	Codeforces
6840	3400	100	Gregor and the Two Painters	1548/E	Codeforces
6841	2300	100	kotlinkotlinkotlinkotlin...	1211/F	Codeforces
6842	3300	100	Flowers and Chocolate	865/G	Codeforces
6843	3400	100	Caramel Clouds	833/E	Codeforces
6844	3500	100	New Year and Snowy Grid	750/H	Codeforces
6845	9999	100	Lightbulb for Minister	394/E	Codeforces
6846	9999	99	Movie Fan	1297/F	Codeforces
6847	9999	99	Wheels	1170/F	Codeforces
6848	3500	99	Speckled Band	1043/G	Codeforces
6849	2900	99	Cactus to Tree	980/F	Codeforces
6850	3000	99	Maximum Flow	843/E	Codeforces
6851	3100	99	Fox and Meteor Shower	388/E	Codeforces
6852	2800	99	Black and White	48/H	Codeforces
6853	3100	98	Graph Coloring	1499/G	Codeforces
6854	3400	98	Don't Exceed	913/H	Codeforces
6855	3000	98	Circle of Numbers	859/G	Codeforces
6856	3100	98	Intranet of Buses	780/H	Codeforces
6857	2900	98	Sheep	309/E	Codeforces
6858	2800	97	Milutin's Plums	1423/M	Codeforces
6859	3100	97	Sloth	891/D	Codeforces
6860	2200	97	Path Canonization	64/G	Codeforces
6861	9999	96	Quantum Classification - Dataset 5	1357/D3	Codeforces
6862	3200	96	Marek and Matching (hard version)	1210/F2	Codeforces
6863	3200	96	Detect Robots	1056/H	Codeforces
6864	2600	96	Escaping on Beaveractor	331/D2	Codeforces
6865	2900	96	Candy Shop	183/E	Codeforces
6866	3400	95	Passports	1012/F	Codeforces
6867	3200	95	Byteland coins	756/E	Codeforces
6868	3300	94	Strange Sort	1558/F	Codeforces
6869	3500	94	Forest Fires	1086/F	Codeforces
6870	3200	94	Hongcow Draws a Circle	744/D	Codeforces
6871	3400	93	Phoenix and Diamonds	1515/I	Codeforces
6872	3400	93	So Mean	1299/E	Codeforces
6873	3000	93	Knightmare (hard)	1201/E2	Codeforces
6874	2800	93	Marmots (hard)	802/F	Codeforces
6875	2500	93	Clever Fat Rat	185/C	Codeforces
6876	2800	92	Cron	698/E	Codeforces
6877	3100	92	To Hack or not to Hack	662/E	Codeforces
6878	3200	92	Armistice Area Apportionment	645/G	Codeforces
6879	9999	92	Three Trees	391/E1	Codeforces
6880	2300	92	Table Bowling	64/H	Codeforces
6881	2500	92	Tram	39/I	Codeforces
6882	2600	92	Helper	33/E	Codeforces
6883	3300	91	Kevin and Grid	1392/I	Codeforces
6884	9999	91	Шардирование постов	1275/F	Codeforces
6885	3400	91	Rap God	786/D	Codeforces
6886	3200	91	Hongcow Masters the Cyclic Shift	744/E	Codeforces
6887	2500	91	Colored Jenga	424/E	Codeforces
6888	3100	91	New Year Cactus	379/G	Codeforces
6889	3400	90	Stairs	1553/I	Codeforces
6890	3300	90	...Dary!	696/F	Codeforces
6891	2300	90	Pairwise Sums	470/F	Codeforces
6892	2600	90	Interesting Sequence	40/D	Codeforces
6893	3000	89	Tree and Table	251/E	Codeforces
6894	2400	89	Inverse Function	39/G	Codeforces
6895	3500	88	Stock Exchange	1178/H	Codeforces
6896	3200	88	JS Minification	1089/J	Codeforces
6897	3500	88	Chip Game	1033/G	Codeforces
6898	2900	87	Mixture	1386/B	Codeforces
6899	3400	87	Ember and Storm's Tree Game	914/H	Codeforces
6900	2900	87	Restore the Tree	871/E	Codeforces
6901	3200	87	New Year Running	500/G	Codeforces
6902	2700	87	Vasily the Bear and Painting Square	336/E	Codeforces
6903	2700	87	Sleeping	113/E	Codeforces
6904	3500	86	XOR-ranges	1456/E	Codeforces
6905	3300	86	Dreamoon Loves AA	1329/E	Codeforces
6906	2900	86	Knightmare (easy)	1201/E1	Codeforces
6907	3500	86	Holy Diver 	1148/H	Codeforces
6908	2100	86	Levenshtein distance	530/G	Codeforces
6909	2100	86	Jumping frogs	530/F	Codeforces
6910	3500	85	Hopping Around the Array 	1523/H	Codeforces
6911	3000	85	Alice and the Cactus	1236/F	Codeforces
6912	3300	84	Permutation Concatenation	1266/G	Codeforces
6913	3300	84	Moving Walkways	1209/H	Codeforces
6914	2700	84	Optimizer	1156/G	Codeforces
6915	3200	84	Verifying Kingdom	772/E	Codeforces
6916	3300	84	Messages on a Tree	725/G	Codeforces
6917	3100	84	Dreamoon and Notepad	477/E	Codeforces
6918	2300	84	Hamming Distance	470/G	Codeforces
6919	1900	84	Oil	72/F	Codeforces
6920	2500	84	Goats and Wolves	45/F	Codeforces
6921	3300	83	Johnny and New Toy	1361/F	Codeforces
6922	2800	83	Greedy Petya	290/F	Codeforces
6923	3100	82	DZY Loves Bridges	446/E	Codeforces
6924	9999	81	Dijkstra	1302/D	Codeforces
6925	3200	81	Alesya and Discrete Math	1179/E	Codeforces
6926	2700	81	Perfectionist Arkadiy	774/G	Codeforces
6927	2400	81	Feed the Golorp	409/I	Codeforces
6928	2900	81	Deja Vu	331/E1	Codeforces
6929	3400	80	Organizing a Music Festival	1552/I	Codeforces
6930	3500	80	Breadboard Capacity (hard version)	1368/H2	Codeforces
6931	2700	80	Pens And Days Of Week	774/F	Codeforces
6932	1800	80	Name the album	100/G	Codeforces
6933	2500	79	Painting Numbers	1488/G	Codeforces
6934	1900	79	Exchange of Books	683/H	Codeforces
6935	3500	78	School Clubs	1479/E	Codeforces
6936	3500	77	Lost Nodes	1534/H	Codeforces
6937	2900	77	Roads	1402/B	Codeforces
6938	2800	77	Visible Black Areas	962/G	Codeforces
6939	3500	76	A Convex Game	1434/E	Codeforces
6940	9999	76	Quantum Classification - Dataset 6	1357/D4	Codeforces
6941	3100	76	Projectors	1250/K	Codeforces
6942	3500	76	Ж-function	1098/F	Codeforces
6943	3400	76	Shady Lady	1045/F	Codeforces
6944	3500	76	Cut the pie	799/G	Codeforces
6945	2300	76	Composing Of String	774/I	Codeforces
6946	3000	76	Soap Time! - 2	185/E	Codeforces
6947	3500	75	Optimal Encoding	1508/F	Codeforces
6948	3500	75	Cupboards Jumps	1500/F	Codeforces
6949	3300	75	Nezzar and Tournaments	1477/E	Codeforces
6950	3300	75	Seollal	1284/G	Codeforces
6951	3500	75	Cursor Distance	1246/F	Codeforces
6952	3400	75	Beauty of a Permutation	1205/F	Codeforces
6953	3100	75	Grid Sort	1044/E	Codeforces
6954	2300	75	Little Artem and Graph	641/G	Codeforces
6955	3100	75	String Theory	269/E	Codeforces
6956	3500	74	Nezzar and Chocolate Bars	1477/F	Codeforces
6957	3200	74	Planar Perimeter	1242/E	Codeforces
6958	3100	74	Heidi Learns Hashing (Hard)	1184/A3	Codeforces
6959	2600	74	Recover Polygon (hard)	690/B3	Codeforces
6960	2200	74	Caesar Cipher	153/C	Codeforces
6961	2200	74	Help King	98/B	Codeforces
6962	9999	73	Quantum Classification - Dataset 7	1357/D5	Codeforces
6963	3200	73	Ancient civilizations	1045/E	Codeforces
6964	3000	73	Bob and stages	852/H	Codeforces
6965	2900	73	Birthday	128/E	Codeforces
6966	3000	72	Conference Problem	1250/D	Codeforces
6967	3400	72	Upside Down	917/E	Codeforces
6968	3100	72	Duck Hunt	542/B	Codeforces
6969	2400	72	Alternative Reality	119/E	Codeforces
6970	2800	72	Snow sellers	48/F	Codeforces
6971	3400	71	Harder Satisfiability	1089/H	Codeforces
6972	3300	71	Hex Dyslexia	865/E	Codeforces
6973	1800	71	The Beaver's Problem - 3	207/D1	Codeforces
6974	3000	71	Martian Colony	154/E	Codeforces
6975	3300	70	What a Reversal	1530/G	Codeforces
6976	3500	70	My Beautiful Madness	1464/F	Codeforces
6977	3500	69	Rain Protection	1071/E	Codeforces
6978	2200	69	Chain Letter	345/D	Codeforces
6979	2700	69	Cube Snake	198/D	Codeforces
6980	2700	69	Lucky Interval	109/E	Codeforces
6981	3500	68	Balance the Cards	1503/F	Codeforces
6982	3500	68	Cheat and Win	1439/E	Codeforces
6983	2900	68	Function Composition	1218/H	Codeforces
6984	3100	68	Parametric Circulation	925/F	Codeforces
6985	3200	68	Expression Queries	730/L	Codeforces
6986	2500	68	Emperor's Problem	46/G	Codeforces
6987	3300	67	Origami	1381/E	Codeforces
6988	9999	67	Keep talking and nobody explodes -- easy	1302/F	Codeforces
6989	3400	67	Strange device	1158/E	Codeforces
6990	9999	67	Hessenberg matrix	1116/D6	Codeforces
6991	3400	67	Mateusz and an Infinite Sequence	1097/H	Codeforces
6992	3000	66	Lookup Tables	1423/I	Codeforces
6993	3500	66	Slime and Sequences (Hard Version)	1349/F2	Codeforces
6994	3300	66	El Toll Caves	868/G	Codeforces
6995	3400	66	Long number	756/F	Codeforces
6996	2000	66	The Beaver's Problem - 3	207/D2	Codeforces
6997	3500	65	Finding the Vertex	1444/E	Codeforces
6998	2900	65	Viruses	1387/C	Codeforces
6999	2600	65	The very same Munchhausen	1120/E	Codeforces
7000	3100	65	Distance Sum	1089/D	Codeforces
7001	3400	65	Negative Time Summation	1078/E	Codeforces
7002	3300	65	The Films	1017/H	Codeforces
7003	9999	65	Sorting Permutations	398/E	Codeforces
7004	1800	65	Brackets	162/J	Codeforces
7005	2400	65	Sort the Table	64/I	Codeforces
7006	3100	64	Homework	720/C	Codeforces
7007	2000	64	Divisibility Check	661/E	Codeforces
7008	2900	64	Security System	79/E	Codeforces
7009	9999	63	Submatrices	1533/H	Codeforces
7010	3500	63	Balanced Distribution	1237/G	Codeforces
7011	3100	63	Ber Patio	730/F	Codeforces
7012	1800	63	Alternating case	162/H	Codeforces
7013	2000	63	Date Change	153/D	Codeforces
7014	3300	62	Multithreading (Hard Version)	1450/H2	Codeforces
7015	3500	62	Palindromic Magic	1081/H	Codeforces
7016	3300	62	Bear and Isomorphic Points	771/F	Codeforces
7017	3200	62	Roads Orientation Problem	730/K	Codeforces
7018	2900	62	Heaven Tour	187/E	Codeforces
7019	2800	61	BubbleReactor	1218/A	Codeforces
7020	3500	61	Red Blue Tree	1208/H	Codeforces
7021	3200	61	Minimal Subset Difference	924/F	Codeforces
7022	9999	61	Stock Trading	391/F2	Codeforces
7023	2700	59	MUH and Lots and Lots of Segments	471/E	Codeforces
7024	3200	59	An easy problem about trees	457/F	Codeforces
7025	3400	58	Tokitsukaze and Powers	1190/F	Codeforces
7026	3400	58	Balls and Pockets	1060/G	Codeforces
7027	9999	58	Stock Trading	391/F3	Codeforces
7028	2000	58	The Beaver's Problem - 3	207/D3	Codeforces
7029	9999	57	Biome Map	1533/G	Codeforces
7030	3200	57	Help BerLine	1267/H	Codeforces
7031	2700	57	Hyperspace Jump (hard)	958/D2	Codeforces
7032	2700	57	Tree of Life (medium)	690/F2	Codeforces
7033	2600	57	Testing	39/K	Codeforces
7034	3500	56	Cubic Lattice	1375/I	Codeforces
7035	3500	56	Blocks and Sensors	1320/F	Codeforces
7036	9999	56	Контрольная сумма	1275/E3	Codeforces
7037	3500	56	Mateusz and Escape Room	1210/G	Codeforces
7038	9999	56	Graph Decomposition	1170/G	Codeforces
7039	2100	56	Battleship	100/H	Codeforces
7040	2900	56	Fire and Ice	89/E	Codeforces
7041	3200	55	Hard Optimization	1510/H	Codeforces
7042	2900	55	Harry Potter and Moving Staircases	65/E	Codeforces
7043	3500	54	BubbleSquare Tokens	1423/N	Codeforces
7044	9999	54	M-numbers	1297/G	Codeforces
7045	3400	54	Pisces	1023/G	Codeforces
7046	2900	54	Icicles	955/E	Codeforces
7047	3300	54	Cyclic Cipher	901/E	Codeforces
7048	2100	54	Euclidean Distance	153/E	Codeforces
7049	2900	54	Pills	126/E	Codeforces
7050	2800	54	DravDe saves the world	28/E	Codeforces
7051	3400	53	Turing's Award	1530/H	Codeforces
7052	2600	53	Rogue-like Game	1431/H	Codeforces
7053	2500	53	Combostone	1090/G	Codeforces
7054	3300	53	Tanya is 5!	737/E	Codeforces
7055	2300	53	Perse-script	72/D	Codeforces
7056	2900	52	Linearization	1090/H	Codeforces
7057	1600	52	The Beaver's Problem - 3	207/D5	Codeforces
7058	2100	52	Game with Two Trees	207/C1	Codeforces
7059	2900	52	Plane of Tanks	73/F	Codeforces
7060	3500	51	Boboniu and Banknote Collection	1394/E	Codeforces
7061	3500	51	Kuroni the Private Tutor	1305/H	Codeforces
7062	2500	51	King's Path	1211/G	Codeforces
7063	3300	51	Dirty plates	737/F	Codeforces
7064	3000	51	Flow Optimality	457/E	Codeforces
7065	2000	51	Truncatable primes	162/I	Codeforces
7066	3100	50	Array Covering	720/F	Codeforces
7067	1600	50	The Beaver's Problem - 3	207/D7	Codeforces
7068	2100	50	The Beaver's Problem - 3	207/D4	Codeforces
7069	2200	50	INI-file	72/B	Codeforces
7070	3100	49	Satellites	856/E	Codeforces
7071	3000	49	Gnomes of Might and Magic	175/F	Codeforces
7072	3500	48	Growing flowers	1423/G	Codeforces
7073	3000	48	To Play or not to Play	856/F	Codeforces
7074	2300	48	The Beaver's Problem - 3	207/D8	Codeforces
7075	3000	48	Help Greg the Dwarf 2	142/E	Codeforces
7076	9999	47	Building Skyscrapers	1192/A	Codeforces
7077	9999	47	Not A, not B or not C?	1116/B2	Codeforces
7078	3400	47	Lada Malina	853/E	Codeforces
7079	2900	47	Contact	68/E	Codeforces
7080	2700	47	BerPaint	44/F	Codeforces
7081	2700	46	5G Antenna Towers	1423/E	Codeforces
7082	3500	46	Four Stones	1276/E	Codeforces
7083	3000	46	Algoland and Berland	1070/M	Codeforces
7084	3500	46	Jellyfish Nightmare	1055/G	Codeforces
7085	2100	46	The Beaver's Problem - 3	207/D6	Codeforces
7086	3100	46	Polycarpus and Tasks	164/E	Codeforces
7087	3500	45	Long Recovery	1446/E	Codeforces
7088	1800	45	The Beaver's Problem - 3	207/D9	Codeforces
7089	2900	45	Petya and Rectangle	111/E	Codeforces
7090	3500	44	Slime and Hats	1349/E	Codeforces
7091	3500	44	Assigning Fares	1322/F	Codeforces
7092	3200	44	Public Service	923/F	Codeforces
7093	2100	44	The Beaver's Problem - 3	207/D10	Codeforces
7094	9999	43	Amazing bitset	1302/E	Codeforces
7095	2200	43	Suffix Subgroup	345/G	Codeforces
7096	3000	43	Spider	223/D	Codeforces
7097	3500	42	Rotary Laser Lock	1428/H	Codeforces
7098	3400	42	Red-Blue Graph	1266/H	Codeforces
7099	2400	42	Interval Coloring	100/J	Codeforces
7100	2800	41	Fiber Shape	1510/F	Codeforces
7101	9999	41	Root of quantum Fourier transform	1357/E2	Codeforces
7102	3200	41	Math, math everywhere	765/G	Codeforces
7103	2200	41	Game with Two Trees	207/C2	Codeforces
7104	3500	40	Fly Around the World	1517/H	Codeforces
7105	3500	40	Ruler Of The Zoo	1491/I	Codeforces
7106	3400	40	Differentiating Games	1442/F	Codeforces
7107	3400	40	Bad Cryptography	1310/F	Codeforces
7108	2000	40	Non-decimal sum	162/G	Codeforces
7109	3000	39	Nastya and Bees	1340/E	Codeforces
7110	3400	39	Intergalactic Sliding Puzzle	1280/F	Codeforces
7111	3300	39	Egg Roulette	865/F	Codeforces
7112	3200	39	Graphic Settings	863/G	Codeforces
7113	2800	39	Expected Earnings	838/F	Codeforces
7114	2700	39	Game with Two Trees	207/C3	Codeforces
7115	3500	38	Strange Covering	1470/F	Codeforces
7116	3500	38	Spiderweb Trees	1326/G	Codeforces
7117	2400	38	Rotate Matrix	661/H	Codeforces
7118	3500	37	Prison Break	1427/H	Codeforces
7119	3000	37	Guarding warehouses	1218/B	Codeforces
7120	2200	37	Hungarian Notation	661/G	Codeforces
7121	3500	36	Dušan's Railway	1423/C	Codeforces
7122	3300	36	Astronomy	949/F	Codeforces
7123	3100	36	Cipher	720/E	Codeforces
7124	2500	36	Different variables	530/I	Codeforces
7125	3500	35	Wakanda Forever	1423/A	Codeforces
7126	2700	35	Superstitions Inspection	345/F	Codeforces
7127	3200	34	Chess Rush	1403/C	Codeforces
7128	2700	34	Black Cat Rush	345/E	Codeforces
7129	9999	33	Excursions	1533/I	Codeforces
7130	2800	33	Build From Suffixes	1488/H	Codeforces
7131	9999	33	Longest Saw	1170/H	Codeforces
7132	3200	33	Tree of Life (hard)	690/F3	Codeforces
7133	2900	31	Pac-Man 2.0	1346/I	Codeforces
7134	3200	31	The Moral Dilemma	993/F	Codeforces
7135	3100	31	Death Stars (hard)	958/A3	Codeforces
7136	3500	30	AquaMoon and Potatoes	1545/F	Codeforces
7137	2900	30	Cyclic Shifts	1431/I	Codeforces
7138	2700	30	Game with Segments	1346/H	Codeforces
7139	3400	29	Geolocation	1220/G	Codeforces
7140	3100	29	Road Repair in Treeland	1211/H	Codeforces
7141	3500	28	Tasty Dishes	1540/E	Codeforces
7142	3000	28	The Hero with Bombs	683/J	Codeforces
7143	3500	27	AquaMoon and Time Stop (hard version)	1545/E2	Codeforces
7144	3200	27	Heidi and the Turing Test (Hard)	1184/C3	Codeforces
7145	3000	26	Mission Possible	1252/I	Codeforces
7146	3000	26	Alpha planetary system	1218/G	Codeforces
7147	9999	26	Scissors and Tape	1193/C	Codeforces
7148	3100	26	Parallel Universes (Hard)	1184/D2	Codeforces
7149	2500	26	Loader	683/I	Codeforces
7150	9999	25	Xor-quiz	1566/H	Codeforces
7151	3500	25	AquaMoon and Time Stop (easy version)	1545/E1	Codeforces
7152	3400	23	Zero-XOR Array	1431/J	Codeforces
7153	3100	23	Captain of Knights	1425/C	Codeforces
7154	9999	23	Good Subsets	1170/I	Codeforces
7155	9999	22	Keep talking and nobody explodes -- medium	1302/G	Codeforces
7156	3100	21	Demonic Invasion	1488/I	Codeforces
7157	3000	21	Unusual Graph	1211/I	Codeforces
7158	9999	20	Falling Blocks	1297/I	Codeforces
7159	9999	20	Paint the String	1297/H	Codeforces
7160	3100	18	Does anyone else hate the wind?	1423/D	Codeforces
7161	9999	16	Pawns	1533/J	Codeforces
7162	3100	16	Flower Shop	1488/J	Codeforces
7163	9999	8	Keep talking and nobody explodes -- hard	1302/J	Codeforces
7164	9999	8	Who needs suffix structures?	1302/H	Codeforces
7165	9999	1	Deja vu	1302/I	Codeforces
7166	2900	1	BuberPool Taxi Optimization	927/A	Codeforces
7167	9999	0	Collaboration	1160/A2	Codeforces
7168	3200	0	Labyrinth-14	921/14	Codeforces
7169	3200	0	Labyrinth-13	921/13	Codeforces
7170	3200	0	Labyrinth-12	921/12	Codeforces
7171	3200	0	Labyrinth-11	921/11	Codeforces
7172	3200	0	Labyrinth-10	921/10	Codeforces
7173	3200	0	Labyrinth-9	921/09	Codeforces
7174	3200	0	Labyrinth-8	921/08	Codeforces
7175	3200	0	Labyrinth-7	921/07	Codeforces
7176	3200	0	Labyrinth-6	921/06	Codeforces
7177	3200	0	Labyrinth-5	921/05	Codeforces
7178	3200	0	Labyrinth-4	921/04	Codeforces
7179	3200	0	Labyrinth-3	921/03	Codeforces
7180	3200	0	Labyrinth-2	921/02	Codeforces
7181	3200	0	Labyrinth-1	921/01	Codeforces
7182	2900	0	University Schedule	775/A	Codeforces
7183	9999	0	Prefix Product Sequence	488/E	Codeforces
7184	9999	0	ACM (ACronymMaker)	ACMAKER	Codeforces
7185	9999	0	Alphacode	ACODE	Codeforces
7186	9999	0	Assignments	ASSIGN	Codeforces
7187	9999	0	Tower of Babylon	BABTWR	Codeforces
7188	9999	0	Philosophers Stone	BYTESM2	Codeforces
7189	9999	0	Bytelandian gold coins	COINS	Codeforces
7190	9999	0	Summing to a Square Prime	CZ_PROB1	Codeforces
7191	9999	0	Tiling a Grid With Dominoes	GNY07H	Codeforces
7192	9999	0	BLAST	MBLAST	Codeforces
7193	9999	0	Coins Game	MCOINS	Codeforces
7194	9999	0	Rectangles Perimeter	MMAXPER	Codeforces
7195	9999	0	Party Schedule	PARTY	Codeforces
7196	9999	0	Permutations	PERMUT1	Codeforces
7197	9999	0	Piggy-Bank	PIGBANK	Codeforces
7198	9999	0	Rent your airplane and make money	RENT	Codeforces
7199	9999	0	Roads	ROADS	Codeforces
7200	9999	0	Candy	SAMER08C	Codeforces
7201	9999	0	DNA Sequences	SAMER08D	Codeforces
7202	9999	0	Feynman	SAMER08F	Codeforces
7203	9999	0	Scuba diver	SCUBADIV	Codeforces
7204	9999	0	Help the soldier	SOLDIER	Codeforces
7205	9999	0	Sums in a Triangle	SUMITR	Codeforces
7206	9999	0	Trip	TRIP	Codeforces
7207	9999	0	Treats for the Cows	TRT	Codeforces
7208	9999	0	Two Ends	TWENDS	Codeforces
7209	9999	0	Vertex Cover	PT07X	Codeforces
7210	9999	0	Aibohphobia	AIBOHP	Codeforces
7211	9999	0	Black or White	BORW	Codeforces
7212	9999	0	Fool the Police	FPOLICE	Codeforces
7213	9999	0	Palindrome 2000	IOIPALIN	Codeforces
7214	9999	0	Chop Ahoy! Revisited!	ANARC05H	Codeforces
7215	9999	0	Seinfeld	ANARC09A	Codeforces
7216	9999	0	Cross-country	CRSCNTRY	Codeforces
7217	9999	0	In Danger	DANGER	Codeforces
7218	9999	0	Distinct Subsequences	DSUBSEQ	Codeforces
7219	9999	0	Edit distance	EDIST	Codeforces
7220	9999	0	Fishmonger	FISHER	Codeforces
7221	9999	0	Adjacent Bit Counts	GNYR09F	Codeforces
7222	9999	0	The Double HeLiX	ANARC05B	Codeforces
7223	9999	0	Pocket Money	LISA	Codeforces
7224	9999	0	LATGACH3	M3TILE	Codeforces
7225	9999	0	Mixtures	MIXTURES	Codeforces
7226	9999	0	No Change	NOCHANGE	Codeforces
7227	9999	0	Square Brackets	SQRBR	Codeforces
7228	9999	0	Chocolate	CHOCOLA	Codeforces
7229	9999	0	Bee Walk	MBEEWALK	Codeforces
7230	9999	0	Sweet and Sour Rock	ROCK	Codeforces
7231	9999	0	Activities	ACTIV	Codeforces
7232	9999	0	Martian Mining	MARTIAN	Codeforces
7233	9999	0	Phidias	PHIDIAS	Codeforces
7234	9999	0	Sum of Digits	CPCRC1C	Codeforces
7235	9999	0	Pilots	MPILOT	Codeforces
7236	9999	0	Tri graphs	ACPC10D	Codeforces
7237	9999	0	Training for final	TRIKA	Codeforces
7238	9999	0	Easy Longest Increasing Subsequence	ELIS	Codeforces
7239	9999	0	Magic Grid	AMR11A	Codeforces
7240	9999	0	Building Bridges	BRIDGE	Codeforces
7241	9999	0	Non-Decreasing Digits	NY10E	Codeforces
7242	9999	0	Blueberries	RPLB	Codeforces
7243	9999	0	DIE HARD	DIEHARD	Codeforces
7244	9999	0	Save Thy Toys	DCEPC501	Codeforces
7245	9999	0	0110SS	IWGBS	Codeforces
7246	9999	0	Hotels Along the Croatian Coast	HOTELS	Codeforces
7247	9999	0	COSTLY CHESS	CCHESS	Codeforces
7248	9999	0	MAXIMUM WOOD CUTTER	MAXWOODS	Codeforces
7249	9999	0	Aliens at the train	ALIEN	Codeforces
7250	9999	0	The Great Ball	BYTESE2	Codeforces
7251	9999	0	XOR Maximization	XMAX	Codeforces
7252	9999	0	The Knapsack Problem	KNAPSACK	Codeforces
7253	9999	0	Wachovia Bank	WACHOVIA	Codeforces
7254	9999	0	Histogram	HIST2	Codeforces
7255	9999	0	ABC Path	ABCPATH	Codeforces
7256	9999	0	Cleaning Robot	CLEANRBT	Codeforces
7257	9999	0	Can you answer these queries I	GSS1	Codeforces
7258	9999	0	Princess Farida	FARIDA	Codeforces
7259	9999	0	Longest Common Substring	LCS	Codeforces
7260	9999	0	Buying Apples!	ABA12C	Codeforces
7261	9999	0	Largest Rectangle in a Histogram	HISTOGRA	Codeforces
7262	9999	0	I-Keyboard	IKEYB	Codeforces
7263	9999	0	Card Sorting	MCARDS	Codeforces
7264	9999	0	Point Connection Game in a Circle	MCIRGAME	Codeforces
7265	9999	0	Decoding Morse Sequences	MORSE	Codeforces
7266	9999	0	Counting The Way of Bracket Replacement	MREPLBRC	Codeforces
7267	9999	0	String problem	MSTRING	Codeforces
7268	9999	0	Partition	PARTIT	Codeforces
7269	9999	0	Particular Palindromes	PARTPALI	Codeforces
7270	9999	0	Balancing the Stone	SCALES	Codeforces
7271	9999	0	String Shuffle	SSHUFFLE	Codeforces
7272	9999	0	Street	STREET	Codeforces
7273	9999	0	Three-coloring of binary trees	THREECOL	Codeforces
7274	9999	0	Up Subsequence	UPSUB	Codeforces
7275	9999	0	Dab of Backpack	BACKPACK	Codeforces
7276	9999	0	Dice	AE2A	Codeforces
7277	9999	0	JEDNAKOST	JEDNAKOS	Codeforces
7278	9999	0	Feline Olympics - Mouseball	MBALL	Codeforces
7279	9999	0	Catch Fish	MFISH	Codeforces
7280	9999	0	Tourist	TOURIST	Codeforces
7281	9999	0	Con-Junctions	VOCV	Codeforces
7282	9999	0	Yoda Goes Palindromic !	YODA	Codeforces
7283	9999	0	Esferas	PRUBALL	Codeforces
7284	9999	0	Temptation Island	TEMPTISL	Codeforces
7285	9999	0	Interesting number	INUMBER	Codeforces
7286	9999	0	Sorting is not easy	LSORT	Codeforces
7287	9999	0	Musketeers	MUSKET	Codeforces
7288	9999	0	The Courier	COURIER	Codeforces
7289	9999	0	Deliver pizza	DP	Codeforces
7290	9999	0	Counting K-Rectangle	KRECT	Codeforces
7291	9999	0	Making A Budget	MKBUDGET	Codeforces
7292	9999	0	Menu	MENU	Codeforces
7293	9999	0	Nested Dolls	MDOLLS	Codeforces
7294	9999	0	NERED	MNERED	Codeforces
7295	9999	0	Another Tree Problem 	MTREE	Codeforces
7296	9999	0	Another Box Problem	QCJ2	Codeforces
7297	9999	0	BATMAN1	BAT1	Codeforces
7298	9999	0	BATMAN2	BAT2	Codeforces
7299	9999	0	Leaves	NKLEAVES	Codeforces
7300	9999	0	Problem 3	NOVICE43	Codeforces
7301	9999	0	BATMAN3	BAT3	Codeforces
7302	9999	0	Mobile Service	SERVICE	Codeforces
7303	9999	0	Rain	RAIN3	Codeforces
7304	9999	0	Counting binary strings	STRCOUNT	Codeforces
7305	9999	0	1807	SMILEY1807	Codeforces
7306	9999	0	Land Acquisition	ACQUIRE	Codeforces
7307	9999	0	Dancing Cows	DCOWS	Codeforces
7308	9999	0	Wooden Sticks	MSTICK	Codeforces
7309	9999	0	Another Longest Increasing Subsequence Problem	LIS2	Codeforces
7310	9999	0	Ra-One Numbers	RAONE	Codeforces
7311	9999	0	G-One Numbers	GONE	Codeforces
7312	9999	0	LUCIFER Number	LUCIFER	Codeforces
7313	9999	0	Quadratic Equation	QUADRATE	Codeforces
7314	9999	0	Candy (Again)	FCANDY	Codeforces
7315	9999	0	Slikar	SLIKAR	Codeforces
7316	9999	0	String reduction	STREDUCE	Codeforces
7317	9999	0	Paid Roads	MMINPAID	Codeforces
7318	9999	0	Common Subsequences	CSUBSEQS	Codeforces
7319	9999	0	Even Palindrome	PALDR	Codeforces
7320	9999	0	The Secret of an Aerolite	AEROLITE	Codeforces
7321	9999	0	Minus Operation	MINUS	Codeforces
7322	9999	0	Partition the sequence	SEQPAR	Codeforces
7323	9999	0	Traveling by Stagecoach	TRSTAGE	Codeforces
7324	9999	0	Maximum Triangle Area	MTRIAREA	Codeforces
7325	9999	0	Polygon	MPOLY	Codeforces
7326	9999	0	Help Bob	HELPBOB	Codeforces
7327	9999	0	Many polygons	NGON	Codeforces
7328	9999	0	COUNT PAREN	PAREN	Codeforces
7329	9999	0	Bribe the Prisoners	GCJ1C09C	Codeforces
7330	9999	0	Car with powers	POWERCAR	Codeforces
7331	9999	0	Make Psycho	PSYCHO3	Codeforces
7332	9999	0	Most Servings Meal	MKUHAR	Codeforces
7333	9999	0	Building Bridges(HARD)	BRDGHRD	Codeforces
7334	9999	0	Probablistic OR	PROBOR	Codeforces
7335	9999	0	IOI07 Miners	NKMINERS	Codeforces
7336	9999	0	Dynamic LCA	DYNALCA	Codeforces
7337	9999	0	Greedy Hydra	DRAGON	Codeforces
7338	9999	0	Ada and Game	ADAGAME	Codeforces
7339	9999	0	FOODIE	FOODIE	Codeforces
7340	9999	0	Re-Arrange II	MAIN112	Codeforces
7341	9999	0	Boy Scouts	BOYSCOUT	Codeforces
7342	9999	0	Let go to the movies	ANARC07G	Codeforces
7343	9999	0	Who is The Boss	VBOSS	Codeforces
7344	9999	0	Drop the Triples	DTT	Codeforces
7345	9999	0	Najkraci	NAJKRACI	Codeforces
7346	9999	0	Convex Polygons	CVXPOLY	Codeforces
7347	9999	0	Trees Again	CNTTREE	Codeforces
7348	9999	0	Fatawy	FATAWY	Codeforces
7349	9999	0	Chocolate	SOCOLA	Codeforces
7350	9999	0	BATMAN4	BAT4	Codeforces
7351	9999	0	Bit by Bit	DCEPC807	Codeforces
7352	9999	0	Dominoes	DOMINOES	Codeforces
7353	9999	0	INVITATION FOR TECHOFES	TECHOFES	Codeforces
7354	9999	0	Lov-e Pap Pap-e Polti	LPPP	Codeforces
7355	9999	0	Another Assignment Problem	ASSIGN4	Codeforces
7356	9999	0	Balanced Numbers	BALNUM	Codeforces
7357	9999	0	DIVSEQ	DIVSEQ	Codeforces
7358	9999	0	Ingredients	INGRED	Codeforces
7359	9999	0	Namit In Trouble	NGIRL	Codeforces
7360	9999	0	DNA Laboratory	DNALAB	Codeforces
7361	9999	0	Huffman´s Greed	GREEDULM	Codeforces
7362	9999	0	Connect Line Segments	LINE	Codeforces
7363	9999	0	IPL - CRICKET TOURNAMENT	IPL1	Codeforces
7364	9999	0	JUMPING DORA	JUMPDORA	Codeforces
7365	9999	0	GO FOR DIAMONDS	GO4DIMON	Codeforces
7366	9999	0	Subsequence Problem	SUBP	Codeforces
7367	9999	0	Paint templates	PAINTTMP	Codeforces
7368	9999	0	The  Top-Code	TOPCODE	Codeforces
7369	9999	0	Bracket Sequence	LEXBRAC	Codeforces
7370	9999	0	Incrementing The Integer	ININT	Codeforces
7371	9999	0	Mystic  Craft	MYSTIC	Codeforces
7372	9999	0	Summing Slopes	SUMSLOPE	Codeforces
7373	9999	0	Longest Common Subsequence	LCS0	Codeforces
7374	9999	0	Segment Tree	SEGTREE	Codeforces
7375	9999	0	Catch Sheep	XYYHHTT	Codeforces
7376	9999	0	Yet Another Assignment Problem	ASSIGN5	Codeforces
7377	9999	0	Lannister Army	LARMY	Codeforces
7378	9999	0	Polycarp's Masterpiece	589/C	Codeforces
7379	9999	0	Dynamic Assignment Problem	DAP	Codeforces
7380	9999	0	#dynamic-programming&nbsp;(168)</span>	tag	Codeforces
7381	9999	0	Ada and Zoo	ADAZOO	Codeforces
7382	9999	0	Bytelandian gold coins	COINS	Codeforces
7383	9999	0	Ws Cipher	WSCIPHER	Codeforces
7384	9999	0	MODIFY SEQUENCE	NITK06	Codeforces
7385	9999	0	Treats for the Cows	TRT	Codeforces
7386	9999	0	Wachovia Bank	WACHOVIA	Codeforces
7387	9999	0	Super Over	SUPOVR	Codeforces
7388	9999	0	Minimum Number	MINNUM	Codeforces
7389	9999	0	SOLDIERS	SOLDIERS	Codeforces
7390	9999	0	PATHS	WAYS	Codeforces
7391	9999	0	Lottery	589/I	Codeforces
7392	9999	0	Can you play carrom !!!	CARRHIM	Codeforces
7393	9999	0	Cleaner Robot	589/J	Codeforces
7394	9999	0	Troops of Sand Monsters	TROOPS	Codeforces
7395	9999	0	Email Aliases	589/A	Codeforces
7396	9999	0	Bombing	BOMB2	Codeforces
7397	9999	0	Boulevard	589/D	Codeforces
7398	9999	0	PLAHTE	PLAHTE	Codeforces
7399	9999	0	FLING1	FLING1	Codeforces
7400	9999	0	CUBE ROOT	CUBEROO2	Codeforces
7401	9999	0	THE N WITTY FRIENDS	WITTY	Codeforces
7402	9999	0	BLOCK_D SOLVER	BLOCK_D	Codeforces
7403	9999	0	BF_MODULUS	MODULUS2	Codeforces
7404	9999	0	ALIGNSUBTRACT	PROBLEM5	Codeforces
7405	9999	0	A Kleene Implementation	BFREGEX1	Codeforces
7406	9999	0	Playing With Balls	IITKWPCN	Codeforces
7407	9999	0	Why this kolaveri di	WTK	Codeforces
7408	9999	0	FANCY NUMBERS	FANCY	Codeforces
7409	9999	0	Play with Dates	CODEIT03	Codeforces
7410	9999	0	HOW MANY GAMES	GAMES	Codeforces
7411	9999	0	Touch of Venom	VENOM	Codeforces
7412	9999	0	N-Factorful	NFACTOR	Codeforces
7413	9999	0	Prime Generator	PRIME1	Codeforces
7414	9999	0	Roommate Agreement	CRAN02	Codeforces
7415	9999	0	Prime or Not	PON	Codeforces
7416	9999	0	PRIMITIVEROOTS	PROBLEM4	Codeforces
7417	9999	0	GRADE POINT AVERAGE	GPA1	Codeforces
7418	9999	0	EVEN COUNT	GEEKOUNT	Codeforces
7419	9999	0	Azooz	AZOOZ	Codeforces
7420	9999	0	Catch Me If You Can 	CMIYC	Codeforces
7421	9999	0	FUN WITH LETTERS	FUNNUMS	Codeforces
7422	9999	0	ZEROES IN RANGE V2	RANGZER2	Codeforces
7423	9999	0	N - DIGIT NUMBERS	NDIGITS	Codeforces
7424	9999	0	LUCKYNINE	NITHY	Codeforces
7425	9999	0	SPIRAL RUN	SPIRAL2	Codeforces
7426	9999	0	Face the mate	FACENEMY	Codeforces
7427	9999	0	N-ARY TREE	NARYTREE	Codeforces
7428	9999	0	GAMING ARENA	GAMARENA	Codeforces
7429	9999	0	ZEROES IN RANGE	RANGEZER	Codeforces
7430	9999	0	ANYTHING FOR ATTENDANCE	DIE4MARK	Codeforces
7431	9999	0	CHOCOLATES	CHOCLATE	Codeforces
7432	9999	0	CUBE ROOT	CUBEROO2	Codeforces
7433	9999	0	The Water Taps	TAPS	Codeforces
7434	9999	0	Task processing	589/K	Codeforces
7435	9999	0	Agricultural Archaeology	589/L	Codeforces
7436	9999	0	Wine trading in Gergovia	GERGOVIA	Codeforces
7437	9999	0	Help the soldier	SOLDIER	Codeforces
7438	9999	0	Adding Reversed Numbers	ADDREV	Codeforces
7439	9999	0	Chocolate	CHOCOLA	Codeforces
7440	9999	0	I AM VERY BUSY	BUSYMAN	Codeforces
7441	9999	0	DIE HARD	DIEHARD	Codeforces
7442	9999	0	Expedition	EXPEDI	Codeforces
7443	9999	0	Train TimeTable	TTTABLE	Codeforces
7444	9999	0	Ambitious Manager	AMBM	Codeforces
7445	9999	0	Saruman of Many Colours	AMR12I	Codeforces
7446	9999	0	Milk Scheduling	MSCHED	Codeforces
7447	9999	0	Greedy Hydra	DRAGON	Codeforces
7448	9999	0	Catch Me If You Can 	CMIYC	Codeforces
7449	9999	0	INVITATION FOR TECHOFES	TECHOFES	Codeforces
7450	9999	0	Troops of Sand Monsters	TROOPS	Codeforces
7451	9999	0	Gourmet and Banquet	589/F	Codeforces
7452	9999	0	Agricultural Archaeology	589/L	Codeforces
7453	9999	0	The Benefactor	BENEFACT	Codeforces
7454	9999	0	Bitmap	BITMAP	Codeforces
7455	9999	0	Lucius Dungeon	BYTESE1	Codeforces
7456	9999	0	The Cats and the Mouse	CATM	Codeforces
7457	9999	0	Key Task	CERC07K	Codeforces
7458	9999	0	106 miles to Chicago	CHICAGO	Codeforces
7459	9999	0	Cleaning Robot	CLEANRBT	Codeforces
7460	9999	0	Highways	HIGHWAYS	Codeforces
7461	9999	0	Invitation Cards	INCARDS	Codeforces
7462	9999	0	Labyrinth	LABYR1	Codeforces
7463	9999	0	Mice and Maze	MICEMAZE	Codeforces
7464	9999	0	Laser Phones	MLASERP	Codeforces
7465	9999	0	Ones and zeros	ONEZERO	Codeforces
7466	9999	0	Pouring water	POUR1	Codeforces
7467	9999	0	Prime Path	PPATH	Codeforces
7468	9999	0	Vertex Cover	PT07X	Codeforces
7469	9999	0	Is it a tree	PT07Y	Codeforces
7470	9999	0	Longest path in a tree	PT07Z	Codeforces
7471	9999	0	Almost Shortest Path	SAMER08A	Codeforces
7472	9999	0	Shopping	SHOP	Codeforces
7473	9999	0	The Shortest Path	SHPATH	Codeforces
7474	9999	0	Tic-Tac-Toe ( I )	TOE1	Codeforces
7475	9999	0	Tic-Tac-Toe ( II )	TOE2	Codeforces
7476	9999	0	A Bug&#8217;s Life	BUGLIFE	Codeforces
7477	9999	0	Traffic Network	TRAFFICN	Codeforces
7478	9999	0	Making Jumps	MKJUMPS	Codeforces
7479	9999	0	Cobbled streets	CSTREET	Codeforces
7480	9999	0	prayatna PR	CAM5	Codeforces
7481	9999	0	ABC Path	ABCPATH	Codeforces
7482	9999	0	VALIDATE THE MAZE	MAKEMAZE	Codeforces
7483	9999	0	COSTLY CHESS	CCHESS	Codeforces
7484	9999	0	Sheep	KOZE	Codeforces
7485	9999	0	Water among Cubes	WATER	Codeforces
7486	9999	0	Slick	UCV2013H	Codeforces
7487	9999	0	Roads	ROADS	Codeforces
7488	9999	0	Minimum Knight moves !!!	NAKANJ	Codeforces
7489	9999	0	Easy Dijkstra Problem	EZDIJKST	Codeforces
7490	9999	0	Fishmonger	FISHER	Codeforces
7491	9999	0	ALL IZZ WELL	ALLIZWEL	Codeforces
7492	9999	0	Herding	HERDING	Codeforces
7493	9999	0	Chop Ahoy! Revisited!	ANARC05H	Codeforces
7494	9999	0	Brackets	BRCKTS	Codeforces
7495	9999	0	Brackets II	BRCKTS2	Codeforces
7496	9999	0	Changing Maze	CHMAZE	Codeforces
7497	9999	0	Manhattan	DISTANCE	Codeforces
7498	9999	0	GONDOR	GONDOR	Codeforces
7499	9999	0	Lucky Numbers	LUCKYNUM	Codeforces
7500	9999	0	MELE3	MELE3	Codeforces
7501	9999	0	Equidivisions	EQDIV	Codeforces
7502	9999	0	Treeramids	PYRA	Codeforces
7503	9999	0	Interesting number	INUMBER	Codeforces
7504	9999	0	Meeting For Party	DCEPC706	Codeforces
7505	9999	0	Escape from Jail	ESJAIL	Codeforces
7506	9999	0	KATHTHI	KATHTHI	Codeforces
7507	9999	0	The Prime conjecture	PRIMEZUK	Codeforces
7508	9999	0	Tobo or not Tobo	ANARC08A	Codeforces
7509	9999	0	Countdown	CDOWN	Codeforces
7510	9999	0	Chase	CHASE1	Codeforces
7511	9999	0	Cijevi	CIJEVI	Codeforces
7512	9999	0	Galou is back!	GALOU	Codeforces
7513	9999	0	Wandering Queen	QUEEN	Codeforces
7514	9999	0	Strings	STSTRING	Codeforces
7515	9999	0	Closest Number	MCLONUM	Codeforces
7516	9999	0	Amazing Maze	DCEPC701	Codeforces
7517	9999	0	THE WEIRD STAIRCASE	STAR3CAS	Codeforces
7518	9999	0	Path of the righteous man	RIOI_2_3	Codeforces
7519	9999	0	Code	CODE	Codeforces
7520	9999	0	A short vacation in Disneyland	PT07F	Codeforces
7521	9999	0	Cleaner Robot	589/J	Codeforces
7522	9999	0	Here We Go(relians) Again	GORELIAN	Codeforces
7523	9999	0	Happy Valentine Day (Valentine Maze Game)	A_W_S_N	Codeforces
7524	9999	0	Umnozak	UMNOZAK	Codeforces
7525	9999	0	GRAVITY	GRAVITY	Codeforces
7526	9999	0	Tutorial BFS	TUTBFS	Codeforces
7527	9999	0	Kruskal	KRUSKAL	Codeforces
7528	9999	0	Fixed Partition Contest Management	CONTEST	Codeforces
7529	9999	0	Segment Tree	SEGTREE	Codeforces
7530	9999	0	Hex Tile Equations	HEXTILE	Codeforces
7531	9999	0	Tourist Guide	589/H	Codeforces
7532	9999	0	Graph basics concepts	GRAPHS12	Codeforces
7533	9999	0	Simplifying the Farm	HKRUSKAL	Codeforces
7534	9999	0	Taxi in Berland	589/M	Codeforces
7535	9999	0	#dynamic-programming&nbsp;(168)</span>	tag	Codeforces
7536	9999	0	Longest Maze Path	EPIC1305	Codeforces
7537	9999	0	Candy	SAMER08C	Codeforces
7538	9999	0	Candy I	CANDY	Codeforces
7539	9999	0	Play with Dates	CODEIT03	Codeforces
7540	9999	0	GRADE POINT AVERAGE	GPA1	Codeforces
7541	9999	0	Catch Me If You Can 	CMIYC	Codeforces
7542	9999	0	TWO BISHOPS	TWOBISOP	Codeforces
7543	9999	0	Brute-force Algorithm EXTREME	BFALG	Codeforces
7544	9999	0	Boulevard	589/D	Codeforces
7545	9999	0	FLING1	FLING1	Codeforces
7546	9999	0	THE N WITTY FRIENDS	WITTY	Codeforces
7547	9999	0	BLOCK_D SOLVER	BLOCK_D	Codeforces
7548	9999	0	Task processing	589/K	Codeforces
7549	9999	0	Street Parade	STPAR	Codeforces
7550	9999	0	Can you answer these queries III	GSS3	Codeforces
7551	9999	0	Can you answer these queries II	GSS2	Codeforces
7552	9999	0	Can you answer these queries I	GSS1	Codeforces
7553	9999	0	Maximum Sum	KGSS	Codeforces
7554	9999	0	How to Handle the Fans	AKVQLD03	Codeforces
7555	9999	0	True Friends	TFRIENDS	Codeforces
7556	9999	0	FIGUREFUL	ACMCEG2B	Codeforces
7557	9999	0	Blue Mary Needs Help Again	CASHIER	Codeforces
7558	9999	0	SBE201 Linked List	SBE201P2	Codeforces
7559	9999	0	Ada and List	ADALIST	Codeforces
7560	9999	0	Hiring	589/G	Codeforces
7561	9999	0	Ada and Mulberry	ADABERRY	Codeforces
7562	9999	0	Beer Machines	STJEPAN	Codeforces
7563	9999	0	Crayon	CRAYON	Codeforces
7564	9999	0	Polycarp's Masterpiece	589/C	Codeforces
7565	9999	0	ACM (ACronymMaker)	ACMAKER	Codeforces
7566	9999	0	Fenwick Trees	FENTREE	Codeforces
7567	9999	0	The Map	MAP	Codeforces
7568	9999	0	Johnny and the Watermelon Plantation	WMELON	Codeforces
7569	9999	0	Amr and Math	AMRALAA	Codeforces
7570	9999	0	bfs	BFSBFS	Codeforces
7571	9999	0	Fight the Monster	488/C	Codeforces
7572	9999	0	Strip	488/D	Codeforces
7573	9999	0	Prefix Product Sequence	488/E	Codeforces
7574	9999	0	Aggressive cows	AGGRCOW	Codeforces
7575	9999	0	Copying Books	BOOKS1	Codeforces
7576	9999	0	Fill the Cisterns	CISTFILL	Codeforces
7577	9999	0	Pie	PIE	Codeforces
7578	9999	0	Pyramids	PIR	Codeforces
7579	9999	0	Sphere in a tetrahedron	TETRA	Codeforces
7580	9999	0	4 values whose sum is 0	SUMFOUR	Codeforces
7581	9999	0	ABCDEF	ABCDEF	Codeforces
7582	9999	0	Help the soldier	SOLDIER	Codeforces
7583	9999	0	Rent your airplane and make money	RENT	Codeforces
7584	9999	0	K12 - Building Construction	KOPC12A	Codeforces
7585	9999	0	Hamster flight	HAMSTER1	Codeforces
7586	9999	0	Eko	EKO	Codeforces
7587	9999	0	String it out	SUBS	Codeforces
7588	9999	0	Not a Triangle	NOTATRI	Codeforces
7589	9999	0	Shake Shake Shaky	MAIN8_C	Codeforces
7590	9999	0	Touch of Venom	VENOM	Codeforces
7591	9999	0	Distributing Ballot Boxes	BALLOT	Codeforces
7592	9999	0	Binary Search Tree	BST	Codeforces
7593	9999	0	Meteors	METEORS	Codeforces
7594	9999	0	Funny scales	SCALE	Codeforces
7595	9999	0	ICPC Scoreboard	ICPCS	Codeforces
7596	9999	0	Roads Repair	MROADS	Codeforces
7597	9999	0	grace marks	MTHUR	Codeforces
7598	9999	0	Trick or Treat	TRICKTRT	Codeforces
7599	9999	0	Glasnici	GLASNICI	Codeforces
7600	9999	0	Fantastic Discovery	IMMERSED	Codeforces
7601	9999	0	Showstopper	MSE07E	Codeforces
7602	9999	0	Gourmet and Banquet	589/F	Codeforces
7603	9999	0	Boxes of Chocolate	BOXSCHOC	Codeforces
7604	9999	0	CUBE ROOT	CUBEROO2	Codeforces
7605	9999	0	Hiring	589/G	Codeforces
7606	9999	0	Cumulative Sum Query	CSUMQ	Codeforces
7607	9999	0	Defense of a Kingdom	DEFKIN	Codeforces
7608	9999	0	The Great Ball	BYTESE2	Codeforces
7609	9999	0	Julka	JULKA	Codeforces
7610	9999	0	Ljutnja	C1LJUTNJ	Codeforces
7611	9999	0	Ascending Fibonacci Numbers	ASCDFIB	Codeforces
7612	9999	0	2D-SORT	SORT2D	Codeforces
7613	9999	0	HELP NERUBAN	DOTAA2	Codeforces
7614	9999	0	Troops of Sand Monsters	TROOPS	Codeforces
7615	9999	0	DIFFICULT INTERVIEW	DIFFICUL	Codeforces
7616	9999	0	Layer Cake	589/B	Codeforces
7617	9999	0	Ada and Cucumber	ADAPICK	Codeforces
7618	9999	0	MultiSort 	MULSORT	Codeforces
7619	9999	0	Searching the Graph	TDBFS	Codeforces
7620	9999	0	Pouring water	POUR1	Codeforces
7621	9999	0	Hotels Along the Croatian Coast	HOTELS	Codeforces
7622	9999	0	True Friends	TFRIENDS	Codeforces
7623	9999	0	Graph Cut	GRAPHCUT	Codeforces
7624	9999	0	The Explosion	EXPLOSN	Codeforces
7625	9999	0	Simple Dijkstras algorithm	IITKESO207SPA3F1	Codeforces
7626	9999	0	Military patrol	MILPATR	Codeforces
7627	9999	0	Graph basics concepts	GRAPHS12	Codeforces
7628	9999	0	Equipment Box	EQBOX	Codeforces
7629	9999	0	Triangle From Centroid	TRICENTR	Codeforces
7630	9999	0	One Geometry Problem	GEOPROB	Codeforces
7631	9999	0	Maximal Quadrilateral Area	QUADAREA	Codeforces
7632	9999	0	Sphere in a tetrahedron	TETRA	Codeforces
7633	9999	0	Lifting the Stone	STONE	Codeforces
7634	9999	0	Julka	JULKA	Codeforces
7635	9999	0	The Ant	ANTTT	Codeforces
7636	9999	0	Goal for Raúl	GOALFR	Codeforces
7637	9999	0	Land Acquisition	ACQUIRE	Codeforces
7638	9999	0	I Conduit	CONDUIT	Codeforces
7639	9999	0	Geometry and a Square	GEOM	Codeforces
7640	9999	0	Area of circles	VCIRCLES	Codeforces
7641	9999	0	Air Strike	ANARC09F	Codeforces
7642	9999	0	Calculate the Area	CALCAREA	Codeforces
7643	9999	0	SPIRAL RUN	SPIRAL2	Codeforces
7644	9999	0	Will Indiana Jones Get There	WIJGT	Codeforces
7645	9999	0	Face the mate	FACENEMY	Codeforces
7646	9999	0	Ada and Cucumber	ADAPICK	Codeforces
7647	9999	0	Prime Number Theorem	CPRIME	Codeforces
7648	9999	0	Divisors	DIV	Codeforces
7649	9999	0	Euler Totient Function	ETF	Codeforces
7650	9999	0	Factorial	FCTRL	Codeforces
7651	9999	0	Game of Lines	LINES	Codeforces
7652	9999	0	Marbles	MARBLES	Codeforces
7653	9999	0	The Moronic Cowmpouter	NEG2	Codeforces
7654	9999	0	Prime or Not	PON	Codeforces
7655	9999	0	Prime Generator	PRIME1	Codeforces
7656	9999	0	Two squares or not two squares	TWOSQRS	Codeforces
7657	9999	0	Divisor Summation	DIVSUM	Codeforces
7658	9999	0	Integer Factorization (15 digits)	FACT0	Codeforces
7659	9999	0	LCM Sum	LCMSUM	Codeforces
7660	9999	0	GCD Extreme	GCDEX	Codeforces
7661	9999	0	Medium Factorization	FACTCG2	Codeforces
7662	9999	0	Tip Top Game	TIPTOP	Codeforces
7663	9999	0	Totient Extreme	DCEPCA03	Codeforces
7664	9999	0	The Bytelandian Cryptographer (Act I)	CRYPTO1	Codeforces
7665	9999	0	Sort fractions	FRACTION	Codeforces
7666	9999	0	Prime Again 	PAGAIN	Codeforces
7667	9999	0	Primitive Root	PROOT	Codeforces
7668	9999	0	Divisor Summation (Hard)	DIVSUM2	Codeforces
7669	9999	0	Integer Factorization (20 digits)	FACT1	Codeforces
7670	9999	0	Divisors 2	DIV2	Codeforces
7671	9999	0	N DIV PHI_N	NDIVPHI	Codeforces
7672	9999	0	Square-free integers	SQFREE	Codeforces
7673	9999	0	Playing with Marbles	TUTMRBL	Codeforces
7674	9999	0	Odd Numbers of Divisors	ODDDIV	Codeforces
7675	9999	0	Equation	KPEQU	Codeforces
7676	9999	0	Psycho	PSYCHON	Codeforces
7677	9999	0	Minimum Number	MINNUM	Codeforces
7678	9999	0	GCD Determinant 	MSE08H	Codeforces
7679	9999	0	Skyscraper Floors	SCRAPER	Codeforces
7680	9999	0	Homework	HOMEW	Codeforces
7681	9999	0	Congruence Equation	DPEQN	Codeforces
7682	9999	0	Sky Code	MSKYCODE	Codeforces
7683	9999	0	Binomial Coefficients	UCI2009B	Codeforces
7684	9999	0	Primal Fear	VECTAR8	Codeforces
7685	9999	0	SETI	NWERC04H	Codeforces
7686	9999	0	Rank of a Fraction	FNRANK	Codeforces
7687	9999	0	N DIV PHI_N (Hard)	NDIVPHI2	Codeforces
7688	9999	0	Dots	DOTS	Codeforces
7689	9999	0	Tutorial BFS	TUTBFS	Codeforces
7690	9999	0	Polygon Encoder	POLYCODE	Codeforces
7691	9999	0	Printing some primes (Hard)	PRIMES2	Codeforces
7692	9999	0	Integer Factorization (29 digits)	FACT2	Codeforces
7693	9999	0	Finding the Kth Prime (Hard)	KPRIMES2	Codeforces
7694	9999	0	Ada and Connections	ADACON	Codeforces
7695	9999	0	Swap (Easy - Level 2)	SWAP_ESY	Codeforces
7696	9999	0	Glass Beads	BEADS	Codeforces
7697	9999	0	Dinner	DINGRP	Codeforces
7698	9999	0	Alphabetic Relation	ALPHAR	Codeforces
7699	9999	0	Unique Strings	UNICA	Codeforces
7700	9999	0	#dynamic-programming&nbsp;(168)</span>	tag	Codeforces
7701	9999	0	Marbles	MARBLES	Codeforces
7702	9999	0	Permutations	PERMUT1	Codeforces
7703	9999	0	Card Game	HC12	Codeforces
7704	9999	0	FUN WITH NUMBERS	ACMCEG2A	Codeforces
7705	9999	0	Longest path in a tree	PT07Z	Codeforces
7706	9999	0	Chocolate	CHOCOLA	Codeforces
7707	9999	0	Nice Binary Trees	NICEBTRE	Codeforces
7708	9999	0	Tree _order	TREEORD	Codeforces
7709	9999	0	AVL Tree	SDITSAVL	Codeforces
7710	9999	0	Count Minimum Spanning Trees	MSTS	Codeforces
7711	9999	0	Closest distance	GANNHAT	Codeforces
7712	9999	0	Brackets	BRCKTS	Codeforces
7713	9999	0	The Great Ball	BYTESE2	Codeforces
7714	9999	0	Can you answer these queries I	GSS1	Codeforces
7715	9999	0	Can you answer these queries III	GSS3	Codeforces
7716	9999	0	Can you answer these queries V	GSS5	Codeforces
7717	9999	0	Maximum Sum	KGSS	Codeforces
7718	9999	0	Election Posters	POSTERS	Codeforces
7719	9999	0	The day of the competitors	NICEDAY	Codeforces
7720	9999	0	K-th Number	MKTHNUM	Codeforces
7721	9999	0	Yodaness Level	YODANESS	Codeforces
7722	9999	0	AND Rounds	ANDROUND	Codeforces
7723	9999	0	Multiples of 3	MULTQ3	Codeforces
7724	9999	0	Light Switching	LITE	Codeforces
7725	9999	0	D-query	DQUERY	Codeforces
7726	9999	0	Frequent values	FREQUENT	Codeforces
7727	9999	0	Can you answer these queries II	GSS2	Codeforces
7728	9999	0	Sum of Squares with Segment Tree	SEGSQRSS	Codeforces
7729	9999	0	Horrible Queries	HORRIBLE	Codeforces
7730	9999	0	K-query	KQUERY	Codeforces
7731	9999	0	Largest Rectangle in a Histogram	HISTOGRA	Codeforces
7732	9999	0	Ordering the Soldiers	ORDERS	Codeforces
7733	9999	0	Roti Prata	PRATA	Codeforces
7734	9999	0	Negative Score	RPLN	Codeforces
7735	9999	0	Can you answer these queries IV	GSS4	Codeforces
7736	9999	0	Query on a tree again!	QTREE3	Codeforces
7737	9999	0	Order statistic set	ORDERSET	Codeforces
7738	9999	0	Find String Roots	FINDSR	Codeforces
7739	9999	0	Count on a tree	COT	Codeforces
7740	9999	0	Inversion Count	INVCNT	Codeforces
7741	9999	0	Help R2-D2!	HELPR2D2	Codeforces
7742	9999	0	Race Against Time	RACETIME	Codeforces
7743	9999	0	Can you answer these queries VI	GSS6	Codeforces
7744	9999	0	Counting Primes 	CNTPRIME	Codeforces
7745	9999	0	Snow White and the N dwarfs	PATULJCI	Codeforces
7746	9999	0	Living with Courage	COURAGE	Codeforces
7747	9999	0	WIND VANE	WINDVANE	Codeforces
7748	9999	0	Query on a tree IV	QTREE4	Codeforces
7749	9999	0	Query on a tree V	QTREE5	Codeforces
7750	9999	0	Brackets II	BRCKTS2	Codeforces
7751	9999	0	Can you answer these queries VII	GSS7	Codeforces
7752	9999	0	Binary Search Heap Construction	HEAPULM	Codeforces
7753	9999	0	Congruence Equation	DPEQN	Codeforces
7754	9999	0	Temple Queues	TEMPLEQ	Codeforces
7755	9999	0	GM plants	IOPC1207	Codeforces
7756	9999	0	Blue Mary Needs Help Again	CASHIER	Codeforces
7757	9999	0	Sum of Distinct Numbers	XXXXXXXX	Codeforces
7758	9999	0	Salary Management	SALMAN	Codeforces
7759	9999	0	Query on a tree VI	QTREE6	Codeforces
7760	9999	0	K-query II	KQUERY2	Codeforces
7761	9999	0	LCM GCD Love	LGLOVE	Codeforces
7762	9999	0	Who is The Boss	VBOSS	Codeforces
7763	9999	0	01 Sequence	SEQ1	Codeforces
7764	9999	0	Enjoy Sum with Operations	SUMSUM	Codeforces
7765	9999	0	Impossible Boss	DCEPC11I	Codeforces
7766	9999	0	Query on a tree VII	QTREE7	Codeforces
7767	9999	0	High and Low	HILO	Codeforces
7768	9999	0	Segment Tree	SEGTREE	Codeforces
7769	9999	0	Count The Indexes 2	CNTINDX2	Codeforces
7770	9999	0	Ada and Species	ADACABAA	Codeforces
7771	9999	0	#dynamic-programming&nbsp;(168)</span>	tag	Codeforces
7772	9999	0	Total Flow	MTOTALF	Codeforces
7773	9999	0	Potholers	POTHOLE	Codeforces
7774	9999	0	Dungeon of Death	QUEST4	Codeforces
7775	9999	0	Fast Maximum Flow	FASTFLOW	Codeforces
7776	9999	0	Fast Maximum Matching	MATCHING	Codeforces
7777	9999	0	Alphacode	ACODE	Codeforces
7778	9999	0	Taxi	TAXI	Codeforces
7779	9999	0	Angels and Devils	ANGELS	Codeforces
7780	9999	0	Baby	BABY	Codeforces
7781	9999	0	Cable TV Network	CABLETV	Codeforces
7782	9999	0	Coconuts	COCONUTS	Codeforces
7783	9999	0	Muddy Fields	MUDDY	Codeforces
7784	9999	0	Selfish Cities	SCITIES	Codeforces
7785	9999	0	Train TimeTable	TTTABLE	Codeforces
7786	9999	0	Smart Network Administrator	NETADMIN	Codeforces
7787	9999	0	Optimal Marks	OPTM	Codeforces
7788	9999	0	Entrapment	EN	Codeforces
7789	9999	0	Intergalactic Map	IM	Codeforces
7790	9999	0	Greedy island	GREED	Codeforces
7791	9999	0	Disjoint Paths	DISJPATH	Codeforces
7792	9999	0	"Shortest" pair of paths 	MSE06I	Codeforces
7793	9999	0	Divisibility Relation	DIVREL	Codeforces
7794	9999	0	MobiZone vs VinaGone	MOBIVINA	Codeforces
7795	9999	0	Steady Cow Assignment	STEAD	Codeforces
7796	9999	0	Maximum Profit	PROFIT	Codeforces
7797	9999	0	Travelling tours	TOURS	Codeforces
7798	9999	0	Gas Wars	GASWARS	Codeforces
7799	9999	0	The Black Riders	AMR12A	Codeforces
7800	9999	0	Suiting Weavers	GCPC11I	Codeforces
7801	9999	0	Gourmet and Banquet	589/F	Codeforces
7802	9999	0	Military patrol	MILPATR	Codeforces
7803	9999	0	Max Flow Minimum Cost	MAXFLOWW	Codeforces
7804	9999	0	Yanu in Movie theatre	FUNPROB	Codeforces
7805	9999	0	Ada and Island	ADASEA	Codeforces
7806	9999	0	Roommate Agreement	CRAN02	Codeforces
7807	9999	0	Audition	CRAN04	Codeforces
7808	9999	0	Segment Tree	SEGTREE	Codeforces
7809	9999	0	FRIEND CIRCLE	FRNDCIRC	Codeforces
7810	9999	0	Lost and survived	LOSTNSURVIVED	Codeforces
7811	9999	0	Strange Food Chain	CHAIN	Codeforces
7812	9999	0	Social Network Community	SOCNETC	Codeforces
7813	9999	0	Histogram	HIST2	Codeforces
7814	9999	0	Assignments	ASSIGN	Codeforces
7815	9999	0	LATGACH3	M3TILE	Codeforces
7816	9999	0	Lineup	LINEUP	Codeforces
7817	9999	0	PICK UP DROP ESCAPE	CODEIT02	Codeforces
7818	9999	0	Counting Rabbits	RABBIT1	Codeforces
7819	9999	0	Recursive Sequence	SEQ	Codeforces
7820	9999	0	Mixtures	MIXTURES	Codeforces
7821	9999	0	Fibonacci Sum	FIBOSUM	Codeforces
7822	9999	0	Recursive Sequence (Version II)	SPP	Codeforces
7823	9999	0	Euclids algorithm revisited 	MAIN74	Codeforces
7824	9999	0	Decode the Strings	PDECODE	Codeforces
7825	9999	0	Flibonakki	FLIB	Codeforces
7826	9999	0	Summing Sums	SUMSUMS	Codeforces
7827	9999	0	End of Fun	DCEPC12E	Codeforces
7828	9999	0	Text Generator	GEN	Codeforces
7829	9999	0	Sum of Tetranacci numbers	TETRAHRD	Codeforces
7830	9999	0	Ant	PA06ANT	Codeforces
7831	9999	0	Number of quite different words	NUMQDW	Codeforces
7832	9999	0	Plane Hopping	PLHOP	Codeforces
7833	9999	0	Recurrence	REC	Codeforces
7834	9999	0	Fibonacci vs Polynomial	PIBO	Codeforces
7835	9999	0	R  Numbers	ITRIX12E	Codeforces
7836	9999	0	Life Game	LIFEGAME	Codeforces
7837	9999	0	Jumbo Airlines	AIRLINES	Codeforces
7838	9999	0	Stocks Prediction	AMR10E	Codeforces
7839	9999	0	Four colors	HS08FOUR	Codeforces
7840	9999	0	Life, the Universe, and Everything II	RP	Codeforces
7841	9999	0	Text Generater II	GEN2	Codeforces
7842	9999	0	Gremlins	GREMLINS	Codeforces
7843	9999	0	Pibonacci	PIB	Codeforces
7844	9999	0	WHAT A CO-ACCIDENT	SYNC13C	Codeforces
7845	9999	0	M&M Game	MMMGAME	Codeforces
7846	9999	0	A Game with Numbers	NGM	Codeforces
7847	9999	0	Hubulullu	HUBULLU	Codeforces
7848	9999	0	Coins Game	MCOINS	Codeforces
7849	9999	0	DOTA HEROES	DOTAA	Codeforces
7850	9999	0	The Game	QCJ3	Codeforces
7851	9999	0	Matrix Game	MATGAME	Codeforces
7852	9999	0	Moving Pebbles	PEBBMOV	Codeforces
7853	9999	0	Special Nim Game	NIMGAME	Codeforces
7854	9999	0	TRIVIADOR	TWOKINGS	Codeforces
7855	9999	0	Stone Removing Game	REMGAME	Codeforces
7856	9999	0	Chomp	CLK	Codeforces
7857	9999	0	TRIVIADOR	QWERTY04	Codeforces
7858	9999	0	Team Nim	TEAMNIM	Codeforces
7859	9999	0	GAMING ARENA	GAMARENA	Codeforces
7860	9999	0	Bytelandian Blingors Network	BLINNET	Codeforces
7861	9999	0	The Bottom of a Graph	BOTTOM	Codeforces
7862	9999	0	Capital City	CAPCITY	Codeforces
7863	9999	0	A Bug&#8217;s Life	BUGLIFE	Codeforces
7864	9999	0	Cobbled streets	CSTREET	Codeforces
7865	9999	0	Fake tournament	TOUR	Codeforces
7866	9999	0	Herding	HERDING	Codeforces
7867	9999	0	The Benefactor	BENEFACT	Codeforces
7868	9999	0	Reliable Nets	RELINETS	Codeforces
7869	9999	0	True Friends	TFRIENDS	Codeforces
7870	9999	0	Cost	KOICOST	Codeforces
7871	9999	0	Strange Food Chain	CHAIN	Codeforces
7872	9999	0	Corporative Network	CORNET	Codeforces
7873	9999	0	Proving Equivalences	PMATRIX	Codeforces
7874	9999	0	Madrids One Way Streets	MOWS	Codeforces
7875	9999	0	Square dance	SQDANCE	Codeforces
7876	9999	0	Fatawy	FATAWY	Codeforces
7877	9999	0	Count Minimum Spanning Trees	MSTS	Codeforces
7878	9999	0	Island Hopping	ISLHOP	Codeforces
7879	9999	0	FIGUREFUL	ACMCEG2B	Codeforces
7880	9999	0	The angry professor	VEXPROF	Codeforces
7881	9999	0	Increasing Subsequences	INCSEQ	Codeforces
7882	9999	0	K-query	KQUERY	Codeforces
7883	9999	0	Matrix Summation	MATSUM	Codeforces
7884	9999	0	Yodaness Level	YODANESS	Codeforces
7885	9999	0	Assistance Required	ASSIST	Codeforces
7886	9999	0	Japan	MSE06H	Codeforces
7887	9999	0	Inversion Count	INVCNT	Codeforces
7888	9999	0	Ordering the Soldiers	ORDERS	Codeforces
7889	9999	0	Horrible Queries	HORRIBLE	Codeforces
7890	9999	0	Coder Ratings	RATING	Codeforces
7891	9999	0	Can you answer these queries IV	GSS4	Codeforces
7892	9999	0	The day of the competitors	NICEDAY	Codeforces
7893	9999	0	Update the array !	UPDATEIT	Codeforces
7894	9999	0	Card Trick	CTRICK	Codeforces
7895	9999	0	Order statistic set	ORDERSET	Codeforces
7896	9999	0	D-query	DQUERY	Codeforces
7897	9999	0	WIND VANE	WINDVANE	Codeforces
7898	9999	0	Matrix	KPMATRIX	Codeforces
7899	9999	0	Fenwick Trees	FENTREE	Codeforces
7900	9999	0	Round-Robin Scheduling	RRSCHED	Codeforces
7901	9999	0	IOI01 Mobiles	NKMOBILE	Codeforces
7902	9999	0	Counting inversions	SWAPS	Codeforces
7903	9999	0	Chaos Strings	MCHAOS	Codeforces
7904	9999	0	Meteors	METEORS	Codeforces
7905	9999	0	Distinct Increasing Subsequences	INCDSEQ	Codeforces
7906	9999	0	Cvjetici	CVJETICI	Codeforces
7907	9999	0	New bricks disorder	BRICKS	Codeforces
7908	9999	0	Calculate The Cost	CCOST	Codeforces
7909	9999	0	Salary Management	SALMAN	Codeforces
7910	9999	0	Team Selection	NKTEAM	Codeforces
7911	9999	0	Queue (Pro)	QUE2	Codeforces
7912	9999	0	Counting pairs	CPAIR	Codeforces
7913	9999	0	Cow Photographs 	COWPIC	Codeforces
7914	9999	0	Count The Indexes 2	CNTINDX2	Codeforces
7915	9999	0	Polycarp's Masterpiece	589/C	Codeforces
7916	9999	0	STONE GAME 	RESN04	Codeforces
7917	9999	0	Enormous Input Test	INTEST	Codeforces
7918	9999	0	Hash it!	HASHIT	Codeforces
7919	9999	0	Colours A, B, C, D	ABCD	Codeforces
7920	9999	0	Rectangles	AE00	Codeforces
7921	9999	0	An Experiment by Penny	CRAN01	Codeforces
7922	9999	0	SOLVEIT	SOLVEIT	Codeforces
7923	9999	0	TWO BISHOPS	TWOBISOP	Codeforces
7924	9999	0	Street Parade	STPAR	Codeforces
7925	9999	0	Mass of Molecule	MMASS	Codeforces
7926	9999	0	Transform the Expression	ONP	Codeforces
7927	9999	0	DONALDO	DONALDO	Codeforces
7928	9999	0	Ada and Queue	ADAQUEUE	Codeforces
7929	9999	0	Fast Maximum Matching	MATCHING	Codeforces
7930	9999	0	Dungeon of Death	QUEST4	Codeforces
7931	9999	0	Vertex Cover	PT07X	Codeforces
7932	9999	0	Taxi	TAXI	Codeforces
7933	9999	0	Angels and Devils	ANGELS	Codeforces
7934	9999	0	Muddy Fields	MUDDY	Codeforces
7935	9999	0	Phone List	PHONELST	Codeforces
7936	9999	0	Chocolate	CHOCOLA	Codeforces
7937	9999	0	Search in the dictionary!	DICT	Codeforces
7938	9999	0	Distinct Substrings	DISUBSTR	Codeforces
7939	9999	0	Order statistic set	ORDERSET	Codeforces
7940	9999	0	SubXor	SUBXOR	Codeforces
7941	9999	0	Decoding Morse Sequences	MORSE	Codeforces
7942	9999	0	Perfect Rhyme	PRHYME	Codeforces
7943	9999	0	Designing T-Shirts	TAP2012D	Codeforces
7944	9999	0	Sevenk Love Oimaster	JZPGYZ	Codeforces
7945	9999	0	Making Jumps	MKJUMPS	Codeforces
7946	9999	0	ABC Path	ABCPATH	Codeforces
7947	9999	0	ALL IZZ WELL	ALLIZWEL	Codeforces
7948	9999	0	Vonny and her dominos	VONNY	Codeforces
7949	9999	0	Digger Octaves	UCI2009D	Codeforces
7950	9999	0	Water among Cubes	WATER	Codeforces
7951	9999	0	The Cats and the Mouse	CATM	Codeforces
7952	9999	0	Cleaning Robot	CLEANRBT	Codeforces
7953	9999	0	Tic-Tac-Toe ( II )	TOE2	Codeforces
7954	9999	0	Laser Phones	MLASERP	Codeforces
7955	9999	0	Bitmap	BITMAP	Codeforces
7956	9999	0	Prime Path	PPATH	Codeforces
7957	9999	0	Ones and zeros	ONEZERO	Codeforces
7958	9999	0	Changing Maze	CHMAZE	Codeforces
7959	9999	0	THE WEIRD STAIRCASE	STAR3CAS	Codeforces
7960	9999	0	GRAVITY	GRAVITY	Codeforces
7961	9999	0	Query on a tree	QTREE	Codeforces
7962	9999	0	Query on a tree II	QTREE2	Codeforces
7963	9999	0	Count on a tree	COT	Codeforces
7964	9999	0	Query on a tree again!	QTREE3	Codeforces
7965	9999	0	OTOCI	OTOCI	Codeforces
7966	9999	0	Can you answer these queries VII	GSS7	Codeforces
7967	9999	0	Query on a tree IV	QTREE4	Codeforces
7968	9999	0	Query on a tree V	QTREE5	Codeforces
7969	9999	0	Count on a tree II	COT2	Codeforces
7970	9999	0	Gao on a tree	GOT	Codeforces
7971	9999	0	Coloring Trees	BTCODE_G	Codeforces
7972	9999	0	Query on a tree VI	QTREE6	Codeforces
7973	9999	0	Grass Planting	GRASSPLA	Codeforces
7974	9999	0	Combat on a tree	COT3	Codeforces
7975	9999	0	MAXIMUM WOOD CUTTER	MAXWOODS	Codeforces
7976	9999	0	0110SS	IWGBS	Codeforces
7977	9999	0	Save Thy Toys	DCEPC501	Codeforces
7978	9999	0	Philosophers Stone	BYTESM2	Codeforces
7979	9999	0	DIE HARD	DIEHARD	Codeforces
7980	9999	0	Piggy-Bank	PIGBANK	Codeforces
7981	9999	0	Pilots	MPILOT	Codeforces
7982	9999	0	Easy Jug	MAY99_3	Codeforces
7983	9999	0	Bribe the Prisoners	GCJ1C09C	Codeforces
7984	9999	0	INVITATION FOR TECHOFES	TECHOFES	Codeforces
7985	9999	0	JUMPING DORA	JUMPDORA	Codeforces
7986	9999	0	GO FOR DIAMONDS	GO4DIMON	Codeforces
7987	9999	0	IPL - CRICKET TOURNAMENT	IPL1	Codeforces
7988	9999	0	Extend to Palindrome	EPALIN	Codeforces
7989	9999	0	A Needle in the Haystack	NHAY	Codeforces
7990	9999	0	Period	PERIOD	Codeforces
7991	9999	0	Pattern Find	NAJPF	Codeforces
7992	9999	0	Find String Roots	FINDSR	Codeforces
7993	9999	0	The hunt for Gollum	ARDA1	Codeforces
7994	9999	0	File Recover Testing	FILRTEST	Codeforces
7995	9999	0	Remove The String	PSTRING	Codeforces
7996	9999	0	Finding Palindromes	VPALIN	Codeforces
7997	9999	0	Test	CF25E	Codeforces
7998	9999	0	Sevenk Love Oimaster	JZPGYZ	Codeforces
7999	9999	0	Cow Patterns	CPATTERN	Codeforces
8000	9999	0	Match Maker	ANARC08C	Codeforces
8001	9999	0	Untitled Problem	UNTITLED	Codeforces
8002	9999	0	Votka and String	VOTAS	Codeforces
8003	9999	0	Transform the Expression	ONP	Codeforces
8004	9999	0	Complicated Expressions	CMEXPR	Codeforces
8005	9999	0	Any fool can do it	FOOL	Codeforces
8006	9999	0	Going to school	GS	Codeforces
8007	9999	0	Boolean Logic	BOOLE	Codeforces
8008	9999	0	Cells	IPCELLS	Codeforces
8009	9999	0	A - Comparison Expressions	BOCOMP	Codeforces
8010	9999	0	ABCDEF	ABCDEF	Codeforces
8011	9999	0	Subset Sums	SUBSUMS	Codeforces
8012	9999	0	4 values whose sum is 0	SUMFOUR	Codeforces
8013	9999	0	Solitaire	SOLIT	Codeforces
8014	9999	0	Face the mate	FACENEMY	Codeforces
8015	9999	0	Parity	PARITY	Codeforces
8016	9999	0	Maximal Independent Set	MAXISET	Codeforces
8017	9999	0	Longest Common Substring	LCS	Codeforces
8018	9999	0	Suffix Array	SARRAY	Codeforces
8019	9999	0	New Distinct Substrings	SUBST1	Codeforces
8020	9999	0	Distinct Substrings	DISUBSTR	Codeforces
8021	9999	0	Glass Beads	BEADS	Codeforces
8022	9999	0	Lexicographical Substring Search	SUBLEX	Codeforces
8023	9999	0	Longest Common Substring II 	LCS2	Codeforces
8024	9999	0	Minimum Rotations	MINMOVE	Codeforces
8025	9999	0	Party Schedule	PARTY	Codeforces
8026	9999	0	Scuba diver	SCUBADIV	Codeforces
8027	9999	0	Piggy-Bank	PIGBANK	Codeforces
8028	9999	0	The Knapsack Problem	KNAPSACK	Codeforces
8029	9999	0	Wachovia Bank	WACHOVIA	Codeforces
8030	9999	0	Blueberries	RPLB	Codeforces
8031	9999	0	Large Knapsack	LKS	Codeforces
8032	9999	0	Blackout	BLACKOUT	Codeforces
8033	9999	0	Order statistic set	ORDERSET	Codeforces
8034	9999	0	Matrix	KPMATRIX	Codeforces
8035	9999	0	Can you answer these queries VI	GSS6	Codeforces
8036	9999	0	Giá tr&#7883; l&#7899;n nh&#7845;t 3	QMAX3VN	Codeforces
8037	9999	0	Weird Function	WEIRDFN	Codeforces
8038	9999	0	Robotic Sort	CERC07S	Codeforces
8039	9999	0	Another Sequence Problem	SEQ2	Codeforces
8040	9999	0	Temple Queues	TEMPLEQ	Codeforces
8041	9999	0	Yet another range difference query!	TREAP	Codeforces
8042	9999	0	Count The Indexes 2	CNTINDX2	Codeforces
8043	9999	0	Arnook Defensive Line	KL11B	Codeforces
8044	9999	0	Asistent	ASISTENT	Codeforces
8045	9999	0	D-query	DQUERY	Codeforces
8046	9999	0	Zero Query	ZQUERY	Codeforces
8047	9999	0	Gao on a tree	GOT	Codeforces
8048	9999	0	Ada and Numbering	ADANUM	Codeforces
8049	9999	0	Counting diff-pairs	CPAIR2	Codeforces
8050	9999	0	Fast Multiplication	MUL	Codeforces
8051	9999	0	Polynomial Multiplication	POLYMUL	Codeforces
8052	9999	0	Very Fast Multiplication	VFMUL	Codeforces
8053	9999	0	Maximum Self-Matching	MAXMATCH	Codeforces
8054	9999	0	Build the Fence	BSHEEP	Codeforces
8055	9999	0	Land Acquisition	ACQUIRE	Codeforces
8056	9999	0	Doors and Penguins	DOORSPEN	Codeforces
8057	9999	0	Commando	APIO10A	Codeforces
8058	9999	0	Military Story	VMILI	Codeforces
8059	9999	0	Good Inflation	GOODG	Codeforces
8060	9999	0	Separate Points	SPOINTS	Codeforces
8061	9999	0	Perfume	PERFUME	Codeforces
8062	9999	0	Two Ball Game	TBGAME	Codeforces
8063	9999	0	Counting Divisors	DIVCNT1	Codeforces
8064	9999	0	Amazing Factor Sequence (hard)	AFS3	Codeforces
8065	9999	0	Topological Sorting	TOPOSORT	Codeforces
8066	9999	0	Project File Dependencies	PFDEP	Codeforces
8067	9999	0	Answer the boss!	RPLA	Codeforces
8068	9999	0	All Discs Considered	ALL	Codeforces
8069	9999	0	Hierarchy	MAKETREE	Codeforces
8070	9999	0	Indiana Jones and the lost Soccer Cup	GCPC11C	Codeforces
8071	9999	0	Tree Topology	TTOP	Codeforces
8072	9999	0	A Bug&#8217;s Life	BUGLIFE	Codeforces
8073	9999	0	TORNJEVI	TORNJEVI	Codeforces
8074	9999	0	Supplying the Suppliers	SUPSUP	Codeforces
8075	9999	0	Building Bridges	BRIDGE	Codeforces
8076	9999	0	Easy Longest Increasing Subsequence	ELIS	Codeforces
8077	9999	0	In Danger	DANGER	Codeforces
8078	9999	0	Another Longest Increasing Subsequence Problem	LIS2	Codeforces
8079	9999	0	Supernumbers in a permutation	SUPPER	Codeforces
8080	9999	0	BATMAN3	BAT3	Codeforces
8081	9999	0	Building Bridges(HARD)	BRDGHRD	Codeforces
8082	9999	0	Evaluate the polynomial	POLEVAL	Codeforces
8083	9999	0	Polynomial	POLYNOM	Codeforces
8084	9999	0	Polynomial f(x) to Polynomial h(x)	POLTOPOL	Codeforces
8085	9999	0	Recover Polynomials	BTCODE_E	Codeforces
8086	9999	0	Polynomial Equations	POLYEQ	Codeforces
8087	9999	0	Irreducible polynomials over GF2	GF2	Codeforces
8088	9999	0	Roots of polynomial	KMSL4B	Codeforces
8089	9999	0	Polynomial Evaluation - Angry Teacher	MPOLEVAL	Codeforces
8090	9999	0	Arbitrage	ARBITRAG	Codeforces
8091	9999	0	Possible Friends	SOCIALNE	Codeforces
8092	9999	0	Aibohphobia	AIBOHP	Codeforces
8093	9999	0	Cross-country	CRSCNTRY	Codeforces
8094	9999	0	Advanced Fruits	ADFRUITS	Codeforces
8095	9999	0	Palindrome 2000	IOIPALIN	Codeforces
8096	9999	0	DNA Sequences	SAMER08D	Codeforces
8097	9999	0	The Knapsack Problem	KNAPSACK	Codeforces
8098	9999	0	X-MEN	XMEN	Codeforces
8099	9999	0	Word Puzzles	WPUZZLES	Codeforces
8100	9999	0	Substring Problem	SUB_PROB	Codeforces
8101	9999	0	Emoticons	EMOTICON	Codeforces
8102	9999	0	Lowest Common Ancestor	LCA	Codeforces
8103	9999	0	Query on a tree II	QTREE2	Codeforces
8104	9999	0	Distance Query	DISQUERY	Codeforces
8105	9999	0	Play on Words	WORDS1	Codeforces
8106	9999	0	Islands and Hotel Chains	HCHAINS	Codeforces
8107	9999	0	Capital City	CAPCITY	Codeforces
8108	9999	0	Submerging Islands	SUBMERGE	Codeforces
8109	9999	0	The Ant	ANTTT	Codeforces
8110	9999	0	True Friends	TFRIENDS	Codeforces
8111	9999	0	Lowest Common Ancestor	LCA	Codeforces
8112	9999	0	Query on a tree II	QTREE2	Codeforces
8113	9999	0	Query on a tree	QTREE	Codeforces
8114	9999	0	Distance Query	DISQUERY	Codeforces
8115	9999	0	Longest Common Substring	LCS	Codeforces
8116	9999	0	Lexicographical Substring Search	SUBLEX	Codeforces
8117	9999	0	Longest Common Substring II 	LCS2	Codeforces
8118	9999	0	Substrings	NSUBSTR	Codeforces
8119	9999	0	Query on a tree V	QTREE5	Codeforces
8120	9999	0	Gao on a tree	GOT	Codeforces
8121	9999	0	Closest Point Pair	CLOPPAIR	Codeforces
8122	9999	0	The day of the competitors	NICEDAY	Codeforces
8123	9999	0	SkyScrapers	CEPC08B	Codeforces
8124	9999	0	November Rain	RAIN1	Codeforces
8125	9999	0	Wireless	WIRELESS	Codeforces
8126	9999	0	Wild West	WILD	Codeforces
8127	9999	0	Selfish Cities	SCITIES	Codeforces
8128	9999	0	Baby	BABY	Codeforces
8129	9999	0	Why this kolaveri di	WTK	Codeforces
8130	9999	0	DOTA HEROES	DOTAA	Codeforces
8131	9999	0	FANCY NUMBERS	FANCY	Codeforces
8132	9999	0	HOW MANY GAMES	GAMES	Codeforces
8133	9999	0	DIE HARD	DIEHARD	Codeforces
8134	9999	0	EVEN COUNT	GEEKOUNT	Codeforces
8135	9999	0	FUN WITH LETTERS	FUNNUMS	Codeforces
8136	9999	0	LUCKYNINE	NITHY	Codeforces
8137	9999	0	FOREVER ALONE	ALONE	Codeforces
8138	9999	0	THE JUMPING BALL	JUMPBALL	Codeforces
8139	9999	0	GAMING ARENA	GAMARENA	Codeforces
8140	9999	0	THE N WITTY FRIENDS	WITTY	Codeforces
8141	9999	0	TREE SHAPES	CODEIT01	Codeforces
8142	9999	0	Lost in Madrid	LIM	Codeforces
8143	9999	0	Going to school	GS	Codeforces
8144	9999	0	Kirchhof Law	RESIST	Codeforces
8145	9999	0	Lucius Dungeon	BYTESE1	Codeforces
8146	9999	0	Bitmap	BITMAP	Codeforces
8147	9999	0	Tic-Tac-Toe ( II )	TOE2	Codeforces
8148	9999	0	ALL IZZ WELL	ALLIZWEL	Codeforces
8149	9999	0	VALIDATE THE MAZE	MAKEMAZE	Codeforces
8150	9999	0	THE WEIRD STAIRCASE	STAR3CAS	Codeforces
8151	9999	0	GRAVITY	GRAVITY	Codeforces
8152	9999	0	Charu and Coin Distribution	CBANK	Codeforces
8153	9999	0	DOTA HEROES	DOTAA	Codeforces
8154	9999	0	LUCKYNINE	NITHY	Codeforces
8155	9999	0	TRIVIADOR	TWOKINGS	Codeforces
8156	9999	0	Car with powers	POWERCAR	Codeforces
8157	9999	0	GAMING ARENA	GAMARENA	Codeforces
8158	9999	0	FLING1	FLING1	Codeforces
8159	9999	0	TWO KINGS	CONQUER	Codeforces
8160	9999	0	BLOCK_D SOLVER	BLOCK_D	Codeforces
8161	9999	0	THE WITTY BOY	WITTYBOY	Codeforces
8162	9999	0	LCM Sum	LCMSUM	Codeforces
8163	9999	0	GCD Extreme	GCDEX	Codeforces
8164	9999	0	GCD Extreme (hard)	GCDEX2	Codeforces
8165	9999	0	M&M Game	MMMGAME	Codeforces
8166	9999	0	Playing With Balls	IITKWPCN	Codeforces
8167	9999	0	Happy Coins	HC	Codeforces
8168	9999	0	The Game	QCJ3	Codeforces
8169	9999	0	A Coin Game	XOINC	Codeforces
8170	9999	0	Face the mate	FACENEMY	Codeforces
8171	9999	0	Number Game	NUMGAME	Codeforces
8172	9999	0	GAMING ARENA	GAMARENA	Codeforces
8173	9999	0	Black and White Nim	BNWNIM	Codeforces
8174	9999	0	Minimum Cost	MC	Codeforces
8175	9999	0	Edit distance	EDIST	Codeforces
8176	9999	0	Edit Distance Again	EDIT	Codeforces
8177	9999	0	Edit Distance	EDDIST	Codeforces
8178	9999	0	I Like Uppercase Palindrome	PLNDRM1	Codeforces
8179	9999	0	Even Numbers	EC_CONB	Codeforces
8180	9999	0	Cards	CRDS	Codeforces
8181	9999	0	Adding Reversed Numbers	ADDREV	Codeforces
8182	9999	0	Day of Pay	DAYOFPAY	Codeforces
8183	9999	0	Complete Binary Tree	CBINARYT	Codeforces
8184	9999	0	Happy Birthday !!!	HAPPYB	Codeforces
8185	9999	0	FIGUREFUL	ACMCEG2B	Codeforces
8186	9999	0	Pick the candies	ACMCEG2C	Codeforces
8187	9999	0	2D-SORT	SORT2D	Codeforces
8188	9999	0	HELP NERUBAN	DOTAA2	Codeforces
8189	9999	0	Count on a tree	COT	Codeforces
8190	9999	0	K-th Number	MKTHNUM	Codeforces
8191	9999	0	D-query	DQUERY	Codeforces
8192	9999	0	To the moon	TTM	Codeforces
8193	9999	0	Horrible Queries	HORRIBLE	Codeforces
8194	9999	0	K-th Number	MKTHNUM	Codeforces
8195	9999	0	Election Posters	POSTERS	Codeforces
8196	9999	0	Maximum Sum	KGSS	Codeforces
8197	9999	0	K-query	KQUERY	Codeforces
8198	9999	0	K-Query Online	KQUERYO	Codeforces
8199	9999	0	K-query II	KQUERY2	Codeforces
8200	9999	0	The area of the union of circles	CIRU	Codeforces
8201	9999	0	Submerging Islands	SUBMERGE	Codeforces
8202	9999	0	Police Query	POLQUERY	Codeforces
8203	9999	0	Expedition	EXPEDI	Codeforces
8204	9999	0	Promotion	PRO	Codeforces
8205	9999	0	The lazy programmer	LAZYPROG	Codeforces
8206	9999	0	Distinct Subsequences	DSUBSEQ	Codeforces
8207	9999	0	Bitmap	BITMAP	Codeforces
8208	9999	0	XOR Maximization	XMAX	Codeforces
8209	9999	0	Assignments	ASSIGN	Codeforces
8210	9999	0	The Knapsack Problem	KNAPSACK	Codeforces
8211	9999	0	Mixtures	MIXTURES	Codeforces
8212	9999	0	Help the problem setter	HELP	Codeforces
8213	9999	0	Huffman´s Greed	GREEDULM	Codeforces
8214	9999	0	Light Switching	LITE	Codeforces
8215	9999	0	Can you answer these queries I	GSS1	Codeforces
8216	9999	0	Can you answer these queries II	GSS2	Codeforces
8217	9999	0	Can you answer these queries III	GSS3	Codeforces
8218	9999	0	Maximum Sum	KGSS	Codeforces
8219	9999	0	Building Bridges(HARD)	BRDGHRD	Codeforces
8220	9999	0	Brackets	BRKTS	Codeforces
8221	9999	0	Frequent values	FREQUENT	Codeforces
8222	9999	0	Largest Rectangle in a Histogram	HISTOGRA	Codeforces
8223	9999	0	Query on a tree II	QTREE2	Codeforces
8224	9999	0	Binary Search Heap Construction	HEAPULM	Codeforces
8225	9999	0	Use of Hospital Facilities	HOSPITAL	Codeforces
8226	9999	0	Small factorials	FCTRL2	Codeforces
8227	9999	0	Julka	JULKA	Codeforces
8228	9999	0	Minimum Number	MINNUM	Codeforces
8229	9999	0	Recurrence	REC	Codeforces
8230	9999	0	Binary multiplication	MUL2COM	Codeforces
8231	9999	0	LUCIFER Number	LUCIFER	Codeforces
8232	9999	0	G-One Numbers	GONE	Codeforces
8233	9999	0	Ra-One Numbers	RAONE	Codeforces
8234	9999	0	KATHTHI	KATHTHI	Codeforces
8235	9999	0	Race Against Time	RACETIME	Codeforces
8236	9999	0	K-query II	KQUERY2	Codeforces
8237	9999	0	Extend to Palindrome	EPALIN	Codeforces
8238	9999	0	Palindromes	PLD	Codeforces
8239	9999	0	Ada and Spring Cleaning	ADACLEAN	Codeforces
8240	9999	0	Hacking	HACKING	Codeforces
8241	9999	0	Easy Longest Common Substring	ELCS	Codeforces
8242	9999	0	Connections	CONNECT	Codeforces
8243	9999	0	Kth Shortest Path	MKTHPATH	Codeforces
8244	9999	0	PATHS	WAYS	Codeforces
8245	9999	0	AVERYEASYPROBLEM	PROBLEM6	Codeforces
8246	9999	0	Number of digits	DIGITCNT	Codeforces
8247	9999	0	BF_MODULUS	MODULUS2	Codeforces
8248	9999	0	JAVA COUNTING	QWERTY03	Codeforces
8249	9999	0	Matrix Game	MATGAME	Codeforces
8250	9999	0	TRIVIADOR	TWOKINGS	Codeforces
8251	9999	0	TRIVIADOR	QWERTY04	Codeforces
8252	9999	0	TWO KINGS	CONQUER	Codeforces
8253	9999	0	THE WITTY BOY	WITTYBOY	Codeforces
8254	9999	0	Hello Recursion	HRECURS	Codeforces
8255	9999	0	THE WEIRD STAIRCASE	STAR3CAS	Codeforces
8256	9999	0	PICK UP DROP ESCAPE	CODEIT02	Codeforces
8257	9999	0	Order statistic set	ORDERSET	Codeforces
8258	9999	0	Can you answer these queries VI	GSS6	Codeforces
8259	9999	0	Matrix	KPMATRIX	Codeforces
8260	9999	0	Robotic Sort	CERC07S	Codeforces
8261	9999	0	Sum of products	SUMMUL	Codeforces
8262	9999	0	Blocks for kids	PBOARD	Codeforces
8263	9999	0	Totient Extreme	DCEPCA03	Codeforces
8264	9999	0	Euler Totient Function	ETF	Codeforces
8265	9999	0	Euler Totient Function Sieve	ETFS	Codeforces
8266	9999	0	Smallest Inverse Euler Totient Function	INVPHI	Codeforces
8267	9999	0	Totient in permutation (easy)	TIP1	Codeforces
8268	9999	0	Star Wars	GCJ08C	Codeforces
8269	9999	0	Electric Fences	FENCE3	Codeforces
8270	9999	0	Texas Trip	WLOO0707	Codeforces
8271	9999	0	Tin Cutter	TCUTTER	Codeforces
8272	9999	0	TRIVIADOR	TWOKINGS	Codeforces
8273	9999	0	TRIVIADOR	QWERTY04	Codeforces
8274	9999	0	TWO KINGS	CONQUER	Codeforces
8275	9999	0	THE WITTY BOY	WITTYBOY	Codeforces
8276	9999	0	Phone List	PHONELST	Codeforces
8277	9999	0	Zig-Zag rabbit	ZIGZAG	Codeforces
8278	9999	0	Shortcut	SHORTCUT	Codeforces
8279	9999	0	Easy Calculation	TRIGALGE	Codeforces
8280	9999	0	Square Root	SQRROOT	Codeforces
8281	9999	0	Cube Root	CUBERT	Codeforces
8282	9999	0	GRADE POINT AVERAGE	GPA1	Codeforces
8283	9999	0	IPL - CRICKET TOURNAMENT	IPL1	Codeforces
8284	9999	0	CUBE ROOT	CUBEROO2	Codeforces
8285	9999	0	Spring Loaded	SPRING	Codeforces
8286	9999	0	SBE201 Linked List	SBE201P2	Codeforces
8287	9999	0	Query Problem	QUERYSTR	Codeforces
8288	9999	0	Separate Points	SPOINTS	Codeforces
8289	9999	0	Yet Another N-Queen Problem	NQUEEN	Codeforces
8290	9999	0	Sudoku	SUDOKU	Codeforces
8291	9999	0	Run Away	RUNAWAY	Codeforces
8292	9999	0	Bacterial	BAC	Codeforces
8293	9999	0	A Chase In WonderLand	CHASE	Codeforces
8294	9999	0	Swamp Things	SWTHIN	Codeforces
8295	9999	0	Aliens	ALIENS	Codeforces
8296	9999	0	Minimum Diameter Circle	QCJ4	Codeforces
8297	9999	0	Lifting the Stone	STONE	Codeforces
8298	9999	0	Labyrinth	LABYR1	Codeforces
8299	9999	0	Halloween treats	HALLOW	Codeforces
8300	9999	0	Permalex	PRMLX	Codeforces
8301	9999	0	Spelling Lists	MIB	Codeforces
8302	9999	0	01 Sequence	SEQ1	Codeforces
8303	9999	0	To inifinity and Beyond	BUZZ	Codeforces
8304	9999	0	subarrays	ARRAYSUB	Codeforces
8305	9999	0	Binary Search Tree	BST	Codeforces
8306	9999	0	A Bug&#8217;s Life	BUGLIFE	Codeforces
8307	9999	0	Cell Phone	CERC07C	Codeforces
8308	9999	0	City Game	CTGAME	Codeforces
8309	9999	0	Stable Marriage Problem	STABLEMP	Codeforces
\.


--
-- Data for Name: problem_set; Type: TABLE DATA; Schema: public; Owner: ttnwfvvb
--

COPY public.problem_set (set_id, problem_id) FROM stdin;
1	4196
1	1789
1	2125
1	3221
1	4219
1	1793
1	2129
1	3239
1	3217
1	4199
1	1809
1	2145
1	4195
1	2128
1	4197
1	1792
1	1788
1	2124
1	3220
1	277
1	3218
1	4198
1	255
1	1787
1	2123
1	1791
1	2127
1	257
1	3216
1	252
1	1811
1	2147
1	254
1	4200
1	3219
1	253
1	1790
1	2126
1	273
1	3215
1	4201
1	256
1	3237
1	4217
1	258
1	1794
1	2130
1	3222
1	4202
1	259
1	1795
1	2131
1	3223
1	4203
1	260
1	1796
1	2132
1	3224
1	4204
1	261
1	1797
1	2133
1	3225
1	4205
1	262
1	1798
1	2134
1	3226
1	4206
1	263
1	1799
1	2135
1	3227
1	4207
1	264
1	1800
1	2136
1	3228
1	4208
1	265
1	1801
1	2137
1	3229
1	4209
1	266
1	1802
1	2138
1	3230
1	4210
1	267
1	1803
1	2139
1	3231
1	4211
1	268
1	1804
1	2140
1	3232
1	4212
1	269
1	1805
1	2141
1	3233
1	4213
1	270
1	1806
1	2142
1	3234
1	4214
1	271
1	1807
1	2143
1	3235
1	4215
1	272
1	275
1	279
1	1813
1	2149
1	3241
1	4221
1	276
1	1812
1	2148
1	1808
1	2144
1	3236
1	1814
1	2150
1	3240
1	278
1	3242
1	4216
1	4222
1	1810
1	2146
1	3238
1	4218
1	274
1	5937
1	5936
1	5934
1	5955
1	5933
1	5932
1	5935
1	5931
1	5953
1	5938
1	5939
1	5940
1	5941
1	5942
1	5943
1	5944
1	5945
1	5946
1	5947
1	5948
1	5949
1	5950
1	5951
1	5957
1	5956
1	5952
1	5958
1	5954
1	7165
1	5601
1	7169
1	5600
1	5598
1	7168
1	7164
1	5619
1	5597
1	7163
1	7167
1	5596
1	5599
1	5595
1	7166
1	5617
1	5602
1	7170
1	5603
1	7171
1	5604
1	7172
1	5605
1	7173
1	5606
1	7174
1	5607
1	7175
1	5608
1	7176
1	5609
1	7177
1	5610
1	7178
1	5611
1	7179
1	5612
1	7180
1	5613
1	7181
1	5614
1	7182
1	5615
1	5621
1	5620
1	5616
1	5622
1	5618
1	4897
1	2717
1	2735
1	4901
1	2713
1	4917
1	4900
1	2716
1	4896
1	2714
1	4895
1	4899
1	2712
1	4919
1	2715
1	2711
1	4898
1	2733
1	2718
1	4902
1	2719
1	4903
1	2720
1	4904
1	2721
1	4905
1	2722
1	4906
1	2723
1	4907
1	2724
1	4908
1	2725
1	4909
1	2726
1	4910
1	2727
1	4911
1	2728
1	4912
1	2729
1	4913
1	2730
1	4914
1	2731
1	4915
1	2737
1	4921
1	2736
1	4920
1	2732
1	4916
1	2738
1	4922
1	2734
1	4918
1	57
1	80
1	60
1	56
1	58
1	59
1	61
1	62
1	63
1	64
1	65
1	66
1	67
1	68
1	69
1	70
1	71
1	72
1	73
1	74
1	75
1	76
1	79
1	83
1	82
1	77
1	78
1	81
1	1289
1	2213
1	5265
1	2857
1	6637
1	1307
1	2231
1	5283
1	1285
1	2209
1	2856
1	2854
1	6636
1	6634
1	5261
1	1288
1	2212
1	6180
1	1286
1	2210
1	2875
1	2853
1	5262
1	6655
1	6633
1	1284
1	2208
1	2852
1	5260
1	6632
1	1287
1	2211
1	2855
1	1283
1	2207
1	2851
1	5259
1	5263
1	6631
1	6635
1	1305
1	2229
1	2873
1	5281
1	6653
1	1290
1	2214
1	2858
1	5266
1	6638
1	1291
1	2215
1	2859
1	5267
1	6639
1	1292
1	2216
1	2860
1	5268
1	6640
1	1293
1	2217
1	2861
1	5269
1	6641
1	1294
1	2218
1	2862
1	5270
1	6642
1	1295
1	2219
1	2863
1	5271
1	6643
1	1296
1	2220
1	2864
1	5272
1	6644
1	1297
1	2221
1	2865
1	5273
1	6645
1	1298
1	2222
1	2866
1	5274
1	6646
1	1299
1	2223
1	2867
1	5275
1	6647
1	1300
1	2224
1	2868
1	5276
1	6648
1	1301
1	2225
1	2869
1	5277
1	6649
1	1302
1	2226
1	2870
1	5278
1	6650
1	1303
1	2227
1	2871
1	5279
1	6651
1	1309
1	2233
1	2877
1	5285
1	6657
1	2876
1	6656
1	1308
1	6652
1	1304
1	2228
1	6658
1	2232
1	1310
1	2234
1	2872
1	2878
1	5286
1	1306
1	2230
1	2874
1	5282
1	6654
1	4565
1	2353
1	4583
1	2352
1	4561
1	2350
1	4564
1	2371
1	4562
1	2349
1	2348
1	4560
1	2351
1	4563
1	2347
1	4559
1	2369
1	4581
1	2354
1	4566
1	2355
1	4567
1	2356
1	4568
1	2357
1	4569
1	2358
1	4570
1	2359
1	4571
1	2360
1	4572
1	2361
1	4573
1	2362
1	4574
1	2363
1	4575
1	2364
1	4576
1	2365
1	4577
1	2366
1	4578
1	2367
1	4579
1	2373
1	4585
1	2372
1	4584
1	2368
1	4580
1	2374
1	4586
1	2370
1	4582
1	4229
1	6301
1	4247
1	4225
1	6300
1	6298
1	4228
1	4226
1	6319
1	6297
1	4224
1	6296
1	4227
1	6299
1	4223
1	6295
1	4245
1	6317
1	4230
1	6302
1	4231
1	6303
1	4232
1	6304
1	4233
1	6305
1	4234
1	6306
1	4235
1	6307
1	4236
1	6308
1	4237
1	6309
1	4238
1	6310
1	4239
1	6311
1	4240
1	6312
1	4241
1	6313
1	4242
1	6314
1	4243
1	6315
1	4249
1	6321
1	4248
1	6320
1	4244
1	6316
1	4250
1	6322
1	6318
1	4246
1	617
1	6913
1	1149
1	3585
1	621
1	6917
1	1148
1	3584
1	637
1	1146
1	3582
1	6933
1	6916
1	620
1	616
1	6912
1	1167
1	3603
1	615
1	1145
1	3581
1	619
1	6911
1	6915
1	1144
1	3580
1	639
1	6935
1	3583
1	1147
1	618
1	1143
1	6914
1	3579
1	1165
1	3601
1	622
1	1150
1	6918
1	3586
1	623
1	1151
1	6919
1	3587
1	624
1	1152
1	6920
1	3588
1	625
1	1153
1	6921
1	3589
1	626
1	1154
1	6922
1	3590
1	627
1	1155
1	6923
1	3591
1	628
1	1156
1	6924
1	3592
1	629
1	1157
1	6925
1	3593
1	630
1	1158
1	6926
1	3594
1	631
1	1159
1	6927
1	3595
1	632
1	1160
1	6928
1	3596
1	633
1	1161
1	6929
1	3597
1	634
1	1162
1	6930
1	3598
1	635
1	1163
1	6931
1	3599
1	641
1	1169
1	3605
1	6937
1	640
1	1168
1	6936
1	636
1	1164
1	3600
1	1170
1	642
1	3606
1	6932
1	6938
1	638
1	1166
1	3602
1	6934
1	3889
1	3893
1	3909
1	3892
1	3888
1	3887
1	3891
1	3911
1	3890
1	3894
1	3895
1	3896
1	3897
1	3898
1	3899
1	3900
1	3901
1	3902
1	3903
1	3904
1	3905
1	3906
1	3907
1	3913
1	3912
1	3908
1	3914
1	3910
1	561
1	565
1	581
1	564
1	560
1	559
1	563
1	583
1	562
1	566
1	567
1	568
1	569
1	570
1	571
1	572
1	573
1	574
1	575
1	576
1	577
1	578
1	579
1	585
1	584
1	580
1	586
1	582
1	3249
1	3267
1	3245
1	3248
1	3246
1	3244
1	3247
1	3243
1	3265
1	3250
1	3251
1	3252
1	3253
1	3254
1	3255
1	3256
1	3257
1	3258
1	3259
1	3260
1	3261
1	3262
1	3263
1	3269
1	3268
1	3264
1	3270
1	3266
1	5960
1	2157
1	4929
1	5629
1	5983
1	2156
1	4928
1	5628
1	2154
1	4926
1	5626
1	5959
1	5963
1	5961
1	5962
1	2175
1	4947
1	5647
1	2153
1	4925
1	5625
1	2152
1	4924
1	5624
1	5964
1	2155
1	4927
1	5627
1	2151
1	4923
1	5623
1	5965
1	2173
1	4945
1	5645
1	5981
1	2158
1	4930
1	5630
1	5966
1	2159
1	4931
1	5631
1	5967
1	2160
1	4932
1	5632
1	5968
1	2161
1	4933
1	5633
1	5969
1	2162
1	4934
1	5634
1	5970
1	2163
1	4935
1	5635
1	5971
1	2164
1	4936
1	5636
1	5972
1	2165
1	4937
1	5637
1	5973
1	2166
1	4938
1	5638
1	5974
1	2167
1	4939
1	5639
1	5975
1	2168
1	4940
1	5640
1	5976
1	2169
1	4941
1	5641
1	5977
1	2170
1	4942
1	5642
1	5978
1	2171
1	4943
1	5643
1	5979
1	2177
1	4949
1	5649
1	5985
1	5648
1	5984
1	2176
1	4948
1	2172
1	4944
1	2178
1	4950
1	5644
1	5650
1	5980
1	5986
1	2174
1	4946
1	5646
1	5982
1	6661
1	2742
1	6665
1	2740
1	6681
1	2744
1	6664
1	6660
1	2745
1	6659
1	2741
1	6663
1	2763
1	6683
1	2743
1	2739
1	6662
1	2761
1	2746
1	6666
1	2747
1	6667
1	2748
1	6668
1	2749
1	6669
1	2750
1	6670
1	2751
1	6671
1	2752
1	6672
1	2753
1	6673
1	2754
1	6674
1	2755
1	6675
1	2756
1	6676
1	2757
1	6677
1	2758
1	6678
1	2759
1	6679
1	2765
1	6685
1	2764
1	6684
1	2760
1	6680
1	2766
1	6686
1	2762
1	6682
1	4589
1	4593
1	4609
1	4592
1	4588
1	4587
1	4591
1	4611
1	4590
1	4594
1	4595
1	4596
1	4597
1	4598
1	4599
1	4600
1	4601
1	4602
1	4603
1	4604
1	4605
1	4606
1	4607
1	4613
1	4612
1	4608
1	4614
1	4610
1	761
1	1317
1	760
1	1316
1	758
1	1314
1	779
1	1335
1	757
1	1313
1	756
1	1312
1	759
1	1315
1	755
1	1311
1	777
1	1333
1	762
1	1318
1	763
1	1319
1	764
1	1320
1	765
1	1321
1	766
1	1322
1	767
1	1323
1	768
1	1324
1	769
1	1325
1	770
1	1326
1	771
1	1327
1	772
1	1328
1	773
1	1329
1	774
1	1330
1	775
1	1331
1	781
1	1337
1	780
1	1336
1	776
1	1332
1	782
1	1338
1	778
1	1334
1	2377
1	2881
1	5289
1	2241
1	4257
1	6329
1	1821
1	2259
1	2381
1	2885
1	1820
1	2237
1	4253
1	1818
1	2397
1	2901
1	4275
1	6325
1	5309
1	2380
1	2884
1	5292
1	4256
1	2240
1	2376
1	2880
1	1839
1	2238
1	4254
1	1817
1	2375
1	2879
1	2379
1	2883
1	1816
1	2236
1	4252
1	2399
1	2903
1	5291
1	5311
1	6324
1	1819
1	2239
1	4255
1	1815
1	2235
1	2378
1	2882
1	4251
1	5290
1	6323
1	1837
1	2257
1	4273
1	6345
1	1822
1	2242
1	2382
1	2886
1	4258
1	5294
1	6330
1	1823
1	2243
1	2383
1	2887
1	4259
1	5295
1	6331
1	1824
1	2244
1	2384
1	2888
1	4260
1	5296
1	6332
1	1825
1	2245
1	2385
1	2889
1	4261
1	5297
1	6333
1	1826
1	2246
1	2386
1	2890
1	4262
1	5298
1	6334
1	1827
1	2247
1	2387
1	2891
1	4263
1	5299
1	6335
1	1828
1	2248
1	2388
1	2892
1	4264
1	5300
1	6336
1	1829
1	2249
1	2389
1	2893
1	4265
1	5301
1	6337
1	1830
1	2250
1	2390
1	2894
1	4266
1	5302
1	6338
1	1831
1	2251
1	2391
1	2895
1	4267
1	5303
1	6339
1	1832
1	2252
1	2392
1	2896
1	4268
1	5304
1	6340
1	1833
1	2253
1	2393
1	2897
1	4269
1	5305
1	6341
1	1834
1	2254
1	2394
1	2898
1	4270
1	5306
1	6342
1	1835
1	2255
1	2395
1	2899
1	4271
1	5307
1	6343
1	1841
1	2261
1	2401
1	2905
1	4277
1	5313
1	6349
1	4276
1	6348
1	1840
1	4272
1	2260
1	6344
1	2400
1	1836
1	6350
1	2256
1	2396
1	1842
1	2262
1	2402
1	2906
1	4278
1	1838
1	2258
1	2398
1	2902
1	4274
1	5310
1	6346
1	509
1	508
1	506
1	527
1	505
1	504
1	507
1	503
1	525
1	510
1	511
1	512
1	513
1	514
1	515
1	516
1	517
1	518
1	519
1	520
1	521
1	522
1	523
1	529
1	528
1	524
1	530
1	526
1	3081
1	3613
1	3080
1	3612
1	3078
1	3610
1	3099
1	3631
1	3077
1	3609
1	3076
1	3608
1	3079
1	3611
1	3075
1	3607
1	3097
1	3629
1	3082
1	3614
1	3083
1	3615
1	3084
1	3616
1	3085
1	3617
1	3086
1	3618
1	3087
1	3619
1	3088
1	3620
1	3089
1	3621
1	3090
1	3622
1	3091
1	3623
1	3092
1	3624
1	3093
1	3625
1	3094
1	3626
1	3095
1	3627
1	3101
1	3633
1	3100
1	3632
1	3096
1	3628
1	3102
1	3634
1	3098
1	3630
1	5989
1	5993
1	6009
1	5992
1	5988
1	5987
1	5991
1	6011
1	5990
1	5994
1	5995
1	5996
1	5997
1	5998
1	5999
1	6000
1	6001
1	6002
1	6003
1	6004
1	6005
1	6006
1	6007
1	6013
1	6012
1	6008
1	6014
1	6010
1	3277
1	3921
1	6942
1	3276
1	3920
1	6940
1	3274
1	3918
1	6944
1	3295
1	3939
1	6945
1	3273
1	3917
1	6941
1	3272
1	3916
1	6963
1	3275
1	3919
1	6943
1	3271
1	3915
1	6939
1	3293
1	3937
1	6961
1	3278
1	3922
1	6946
1	3279
1	3923
1	6947
1	3280
1	3924
1	6948
1	3281
1	3925
1	6949
1	3282
1	3926
1	6950
1	3283
1	3927
1	6951
1	3284
1	3928
1	6952
1	3285
1	3929
1	6953
1	3286
1	3930
1	6954
1	3287
1	3931
1	6955
1	3288
1	3932
1	6956
1	3289
1	3933
1	6957
1	3290
1	3934
1	6958
1	3291
1	3935
1	6959
1	3297
1	3941
1	6965
1	6964
1	3296
1	3940
1	6960
1	3292
1	3936
1	3298
1	3942
1	6966
1	3294
1	3938
1	6962
1	5653
1	5657
1	5673
1	5656
1	5652
1	5651
1	5655
1	5675
1	5654
1	5658
1	5659
1	5660
1	5661
1	5662
1	5663
1	5664
1	5665
1	5666
1	5667
1	5668
1	5669
1	5670
1	5671
1	5677
1	5676
1	5672
1	5678
1	5674
1	4952
1	1037
1	4621
1	4975
1	1055
1	1033
1	4620
1	4955
1	4618
1	4951
1	4953
1	1036
1	4954
1	1034
1	4639
1	4617
1	1032
1	4616
1	4956
1	1035
1	4619
1	1031
1	4615
1	4957
1	1053
1	4637
1	4973
1	1038
1	4622
1	4958
1	1039
1	4623
1	4959
1	1040
1	4624
1	4960
1	1041
1	4625
1	4961
1	1042
1	4626
1	4962
1	1043
1	4627
1	4963
1	1044
1	4628
1	4964
1	1045
1	4629
1	4965
1	1046
1	4630
1	4966
1	1047
1	4631
1	4967
1	1048
1	4632
1	4968
1	1049
1	4633
1	4969
1	1050
1	4634
1	4970
1	1051
1	4635
1	4971
1	1057
1	4641
1	4977
1	1056
1	4640
1	4976
1	1052
1	4636
1	4972
1	1058
1	4642
1	4978
1	1054
1	4638
1	4974
1	5321
1	1342
1	5339
1	1340
1	5317
1	1344
1	5320
1	1345
1	5318
1	1341
1	1363
1	5316
1	1343
1	5319
1	1339
1	5315
1	1361
1	5337
1	1346
1	5322
1	1347
1	5323
1	1348
1	5324
1	1349
1	5325
1	1350
1	5326
1	1351
1	5327
1	1352
1	5328
1	1353
1	5329
1	1354
1	5330
1	1355
1	5331
1	1356
1	5332
1	1357
1	5333
1	1358
1	5334
1	1359
1	5335
1	1365
1	5341
1	1364
1	5340
1	1360
1	5336
1	1366
1	5342
1	1362
1	5338
1	449
1	453
1	469
1	452
1	448
1	447
1	451
1	471
1	450
1	454
1	455
1	456
1	457
1	458
1	459
1	460
1	461
1	462
1	463
1	464
1	465
1	466
1	467
1	473
1	472
1	468
1	474
1	470
1	6689
1	6693
1	6709
1	6692
1	6688
1	6687
1	6691
1	6711
1	6690
1	6694
1	6695
1	6696
1	6697
1	6698
1	6699
1	6700
1	6701
1	6702
1	6703
1	6704
1	6705
1	6706
1	6707
1	6713
1	6712
1	6708
1	6714
1	6710
1	3637
1	2913
1	6357
1	3641
1	2912
1	6356
1	2910
1	3657
1	6354
1	3640
1	3636
1	2931
1	6375
1	2909
1	3635
1	6353
1	3639
1	2908
1	6352
1	3659
1	2911
1	6355
1	2907
1	3638
1	6351
1	2929
1	6373
1	2914
1	3642
1	6358
1	2915
1	3643
1	6359
1	2916
1	3644
1	6360
1	2917
1	3645
1	6361
1	2918
1	3646
1	6362
1	2919
1	3647
1	6363
1	2920
1	3648
1	6364
1	2921
1	3649
1	6365
1	2922
1	3650
1	6366
1	2923
1	3651
1	6367
1	2924
1	3652
1	6368
1	2925
1	3653
1	6369
1	2926
1	3654
1	6370
1	2927
1	3655
1	6371
1	2933
1	3661
1	6377
1	2932
1	3660
1	6376
1	2928
1	3656
1	6372
1	2934
1	3662
1	6378
1	2930
1	3658
1	6374
1	3053
1	1849
1	4285
1	3071
1	1848
1	3049
1	4284
1	1846
1	4282
1	2904
1	3052
1	1867
1	3050
1	4303
1	1845
1	4281
1	2900
1	1844
1	3048
1	4280
1	1847
1	3051
1	4283
1	1843
1	3047
1	4279
1	1865
1	3069
1	4301
1	1850
1	3054
1	4286
1	1851
1	3055
1	4287
1	1852
1	3056
1	4288
1	1853
1	3057
1	4289
1	1854
1	3058
1	4290
1	1855
1	3059
1	4291
1	1856
1	3060
1	4292
1	1857
1	3061
1	4293
1	1858
1	3062
1	4294
1	1859
1	3063
1	4295
1	1860
1	3064
1	4296
1	1861
1	3065
1	4297
1	1862
1	3066
1	4298
1	1863
1	3067
1	4299
1	1869
1	3073
1	4305
1	4304
1	1868
1	3072
1	1864
1	3068
1	4300
1	1870
1	3074
1	4306
1	1866
1	3070
1	4302
1	2180
1	3305
1	649
1	2409
1	2203
1	3323
1	648
1	2183
1	2408
1	646
1	2179
1	2406
1	3301
1	2181
1	2182
1	3304
1	667
1	2427
1	3302
1	645
1	2405
1	644
1	2404
1	3300
1	2184
1	647
1	2407
1	3303
1	643
1	2403
1	3299
1	2185
1	665
1	2201
1	2425
1	3321
1	650
1	2186
1	2410
1	3306
1	651
1	2187
1	2411
1	3307
1	652
1	2188
1	2412
1	3308
1	653
1	2189
1	2413
1	3309
1	654
1	2190
1	2414
1	3310
1	655
1	2191
1	2415
1	3311
1	656
1	2192
1	2416
1	3312
1	657
1	2193
1	2417
1	3313
1	658
1	2194
1	2418
1	3314
1	659
1	2195
1	2419
1	3315
1	660
1	2196
1	2420
1	3316
1	661
1	2197
1	2421
1	3317
1	662
1	2198
1	2422
1	3318
1	663
1	2199
1	2423
1	3319
1	669
1	2205
1	2429
1	3325
1	3324
1	668
1	2204
1	2428
1	664
1	2200
1	2424
1	670
1	2206
1	2430
1	3320
1	3326
1	3322
1	666
1	2426
1	2202
1	6018
1	2269
1	6020
1	2268
1	2266
1	6021
1	6039
1	2287
1	6017
1	2265
1	6016
1	2264
1	6019
1	2267
1	2263
1	6015
1	2285
1	6037
1	2270
1	6022
1	2271
1	6023
1	2272
1	6024
1	2273
1	6025
1	2274
1	6026
1	2275
1	6027
1	2276
1	6028
1	2277
1	6029
1	2278
1	6030
1	2279
1	6031
1	2280
1	6032
1	2281
1	6033
1	2282
1	6034
1	2283
1	6035
1	2289
1	6041
1	6040
1	2288
1	6036
1	2284
1	2290
1	6042
1	2286
1	6038
1	4985
1	5003
1	4981
1	4984
1	4982
1	4980
1	4983
1	4979
1	5001
1	4986
1	4987
1	4988
1	4989
1	4990
1	4991
1	4992
1	4993
1	4994
1	4995
1	4996
1	4997
1	4998
1	4999
1	5005
1	5004
1	5000
1	5006
1	5002
1	3944
1	845
1	90
1	3967
1	108
1	844
1	3947
1	87
1	842
1	3943
1	3945
1	86
1	3946
1	89
1	863
1	841
1	840
1	85
1	3948
1	843
1	839
1	88
1	3949
1	84
1	861
1	3965
1	846
1	3950
1	91
1	847
1	3951
1	92
1	848
1	3952
1	93
1	849
1	3953
1	94
1	850
1	3954
1	95
1	851
1	3955
1	96
1	852
1	3956
1	97
1	853
1	3957
1	98
1	854
1	3958
1	99
1	855
1	3959
1	100
1	856
1	3960
1	101
1	857
1	3961
1	102
1	858
1	3962
1	103
1	859
1	3963
1	104
1	107
1	111
1	865
1	3969
1	110
1	864
1	3968
1	105
1	860
1	3964
1	106
1	866
1	3970
1	862
1	3966
1	109
1	5685
1	5684
1	5682
1	5703
1	5681
1	5680
1	5683
1	5679
1	5701
1	5686
1	5687
1	5688
1	5689
1	5690
1	5691
1	5692
1	5693
1	5694
1	5695
1	5696
1	5697
1	5698
1	5699
1	5705
1	5704
1	5700
1	5706
1	5702
1	2489
1	2493
1	2509
1	2492
1	2488
1	2487
1	2491
1	2511
1	2490
1	2494
1	2495
1	2496
1	2497
1	2498
1	2499
1	2500
1	2501
1	2502
1	2503
1	2504
1	2505
1	2506
1	2507
1	2513
1	2512
1	2508
1	2514
1	2510
1	4645
1	4649
1	4665
1	4648
1	4644
1	4643
1	4647
1	4667
1	4646
1	4650
1	4651
1	4652
1	4653
1	4654
1	4655
1	4656
1	4657
1	4658
1	4659
1	4660
1	4661
1	4662
1	4663
1	4669
1	4668
1	4664
1	4670
1	4666
1	6968
1	5349
1	6991
1	5348
1	6971
1	5346
1	6967
1	6969
1	6970
1	5367
1	5345
1	5344
1	6972
1	5347
1	5343
1	6973
1	5365
1	6989
1	5350
1	6974
1	5351
1	6975
1	5352
1	6976
1	5353
1	6977
1	5354
1	6978
1	5355
1	6979
1	5356
1	6980
1	5357
1	6981
1	5358
1	6982
1	5359
1	6983
1	5360
1	6984
1	5361
1	6985
1	5362
1	6986
1	5363
1	6987
1	5369
1	6993
1	5368
1	6992
1	5364
1	6988
1	5370
1	6994
1	5366
1	6990
1	3025
1	6385
1	3024
1	6384
1	3022
1	6382
1	361
1	3043
1	6403
1	339
1	3021
1	6381
1	341
1	3020
1	6380
1	336
1	338
1	3023
1	6383
1	337
1	3019
1	6379
1	357
1	340
1	3041
1	6401
1	342
1	3026
1	6386
1	343
1	3027
1	6387
1	344
1	3028
1	6388
1	345
1	3029
1	6389
1	346
1	3030
1	6390
1	347
1	3031
1	6391
1	348
1	3032
1	6392
1	349
1	3033
1	6393
1	350
1	3034
1	6394
1	351
1	3035
1	6395
1	352
1	3036
1	6396
1	353
1	3037
1	6397
1	354
1	3038
1	6398
1	355
1	3039
1	6399
1	356
1	359
1	363
1	3045
1	6405
1	360
1	3044
1	6404
1	3040
1	6400
1	3046
1	6406
1	362
1	3042
1	6402
1	358
1	1873
1	1928
1	4313
1	3669
1	1951
1	1877
1	4331
1	1931
1	3668
1	4309
1	1927
1	3666
1	1893
1	1876
1	1929
1	1872
1	1930
1	4312
1	3687
1	4310
1	1871
1	3665
1	1875
1	3664
1	4308
1	1895
1	1932
1	3667
1	4311
1	1874
1	3663
1	4307
1	1933
1	1949
1	3685
1	4329
1	1878
1	1934
1	3670
1	4314
1	1879
1	1935
1	3671
1	4315
1	1880
1	1936
1	3672
1	4316
1	1881
1	1937
1	3673
1	4317
1	1882
1	1938
1	3674
1	4318
1	1883
1	1939
1	3675
1	4319
1	1884
1	1940
1	3676
1	4320
1	1885
1	1941
1	3677
1	4321
1	1942
1	1886
1	3678
1	4322
1	1887
1	1943
1	3679
1	4323
1	1888
1	1944
1	3680
1	4324
1	1889
1	1945
1	3681
1	4325
1	1890
1	1946
1	3682
1	4326
1	1891
1	1947
1	3683
1	4327
1	1897
1	1953
1	3689
1	4333
1	1896
1	1952
1	3688
1	1892
1	1948
1	3684
1	1954
1	1898
1	3690
1	4332
1	4328
1	4334
1	1894
1	1950
1	3686
1	4330
1	785
1	3977
1	3333
1	789
1	3995
1	3332
1	3973
1	805
1	3330
1	788
1	784
1	3976
1	3351
1	3974
1	783
1	3329
1	787
1	3328
1	3972
1	807
1	3331
1	3975
1	786
1	3327
1	3971
1	3349
1	3993
1	790
1	3334
1	3978
1	791
1	3335
1	3979
1	792
1	3336
1	3980
1	793
1	3337
1	3981
1	794
1	3338
1	3982
1	795
1	3339
1	3983
1	796
1	3340
1	3984
1	797
1	3341
1	3985
1	798
1	3342
1	3986
1	799
1	3343
1	3987
1	800
1	3344
1	3988
1	801
1	3345
1	3989
1	802
1	3346
1	3990
1	803
1	3347
1	3991
1	809
1	3353
1	3997
1	3996
1	808
1	3352
1	804
1	3348
1	3992
1	810
1	3354
1	3998
1	806
1	3350
1	3994
1	6049
1	6048
1	6046
1	6067
1	6045
1	6044
1	6047
1	6043
1	6065
1	6050
1	6051
1	6052
1	6053
1	6054
1	6055
1	6056
1	6057
1	6058
1	6059
1	6060
1	6061
1	6062
1	6063
1	6069
1	6068
1	6064
1	6070
1	6066
1	1
1	6716
1	6739
1	6719
1	6715
1	6717
1	6718
1	6720
1	6721
1	6737
1	6722
1	6723
1	6724
1	6725
1	6726
1	6727
1	6728
1	6729
1	6730
1	6731
1	6732
1	6733
1	6734
1	6735
1	6741
1	6740
1	6736
1	6742
1	6738
1	305
1	283
1	285
1	280
1	282
1	281
1	301
1	284
1	286
1	287
1	288
1	289
1	290
1	291
1	292
1	293
1	294
1	295
1	296
1	297
1	298
1	299
1	300
1	303
1	307
1	304
1	306
1	302
1	2297
1	2315
1	2293
1	2296
1	2294
1	2292
1	2295
1	2291
1	2313
1	2298
1	2299
1	2300
1	2301
1	2302
1	2303
1	2304
1	2305
1	2306
1	2307
1	2308
1	2309
1	2310
1	2311
1	2317
1	2316
1	2312
1	2318
1	2314
1	5013
1	4677
1	5377
1	5031
1	4676
1	5009
1	5376
1	4674
1	5374
1	5012
1	5395
1	4695
1	5010
1	4673
1	5373
1	4672
1	5008
1	5372
1	5375
1	4675
1	5011
1	4671
1	5007
1	5371
1	4693
1	5029
1	5393
1	4678
1	5014
1	5378
1	4679
1	5015
1	5379
1	4680
1	5016
1	5380
1	4681
1	5017
1	5381
1	4682
1	5018
1	5382
1	4683
1	5019
1	5383
1	4684
1	5020
1	5384
1	4685
1	5021
1	5385
1	4686
1	5022
1	5386
1	4687
1	5023
1	5387
1	4688
1	5024
1	5388
1	4689
1	5025
1	5389
1	4690
1	5026
1	5390
1	4691
1	5027
1	5391
1	4697
1	5033
1	5397
1	5032
1	4696
1	5396
1	5392
1	4692
1	5028
1	4698
1	5034
1	5398
1	4694
1	5030
1	5394
1	2432
1	5708
1	6409
1	1961
1	2521
1	926
1	2455
1	5731
1	1979
1	6413
1	924
1	1957
1	2435
1	2431
1	2518
1	2520
1	5707
1	5711
1	6429
1	6412
1	928
1	2433
1	5709
1	1960
1	2434
1	5710
1	929
1	1958
1	2539
1	2517
1	6407
1	6408
1	925
1	6411
1	947
1	1956
1	2516
1	6431
1	2436
1	5712
1	927
1	1959
1	2519
1	923
1	1955
1	2515
1	2437
1	5713
1	6410
1	945
1	1977
1	2453
1	2537
1	5729
1	930
1	1962
1	2438
1	2522
1	5714
1	6414
1	931
1	1963
1	2439
1	2523
1	5715
1	6415
1	932
1	1964
1	2440
1	2524
1	5716
1	6416
1	933
1	1965
1	2441
1	2525
1	5717
1	6417
1	934
1	1966
1	2442
1	2526
1	5718
1	6418
1	935
1	1967
1	2443
1	2527
1	5719
1	6419
1	936
1	1968
1	2444
1	2528
1	5720
1	6420
1	937
1	1969
1	2445
1	2529
1	5721
1	6421
1	938
1	1970
1	2446
1	2530
1	5722
1	6422
1	3800
1	939
1	1971
1	2447
1	2531
1	5723
1	6423
1	940
1	1972
1	2448
1	2532
1	5724
1	6424
1	941
1	1973
1	2449
1	2533
1	5725
1	6425
1	942
1	1974
1	2450
1	2534
1	5726
1	6426
1	943
1	1975
1	2451
1	2535
1	5727
1	6427
1	949
1	1981
1	2457
1	2541
1	5733
1	6433
1	2540
1	5732
1	6432
1	6428
1	948
1	1980
1	2456
1	944
1	1976
1	2452
1	950
1	1982
1	2458
1	2542
1	5734
1	6434
1	946
1	1978
1	2454
1	2538
1	5730
1	6430
1	2997
1	7001
1	4341
1	3015
1	7019
1	2993
1	4340
1	6997
1	4338
1	1677
1	2996
1	7000
1	2994
1	4359
1	6998
1	4337
1	2992
1	1678
1	4336
1	6996
1	2995
1	4339
1	6999
1	2991
1	4335
1	6995
1	3013
1	4357
1	7017
1	2998
1	4342
1	7002
1	2999
1	4343
1	7003
1	3000
1	4344
1	7004
1	3001
1	4345
1	7005
1	3002
1	4346
1	7006
1	3003
1	4347
1	7007
1	3004
1	4348
1	7008
1	3005
1	4349
1	7009
1	3006
1	4350
1	7010
1	3007
1	4351
1	7011
1	3008
1	4352
1	7012
1	3009
1	4353
1	7013
1	3010
1	4354
1	7014
1	3011
1	4355
1	7015
1	3017
1	4361
1	7021
1	5293
1	3016
1	4360
1	7020
1	3012
1	4356
1	7016
1	3018
1	4362
1	7022
1	3014
1	4358
1	7018
1	5288
1	5287
1	6077
1	6095
1	6073
1	6076
1	6074
1	6072
1	6075
1	6071
1	6093
1	6078
1	6079
1	6080
1	6081
1	6082
1	6083
1	6084
1	6085
1	6086
1	6087
1	6088
1	6089
1	6090
1	6091
1	6097
1	6096
1	6092
1	6098
1	6094
1	3692
1	4005
1	1513
1	3361
1	3715
1	4023
1	1512
1	3360
1	3695
1	1510
1	3358
1	3691
1	4001
1	3693
1	3694
1	4004
1	1531
1	3379
1	4002
1	1509
1	3357
1	1508
1	3356
1	4000
1	3696
1	1511
1	3359
1	4003
1	1507
1	3355
1	3999
1	3697
1	1529
1	3377
1	3713
1	4021
1	1514
1	3362
1	3698
1	4006
1	1515
1	3363
1	3699
1	4007
1	1516
1	3364
1	3700
1	4008
1	1517
1	3365
1	3701
1	4009
1	1518
1	3366
1	3702
1	4010
1	1519
1	3367
1	3703
1	4011
1	1520
1	3368
1	3704
1	4012
1	1521
1	3369
1	3705
1	4013
1	1522
1	3370
1	3706
1	4014
1	1523
1	3371
1	3707
1	4015
1	1524
1	3372
1	3708
1	4016
1	1525
1	3373
1	3709
1	4017
1	1526
1	3374
1	3710
1	4018
1	1527
1	3375
1	3711
1	4019
1	1533
1	3381
1	3717
1	4025
1	3
1	4024
1	3716
1	1532
1	3380
1	1528
1	3376
1	1534
1	3382
1	3712
1	3718
1	4020
1	4026
1	1530
1	3378
1	3714
1	4022
1	2
1	1700
1	1702
1	171
1	1065
1	170
1	1064
1	173
1	1062
1	5312
1	192
1	174
1	1083
1	1061
1	5308
1	1060
1	169
1	1063
1	5314
1	1059
1	172
1	168
1	1081
1	1066
1	175
1	1067
1	176
1	1068
1	177
1	1069
1	178
1	1070
1	179
1	1071
1	180
1	1072
1	181
1	1073
1	182
1	1074
1	183
1	1075
1	184
1	1076
1	185
1	1077
1	186
1	1078
1	187
1	1079
1	188
1	191
1	195
1	1085
1	194
1	1084
1	189
1	1080
1	190
1	1086
1	1082
1	193
1	5741
1	5041
1	5759
1	5040
1	5737
1	5038
1	5740
1	5059
1	5738
1	5037
1	5036
1	5736
1	5039
1	5739
1	5035
1	5735
1	5057
1	5757
1	5042
1	5742
1	5043
1	5743
1	5044
1	5744
1	5045
1	5745
1	5046
1	5746
1	5047
1	5747
1	5048
1	5748
1	5049
1	5749
1	5050
1	5750
1	5051
1	5751
1	5052
1	5752
1	5053
1	5753
1	5054
1	5754
1	5055
1	5755
1	5061
1	5761
1	5060
1	5760
1	5056
1	5756
1	5062
1	5762
1	5058
1	5758
1	6749
1	1905
1	2325
1	6767
1	1904
1	2324
1	6745
1	1902
1	2322
1	6748
1	1923
1	2343
1	6746
1	1901
1	2321
1	1900
1	2320
1	6744
1	1903
1	2323
1	6747
1	1899
1	2319
1	6743
1	1921
1	2341
1	6765
1	1906
1	2326
1	6750
1	1907
1	2327
1	6751
1	1908
1	2328
1	6752
1	1909
1	2329
1	6753
1	1910
1	2330
1	6754
1	1911
1	2331
1	6755
1	1912
1	2332
1	6756
1	1913
1	2333
1	6757
1	1914
1	2334
1	6758
1	1915
1	2335
1	6759
1	1916
1	2336
1	6760
1	1917
1	2337
1	6761
1	1918
1	2338
1	6762
1	1919
1	2339
1	6763
1	3604
1	1925
1	2345
1	6769
1	6768
1	1924
1	2344
1	1920
1	2340
1	6764
1	1926
1	2346
1	6770
1	1922
1	2342
1	6766
1	5401
1	2465
1	2483
1	5405
1	2461
1	5421
1	5404
1	2464
1	5400
1	2462
1	5399
1	5403
1	2460
1	5423
1	2463
1	2459
1	5402
1	2481
1	2466
1	5406
1	2467
1	5407
1	2468
1	5408
1	2469
1	5409
1	2470
1	5410
1	2471
1	5411
1	2472
1	5412
1	2473
1	5413
1	2474
1	5414
1	2475
1	5415
1	2476
1	5416
1	2477
1	5417
1	2478
1	5418
1	2479
1	5419
1	2485
1	5425
1	2484
1	5424
1	2480
1	5420
1	2486
1	5426
1	2482
1	5422
1	1172
1	4700
1	2549
1	6441
1	1195
1	4723
1	2567
1	6440
1	1175
1	2545
1	1171
1	4699
1	4703
1	6438
1	1173
1	4701
1	1174
1	2548
1	4702
1	2546
1	6459
1	6437
1	2544
1	6436
1	1176
1	4704
1	2547
1	6439
1	2543
1	6435
1	1177
1	4705
1	1193
1	2565
1	4721
1	6457
1	1178
1	2550
1	4706
1	6442
1	1179
1	2551
1	4707
1	6443
1	1180
1	2552
1	4708
1	6444
1	1181
1	2553
1	4709
1	6445
1	1182
1	2554
1	4710
1	6446
1	1183
1	2555
1	4711
1	6447
1	1184
1	2556
1	4712
1	6448
1	1185
1	2557
1	4713
1	6449
1	1186
1	2558
1	4714
1	6450
1	1187
1	2559
1	4715
1	6451
1	1188
1	2560
1	4716
1	6452
1	1189
1	2561
1	4717
1	6453
1	1190
1	2562
1	4718
1	6454
1	1191
1	2563
1	4719
1	6455
1	1197
1	2569
1	4725
1	6461
1	4724
1	6460
1	1196
1	6456
1	2568
1	1192
1	2564
1	1198
1	2570
1	4720
1	4726
1	6462
1	1194
1	2566
1	4722
1	6458
1	3725
1	4369
1	3743
1	3721
1	4368
1	4366
1	3724
1	3722
1	4387
1	4365
1	3720
1	4364
1	3723
1	4367
1	3719
1	4363
1	3741
1	4385
1	3726
1	4370
1	3727
1	4371
1	3728
1	4372
1	3729
1	4373
1	3730
1	4374
1	3731
1	4375
1	3732
1	4376
1	3733
1	4377
1	3734
1	4378
1	3735
1	4379
1	3736
1	4380
1	3737
1	4381
1	3738
1	4382
1	3739
1	4383
1	3745
1	4389
1	3744
1	4388
1	3740
1	4384
1	3746
1	4390
1	3742
1	4386
1	2969
1	115
1	114
1	2987
1	2965
1	113
1	117
1	2968
1	2966
1	118
1	2964
1	136
1	2967
1	2963
1	116
1	112
1	2985
1	2970
1	119
1	2971
1	120
1	2972
1	121
1	2973
1	122
1	2974
1	123
1	2975
1	124
1	2976
1	125
1	2977
1	126
1	2978
1	127
1	2979
1	128
1	2980
1	129
1	2981
1	130
1	2982
1	131
1	2983
1	132
1	135
1	139
1	2989
1	138
1	6347
1	2988
1	133
1	2984
1	134
1	2990
1	2986
1	137
1	869
1	1485
1	1989
1	7029
1	873
1	1503
1	2007
1	1481
1	1985
1	7025
1	889
1	7047
1	872
1	868
1	1484
1	1988
1	1482
1	1986
1	6328
1	867
1	7026
1	7028
1	871
1	1480
1	1984
1	7024
1	891
1	1483
1	1987
1	6326
1	870
1	1479
1	1983
1	7023
1	7027
1	1501
1	2005
1	7045
1	874
1	1486
1	1990
1	7030
1	875
1	1487
1	1991
1	7031
1	876
1	1488
1	1992
1	7032
1	877
1	1489
1	1993
1	7033
1	878
1	1490
1	1994
1	7034
1	879
1	1491
1	1995
1	7035
1	880
1	1492
1	1996
1	7036
1	881
1	1493
1	1997
1	7037
1	6327
1	882
1	1494
1	1998
1	7038
1	883
1	1495
1	1999
1	7039
1	884
1	1496
1	2000
1	7040
1	885
1	1497
1	2001
1	7041
1	886
1	1498
1	2002
1	7042
1	887
1	1499
1	2003
1	7043
1	4416
1	893
1	1505
1	2009
1	7049
1	7048
1	892
1	1504
1	2008
1	888
1	1500
1	2004
1	894
1	1506
1	2010
1	7044
1	7050
1	890
1	1502
1	2006
1	7046
1	673
1	3385
1	4033
1	6105
1	677
1	3389
1	4032
1	6104
1	693
1	3405
1	4030
1	6102
1	676
1	3388
1	672
1	3384
1	4051
1	6123
1	6101
1	671
1	3383
1	675
1	3387
1	4029
1	4028
1	6100
1	695
1	3407
1	4031
1	6103
1	674
1	3386
1	4027
1	6099
1	4049
1	6121
1	678
1	3390
1	4034
1	6106
1	679
1	3391
1	4035
1	6107
1	680
1	3392
1	4036
1	6108
1	681
1	3393
1	4037
1	6109
1	682
1	3394
1	4038
1	6110
1	683
1	3395
1	4039
1	6111
1	684
1	3396
1	4040
1	6112
1	685
1	3397
1	4041
1	6113
1	686
1	3398
1	4042
1	6114
1	687
1	3399
1	4043
1	6115
1	688
1	3400
1	4044
1	6116
1	689
1	3401
1	4045
1	6117
1	690
1	3402
1	4046
1	6118
1	691
1	3403
1	4047
1	6119
1	697
1	3409
1	4053
1	6125
1	6124
1	4052
1	696
1	3408
1	692
1	3404
1	698
1	3410
1	4048
1	4054
1	6120
1	6126
1	6122
1	4050
1	3406
1	694
1	5069
1	5087
1	5065
1	5068
1	5066
1	5064
1	5067
1	5063
1	5085
1	5070
1	5071
1	5072
1	5073
1	5074
1	5075
1	5076
1	5077
1	5078
1	5079
1	5080
1	5081
1	5082
1	5083
1	5089
1	5088
1	5084
1	5090
1	5086
1	5769
1	5787
1	5765
1	5768
1	5766
1	5764
1	5767
1	5763
1	5785
1	5770
1	5771
1	5772
1	5773
1	5774
1	5775
1	5776
1	5777
1	5778
1	5779
1	5780
1	5781
1	5782
1	5783
1	5789
1	5788
1	5784
1	5790
1	5786
1	1653
1	1652
1	1650
1	2536
1	1671
1	1649
1	1648
1	1651
1	1647
1	1669
1	1654
1	1655
1	1656
1	1657
1	1658
1	1659
1	1660
1	1661
1	1662
1	1663
1	1664
1	1665
1	1666
1	1667
1	1673
1	1672
1	1668
1	1674
1	1670
1	1205
1	4733
1	1223
1	4751
1	1201
1	4729
1	1204
1	4732
1	1202
1	4730
1	1200
1	4728
1	1203
1	4731
1	1199
1	4727
1	1221
1	4749
1	1206
1	4734
1	1207
1	4735
1	1208
1	4736
1	1209
1	4737
1	1210
1	4738
1	1211
1	4739
1	1212
1	4740
1	1213
1	4741
1	1214
1	4742
1	1215
1	4743
1	1216
1	4744
1	1217
1	4745
1	1218
1	4746
1	1219
1	4747
1	1225
1	4753
1	1224
1	4752
1	1220
1	4748
1	1226
1	4754
1	1222
1	4750
1	813
1	6777
1	5433
1	817
1	6795
1	5432
1	6773
1	833
1	5430
1	816
1	812
1	6776
1	5451
1	6774
1	811
1	5429
1	815
1	5428
1	6772
1	835
1	5431
1	6775
1	814
1	5427
1	6771
1	5449
1	6793
1	818
1	5434
1	6778
1	819
1	5435
1	6779
1	820
1	5436
1	6780
1	821
1	5437
1	6781
1	822
1	5438
1	6782
1	823
1	5439
1	6783
1	824
1	5440
1	6784
1	825
1	5441
1	6785
1	826
1	5442
1	6786
1	827
1	5443
1	6787
1	828
1	5444
1	6788
1	829
1	5445
1	6789
1	830
1	5446
1	6790
1	831
1	5447
1	6791
1	837
1	5453
1	6797
1	836
1	5452
1	6796
1	832
1	5448
1	6792
1	838
1	5454
1	6798
1	834
1	5450
1	6794
1	309
1	365
1	2936
1	313
1	369
1	2959
1	329
1	385
1	2939
1	2935
1	312
1	368
1	308
1	364
1	2937
1	2938
1	310
1	366
1	311
1	367
1	333
1	389
1	2940
1	2941
1	2957
1	314
1	370
1	2942
1	315
1	371
1	2943
1	316
1	372
1	2944
1	317
1	373
1	2945
1	318
1	374
1	2946
1	319
1	375
1	2947
1	320
1	376
1	2948
1	321
1	377
1	2949
1	322
1	378
1	2950
1	323
1	379
1	2951
1	324
1	380
1	2952
1	325
1	381
1	2953
1	326
1	382
1	2954
1	327
1	383
1	2955
1	328
1	384
1	331
1	387
1	335
1	391
1	2961
1	2960
1	332
1	388
1	2956
1	2962
1	334
1	390
1	2958
1	330
1	386
1	2577
1	2576
1	2574
1	2595
1	2573
1	2572
1	2575
1	2571
1	2593
1	2578
1	2579
1	2580
1	2581
1	2582
1	2583
1	2584
1	2585
1	2586
1	2587
1	2588
1	2589
1	2590
1	2591
1	2597
1	2596
1	2592
1	2598
1	2594
1	3753
1	3771
1	3749
1	3752
1	3750
1	3748
1	3751
1	3747
1	3769
1	3754
1	3755
1	3756
1	3757
1	3758
1	3759
1	3760
1	3761
1	3762
1	3763
1	3764
1	3765
1	3766
1	3767
1	3773
1	3772
1	3768
1	3774
1	3770
1	4393
1	1457
1	4061
1	6133
1	4079
1	1475
1	4397
1	4057
1	1453
1	6132
1	4413
1	6130
1	4396
1	4060
1	1456
1	4392
1	4058
1	1454
1	6151
1	4391
1	6129
1	4395
1	4056
1	1452
1	6128
1	4415
1	4059
1	1455
1	6131
1	4055
1	4394
1	1451
1	6127
1	1473
1	4077
1	6149
1	1458
1	4062
1	4398
1	6134
1	1459
1	4063
1	4399
1	6135
1	1460
1	6136
1	4064
1	4400
1	1461
1	4065
1	4401
1	6137
1	1462
1	4066
1	4402
1	6138
1	1463
1	6139
1	4067
1	4403
1	1464
1	6140
1	4068
1	4404
1	1465
1	4069
1	4405
1	6141
1	1466
1	6142
1	4070
1	4406
1	1467
1	6143
1	4071
1	4407
1	1468
1	6144
1	4072
1	4408
1	1469
1	6145
1	4073
1	4409
1	1470
1	6146
1	4074
1	4410
1	1471
1	6147
1	4075
1	4411
1	1477
1	4081
1	6153
1	4417
1	1476
1	6152
1	4080
1	1472
1	4076
1	6148
1	1478
1	4082
1	4418
1	6154
1	4412
1	1474
1	6150
1	4078
1	4414
1	6464
1	3417
1	6487
1	3416
1	6467
1	3414
1	6463
1	6465
1	6466
1	3435
1	3413
1	3412
1	6468
1	3415
1	3411
1	6469
1	3433
1	6485
1	3418
1	6470
1	3419
1	6471
1	3420
1	6472
1	3421
1	6473
1	3422
1	6474
1	3423
1	6475
1	3424
1	6476
1	3425
1	6477
1	3426
1	6478
1	3427
1	6479
1	3428
1	6480
1	3429
1	6481
1	3430
1	6482
1	3431
1	6483
1	3437
1	6489
1	3436
1	6488
1	3432
1	6484
1	3438
1	6490
1	3434
1	6486
1	2017
1	2016
1	2014
1	2035
1	2013
1	2012
1	2015
1	2011
1	2033
1	2018
1	2019
1	2020
1	2021
1	2022
1	2023
1	2024
1	2025
1	2026
1	2027
1	2028
1	2029
1	2030
1	2031
1	2037
1	2036
1	2032
1	2038
1	2034
1	953
1	1233
1	1541
1	5094
1	5096
1	7057
1	957
1	1251
1	1559
1	1229
1	1537
1	7056
1	973
1	7054
1	956
1	5097
1	952
1	1232
1	1540
1	1230
1	1538
1	5115
1	951
1	5093
1	7053
1	955
1	7075
1	1228
1	1536
1	5092
1	975
1	7052
1	1231
1	1539
1	5095
1	954
1	1227
1	1535
1	5091
1	7051
1	7055
1	1249
1	1557
1	5113
1	7073
1	958
1	1234
1	1542
1	5098
1	7058
1	959
1	1235
1	1543
1	5099
1	7059
1	960
1	1236
1	1544
1	5100
1	7060
1	961
1	1237
1	1545
1	5101
1	7061
1	962
1	1238
1	1546
1	5102
1	7062
1	963
1	1239
1	1547
1	5103
1	7063
1	964
1	1240
1	1548
1	5104
1	7064
1	965
1	1241
1	1549
1	5105
1	7065
1	966
1	1242
1	1550
1	5106
1	7066
1	967
1	1243
1	1551
1	5107
1	7067
1	968
1	1244
1	1552
1	5108
1	7068
1	969
1	1245
1	1553
1	5109
1	7069
1	970
1	1246
1	1554
1	5110
1	7070
1	971
1	1247
1	1555
1	5111
1	7071
1	977
1	1253
1	1561
1	5117
1	7077
1	976
1	1252
1	1560
1	972
1	1248
1	1556
1	978
1	1254
1	1562
1	5112
1	5118
1	7078
1	7072
1	974
1	1250
1	1558
1	5114
1	7074
1	4761
1	4779
1	4757
1	4760
1	4758
1	4756
1	4759
1	4755
1	4777
1	4762
1	4763
1	4764
1	4765
1	4766
1	4767
1	4768
1	4769
1	4770
1	4771
1	4772
1	4773
1	4774
1	4775
1	4781
1	4780
1	4776
1	4782
1	4778
1	5794
1	5796
1	5797
1	5815
1	5793
1	5792
1	5795
1	5791
1	5813
1	5798
1	5799
1	5800
1	5801
1	5802
1	5803
1	5804
1	5805
1	5806
1	5807
1	5808
1	5809
1	5810
1	5811
1	5817
1	5816
1	5812
1	5818
1	5814
1	1424
1	1447
1	1427
1	1423
1	1425
1	1426
1	1428
1	1429
1	1445
1	1430
1	1431
1	1432
1	1433
1	1434
1	1435
1	1436
1	1437
1	4220
1	1438
1	1439
1	1440
1	1441
1	1442
1	1443
1	1449
1	1448
1	1444
1	1450
1	1446
1	4425
1	4424
1	4422
1	4443
1	4421
1	4420
1	4423
1	4419
1	4441
1	4426
1	4427
1	4428
1	4429
1	4430
1	4431
1	4432
1	4433
1	4434
1	4435
1	4436
1	4437
1	4438
1	4439
1	4445
1	4444
1	4440
1	4446
1	4442
1	1089
1	1676
1	5456
1	6157
1	6497
1	2605
1	6805
1	202
1	1699
1	5479
1	1093
1	6161
1	6515
1	6804
1	2604
1	6493
1	209
1	6177
1	6802
1	1679
1	199
1	1109
1	6160
1	1675
1	2602
1	6156
1	6496
1	1092
1	2623
1	6494
1	6823
1	6155
1	6801
1	198
1	1088
1	201
1	1087
1	6800
1	2601
1	1091
1	6159
1	2600
1	6492
1	1111
1	6179
1	197
1	6803
1	1680
1	5460
1	6158
1	6491
1	6799
1	2603
1	6495
1	1090
1	2599
1	200
1	1681
1	6821
1	5461
1	196
1	1697
1	2621
1	5477
1	6513
1	1094
1	1682
1	2606
1	203
1	5462
1	6162
1	6498
1	6806
1	1095
1	1683
1	2607
1	204
1	5463
1	6163
1	6499
1	6807
1	1096
1	1684
1	2608
1	205
1	5464
1	6164
1	6500
1	6808
1	1097
1	1685
1	2609
1	5465
1	6165
1	6501
1	6809
1	6810
1	207
1	1098
1	211
1	1686
1	2610
1	5466
1	6166
1	6502
1	1099
1	1687
1	2611
1	208
1	5467
1	6167
1	6503
1	6811
1	6812
1	217
1	1100
1	1688
1	2612
1	5468
1	6168
1	6504
1	6813
1	210
1	1101
1	206
1	1689
1	2613
1	5469
1	6169
1	6505
1	221
1	1102
1	1690
1	2614
1	5470
1	6170
1	6506
1	6814
1	1103
1	1691
1	2615
1	5471
1	6171
1	6507
1	212
1	6815
1	1104
1	1692
1	2616
1	5472
1	6172
1	6508
1	213
1	6816
1	1105
1	1693
1	2617
1	5473
1	6173
1	6509
1	214
1	6817
1	1106
1	1694
1	2618
1	5474
1	6174
1	6510
1	215
1	6818
1	1107
1	1695
1	2619
1	5475
1	6175
1	6511
1	216
1	6819
1	219
1	223
1	1113
1	1701
1	2625
1	5481
1	6181
1	6517
1	6825
1	6516
1	6824
1	220
1	2620
1	6176
1	6512
1	2626
1	6820
1	6182
1	6518
1	6826
1	1108
1	1696
1	1114
1	222
1	1110
1	1698
1	2622
1	5478
1	6178
1	6514
1	218
1	6822
1	901
1	900
1	898
1	919
1	897
1	896
1	899
1	895
1	917
1	902
1	903
1	904
1	905
1	906
1	907
1	908
1	909
1	910
1	911
1	912
1	913
1	914
1	915
1	921
1	920
1	916
1	922
1	918
1	4089
1	4088
1	4086
1	4107
1	4085
1	4084
1	4087
1	4083
1	4105
1	4090
1	4091
1	4092
1	4093
1	4094
1	4095
1	4096
1	4097
1	4098
1	4099
1	4100
1	4101
1	4102
1	4103
1	4109
1	4108
1	4104
1	4110
1	4106
1	5125
1	5124
1	5122
1	5143
1	5121
1	5120
1	5123
1	5119
1	5141
1	5126
1	5127
1	5128
1	5129
1	5130
1	5131
1	5132
1	5133
1	5134
1	5136
1	5137
1	5145
1	5138
1	5139
1	5144
1	5140
1	5146
1	5142
1	3440
1	5825
1	2042
1	3463
1	5843
1	2040
1	3443
1	5821
1	3439
1	2044
1	3441
1	3442
1	5824
1	5728
1	2045
1	5822
1	2041
1	2063
1	5820
1	3444
1	2043
1	5823
1	2039
1	5819
1	3445
1	2061
1	3461
1	5841
1	2046
1	3446
1	5826
1	2047
1	3447
1	5827
1	2048
1	3448
1	5828
1	2049
1	3449
1	5829
1	2050
1	3450
1	5830
1	2051
1	3451
1	5831
1	2052
1	3452
1	5832
1	2053
1	3453
1	5833
1	2054
1	3454
1	5834
1	2055
1	3455
1	5835
1	2056
1	3456
1	5836
1	2057
1	3457
1	5837
1	2058
1	3458
1	5838
1	2059
1	3459
1	5839
1	2065
1	3465
1	5845
1	5844
1	2064
1	3464
1	2060
1	3460
1	5840
1	2066
1	3466
1	5846
1	2062
1	3462
1	5842
1	701
1	705
1	721
1	704
1	700
1	699
1	703
1	723
1	702
1	4
1	706
1	707
1	708
1	709
1	710
1	5
1	711
1	712
1	713
1	714
1	715
1	716
1	717
1	718
1	719
1	6
1	725
1	724
1	720
1	726
1	722
1	1261
1	3109
1	1260
1	3108
1	1258
1	3106
1	1279
1	3127
1	1257
1	3105
1	1256
1	3104
1	1259
1	3107
1	1255
1	3103
1	1277
1	3125
1	1262
1	3110
1	1263
1	3111
1	1264
1	3112
1	1265
1	3113
1	1266
1	3114
1	1267
1	3115
1	1268
1	3116
1	1269
1	3117
1	1270
1	3118
1	1271
1	3119
1	1272
1	3120
1	1273
1	3121
1	1274
1	3122
1	1275
1	3123
1	1281
1	3129
1	1280
1	3128
1	1276
1	3124
1	1282
1	3130
1	1278
1	3126
1	5489
1	7085
1	4789
1	5507
1	7103
1	4788
1	5485
1	7081
1	4786
1	5488
1	7084
1	4807
1	5486
1	7082
1	4785
1	4784
1	5484
1	7080
1	4787
1	5487
1	7083
1	4783
1	5483
1	7079
1	4805
1	5505
1	7101
1	4790
1	5490
1	7086
1	4791
1	5491
1	7087
1	4792
1	5492
1	7088
1	4793
1	5493
1	7089
1	4794
1	5494
1	7090
1	4795
1	5495
1	7091
1	4796
1	5496
1	7092
1	4797
1	5497
1	7093
1	4798
1	5498
1	7094
1	4799
1	5499
1	7095
1	4800
1	5500
1	7096
1	4801
1	5501
1	7097
1	4802
1	5502
1	7098
1	4803
1	5503
1	7099
1	4809
1	5509
1	7105
1	5508
1	4808
1	7104
1	4804
1	5504
1	7100
1	4810
1	5510
1	7106
1	4806
1	5506
1	7102
1	141
1	6525
1	1569
1	164
1	6543
1	1568
1	6521
1	144
1	1566
1	140
1	142
1	6524
1	143
1	1587
1	6522
1	1565
1	1564
1	6520
1	145
1	1567
1	6523
1	1563
1	6519
1	146
1	1585
1	6541
1	1570
1	6526
1	147
1	1571
1	6527
1	148
1	1572
1	6528
1	149
1	1573
1	6529
1	150
1	1574
1	6530
1	151
1	1575
1	6531
1	152
1	1576
1	6532
1	153
1	1577
1	6533
1	154
1	1578
1	6534
1	155
1	1579
1	6535
1	156
1	1580
1	6536
1	157
1	1581
1	6537
1	158
1	1582
1	6538
1	159
1	1583
1	6539
1	160
1	163
1	167
1	1589
1	6545
1	166
1	1588
1	6544
1	161
1	1584
1	6540
1	162
1	1590
1	5116
1	6546
1	1586
1	6542
1	165
1	1709
1	1727
1	1705
1	1708
1	1706
1	1704
1	1707
1	1703
1	1725
1	1710
1	1711
1	1712
1	1713
1	1714
1	1715
1	1716
1	1717
1	1718
1	1719
1	1720
1	1721
1	1722
1	1723
1	1729
1	1728
1	1724
1	1730
1	1726
1	1112
1	4448
1	3473
1	1401
1	4471
1	3491
1	4451
1	1400
1	3469
1	1398
1	4447
1	4449
1	3472
1	4450
1	1419
1	3470
1	1397
1	1396
1	3468
1	4452
1	1399
1	3471
1	1395
1	3467
1	4453
1	1417
1	3489
1	4469
1	1402
1	3474
1	4454
1	1403
1	3475
1	4455
1	1404
1	3476
1	4456
1	1405
1	3477
1	4457
1	1406
1	3478
1	4458
1	1407
1	3479
1	4459
1	1408
1	3480
1	4460
1	1409
1	3481
1	4461
1	1410
1	3482
1	4462
1	1411
1	3483
1	4463
1	1412
1	3484
1	4464
1	1413
1	3485
1	4465
1	1414
1	3486
1	4466
1	1415
1	3487
1	4467
1	1421
1	3493
1	4473
1	3492
1	1420
1	4472
1	1416
1	3488
1	4468
1	1422
1	3494
1	4474
1	1418
1	3490
1	4470
1	5149
1	4117
1	6189
1	5153
1	4116
1	6188
1	6186
1	4114
1	5169
1	5152
1	5148
1	6207
1	4135
1	6185
1	4113
1	5147
1	5151
1	4112
1	6184
1	5171
1	4115
1	6187
1	4111
1	5150
1	6183
1	4133
1	6205
1	4118
1	5154
1	6190
1	4119
1	5155
1	6191
1	4120
1	5156
1	6192
1	4121
1	5157
1	6193
1	4122
1	5158
1	6194
1	4123
1	5159
1	6195
1	4124
1	5160
1	6196
1	4125
1	5161
1	6197
1	4126
1	5162
1	6198
1	4127
1	5163
1	6199
1	4128
1	5164
1	6200
1	4129
1	5165
1	6201
1	4130
1	5166
1	6202
1	4131
1	5167
1	6203
1	4137
1	5173
1	6209
1	4136
1	6208
1	5172
1	4132
1	6204
1	5168
1	6210
1	5174
1	4138
1	6206
1	4134
1	5170
1	249
1	227
1	229
1	224
1	226
1	225
1	245
1	228
1	230
1	231
1	232
1	233
1	234
1	235
1	236
1	237
1	238
1	239
1	240
1	241
1	242
1	243
1	244
1	247
1	251
1	248
1	250
1	246
1	3133
1	6833
1	3781
1	5853
1	3137
1	6851
1	3780
1	5852
1	6829
1	3153
1	3778
1	5850
1	3136
1	3132
1	6832
1	6830
1	417
1	3799
1	395
1	3131
1	3777
1	3135
1	5871
1	5849
1	397
1	3776
1	5848
1	392
1	6828
1	3155
1	394
1	6831
1	3779
1	5851
1	393
1	3134
1	3775
1	413
1	5847
1	6827
1	396
1	3797
1	5869
1	398
1	6849
1	3138
1	3782
1	5854
1	6834
1	399
1	3139
1	3783
1	5855
1	6835
1	400
1	3140
1	3784
1	5856
1	6836
1	401
1	3141
1	3785
1	5857
1	6837
1	402
1	3142
1	3786
1	5858
1	6838
1	403
1	3143
1	3787
1	5859
1	6839
1	404
1	3144
1	3788
1	5860
1	6840
1	405
1	3145
1	3789
1	5861
1	6841
1	406
1	3146
1	3790
1	5862
1	6842
1	407
1	3147
1	3791
1	5863
1	6843
1	408
1	3148
1	3792
1	5864
1	6844
1	409
1	3149
1	3793
1	5865
1	6845
1	410
1	3150
1	3794
1	5866
1	6846
1	411
1	3151
1	3795
1	5867
1	6847
1	412
1	415
1	419
1	3157
1	3801
1	5873
1	6853
1	5872
1	6852
1	416
1	6848
1	3152
1	3796
1	3158
1	3802
1	5868
1	418
1	5874
1	6854
1	3154
1	3798
1	5870
1	6850
1	414
1	4817
1	5517
1	4835
1	5535
1	4813
1	5513
1	4816
1	5516
1	4814
1	5514
1	4812
1	5512
1	4815
1	5515
1	4811
1	5511
1	4833
1	5533
1	4818
1	5518
1	4819
1	5519
1	4820
1	5520
1	4821
1	5521
1	4822
1	5522
1	4823
1	5523
1	4824
1	5524
1	4825
1	5525
1	4826
1	5526
1	4827
1	5527
1	4828
1	5528
1	4829
1	5529
1	4830
1	5530
1	4831
1	5531
1	4837
1	5537
1	5536
1	4836
1	5532
1	4832
1	4838
1	5538
1	4834
1	5534
1	2629
1	2773
1	2633
1	2772
1	2649
1	2770
1	2632
1	2628
1	2791
1	2627
1	2769
1	2631
1	2768
1	2651
1	2771
1	2630
1	2767
1	2789
1	2634
1	2774
1	2635
1	2775
1	2636
1	2776
1	2637
1	2777
1	2638
1	2778
1	2639
1	2779
1	2640
1	2780
1	2641
1	2781
1	2642
1	2782
1	2643
1	2783
1	2644
1	2784
1	2645
1	2785
1	2646
1	2786
1	2647
1	2787
1	2653
1	2793
1	2652
1	2792
1	2648
1	2788
1	2654
1	2794
1	2650
1	2790
1	4481
1	11
1	8
1	4499
1	4477
1	4480
1	4478
1	4476
1	4479
1	4475
1	4497
1	4482
1	7
1	4483
1	5135
1	13
1	16
1	4484
1	17
1	4485
1	12
1	4486
1	4487
1	9
1	4488
1	4489
1	14
1	4490
1	10
1	24
1	4491
1	15
1	4492
1	4493
1	18
1	4494
1	19
1	4495
1	20
1	23
1	27
1	4501
1	26
1	4500
1	21
1	4496
1	22
1	4502
1	4498
1	25
1	2073
1	6553
1	2072
1	6552
1	2070
1	6550
1	2091
1	6571
1	6549
1	2069
1	2068
1	6548
1	2071
1	6551
1	2067
1	6547
1	2089
1	6569
1	2074
1	6554
1	2075
1	6555
1	2076
1	6556
1	2077
1	6557
1	2078
1	6558
1	2079
1	6559
1	2080
1	6560
1	2081
1	6561
1	2082
1	6562
1	2083
1	6563
1	2084
1	6564
1	2085
1	6565
1	2086
1	6566
1	2087
1	6567
1	2093
1	6573
1	2092
1	6572
1	2088
1	6568
1	2094
1	6574
1	2090
1	6570
1	3501
1	5181
1	7113
1	3519
1	3497
1	5180
1	7112
1	5178
1	7110
1	3500
1	3498
1	5199
1	7131
1	5177
1	7109
1	3496
1	5176
1	7108
1	3499
1	5179
1	7111
1	3495
1	7107
1	5175
1	3517
1	5197
1	7129
1	3502
1	5182
1	7114
1	3503
1	5183
1	7115
1	3504
1	5184
1	7116
1	3505
1	5185
1	7117
1	3506
1	5186
1	7118
1	3507
1	5187
1	7119
1	3508
1	5188
1	7120
1	3509
1	5189
1	7121
1	3510
1	5190
1	7122
1	3511
1	5191
1	7123
1	3512
1	5192
1	7124
1	3513
1	5193
1	7125
1	3514
1	5194
1	7126
1	3515
1	5195
1	7127
1	3521
1	5201
1	7133
1	5200
1	3520
1	7132
1	3516
1	5196
1	7128
1	5202
1	3522
1	7134
1	3518
1	5198
1	7130
1	4141
1	4145
1	4161
1	4144
1	4140
1	4139
1	4143
1	4163
1	4142
1	4146
1	4147
1	4148
1	4149
1	4150
1	4151
1	4152
1	4153
1	4154
1	4155
1	4156
1	4157
1	4158
1	4159
1	4165
1	4164
1	4160
1	4166
1	4162
1	1594
1	1596
1	1597
1	1615
1	1593
1	1592
1	1595
1	1591
1	1613
1	1598
1	1599
1	1600
1	1601
1	1602
1	1603
1	1604
1	1605
1	1606
1	1607
1	1608
1	1609
1	1610
1	1611
1	1617
1	1616
1	1612
1	1618
1	1614
1	985
1	593
1	5881
1	984
1	592
1	982
1	5880
1	590
1	5878
1	611
1	992
1	5899
1	589
1	981
1	5877
1	588
1	980
1	5876
1	591
1	983
1	5879
1	587
1	979
1	5875
1	609
1	5897
1	594
1	986
1	5882
1	595
1	987
1	5883
1	596
1	988
1	5884
1	597
1	5885
1	990
1	598
1	994
1	5886
1	599
1	991
1	5887
1	1000
1	600
1	5888
1	993
1	601
1	989
1	5889
1	1004
1	602
1	5890
1	603
1	5891
1	995
1	604
1	5892
1	996
1	605
1	5893
1	997
1	606
1	5894
1	998
1	607
1	5895
1	999
1	1002
1	1006
1	613
1	5901
1	612
1	1003
1	5900
1	608
1	5896
1	614
1	5902
1	1005
1	610
1	5898
1	1001
1	6212
1	1737
1	3809
1	3165
1	34
1	6235
1	1755
1	3827
1	52
1	1733
1	3164
1	31
1	3162
1	3805
1	6211
1	6215
1	6213
1	30
1	1736
1	3808
1	33
1	1734
1	3183
1	3161
1	6214
1	3806
1	1732
1	3160
1	3804
1	29
1	6216
1	1735
1	3163
1	3807
1	1731
1	3159
1	3803
1	32
1	6217
1	28
1	1753
1	3181
1	3825
1	6233
1	1738
1	3166
1	3810
1	35
1	6218
1	1739
1	3167
1	3811
1	36
1	6219
1	1740
1	3168
1	3812
1	37
1	6220
1	1741
1	3169
1	3813
1	38
1	6221
1	1742
1	3170
1	3814
1	39
1	6222
1	1743
1	3171
1	3815
1	40
1	6223
1	1744
1	3172
1	3816
1	41
1	6224
1	1745
1	3173
1	3817
1	42
1	6225
1	1746
1	3174
1	3818
1	43
1	6226
1	1747
1	3175
1	3819
1	44
1	6227
1	1748
1	3176
1	3820
1	45
1	6228
1	1749
1	3177
1	3821
1	46
1	6229
1	1750
1	3178
1	3822
1	47
1	6230
1	1751
1	3179
1	3823
1	48
1	6231
1	51
1	55
1	1757
1	3185
1	3829
1	54
1	6237
1	3828
1	6236
1	1756
1	3824
1	6232
1	3184
1	3186
1	3830
1	6238
1	49
1	1752
1	3180
1	50
1	1758
1	1754
1	3182
1	3826
1	53
1	6234
1	1117
1	1121
1	1137
1	1120
1	1116
1	1115
1	1119
1	1139
1	1118
1	1122
1	1123
1	1124
1	1125
1	1126
1	1127
1	1128
1	1129
1	1130
1	1131
1	1132
1	1133
1	1134
1	1135
1	1141
1	1140
1	1136
1	1142
1	1138
1	1369
1	2801
1	6861
1	4842
1	1373
1	2819
1	2797
1	4840
1	6860
1	1389
1	6858
1	1372
1	4844
1	1368
1	2624
1	2800
1	2798
1	4845
1	6879
1	1367
1	6857
1	1371
1	4841
1	2796
1	4863
1	6856
1	1391
1	2799
1	4843
1	6859
1	1370
1	2795
1	4839
1	6855
1	2817
1	4861
1	6877
1	1374
1	2802
1	4846
1	6862
1	1375
1	2803
1	4847
1	6863
1	1376
1	2804
1	4848
1	6864
1	1377
1	2805
1	4849
1	6865
1	1378
1	2806
1	4850
1	6866
1	1379
1	2807
1	4851
1	6867
1	1380
1	2808
1	4852
1	6868
1	1381
1	2809
1	4853
1	6869
1	1382
1	2810
1	4854
1	6870
1	1383
1	2811
1	4855
1	6871
1	1384
1	2812
1	4856
1	6872
1	1385
1	2813
1	4857
1	6873
1	1386
1	2814
1	4858
1	6874
1	1387
1	2815
1	4859
1	6875
1	1393
1	2821
1	4865
1	6881
1	6880
1	1392
1	2820
1	1388
1	2816
1	4860
1	1394
1	2822
1	4864
1	4866
1	6876
1	6882
1	1390
1	2818
1	4862
1	6878
1	533
1	4509
1	6581
1	2661
1	5542
1	6599
1	537
1	4527
1	5540
1	6577
1	2660
1	4505
1	553
1	2658
1	536
1	5544
1	6580
1	532
1	4508
1	5545
1	6578
1	2679
1	4506
1	531
1	2657
1	535
1	5541
1	2656
1	4504
1	5563
1	555
1	6576
1	5543
1	6579
1	2659
1	4507
1	534
1	2655
1	4503
1	5539
1	6575
1	2677
1	4525
1	5561
1	6597
1	538
1	2662
1	4510
1	5546
1	6582
1	539
1	2663
1	4511
1	5547
1	6583
1	540
1	2664
1	4512
1	5548
1	6584
1	541
1	2665
1	4513
1	5549
1	6585
1	542
1	2666
1	4514
1	5550
1	6586
1	543
1	2667
1	4515
1	5551
1	6587
1	544
1	2668
1	4516
1	5552
1	6588
1	545
1	2669
1	4517
1	5553
1	6589
1	546
1	2670
1	4518
1	5554
1	6590
1	547
1	2671
1	4519
1	5555
1	6591
1	548
1	2672
1	4520
1	5556
1	6592
1	549
1	2673
1	4521
1	5557
1	6593
1	550
1	2674
1	4522
1	5558
1	6594
1	551
1	2675
1	4523
1	5559
1	6595
1	557
1	2681
1	4529
1	5565
1	6601
1	5564
1	6600
1	556
1	5560
1	6596
1	2680
1	6602
1	4528
1	552
1	2676
1	4524
1	558
1	2682
1	4530
1	5566
1	554
1	2678
1	4526
1	5562
1	6598
1	3156
1	6242
1	6240
1	6244
1	6245
1	6241
1	6263
1	6243
1	6239
1	6261
1	6246
1	6247
1	6248
1	6249
1	6250
1	6251
1	6252
1	6253
1	6254
1	6255
1	6256
1	6257
1	6258
1	6259
1	6265
1	6264
1	6260
1	6266
1	7076
1	6262
1	1621
1	5204
1	3529
1	5227
1	1625
1	3528
1	5207
1	1641
1	3526
1	5203
1	1624
1	5205
1	1620
1	5206
1	3547
1	1619
1	3525
1	1623
1	3524
1	1643
1	5208
1	3527
1	1622
1	3523
1	5209
1	3545
1	5225
1	1626
1	3530
1	5210
1	1627
1	3531
1	5211
1	1628
1	3532
1	5212
1	1629
1	3533
1	5213
1	1630
1	3534
1	5214
1	1631
1	3535
1	5215
1	1632
1	3536
1	5216
1	1633
1	3537
1	5217
1	1634
1	3538
1	5218
1	1635
1	3539
1	5219
1	1636
1	3540
1	5220
1	1637
1	3541
1	5221
1	1638
1	3542
1	5222
1	1639
1	3543
1	5223
1	1645
1	3549
1	5229
1	1644
1	3548
1	5228
1	1640
1	3544
1	5224
1	1646
1	3550
1	5230
1	1642
1	3546
1	5226
1	481
1	4173
1	7141
1	480
1	4172
1	478
1	7140
1	4170
1	7138
1	499
1	4191
1	7159
1	477
1	4169
1	7137
1	476
1	4168
1	7136
1	4171
1	479
1	7139
1	475
1	4167
1	7135
1	497
1	4189
1	7157
1	482
1	4174
1	7142
1	483
1	4175
1	7143
1	484
1	4176
1	7144
1	485
1	4177
1	7145
1	486
1	4178
1	7146
1	487
1	4179
1	7147
1	488
1	4180
1	7148
1	489
1	4181
1	7149
1	490
1	4182
1	7150
1	491
1	4183
1	7151
1	492
1	4184
1	7152
1	493
1	4185
1	7153
1	494
1	4186
1	7154
1	495
1	4187
1	7155
1	501
1	4193
1	7161
1	4192
1	500
1	7160
1	4188
1	496
1	7156
1	502
1	4194
1	7162
1	498
1	4190
1	7158
1	733
1	5905
1	1765
1	732
1	5909
1	730
1	1764
1	1762
1	5925
1	5908
1	5904
1	751
1	1783
1	729
1	1761
1	5903
1	5907
1	728
1	1760
1	5927
1	731
1	1763
1	727
1	1759
1	5906
1	749
1	1781
1	734
1	1766
1	5910
1	735
1	1767
1	5911
1	736
1	1768
1	5912
1	737
1	1769
1	5913
1	738
1	1770
1	5914
1	739
1	1771
1	5915
1	740
1	1772
1	5916
1	741
1	1773
1	5917
1	742
1	1774
1	5918
1	743
1	1775
1	5919
1	744
1	1776
1	5920
1	745
1	1777
1	5921
1	746
1	1778
1	5922
1	747
1	1779
1	5923
1	5264
1	753
1	1785
1	5929
1	752
1	1784
1	5928
1	748
1	1780
1	5924
1	754
1	1786
1	5930
1	750
1	1782
1	5926
1	2101
1	3837
1	2100
1	3836
1	2098
1	3834
1	2119
1	3855
1	2097
1	3833
1	2096
1	3832
1	2099
1	3835
1	2095
1	3831
1	2117
1	3853
1	2102
1	3838
1	2103
1	3839
1	2104
1	3840
1	2105
1	3841
1	2106
1	3842
1	2107
1	3843
1	2108
1	3844
1	2109
1	3845
1	2110
1	3846
1	2111
1	3847
1	2112
1	3848
1	2113
1	3849
1	2114
1	3850
1	2115
1	3851
1	2121
1	3857
1	2120
1	3856
1	2116
1	3852
1	2122
1	3858
1	2118
1	3854
1	4873
1	4872
1	4870
1	4891
1	4869
1	4868
1	4871
1	4867
1	4889
1	4874
1	4875
1	4876
1	4877
1	4878
1	4879
1	4880
1	4881
1	4882
1	4883
1	4884
1	4885
1	4886
1	4887
1	4893
1	4892
1	4888
1	4894
1	4890
1	3189
1	5573
1	3193
1	5591
1	5569
1	3209
1	3192
1	3188
1	5572
1	5570
1	3187
1	3191
1	5568
1	3211
1	5571
1	3190
1	5567
1	5589
1	3194
1	5574
1	3195
1	5575
1	3196
1	5576
1	3197
1	5577
1	3198
1	5578
1	3199
1	5579
1	3200
1	5580
1	3201
1	5581
1	3202
1	5582
1	3203
1	5583
1	3204
1	5584
1	3205
1	5585
1	3206
1	5586
1	3207
1	5587
1	3213
1	5593
1	3212
1	5592
1	3208
1	5588
1	3214
1	5594
1	5459
1	3210
1	5590
1	5455
1	5457
1	5458
1	5284
1	5280
1	2829
1	6609
1	2828
1	6608
1	2826
1	6606
1	2847
1	6627
1	2825
1	6605
1	2824
1	6604
1	2827
1	6607
1	2823
1	6603
1	2845
1	6625
1	2830
1	6610
1	2831
1	6611
1	2832
1	6612
1	2833
1	6613
1	2834
1	6614
1	2835
1	6615
1	2836
1	6616
1	2837
1	6617
1	2838
1	6618
1	2839
1	6619
1	2840
1	6620
1	2841
1	6621
1	2842
1	6622
1	2843
1	6623
1	2849
1	6629
1	2848
1	6628
1	2844
1	6624
1	2850
1	6630
1	2846
1	6626
1	2684
1	5237
1	2707
1	5255
1	2687
1	5233
1	2683
1	2685
1	2686
1	5236
1	5234
1	5232
1	2688
1	5235
1	5231
1	2689
1	2705
1	5253
1	2690
1	5238
1	2691
1	5239
1	2692
1	5240
1	2693
1	5241
1	2694
1	5242
1	2695
1	5243
1	2696
1	5244
1	2697
1	5245
1	2698
1	5246
1	2699
1	5247
1	2700
1	5248
1	2701
1	5249
1	2702
1	5250
1	2703
1	5251
1	2709
1	5257
1	5256
1	2708
1	2704
1	5252
1	2710
1	5258
1	2706
1	5254
1	4537
1	4536
1	4534
1	4555
1	4533
1	4532
1	4535
1	4531
1	4553
1	4538
1	4539
1	4540
1	4541
1	4542
1	4543
1	4544
1	4545
1	4546
1	4547
1	4548
1	4549
1	4550
1	4551
1	4557
1	4556
1	4552
1	4558
1	4554
1	3557
1	6273
1	6889
1	3575
1	6291
1	443
1	3553
1	6269
1	423
1	6886
1	6888
1	3556
1	5480
1	6272
1	3554
1	6270
1	6907
1	6885
1	425
1	3552
1	6268
1	420
1	5476
1	6884
1	422
1	6271
1	6887
1	3555
1	421
1	3551
1	6267
1	441
1	6883
1	5482
1	424
1	3573
1	6289
1	426
1	6905
1	3558
1	6274
1	6890
1	427
1	3559
1	6275
1	6891
1	428
1	3560
1	6276
1	6892
1	429
1	3561
1	6277
1	6893
1	430
1	3562
1	6278
1	6894
1	431
1	3563
1	6279
1	6895
1	432
1	3564
1	6280
1	6896
1	433
1	3565
1	6281
1	6897
1	434
1	3566
1	6282
1	6898
1	435
1	3567
1	6283
1	6899
1	436
1	3568
1	6284
1	6900
1	437
1	3569
1	6285
1	6901
1	438
1	3570
1	6286
1	6902
1	439
1	3571
1	6287
1	6903
1	445
1	3577
1	6293
1	6909
1	6908
1	6292
1	444
1	6904
1	3576
1	440
1	446
1	3572
1	3578
1	6288
1	6294
1	6910
1	442
1	3574
1	6290
1	6906
1	3865
1	3864
1	1012
1	3862
1	1007
1	3883
1	3861
1	3860
1	1010
1	1009
1	3863
1	1008
1	3859
1	1020
1	1011
1	3881
1	1013
1	3866
1	1014
1	3867
1	1015
1	3868
1	1016
1	3869
1	3870
1	1018
1	3871
1	1019
1	3872
1	3873
1	1021
1	1017
1	3874
1	1022
1	3875
1	1030
1	3876
1	3877
1	1028
1	1026
1	3878
1	1027
1	3879
1	1023
1	1025
1	3885
1	1029
1	1024
1	3884
1	3880
1	3886
1	3882
49	7697
52	7708
46	7626
46	7619
52	7706
46	7620
49	7699
49	7698
46	7621
49	7696
52	7711
52	7705
46	7624
46	7622
46	7623
52	7710
49	7700
52	7707
52	7709
46	7625
46	7627
94	8108
62	7862
53	7764
94	8109
61	7859
116	8202
62	7863
62	7864
53	7757
53	7758
53	7756
53	7762
94	8110
59	7814
155	8285
53	7763
117	8205
53	7759
117	8204
117	8203
53	7760
62	7866
62	7875
62	7861
158	8286
62	7867
53	7761
120	8209
62	7860
53	7765
62	7868
119	8206
53	7766
120	8208
62	7865
97	8111
62	7869
159	8287
62	7870
53	7768
62	7871
62	7874
62	7878
120	8207
160	8288
58	7809
53	7767
62	7877
58	7810
34	7452
53	7769
58	7811
62	7872
62	7873
58	7812
122	8210
31	7377
62	7876
59	7813
59	7815
55	7804
33	7422
32	7403
55	7805
106	8160
31	7364
48	7649
106	8161
56	7806
106	8159
106	8158
31	7365
108	8167
31	7329
107	8163
33	7424
31	7331
31	7366
56	7808
31	7330
107	8162
33	7423
32	7397
108	8166
31	7333
31	7332
107	8164
33	7421
33	7425
33	7420
33	7433
108	8168
108	8169
48	7647
108	8171
31	7336
108	8165
48	7648
31	7334
31	7335
48	7652
56	7807
108	8170
32	7398
109	8174
48	7651
48	7650
108	8172
33	7426
108	8173
32	7404
48	7653
31	7367
31	7337
35	7507
35	7511
35	7513
35	7506
35	7505
35	7504
34	7437
35	7514
34	7436
35	7512
35	7509
35	7508
34	7440
35	7516
35	7517
35	7510
35	7515
34	7439
34	7438
37	7561
35	7520
34	7443
35	7519
35	7518
34	7441
34	7442
35	7521
37	7560
35	7522
43	7574
78	8021
77	8014
84	8066
77	8015
77	8016
84	8067
84	8068
84	8069
86	8077
78	8024
78	8020
84	8071
84	8070
79	8026
85	8074
78	8023
86	8076
78	8019
38	7568
78	8018
78	8017
79	8027
79	8029
85	8072
85	8073
38	7570
78	8022
86	8081
38	7569
86	8078
79	8032
32	7401
79	8028
86	8079
86	8075
79	8025
86	8080
79	8031
79	8030
66	7916
72	7968
66	7920
67	7927
72	7962
66	7917
72	7963
72	7964
72	7967
72	7965
66	7919
72	7969
35	7533
73	7979
66	7918
72	7966
66	7922
72	7970
66	7921
72	7971
72	7972
72	7973
67	7924
66	7923
73	7982
67	7925
72	7974
68	7930
73	7978
67	7928
67	7926
68	7929
73	7977
73	7976
73	7975
35	7532
31	7379
73	7981
73	7980
48	7660
48	7674
43	7575
48	7659
48	7657
43	7576
43	7581
43	7577
43	7580
48	7662
48	7656
43	7578
97	8112
48	7655
97	8113
32	7383
97	8114
48	7658
48	7654
43	7582
98	8117
48	7661
43	7579
43	7583
43	7584
43	7585
98	8118
48	7668
32	7384
43	7586
32	7392
48	7670
43	7587
48	7669
48	7671
98	8116
48	7664
32	7385
32	7386
48	7663
43	7588
98	8115
43	7589
99	8120
43	7595
43	7590
48	7665
48	7667
43	7597
43	7592
48	7666
36	7545
36	7546
42	7573
100	8121
43	7591
48	7672
43	7593
99	8119
48	7678
100	8123
48	7676
48	7677
48	7673
43	7596
100	8122
43	7598
48	7675
43	7594
122	8212
122	8211
122	8213
124	8220
124	8214
32	7405
124	8218
124	8217
124	8216
124	8215
125	8222
124	8219
125	8223
125	8224
125	8221
31	7230
162	8290
139	8259
139	8260
31	7234
31	7233
31	7229
140	8262
31	7231
162	8289
31	7232
31	7246
31	7235
31	7239
31	7236
163	8292
140	8261
31	7238
164	8294
31	7237
31	7369
163	8291
31	7245
31	7244
31	7368
31	7253
31	7372
31	7240
165	8296
31	7242
31	7370
31	7241
31	7243
164	8293
166	8297
31	7371
31	7247
31	7250
31	7252
31	7249
32	7402
165	8295
31	7254
31	7248
144	8263
31	7251
31	7339
60	7821
53	7713
31	7338
60	7819
53	7719
60	7818
59	7816
47	7633
60	7820
47	7629
60	7829
59	7817
31	7343
60	7822
60	7824
53	7714
53	7712
60	7823
53	7715
53	7718
53	7716
60	7825
53	7724
47	7631
31	7341
47	7630
60	7826
47	7632
53	7720
50	7702
60	7827
53	7717
60	7833
47	7635
50	7701
31	7346
60	7831
53	7723
31	7342
60	7830
53	7727
60	7828
47	7628
60	7832
53	7726
31	7340
50	7703
31	7344
60	7837
31	7345
60	7834
53	7721
53	7722
33	7434
47	7634
50	7704
53	7725
60	7835
60	7836
34	7444
34	7445
34	7446
34	7447
41	7572
33	7407
33	7412
54	7775
54	7776
54	7773
54	7778
54	7786
54	7774
33	7409
54	7780
54	7785
53	7770
53	7771
54	7772
54	7790
54	7777
54	7788
54	7779
33	7406
54	7781
33	7408
54	7784
54	7783
54	7782
54	7792
33	7413
33	7411
54	7791
54	7787
35	7534
54	7793
31	7378
33	7410
54	7789
35	7454
31	7302
109	8175
35	7455
64	7881
110	8184
31	7304
109	8178
31	7300
88	8088
31	7299
64	7883
64	7887
109	8176
109	8177
88	8082
31	7301
88	8085
110	8182
35	7453
64	7899
35	7460
35	7456
35	7459
31	7307
88	8084
35	7457
35	7474
31	7305
64	7890
111	8186
88	8086
63	7880
110	8181
35	7461
110	8179
64	7885
88	8089
89	8091
110	8180
35	7458
88	8083
63	7879
31	7303
90	8094
64	7884
111	8187
64	7886
35	7462
35	7463
64	7882
88	8087
110	8183
31	7310
35	7464
35	7465
31	7306
90	8095
35	7466
64	7895
35	7467
111	8188
31	7309
35	7468
64	7893
64	7888
35	7469
64	7889
35	7470
111	8185
35	7473
32	7395
35	7477
89	8090
64	7898
90	8093
112	8189
64	7892
112	8190
64	7891
35	7476
64	7897
64	7896
35	7471
31	7308
35	7472
90	8092
112	8191
35	7475
64	7894
74	7994
73	7986
74	8001
74	7990
73	7983
73	7985
73	7984
74	7989
73	7987
74	7991
74	7992
74	7995
74	7988
74	7997
74	7993
45	7607
74	7996
74	7998
45	7608
74	7999
75	8002
74	8000
36	7547
80	8040
80	8039
167	8298
80	8037
167	8299
80	8036
80	8035
168	8301
80	8034
80	8033
80	8041
80	8038
168	8300
81	8049
80	8043
169	8302
80	8044
80	8042
170	8303
81	8047
81	8046
171	8304
81	8048
81	8045
172	8305
100	8126
31	7373
100	8125
100	8124
101	8128
35	7523
102	8141
102	8133
101	8127
102	8135
102	8132
35	7525
102	8136
102	8131
102	8130
102	8129
102	8137
31	7374
102	8134
102	8140
103	8142
33	7427
102	8138
102	8139
35	7524
148	8273
37	7563
144	8265
144	8264
144	8266
37	7562
145	8270
144	8267
145	8269
128	8226
126	8225
128	8227
35	7536
128	8228
128	8229
129	8233
145	8268
128	8230
129	8232
35	7535
146	8271
129	8231
148	8272
148	8274
148	8275
37	7564
36	7537
31	7360
53	7732
31	7348
53	7731
53	7738
53	7730
36	7548
31	7347
53	7729
53	7739
53	7733
53	7728
53	7734
31	7352
31	7357
53	7737
31	7356
53	7736
53	7735
31	7350
31	7351
32	7396
53	7754
53	7740
53	7741
31	7354
53	7742
31	7353
31	7359
31	7349
53	7743
53	7744
53	7745
31	7358
31	7355
53	7750
53	7747
53	7752
53	7746
53	7748
53	7751
53	7749
53	7755
53	7753
69	7938
68	7931
34	7448
69	7936
68	7933
68	7932
69	7937
68	7934
69	7939
32	7399
69	7935
69	7941
69	7940
69	7943
69	7944
32	7400
69	7942
34	7449
48	7683
43	7600
43	7599
48	7680
47	7636
48	7682
48	7681
47	7644
47	7637
47	7639
47	7641
48	7679
47	7642
43	7601
47	7638
47	7640
48	7688
48	7686
33	7415
48	7684
43	7602
47	7643
48	7685
48	7687
47	7645
48	7692
43	7603
48	7695
43	7604
48	7691
33	7414
47	7646
48	7689
33	7416
48	7693
43	7605
48	7690
48	7694
45	7618
31	7185
45	7609
31	7186
112	8192
45	7611
45	7610
45	7613
45	7612
114	8197
114	8198
45	7616
31	7184
114	8195
31	7191
114	8194
31	7187
31	7190
31	7188
45	7614
31	7198
114	8193
31	7192
31	7189
45	7617
31	7194
114	8196
31	7193
45	7615
31	7196
31	7200
114	8199
31	7197
31	7199
116	8201
33	7428
115	8200
31	7195
60	7842
60	7840
60	7839
60	7838
60	7841
61	7844
60	7843
61	7845
61	7846
61	7856
61	7848
61	7847
31	7380
61	7849
61	7853
61	7850
61	7857
61	7852
61	7855
61	7851
61	7854
61	7858
54	7800
35	7526
54	7799
90	8097
54	7797
31	7260
31	7256
54	7796
90	8098
54	7795
31	7266
91	8101
54	7798
90	8096
54	7794
91	8100
31	7257
92	8103
54	7801
31	7255
35	7527
31	7261
91	8099
35	7528
31	7258
92	8104
92	8102
54	7803
31	7270
54	7802
31	7267
31	7259
32	7393
94	8107
93	8106
93	8105
31	7265
31	7264
31	7263
31	7269
35	7529
31	7262
31	7268
35	7481
82	8053
31	7311
36	7539
35	7478
82	8050
31	7317
82	8051
83	8057
31	7326
36	7538
35	7482
35	7479
35	7483
82	8052
173	8306
35	7485
35	7484
35	7480
31	7316
36	7540
83	8060
35	7500
31	7314
31	7312
31	7318
35	7486
35	7487
83	8058
35	7488
35	7489
83	8061
31	7319
35	7490
35	7491
83	8056
83	8055
83	8054
31	7315
35	7499
31	7322
31	7313
83	8062
35	7493
35	7492
83	8059
31	7320
35	7496
31	7321
35	7502
31	7324
31	7328
84	8065
35	7497
83	8064
35	7494
36	7542
31	7325
35	7498
38	7565
31	7327
180	8307
35	7495
35	7503
36	7541
83	8063
35	7501
181	8308
31	7323
103	8144
104	8151
104	8148
103	8143
104	8147
104	8149
104	8146
104	8145
104	8150
106	8155
105	8152
39	7571
106	8153
106	8154
33	7435
106	8156
106	8157
134	8240
131	8234
132	8236
150	8276
152	8277
34	7451
132	8235
34	7450
134	8239
152	8278
153	8281
134	8237
153	8280
154	8284
134	8238
154	8282
134	8241
153	8279
32	7387
154	8283
135	8243
136	8244
135	8242
70	7945
70	7947
71	7954
70	7946
76	8008
76	8005
76	8004
70	7948
71	7956
70	7949
76	8003
76	8006
71	7957
71	7960
31	7381
71	7953
31	7376
71	7952
71	7951
76	8007
71	7950
76	8009
77	8010
71	7958
77	8013
71	7955
72	7961
31	7375
71	7959
77	8012
77	8011
33	7418
37	7551
37	7550
33	7431
37	7549
33	7417
37	7555
37	7554
37	7553
37	7552
31	7363
37	7556
37	7559
33	7429
33	7430
31	7361
31	7362
37	7558
37	7557
33	7419
33	7432
64	7900
64	7903
64	7905
31	7226
31	7204
64	7907
31	7206
31	7201
64	7901
31	7203
31	7202
31	7222
31	7205
31	7207
64	7902
182	8309
31	7208
64	7906
31	7209
64	7904
64	7909
31	7210
64	7913
31	7211
64	7908
31	7212
31	7213
64	7912
31	7214
64	7911
64	7910
31	7215
28	7183
65	7915
31	7216
31	7217
31	7218
31	7219
31	7220
31	7221
31	7224
32	7394
31	7228
64	7914
31	7225
31	7227
31	7223
137	8251
136	8247
136	8245
136	8246
136	8248
137	8250
137	8252
35	7531
137	8253
35	7530
137	8249
38	7566
138	8256
138	8254
139	8257
138	8255
38	7567
139	8258
44	7606
32	7391
32	7389
31	7296
31	7274
31	7276
31	7271
31	7273
31	7272
31	7292
31	7275
31	7277
32	7388
31	7278
31	7279
32	7390
31	7280
31	7281
31	7282
31	7283
31	7284
31	7285
31	7286
31	7287
36	7543
31	7288
31	7289
31	7290
31	7291
31	7294
31	7298
32	7382
36	7544
31	7295
31	7297
31	7293
56	546
56	548
56	108
56	187
56	121
56	179
56	1256
56	1006
56	1278
56	1447
56	1563
56	1635
56	1148
56	1397
56	1227
56	1427
56	2063
56	1392
56	841
56	1796
56	1530
56	1664
56	2031
56	2175
56	2740
56	1488
56	1950
56	2260
56	2565
56	2256
56	2297
56	1894
56	2180
56	1940
56	2567
56	1516
56	2231
56	2446
56	2257
56	3121
56	3294
56	3140
56	3461
56	2223
56	2625
56	2326
56	3151
56	3152
56	2859
56	2772
56	3161
56	3854
56	3147
56	3600
56	3525
56	3394
56	3838
56	3815
56	3175
56	3339
56	3430
56	3391
56	2956
56	3507
56	3451
56	3872
56	4250
56	4052
56	4218
56	3932
56	3805
56	4065
56	5173
56	4668
56	4600
56	5067
56	4387
56	4609
56	5237
56	4797
56	4695
56	4605
56	4472
56	4719
56	4637
56	5001
56	4302
56	4708
56	4697
56	5836
56	5150
56	5830
56	5438
56	5622
56	5489
56	5468
56	5080
56	5278
56	4860
56	5418
56	5306
56	5488
56	5354
56	5238
56	5566
56	5701
56	5395
56	6094
56	6353
56	6330
56	5815
56	6120
56	5833
56	6507
56	6007
56	6028
56	6340
56	6603
56	6810
56	5944
56	5949
56	6593
56	6300
56	6727
67	309
67	147
67	442
67	143
67	981
67	84
67	1230
67	164
67	1495
67	172
67	624
67	964
67	61
67	1608
67	856
67	1942
67	1616
67	1510
67	1718
67	1803
67	1593
67	2572
67	2771
67	2584
67	2956
47	844
47	118
47	429
47	623
47	749
47	1379
47	873
47	1429
47	338
47	1199
47	1531
47	2183
47	1955
47	1786
47	2848
47	2510
47	2276
47	2872
47	2867
47	2589
47	2376
47	2451
47	2493
47	2879
47	3006
47	2666
47	2985
47	2682
47	2922
47	2671
47	3297
47	3199
47	2825
47	2925
47	2707
47	3079
47	3448
47	2505
47	3721
47	3484
47	3818
47	3271
47	3333
47	4033
47	3620
47	4051
47	3708
47	4009
47	3050
47	3926
47	3619
47	4336
47	4130
47	4248
47	3912
47	4094
47	4353
47	4065
47	4179
47	5001
47	5115
47	5135
47	4991
47	5077
47	4841
47	4670
47	4499
47	4200
47	4742
47	4818
47	4609
47	4710
47	5074
47	4681
47	5147
47	5178
47	5464
47	5248
47	5500
47	5271
47	5276
47	5489
47	5300
47	5567
47	5195
47	5723
47	5589
47	4788
47	5058
47	5357
47	5674
47	5320
47	5171
47	5566
47	5569
47	5395
47	6097
47	6010
47	6310
47	5992
47	6494
47	6296
47	6474
47	6514
47	6330
47	6219
47	6365
47	6339
47	6396
47	6167
47	6346
47	6249
47	6037
47	6172
47	6190
47	6168
47	6035
47	6130
47	6063
47	6507
47	6087
47	6293
47	5813
47	5770
47	6603
47	6749
47	7096
47	6974
47	7075
47	6965
47	6969
47	6839
47	6418
47	7059
47	7079
47	6709
47	7080
47	6878
47	5949
47	6476
47	6313
47	6593
47	6532
47	6787
47	6538
47	6493
47	6696
47	6605
47	6845
47	6851
47	6151
47	6624
47	6689
47	6500
47	6647
47	6444
47	6986
47	7050
47	6870
47	7078
47	6564
54	39
54	3368
54	3424
54	3570
54	4052
54	3929
54	3934
54	4234
54	4404
54	4955
54	5076
54	5295
54	5524
54	5578
54	5299
54	4506
54	5935
54	5676
54	5819
54	5555
54	6421
54	6434
54	6150
54	6076
54	5868
54	5323
54	6800
54	7049
54	6637
54	5899
54	7064
54	6749
54	6655
54	6499
54	5916
54	5689
85	3129
85	2926
85	3327
85	3890
85	3944
85	5231
85	5599
85	5844
60	659
60	433
60	2108
60	1855
60	2633
60	1889
60	2512
60	3014
60	3228
60	3678
60	4429
60	4005
60	4101
60	4851
60	4606
60	4459
60	5328
60	4833
60	5175
60	5733
60	5560
60	5618
60	4874
60	6415
60	6009
60	5719
60	5508
60	6018
60	5993
60	6484
60	6262
60	6211
60	6161
60	5687
60	5984
60	6276
60	5990
60	5954
60	6240
60	6074
60	6777
60	6923
60	6334
60	6818
60	6653
60	6736
60	6465
17	317
17	305
17	720
17	1570
17	1038
17	351
17	32
17	173
17	1865
17	2230
17	588
17	1895
17	1587
17	1989
17	1947
17	186
17	636
17	66
17	1739
17	1199
17	2494
17	1380
17	38
17	2726
17	1250
17	2389
17	1229
17	3281
17	1052
17	2490
17	2054
17	409
17	1745
17	1668
17	2847
17	989
17	2600
17	2155
17	558
17	2027
17	2448
17	2838
17	2005
17	2501
17	887
17	488
17	3338
17	2670
17	2063
17	1901
17	2113
17	1842
17	1609
17	143
17	2512
17	545
17	184
17	1673
17	1906
17	2606
17	3194
17	2702
17	1390
17	3082
17	2599
17	3326
17	2837
17	1838
17	3693
17	3113
17	1608
17	2982
17	1793
17	2305
17	3145
17	2980
17	1616
17	3854
17	2972
17	2686
17	3030
17	442
17	2628
17	3298
17	2257
17	3467
17	1615
17	3232
17	3159
17	3038
17	2439
17	3543
17	3107
17	3386
17	2873
17	2047
17	3578
17	794
17	2817
17	3040
17	3248
17	3140
17	3211
17	2928
17	2790
17	4052
17	2519
17	3168
17	3347
17	3391
17	2672
17	3278
17	2356
17	2808
17	1172
17	2630
17	2976
17	3352
17	2638
17	1936
17	1877
17	3358
17	2322
17	1810
17	2908
17	3649
17	3519
17	2372
17	3084
17	1379
17	2953
17	2201
17	2734
17	2156
17	3340
17	3004
17	841
17	429
17	2707
17	3341
17	2335
17	3614
17	885
17	1944
17	2966
17	2396
17	1976
17	2122
17	2633
17	3026
17	185
17	3143
17	2141
17	2567
17	1836
17	886
17	1433
17	2052
17	1582
17	2344
17	1915
17	197
17	2459
17	410
17	2528
17	1596
17	2879
17	3277
17	4174
17	3679
17	4005
17	3706
17	4203
17	3103
17	3411
17	3662
17	2904
17	3490
17	4603
17	4447
17	3110
17	3791
17	4319
17	3639
17	3952
17	3353
17	3455
17	4688
17	2756
17	2825
17	3243
17	3793
17	4008
17	1635
17	2939
17	2896
17	3037
17	1983
17	3859
17	4535
132	3717
132	4583
16	305
16	56
16	77
16	1991
16	1570
16	1768
16	1744
16	317
16	1058
16	351
16	720
16	695
16	1332
16	1531
16	1074
16	2107
16	340
16	588
16	1828
16	2723
16	38
16	2140
16	173
16	527
16	246
16	1353
16	1695
16	1587
16	636
16	2230
16	1380
16	2494
16	1763
16	796
16	1865
16	1870
16	583
16	66
16	1016
16	2079
16	1739
16	2200
16	1068
16	1073
16	1199
16	2726
16	2648
16	1901
16	2192
16	929
16	2847
16	887
16	1215
16	2600
16	2180
16	2662
16	1856
16	1943
16	2501
16	2794
16	2237
16	2860
16	2389
16	2113
16	1636
16	1842
16	1824
16	1609
16	2210
16	1250
16	1592
16	785
16	2652
16	1156
16	1229
16	2155
16	2054
16	1519
16	1271
16	2005
16	1087
16	2184
16	1052
16	545
16	409
16	2234
16	2512
16	143
16	1461
16	1668
16	1114
16	195
16	925
16	2099
16	989
16	1745
16	488
16	2063
16	184
16	1673
16	1906
16	3736
16	1877
16	3082
16	2356
16	2982
16	1172
16	2047
16	2764
16	3578
16	2122
16	1221
16	3323
16	2953
16	3614
16	885
16	1390
16	2459
16	3159
16	3485
16	2707
16	2401
16	3099
16	2976
16	2370
16	2338
16	2686
16	2596
16	935
16	2702
16	3248
16	3391
16	2227
16	2322
16	1379
16	1894
16	2078
16	1804
16	2052
16	1836
16	886
16	3694
16	2302
16	3436
16	2997
16	3386
16	2567
16	2335
16	3026
16	2503
16	2879
16	1944
16	1864
16	1838
16	548
16	442
16	2638
16	3519
16	2201
16	2966
16	1976
16	410
16	623
16	1563
16	3004
16	1615
16	197
16	3211
16	1173
16	1596
16	2967
16	2980
16	1936
16	673
16	2344
16	1582
16	2141
16	2519
16	1810
16	2633
16	2837
16	429
16	2396
16	1433
16	185
16	1915
16	794
16	1608
16	3277
16	2605
16	3103
16	3110
16	3037
16	2825
16	3743
16	3455
16	2939
16	2896
16	1983
16	1635
101	6150
19	32
19	2407
19	1736
19	446
19	1058
19	1734
19	1570
19	1865
19	1380
19	1587
19	173
19	588
19	806
19	1947
19	2174
19	1763
19	1073
19	66
19	2985
19	1705
19	1695
19	1989
19	162
19	2237
19	1114
19	2946
19	143
19	1745
19	2847
19	2155
19	793
19	2063
19	2546
19	2652
19	2501
19	2234
19	1229
19	1519
19	1052
19	2027
19	1673
19	1906
19	3211
19	2879
19	1582
19	2141
19	2619
19	2837
19	2401
19	3113
19	3309
19	3335
19	2519
19	2630
19	3578
19	3327
19	3614
19	2853
19	2344
19	2322
19	3038
19	2439
19	1345
19	3626
19	2980
19	3155
19	3854
19	3347
19	442
19	1563
19	2528
19	429
19	3772
19	3344
19	2633
19	3808
19	3278
19	1596
19	3159
19	3742
19	3263
19	185
19	2156
19	3143
19	3232
19	1838
19	4052
19	3551
19	1616
19	3248
19	3660
19	2761
19	2976
19	3340
19	2338
19	3649
19	2823
19	5064
19	3026
19	3471
19	3145
19	1810
19	3632
19	3912
19	2734
19	3795
19	3589
19	3152
19	2052
19	410
19	1804
19	2596
19	3030
19	2097
19	886
19	2808
19	3543
19	2459
19	1915
19	3706
19	4386
19	4234
19	4106
19	4719
19	4057
19	4603
19	4411
19	4956
19	4635
19	4344
19	3875
19	3791
19	4412
19	4443
19	3620
19	5408
19	4292
19	4152
19	3687
19	3823
19	3623
19	4453
19	4609
19	3639
19	3455
19	3940
19	3950
19	4199
19	4045
19	2904
19	5182
19	4667
19	3864
19	4447
19	3890
19	3277
19	3943
19	4319
19	3974
19	3571
19	4735
19	3353
19	3243
19	4358
19	4015
19	3799
19	4811
19	4008
19	4526
19	2914
19	3411
19	2825
19	3103
19	3662
19	3404
19	2756
19	3952
19	3635
19	1635
19	3037
19	3502
19	3110
19	3678
19	4825
19	4356
19	4843
19	4317
19	3859
19	3754
19	4563
19	5163
19	4535
19	3734
19	4092
19	3853
19	4091
19	4200
19	4699
19	4346
19	5185
37	65
37	3
37	594
37	929
37	143
37	623
37	989
37	187
37	1016
37	168
37	624
37	860
37	1136
37	1897
37	1616
37	1510
37	1635
37	1608
37	1626
37	1812
37	2245
37	1367
37	1080
37	1179
37	1392
37	1731
37	1801
37	1738
37	1497
37	1260
37	1611
37	1730
37	2062
37	1516
37	2002
37	1434
37	1488
37	1593
37	2082
37	2438
37	2178
37	2439
37	2267
37	2130
37	2199
37	2260
37	2428
37	2420
37	2457
37	1902
37	1718
37	2501
37	1485
37	2726
37	2233
37	1945
37	2162
37	2004
37	2838
37	2322
37	2252
37	2052
37	2772
37	2497
37	2309
37	2698
37	2706
37	2521
37	3211
37	3432
37	3026
37	2950
37	3203
37	2125
37	2411
37	3564
37	3461
37	3038
37	3110
37	2523
37	2223
37	3155
37	2827
37	2896
37	3081
37	2825
37	2791
37	2727
37	2474
37	2618
37	2581
37	2755
37	2687
37	2859
37	2447
37	3020
37	3030
37	2459
37	2756
37	3403
37	3159
37	3103
37	3168
37	2853
37	2843
37	2984
37	3836
37	3307
37	3740
37	2529
37	3675
37	3600
37	3385
37	3544
37	3911
37	3685
37	3549
37	3163
37	2738
37	3927
37	3407
37	3021
37	3891
37	3661
37	3878
37	3175
37	3742
37	3339
37	3266
37	3590
37	2733
37	3708
37	3875
37	2829
37	3592
37	2995
37	3136
37	3860
37	3491
37	2956
37	3723
37	3626
37	3143
37	3176
37	3240
37	3440
37	3451
37	3202
37	3587
37	3872
37	3429
37	3828
37	3670
37	3523
37	3411
37	3623
37	3639
37	4629
37	4308
37	3785
37	4261
37	3831
37	4239
37	4218
37	3274
37	3943
37	3397
37	4346
37	3724
37	4352
37	4091
37	4333
37	4327
37	3946
37	4129
37	4503
37	4104
37	3937
37	4416
37	3832
37	3717
37	3863
37	4373
37	4341
37	4100
37	3674
37	4153
37	4453
37	4420
37	3362
37	4313
37	4079
37	4041
37	4152
37	4398
37	3853
37	4168
37	4065
37	3884
37	4371
37	3332
37	4386
37	3690
37	5022
37	4059
37	4566
37	4668
37	4880
37	4600
37	4657
37	4374
37	4859
37	4526
37	4780
37	5042
37	4635
37	4583
37	5067
37	4810
37	5055
37	4612
37	4225
37	4740
37	5078
37	4898
37	4653
37	4441
37	4273
37	4367
37	3876
37	4739
37	4861
37	5107
37	4200
37	4671
37	4961
37	4609
37	4895
37	4735
37	4643
37	4779
37	4806
37	4884
37	4582
37	4284
37	4546
37	4918
37	5796
37	4605
37	4950
37	5108
37	5064
37	4637
37	4983
37	4291
37	4938
37	4929
37	3870
37	4449
37	4369
37	4857
37	4119
37	4305
37	4755
37	4343
37	4726
37	4858
37	4608
37	4969
37	4796
37	5426
37	5655
37	4803
37	5175
37	5383
37	5586
37	5150
37	5401
37	5259
37	5163
37	5282
37	5381
37	4890
37	5391
37	5716
37	5039
37	5500
37	5460
37	5628
37	5276
37	5622
37	5396
37	5208
37	5469
37	5340
37	5627
37	5590
37	5274
37	4788
37	5217
37	5459
37	5468
37	5338
37	5473
37	5376
37	5041
37	5612
37	5157
37	4707
37	5223
37	4576
37	5595
37	4616
37	5617
37	4741
37	5125
37	5194
37	5012
37	5120
37	5265
37	5509
37	5366
37	5306
37	5486
37	5317
37	4975
37	5238
37	5089
37	5185
37	5297
37	5635
37	5566
37	5581
37	5424
37	5478
37	4906
37	5597
37	5299
37	5361
37	5406
37	5756
37	5037
37	5072
37	4288
37	4962
37	5093
37	4988
37	4321
37	5402
37	5073
37	5210
37	5528
37	6281
37	5786
37	5946
37	5968
37	5952
37	6364
37	5963
37	5934
37	6016
37	6089
37	6153
37	5771
37	5718
37	5837
37	6479
37	6078
37	6017
37	6167
37	5518
37	5803
37	6025
37	5882
37	5646
37	5466
37	5670
37	5499
37	6308
37	6329
37	5774
37	5960
37	5794
37	6266
37	5334
37	5485
37	6030
37	5565
37	5931
37	5709
37	5845
37	6362
37	5753
37	5926
37	5945
37	5827
37	5877
37	6086
37	6457
37	5908
37	6119
37	6088
37	5898
37	6416
37	4893
37	5762
37	5673
37	5770
37	6013
37	5940
37	6057
37	5201
37	6225
37	6737
37	6603
37	6575
37	7018
37	6946
37	7071
37	6693
37	6513
37	6932
37	6573
37	6467
37	7023
37	6242
37	6548
37	5507
37	5462
37	6288
37	5750
37	5793
37	6683
37	6968
37	5844
37	6656
37	6477
37	6665
37	6917
37	6634
37	6369
37	6622
37	6753
37	6688
37	6527
37	6623
37	6624
37	6610
37	6771
37	6410
37	6715
37	7114
37	6533
37	6344
37	6299
37	5916
37	6885
37	6724
37	7078
37	6843
174	2772
107	181
107	3628
61	434
61	497
61	1624
61	1142
61	1838
61	2012
61	1443
61	1556
61	2371
61	2268
61	2122
61	3299
61	2491
61	2580
61	2547
61	3783
61	3800
61	3560
61	3539
61	4054
61	3493
61	4152
61	4481
61	3949
61	4023
61	4495
61	4339
61	4535
61	4171
61	4443
61	4357
61	3999
61	5075
61	5003
61	4422
61	4843
61	4856
61	4746
61	5397
61	5692
61	5425
61	5431
61	5111
61	5496
61	5731
61	6154
61	5832
61	5869
61	6352
61	5734
61	5889
61	6132
61	5547
61	6539
61	6275
61	7024
123	4935
123	4499
123	6514
178	4228
178	4261
74	970
74	3138
74	2326
74	2426
74	3401
74	3554
74	3943
74	5894
78	3740
78	4083
78	3811
78	4466
78	4866
78	5495
78	4951
78	5150
78	5946
83	3593
179	2953
138	234
25	24
25	64
25	184
25	195
25	61
25	164
25	186
25	67
25	488
25	595
25	429
25	714
25	433
25	796
25	958
25	926
25	1068
25	886
25	1271
25	434
25	1114
25	179
25	1250
25	1532
25	1173
25	1227
25	1064
25	1199
25	172
25	848
25	1102
25	572
25	1293
25	1353
25	1566
25	1049
25	1856
25	869
25	2215
25	1439
25	623
25	2023
25	1986
25	1842
25	1676
25	870
25	1515
25	1835
25	1080
25	2027
25	2294
25	2278
25	2386
25	2155
25	1461
25	2663
25	1836
25	2201
25	2563
25	2443
25	2418
25	3128
25	2972
25	1284
25	2206
25	2706
25	3166
25	2910
25	3111
25	2720
25	3306
25	2890
25	3391
25	3114
25	3023
25	2966
25	2606
25	3263
25	3398
25	2549
25	3730
25	3797
25	3134
25	2448
25	2922
25	2899
25	2490
25	3518
25	3473
25	3448
25	3282
25	3359
25	3326
25	3112
25	3194
25	3510
25	3912
25	3672
25	4654
25	4110
41	594
41	649
41	496
41	442
41	659
41	908
41	970
41	1906
41	1616
41	1391
41	1556
41	1445
41	1423
41	1915
41	1482
41	1767
41	1289
41	1468
41	1493
41	1817
41	2042
41	2224
41	2062
41	1730
41	1735
41	2379
41	2004
41	1382
41	1577
41	2528
41	2233
41	2271
41	1918
41	2622
41	1902
41	2453
41	2601
41	2420
41	2297
41	2144
41	2320
41	2260
41	2130
41	2439
41	2520
41	1983
41	2097
41	2823
41	2276
41	2480
41	2052
41	2165
41	2482
41	2811
41	2959
41	2560
41	2626
41	2599
41	2295
41	2477
41	2250
41	2093
41	2976
41	2641
41	2459
41	3203
41	2833
41	2547
41	3084
41	3198
41	2698
41	3030
41	2879
41	2753
41	3077
41	3467
41	3145
41	3020
41	2703
41	2859
41	2755
41	2581
41	3232
41	2326
41	3347
41	2625
41	3165
41	2397
41	2775
41	2951
41	2580
41	2789
41	3129
41	2426
41	2907
41	2980
41	2614
41	3235
41	3301
41	2756
41	3403
41	2791
41	3138
41	3508
41	2714
41	3106
41	3287
41	2825
41	3081
41	2827
41	2688
41	3251
41	3102
41	3490
41	3155
41	3130
41	3110
41	3140
41	3337
41	3220
41	3344
41	3159
41	2619
41	3197
41	3219
41	2904
41	3116
41	2853
41	2873
41	3041
41	3318
41	2926
41	3343
41	3325
41	2526
41	3135
41	3329
41	3150
41	2814
41	3643
41	3454
41	3580
41	3416
41	3147
41	3551
41	3632
41	3679
41	3358
41	3740
41	3656
41	3563
41	3721
41	3671
41	3806
41	3307
41	3830
41	3836
41	3864
41	3224
41	3854
41	3455
41	3543
41	2956
41	3799
41	3570
41	3791
41	3471
41	3401
41	3795
41	3662
41	3974
41	3125
41	3611
41	3195
41	3592
41	3636
41	3875
41	3722
41	3515
41	3210
41	3642
41	4051
41	3594
41	3132
41	3780
41	3554
41	3742
41	3175
41	3661
41	3747
41	3793
41	3727
41	3635
41	4033
41	3755
41	3927
41	3529
41	3838
41	4015
41	3758
41	3277
41	3240
41	3623
41	3411
41	3639
41	3726
41	3670
41	3587
41	3396
41	3828
41	3459
41	3429
41	3520
41	3542
41	3872
41	3852
41	3760
41	3568
41	3751
41	3071
41	3910
41	3322
41	3575
41	3244
41	3451
41	3926
41	3435
41	3433
41	4304
41	3546
41	3856
41	3944
41	4064
41	3603
41	3970
41	4312
41	3582
41	4182
41	3831
41	4530
41	3811
41	4344
41	3789
41	3950
41	4192
41	4144
41	4052
41	4517
41	4336
41	4115
41	4240
41	4308
41	4306
41	4489
41	4214
41	3571
41	4174
41	4629
41	4477
41	3957
41	4358
41	4237
41	4457
41	4535
41	4276
41	4417
41	4447
41	4296
41	4161
41	3940
41	4008
41	4513
41	4068
41	3952
41	4189
41	3798
41	4330
41	3683
41	4152
41	4327
41	4101
41	4215
41	4375
41	3943
41	4410
41	3945
41	4398
41	4057
41	4292
41	4311
41	4123
41	4067
41	4497
41	3332
41	4378
41	4362
41	4578
41	4135
41	4418
41	3884
41	4168
41	3572
41	4532
41	4273
41	4471
41	4876
41	4441
41	5100
41	4729
41	4841
41	4329
41	4782
41	4898
41	4210
41	4701
41	5075
41	4369
41	4669
41	4934
41	4925
41	4543
41	4776
41	4873
41	4092
41	4526
41	4767
41	4936
41	4815
41	4943
41	4600
41	5008
41	4964
41	4586
41	5173
41	4603
41	5147
41	4649
41	3870
41	4919
41	4983
41	4667
41	4637
41	4774
41	5064
41	5331
41	4800
41	4949
41	5082
41	4708
41	5126
41	4751
41	4792
41	4901
41	4695
41	5146
41	4643
41	4735
41	4609
41	4811
41	4541
41	4655
41	4611
41	4579
41	4948
41	5723
41	5567
41	5183
41	5420
41	4799
41	5439
41	5590
41	5496
41	5792
41	5436
41	5561
41	5375
41	5537
41	4765
41	5276
41	5659
41	5232
41	5542
41	5690
41	5218
41	5245
41	5598
41	5817
41	5434
41	5372
41	5242
41	5726
41	5696
41	5408
41	5571
41	5354
41	5320
41	5170
41	5695
41	4984
41	5509
41	5674
41	5268
41	5339
41	5179
41	5177
41	5518
41	6172
41	6037
41	6065
41	6031
41	5969
41	5958
41	6195
41	6254
41	6164
41	5875
41	6017
41	5641
41	6078
41	6330
41	6098
41	5894
41	6426
41	6094
41	6294
41	5968
41	5921
41	5828
41	6261
41	5991
41	5832
41	6309
41	6174
41	6892
41	6961
41	6793
41	6500
41	5986
41	6263
41	6722
75	970
75	2484
75	3138
75	2326
75	2426
75	3685
75	4154
75	4068
75	4083
75	3943
75	3811
75	4466
75	4751
75	5029
75	4779
75	4576
75	5012
75	4951
75	5217
75	5150
75	4866
75	5822
75	5495
75	5946
75	4893
75	5032
75	5774
75	6363
75	5831
75	5800
75	5933
75	6724
75	6838
75	5603
86	2379
86	2233
33	200
33	67
33	534
33	42
33	71
33	659
33	49
33	216
33	1087
33	781
33	1038
33	201
33	181
33	6
33	157
33	844
33	1
33	561
33	3
33	246
33	103
33	876
33	804
33	929
33	790
33	1462
33	1197
33	20
33	686
33	468
33	1666
33	1036
33	1027
33	138
33	1156
33	787
33	1379
33	1058
33	772
33	1478
33	367
33	17
33	875
33	112
33	545
33	409
33	588
33	623
33	460
33	429
33	786
33	61
33	38
33	44
33	195
33	316
33	169
33	79
33	441
33	874
33	433
33	745
33	1052
33	798
33	492
33	758
33	37
33	695
33	633
33	118
33	582
33	16
33	827
33	295
33	234
33	497
33	107
33	682
33	981
33	321
33	203
33	1564
33	1189
33	1301
33	1142
33	1356
33	63
33	794
33	1068
33	1536
33	1123
33	1278
33	1619
33	2167
33	1261
33	1763
33	1398
33	1285
33	1236
33	1322
33	1581
33	1843
33	1742
33	1621
33	1814
33	1445
33	2266
33	1634
33	2282
33	1698
33	1710
33	1855
33	1877
33	1745
33	1659
33	1838
33	1760
33	1810
33	2005
33	1598
33	1359
33	1515
33	726
33	1293
33	1342
33	1274
33	826
33	1354
33	1920
33	1465
33	1955
33	1959
33	1981
33	1514
33	1928
33	2329
33	1962
33	1289
33	1678
33	1637
33	2299
33	1937
33	2254
33	1381
33	1221
33	1625
33	2017
33	2047
33	2201
33	2648
33	2135
33	1895
33	2488
33	2512
33	2403
33	2848
33	2812
33	2448
33	1337
33	2347
33	1671
33	1853
33	1585
33	2284
33	1901
33	2335
33	2372
33	1516
33	2276
33	2214
33	2222
33	2401
33	2178
33	2589
33	2593
33	2591
33	2454
33	2645
33	2817
33	2837
33	2297
33	2396
33	2871
33	2622
33	2399
33	2690
33	2650
33	2668
33	2684
33	1718
33	2424
33	2338
33	2027
33	2155
33	2498
33	2633
33	1835
33	1748
33	2160
33	1752
33	1382
33	2042
33	2781
33	2586
33	2358
33	2286
33	2493
33	2370
33	2647
33	2545
33	3053
33	2715
33	3316
33	2910
33	2491
33	2706
33	3292
33	3114
33	3211
33	3198
33	3084
33	2519
33	2547
33	2739
33	2666
33	3205
33	2927
33	2994
33	2860
33	2968
33	2777
33	2490
33	2985
33	2508
33	2946
33	3290
33	3262
33	3239
33	3242
33	2905
33	2958
33	3025
33	3130
33	3490
33	2930
33	3303
33	3248
33	3251
33	2713
33	2825
33	2982
33	3458
33	2756
33	3235
33	2919
33	2980
33	3004
33	2774
33	2775
33	3168
33	3184
33	3230
33	2638
33	3232
33	3293
33	3323
33	2808
33	3428
33	2859
33	2734
33	3437
33	2945
33	3341
33	3049
33	2432
33	3281
33	2967
33	3113
33	2516
33	2925
33	2686
33	2720
33	2671
33	2619
33	3219
33	2928
33	2911
33	2793
33	2904
33	2864
33	3190
33	3285
33	3868
33	3361
33	3792
33	3545
33	3721
33	3692
33	3873
33	3537
33	3731
33	3023
33	2529
33	3632
33	3551
33	3399
33	3839
33	3438
33	3378
33	3372
33	3477
33	3500
33	3484
33	3267
33	3200
33	3698
33	3633
33	3529
33	4033
33	3942
33	3727
33	3272
33	3793
33	3747
33	3984
33	3588
33	3368
33	3783
33	3655
33	4020
33	3780
33	3132
33	3266
33	3618
33	3576
33	3642
33	3722
33	3589
33	3434
33	3974
33	3694
33	3823
33	3442
33	3766
33	3855
33	3808
33	3543
33	3742
33	3192
33	3575
33	3760
33	4204
33	3957
33	4477
33	3571
33	4489
33	4229
33	4401
33	4336
33	4517
33	4192
33	3914
33	3788
33	4071
33	4479
33	4405
33	4182
33	4231
33	4303
33	4540
33	4140
33	4138
33	4199
33	4116
33	4087
33	4109
33	4542
33	3585
33	3994
33	4101
33	4333
33	4283
33	4074
33	4166
33	4104
33	4520
33	4435
33	3952
33	4319
33	3844
33	4379
33	3674
33	4453
33	4347
33	4508
33	4525
33	4417
33	3734
33	4413
33	4457
33	4237
33	3604
33	4418
33	3628
33	4507
33	5003
33	5008
33	4770
33	4815
33	4361
33	4776
33	4678
33	4124
33	4369
33	4826
33	4380
33	4896
33	4670
33	4660
33	4711
33	4532
33	5097
33	4376
33	4931
33	4818
33	4620
33	4811
33	3991
33	4805
33	4921
33	4632
33	5146
33	4437
33	4469
33	5198
33	5046
33	4800
33	4834
33	4719
33	4919
33	5063
33	4825
33	4838
33	5128
33	4912
33	4697
33	4802
33	4928
33	4946
33	5175
33	5186
33	5553
33	4026
33	5733
33	5643
33	5431
33	5391
33	5167
33	5386
33	5368
33	5272
33	5307
33	5263
33	5352
33	5514
33	5454
33	4036
33	5758
33	5577
33	5560
33	5182
33	4504
33	5084
33	5635
33	5424
33	5701
33	5726
33	5573
33	5200
33	5344
33	5597
33	5604
33	5754
33	5361
33	5434
33	5254
33	5324
33	5528
33	5950
33	6549
33	5786
33	6293
33	6411
33	6194
33	6237
33	6262
33	5976
33	6175
33	6141
33	5954
33	5889
33	6098
33	6494
33	6282
33	6036
33	6211
33	5941
33	6330
33	6283
33	5614
33	6158
33	6276
33	6254
33	6195
33	6165
33	6031
33	6488
33	6065
33	6172
33	5799
33	6161
33	5683
33	6190
33	6351
33	5087
33	5508
33	6209
33	5699
33	5759
33	6415
33	6092
33	6130
33	6309
33	5687
33	5982
33	5858
33	6118
33	5991
33	6093
33	5945
33	5741
33	6456
33	6507
33	6429
33	6281
33	5996
33	6061
33	5702
33	5842
33	5611
33	5686
33	5874
33	5734
33	6965
33	6903
33	6980
33	7099
33	6708
33	6275
33	6653
33	7008
33	6495
33	6919
33	6636
33	6629
33	6892
33	6208
33	6556
33	6817
33	6041
33	6493
33	6646
33	7064
33	6428
33	6461
33	6923
33	6334
33	6540
33	6650
33	6572
33	6700
33	6718
33	6715
33	6777
33	7050
33	6251
33	6393
33	6670
33	6617
14	704
14	1531
14	1416
14	695
14	1570
14	17
14	1744
14	77
14	446
14	32
14	305
14	1038
14	1768
14	183
14	1332
14	1991
14	720
14	1074
14	116
14	719
14	56
14	351
14	317
14	1688
14	1169
14	1895
14	1676
14	2782
14	1539
14	43
14	581
14	1621
14	2107
14	2140
14	583
14	162
14	1587
14	1832
14	2494
14	138
14	2230
14	1647
14	173
14	1478
14	1073
14	1989
14	1353
14	2174
14	1870
14	1695
14	2079
14	1763
14	38
14	806
14	821
14	749
14	1206
14	186
14	1068
14	783
14	295
14	1199
14	636
14	246
14	66
14	340
14	527
14	1739
14	1016
14	1380
14	796
14	787
14	855
14	2490
14	1566
14	1862
14	2652
14	925
14	2277
14	1156
14	1842
14	1439
14	2091
14	1368
14	348
14	2860
14	1753
14	2027
14	929
14	1215
14	1906
14	3338
14	2155
14	2368
14	1857
14	2184
14	2034
14	1386
14	2670
14	793
14	1455
14	1087
14	1052
14	1666
14	1668
14	2054
14	1519
14	1856
14	1229
14	1227
14	1461
14	2026
14	1505
14	1824
14	2424
14	558
14	665
14	1818
14	1271
14	772
14	1217
14	2099
14	1854
14	2005
14	1565
14	545
14	488
14	1636
14	1250
14	1592
14	2113
14	2063
14	1114
14	1609
14	1276
14	2210
14	195
14	2234
14	1745
14	143
14	409
14	989
14	184
14	2156
14	2164
14	2928
14	2650
14	1724
14	1625
14	4146
14	1894
14	2491
14	885
14	2445
14	2302
14	2401
14	2910
14	2267
14	2596
14	2997
14	1289
14	1608
14	2227
14	2344
14	1976
14	1043
14	3124
14	2275
14	2967
14	1915
14	673
14	935
14	2179
14	1936
14	1793
14	1345
14	1615
14	841
14	1582
14	1433
14	1944
14	1804
14	2356
14	1172
14	2322
14	1596
14	548
14	442
14	1951
14	1864
14	2372
14	623
14	1563
14	886
14	429
14	185
14	794
14	1173
14	197
14	410
13	393
13	1734
13	1074
13	1036
13	32
13	17
13	719
13	1531
13	183
13	853
13	695
13	1736
13	1416
13	1744
13	1991
13	1038
13	1570
13	1058
13	305
13	317
13	1768
13	351
13	77
13	116
13	1332
13	446
13	720
13	56
13	508
13	938
13	1672
13	2562
13	2812
13	1763
13	581
13	527
13	783
13	1621
13	2475
13	1647
13	1478
13	588
13	1587
13	295
13	1169
13	38
13	1895
13	2200
13	162
13	1828
13	1398
13	749
13	2107
13	2174
13	1628
13	870
13	173
13	1947
13	1870
13	1865
13	1989
13	1206
13	402
13	1353
13	1073
13	43
13	1739
13	1380
13	1199
13	686
13	1539
13	1676
13	821
13	1832
13	1016
13	806
13	246
13	1695
13	1068
13	583
13	66
13	340
13	796
13	636
13	186
13	2389
13	2234
13	2180
13	2091
13	1089
13	2418
13	1854
13	2184
13	1636
13	1609
13	2794
13	2648
13	1901
13	1753
13	1417
13	2706
13	1605
13	1958
13	2155
13	1505
13	2237
13	665
13	2161
13	2210
13	2652
13	772
13	2277
13	2005
13	1824
13	1745
13	785
13	1592
13	2386
13	2033
13	1215
13	1461
13	1386
13	2063
13	989
13	2027
13	2112
13	1276
13	1566
13	887
13	2026
13	1842
13	1455
13	2099
13	1766
13	1666
13	1668
13	558
13	2215
13	2113
13	1052
13	1856
13	1217
13	2023
13	1439
13	348
13	1250
13	855
13	1227
13	793
13	1114
13	1229
13	143
13	787
13	184
13	409
13	1087
13	545
13	1271
13	925
13	488
13	195
13	1944
13	1684
13	1959
13	2510
13	2488
13	2401
13	2503
13	1289
13	1915
13	2335
13	2227
13	2434
13	1563
13	2179
13	2201
13	841
13	1433
13	2338
13	1894
13	1172
13	1221
13	1608
13	410
13	1951
13	1836
13	1804
13	1724
13	794
13	2302
13	1173
13	886
13	548
13	673
13	623
13	197
13	429
13	185
13	442
13	1635
79	2560
32	351
32	389
32	14
32	200
32	4
32	67
32	47
32	540
32	50
32	42
32	569
32	590
32	5
32	932
32	113
32	193
32	49
32	1073
32	51
32	59
32	591
32	34
32	33
32	45
32	655
32	227
32	370
32	10
32	22
32	9
32	25
32	15
32	781
32	201
32	555
32	16
32	39
32	21
32	27
32	699
32	481
32	152
32	65
32	560
32	561
32	287
32	82
32	766
32	1180
32	804
32	1095
32	581
32	1197
32	704
32	1125
32	770
32	1672
32	1766
32	230
32	853
32	1511
32	1605
32	1110
32	1039
32	72
32	43
32	162
32	1636
32	785
32	787
32	855
32	1772
32	293
32	749
32	1455
32	1688
32	772
32	1478
32	719
32	185
32	1553
32	1407
32	673
32	17
32	442
32	1206
32	183
32	701
32	558
32	1169
32	1134
32	875
32	112
32	57
32	545
32	143
32	527
32	348
32	68
32	128
32	821
32	547
32	89
32	1005
32	786
32	139
32	87
32	101
32	886
32	38
32	571
32	295
32	169
32	155
32	174
32	887
32	48
32	184
32	32
32	1410
32	1412
32	1583
32	100
32	176
32	237
32	714
32	893
32	164
32	66
32	433
32	375
32	926
32	305
32	595
32	397
32	54
32	636
32	925
32	340
32	1539
32	318
32	85
32	453
32	116
32	1016
32	77
32	46
32	583
32	669
32	745
32	806
32	764
32	121
32	103
32	1380
32	798
32	492
32	919
32	315
32	35
32	64
32	11
32	678
32	344
32	136
32	159
32	88
32	648
32	695
32	549
32	1096
32	7
32	179
32	1332
32	624
32	387
32	478
32	633
32	118
32	246
32	24
32	13
32	796
32	317
32	8
32	720
32	41
32	954
32	409
32	834
32	728
32	31
32	238
32	1078
32	938
32	508
32	871
32	1
32	1564
32	1622
32	60
32	18
32	40
32	97
32	968
32	107
32	196
32	553
32	815
32	682
32	1130
32	393
32	1163
32	1017
32	1396
32	1034
32	1066
32	125
32	1101
32	203
32	1230
32	897
32	1352
32	1661
32	1456
32	1517
32	873
32	1575
32	860
32	99
32	1026
32	1551
32	1298
32	1089
32	1441
32	71
32	751
32	457
32	712
32	1035
32	826
32	587
32	1658
32	1123
32	1248
32	1136
32	1297
32	1906
32	711
32	992
32	1463
32	966
32	1172
32	1897
32	2099
32	2167
32	1102
32	1828
32	1116
32	676
32	1654
32	870
32	1587
32	866
32	1426
32	1913
32	1870
32	1068
32	1647
32	1695
32	1668
32	1570
32	1416
32	1763
32	1832
32	1967
32	2001
32	2289
32	2334
32	2026
32	1628
32	2246
32	2091
32	1797
32	1742
32	1716
32	1746
32	1723
32	2164
32	1682
32	1693
32	2161
32	1784
32	1621
32	1862
32	1514
32	1958
32	2179
32	1854
32	2383
32	1914
32	1608
32	1864
32	1951
32	1936
32	1818
32	2126
32	1793
32	1985
32	1994
32	2266
32	2035
32	1812
32	2245
32	1923
32	1532
32	2108
32	2282
32	1898
32	1824
32	1173
32	2210
32	1645
32	1302
32	1855
32	2014
32	1876
32	1250
32	1098
32	1285
32	1949
32	1649
32	1148
32	1360
32	1071
32	1271
32	1540
32	1736
32	1991
32	1744
32	2079
32	2145
32	1745
32	1592
32	1998
32	1502
32	1989
32	1064
32	1229
32	1119
32	1114
32	882
32	1865
32	2174
32	1049
32	1659
32	1866
32	1616
32	1371
32	1598
32	2063
32	1312
32	1179
32	869
32	907
32	958
32	1065
32	1392
32	1739
32	1274
32	1353
32	1354
32	1893
32	1981
32	1801
32	1498
32	1721
32	1725
32	1637
32	1738
32	1984
32	1641
32	2133
32	1796
32	2119
32	2306
32	2254
32	1334
32	1042
32	2662
32	2536
32	1963
32	1990
32	2240
32	1813
32	2175
32	2385
32	2794
32	2648
32	2840
32	1895
32	1703
32	2294
32	2551
32	2386
32	2200
32	2054
32	1856
32	2237
32	1997
32	2129
32	2448
32	1516
32	2002
32	1705
32	1734
32	2792
32	2368
32	2112
32	1393
32	2067
32	1364
32	1947
32	2007
32	1488
32	1158
32	1867
32	2347
32	2238
32	1749
32	1671
32	1646
32	2371
32	2277
32	1753
32	2510
32	2335
32	2031
32	2582
32	2019
32	2276
32	2008
32	2906
32	2548
32	2363
32	2401
32	2438
32	2872
32	2596
32	2217
32	2172
32	2377
32	2710
32	2769
32	2382
32	2267
32	2593
32	2591
32	2630
32	2199
32	2657
32	2558
32	2837
32	2356
32	2256
32	2360
32	2601
32	2571
32	1829
32	2134
32	1836
32	2192
32	2559
32	2712
32	2111
32	1842
32	1894
32	2395
32	2101
32	2023
32	2271
32	2690
32	2650
32	2684
32	2290
32	1718
32	1939
32	2234
32	2424
32	2338
32	2726
32	2215
32	2723
32	1986
32	2782
32	2198
32	1945
32	3044
32	2154
32	2422
32	2652
32	2160
32	2180
32	2311
32	2342
32	2140
32	2230
32	2187
32	1752
32	1940
32	1382
32	2162
32	2838
32	2268
32	2670
32	1405
32	1074
32	2042
32	2812
32	2434
32	2261
32	2729
32	2328
32	2445
32	2957
32	2231
32	2257
32	2599
32	2647
32	2686
32	3324
32	2587
32	2855
32	3128
32	2563
32	2185
32	3316
32	2706
32	2259
32	2212
32	3211
32	3564
32	2539
32	2739
32	2943
32	2784
32	2663
32	3419
32	3205
32	3314
32	2927
32	2994
32	2562
32	2799
32	3117
32	2946
32	2804
32	2890
32	3294
32	2414
32	2932
32	2449
32	1769
32	2425
32	2475
32	3099
32	2746
32	2549
32	2736
32	2922
32	2716
32	3166
32	2879
32	2846
32	3241
32	3337
32	3517
32	3452
32	3257
32	3300
32	3355
32	2760
32	3251
32	2953
32	3287
32	3508
32	2791
32	3492
32	3235
32	2580
32	3168
32	2524
32	3002
32	3230
32	3485
32	2996
32	2579
32	3225
32	3046
32	3232
32	3293
32	3323
32	3152
32	2669
32	2513
32	2581
32	2755
32	2687
32	2734
32	3437
32	2972
32	2945
32	3049
32	3020
32	2875
32	3254
32	3382
32	2967
32	3364
32	3111
32	2606
32	2418
32	3026
32	2771
32	3088
32	3301
32	2689
32	3403
32	3247
32	3119
32	2365
32	2976
32	3797
32	3667
32	3505
32	3327
32	2505
32	3634
32	3547
32	3807
32	3836
32	3730
32	3289
32	3806
32	3652
32	3410
32	3283
32	3309
32	3873
32	3833
32	3518
32	3023
32	3918
32	3985
32	3968
32	3510
32	3143
32	3398
32	3512
32	3282
32	3399
32	2766
32	3375
32	2856
32	3586
32	3338
32	3438
32	3372
32	3596
32	3321
32	3176
32	3822
32	3412
32	3212
32	3881
32	3475
32	4105
32	3633
32	3685
32	3942
32	3747
32	3686
32	3588
32	3783
32	3878
32	3964
32	3752
32	3993
32	3618
32	3576
32	3654
32	2842
32	3420
32	3157
32	3722
32	3716
32	2903
32	3591
32	3404
32	3589
32	3526
32	3772
32	3974
32	3694
32	3614
32	3982
32	3787
32	3388
32	2965
32	3478
32	4013
32	4042
32	3676
32	3808
32	3391
32	2956
32	3473
32	3436
32	3626
32	3792
32	4111
32	2529
32	3484
32	4015
32	3440
32	3745
32	3639
32	3957
32	4477
32	3998
32	4394
32	4408
32	4214
32	3989
32	4336
32	3914
32	4445
32	3965
32	4621
32	4518
32	4260
32	4479
32	3801
32	4025
32	4198
32	3331
32	4096
32	4303
32	4046
32	4485
32	4140
32	4331
32	4544
32	4034
32	4155
32	3775
32	3803
32	4195
32	3767
32	3971
32	4270
32	3672
32	4320
32	4324
32	4109
32	4117
32	4542
32	4356
32	4382
32	4091
32	4272
32	4152
32	4330
32	3862
32	4271
32	4416
32	4377
32	4403
32	4319
32	4086
32	4191
32	4474
32	4008
32	4003
32	4453
32	4045
32	4527
32	4098
32	4450
32	4161
32	2898
32	4417
32	4432
32	4440
32	4276
32	3734
32	4239
32	4168
32	4065
32	4179
32	4386
32	5003
32	5085
32	4847
32	4964
32	4943
32	4832
32	4775
32	4617
32	5286
32	4635
32	4704
32	5207
32	4709
32	4543
32	4615
32	4669
32	4334
32	4369
32	4857
32	4871
32	4740
32	4654
32	4210
32	4898
32	4782
32	5016
32	4559
32	5015
32	4528
32	4881
32	4729
32	5100
32	4781
32	5246
32	4670
32	4660
32	4446
32	4471
32	4532
32	4705
32	4931
32	3991
32	4805
32	4643
32	4921
32	4862
32	4771
32	4903
32	4751
32	4708
32	4605
32	4732
32	5082
32	5038
32	4743
32	5046
32	4829
32	5097
32	4472
32	4516
32	5331
32	5140
32	4421
32	4649
32	4688
32	4638
32	5004
32	4813
32	4920
32	4796
32	5655
32	5836
32	5817
32	5652
32	5589
32	5409
32	5175
32	5675
32	5150
32	5510
32	5513
32	5066
32	5690
32	5722
32	5368
32	5460
32	5542
32	5136
32	5479
32	4994
32	5397
32	5537
32	5283
32	5450
32	5792
32	5514
32	5558
32	5440
32	5338
32	5339
32	5757
32	5254
32	5577
32	5529
32	5600
32	5354
32	5571
32	5408
32	5182
32	5731
32	5195
32	5429
32	5829
32	5921
32	6314
32	6109
32	6237
32	6586
32	6327
32	6226
32	5953
32	5976
32	5821
32	6310
32	6435
32	6479
32	6210
32	6353
32	6354
32	6008
32	5824
32	6357
32	5296
32	6399
32	6014
32	6311
32	6176
32	6447
32	5641
32	5947
32	6158
32	6396
32	5969
32	6120
32	6121
32	6346
32	6249
32	5518
32	6025
32	6058
32	6096
32	6309
32	6053
32	6118
32	5925
32	6363
32	6305
32	6261
32	6429
32	6457
32	6416
32	6401
32	6253
32	5973
32	6174
32	5874
32	6893
32	6575
32	6467
32	7071
32	6501
32	6513
32	6903
32	6793
32	7039
32	6932
32	6801
32	6961
32	6628
32	7069
32	7042
32	6573
32	6894
32	5766
32	6834
32	6540
32	6688
32	6624
32	6610
32	6902
32	6928
32	6771
32	6651
32	6671
32	6658
32	6715
32	6299
32	6670
9	121
9	46
9	893
9	54
9	68
9	1412
9	441
9	52
9	23
9	100
9	48
9	44
9	571
9	136
9	237
9	159
9	82
9	1651
9	1583
9	71
9	2075
9	3301
9	2014
9	3618
9	1367
9	2622
9	970
9	2420
9	1143
9	594
9	453
9	3430
9	81
9	2521
9	1148
9	3599
9	2614
9	2284
9	3877
9	4513
9	3175
9	3339
9	3106
9	2727
9	3554
9	4051
9	3210
9	2995
9	4250
9	2297
9	4751
9	3594
9	2774
9	3002
9	2713
9	3674
9	3437
9	2590
9	2127
9	2951
9	3891
9	3401
9	1485
9	3050
9	3811
9	2711
9	2497
9	2326
9	2789
9	2125
9	2397
9	4134
9	2062
9	2639
9	2618
9	4068
9	3021
9	3889
9	3509
9	4038
9	2688
9	4546
9	4104
9	3483
9	4746
9	3733
9	4469
9	4083
9	4681
9	3536
9	3708
9	2733
9	3683
9	4189
9	2447
9	3717
9	4779
9	3937
9	2829
9	3832
18	1332
18	1654
18	446
18	317
18	720
18	1058
18	583
18	66
18	1695
18	162
18	38
18	636
18	43
18	1206
18	402
18	2494
18	1587
18	173
18	796
18	1870
18	749
18	1906
18	785
18	1052
18	545
18	989
18	1087
18	2990
18	2112
18	1636
18	2546
18	2063
18	2160
18	1229
18	1818
18	1842
18	1505
18	2414
18	2726
18	184
18	1609
18	1461
18	1673
18	2600
18	1814
18	2322
18	3198
18	2681
18	2141
18	2707
18	3787
18	2519
18	3543
18	2305
18	3716
18	1804
18	1563
18	3248
18	2638
18	3808
18	1864
18	1838
18	2491
18	2982
18	1915
18	2335
18	3364
18	3145
18	2047
18	1433
18	3854
18	885
18	3140
18	2156
18	2528
18	2164
18	3278
18	3082
18	2356
18	2718
18	1608
18	3155
18	2633
18	442
18	2564
18	623
18	3694
18	841
18	3361
18	3003
18	2126
18	3038
18	429
18	3626
18	1616
18	2122
18	673
18	3675
18	410
18	2702
18	3159
18	2761
18	3341
18	3632
18	3614
18	2052
18	1582
18	2808
18	2097
18	2567
18	2976
18	3352
18	1810
18	3578
18	1976
18	1936
18	2734
18	1596
18	2764
18	1944
18	3519
18	3316
18	2710
18	2439
18	185
18	3471
18	2401
18	3143
18	2879
18	3030
18	2628
18	2459
18	3347
18	2596
18	2823
18	3103
18	4199
18	4115
18	3639
18	3353
18	3923
18	3623
18	4635
18	3943
18	3411
18	3885
18	4603
18	4296
18	4045
18	3989
18	3277
18	4203
18	4329
18	4276
18	4447
18	4229
18	4057
18	3490
18	4234
18	4629
18	4319
18	4005
18	3620
18	3940
18	4225
18	4204
18	4008
18	4308
18	2825
18	3243
18	3455
18	2914
18	3944
18	3706
18	3502
18	4237
18	2756
18	2605
18	3037
18	3793
18	3791
18	4174
18	3952
18	2896
18	3662
18	2939
18	3890
18	3110
18	1983
18	1635
18	4535
18	4092
18	4317
18	4356
18	3754
18	3859
18	4919
18	4901
18	4699
18	4346
50	790
50	1368
50	836
50	686
50	195
50	316
50	649
50	1512
50	1619
50	1359
50	1345
50	1635
50	1814
50	1006
50	2108
50	1928
50	2555
50	2419
50	2275
50	2320
50	2144
50	2284
50	3204
50	3084
50	2967
50	2587
50	3057
50	2713
50	2825
50	3280
50	3263
50	2687
50	2945
50	3341
50	2102
50	3467
50	2911
50	2793
50	2904
50	3660
50	3687
50	3283
50	3358
50	3580
50	3488
50	3942
50	3727
50	3793
50	3747
50	3594
50	3877
50	3210
50	3694
50	3795
50	3823
50	3442
50	3243
50	3543
50	3751
50	3192
50	3575
50	3760
50	4358
50	4489
50	4229
50	4401
50	4115
50	3923
50	4071
50	4584
50	4138
50	2815
50	3778
50	4176
50	4211
50	4101
50	4074
50	4216
50	4435
50	3754
50	3483
50	3952
50	4527
50	4187
50	4276
50	4204
50	3628
50	4386
50	4292
50	4894
50	5068
50	4230
50	4388
50	4915
50	4633
50	4469
50	4761
50	4963
50	4919
50	4699
50	4480
50	4673
50	5067
50	4650
50	4802
50	5409
50	5856
50	5681
50	5768
50	4932
50	5644
50	5521
50	5587
50	5159
50	5439
50	5251
50	5344
50	5139
50	5454
50	5254
50	4483
50	4275
50	5025
50	5309
50	5726
50	5474
50	5321
50	5294
50	5597
50	5798
50	5241
50	5350
50	5452
50	6293
50	6411
50	6101
50	6479
50	6240
50	6065
50	5752
50	6211
50	6134
50	5917
50	5087
50	6035
50	6096
50	5911
50	5961
50	5687
50	6191
50	5858
50	5751
50	5987
50	5405
50	5520
50	5770
50	5611
50	6542
50	6903
50	6667
50	6428
50	6689
50	6902
50	6251
50	6499
50	6258
50	6617
15	77
15	2407
15	1754
15	446
15	1416
15	719
15	17
15	56
15	1654
15	1570
15	351
15	1074
15	317
15	720
15	1038
15	1768
15	1539
15	821
15	1865
15	527
15	1380
15	1895
15	1688
15	1398
15	1647
15	1989
15	1739
15	186
15	636
15	2129
15	783
15	246
15	1587
15	1073
15	43
15	1676
15	1695
15	402
15	173
15	2494
15	1016
15	806
15	1828
15	38
15	749
15	66
15	796
15	2107
15	1870
15	1353
15	2174
15	588
15	583
15	870
15	2079
15	1199
15	1068
15	1926
15	2180
15	787
15	772
15	793
15	1745
15	989
15	2648
15	2215
15	1215
15	1673
15	1753
15	2210
15	2899
15	1455
15	836
15	1901
15	2990
15	2112
15	1818
15	2277
15	1505
15	1565
15	2023
15	2860
15	2418
15	1229
15	2054
15	2670
15	2063
15	348
15	2794
15	2099
15	1250
15	1566
15	2027
15	2034
15	1156
15	1439
15	1636
15	143
15	1519
15	1856
15	1271
15	925
15	2005
15	929
15	1114
15	1461
15	785
15	2155
15	1087
15	1668
15	184
15	1906
15	2113
15	488
15	1052
15	1842
15	545
15	409
15	195
15	2356
15	3159
15	3038
15	3485
15	2267
15	2997
15	2519
15	3168
15	2630
15	2528
15	1684
15	2972
15	2953
15	2650
15	2434
15	2399
15	1616
15	2567
15	2370
15	1173
15	2047
15	2338
15	1563
15	2322
15	1838
15	2966
15	1379
15	2488
15	2372
15	2967
15	1345
15	2305
15	1804
15	2633
15	935
15	1582
15	1915
15	2443
15	2156
15	2837
15	3047
15	2781
15	1433
15	2686
15	2503
15	1836
15	2734
15	3107
15	2335
15	2483
15	1615
15	794
15	1936
15	841
15	1793
15	2201
15	2344
15	1864
15	1894
15	442
15	623
15	1944
15	2141
15	429
15	1172
15	2396
15	1608
15	885
15	886
15	1951
15	673
15	185
15	1596
15	548
15	410
15	197
15	3103
15	3448
15	2939
15	1635
15	1983
48	67
48	569
48	26
48	181
48	599
48	1087
48	135
48	162
48	1156
48	785
48	545
48	79
48	874
48	88
48	1038
48	665
48	107
48	203
48	10
48	943
48	2136
48	1915
48	1445
48	1920
48	1519
48	1838
48	1810
48	1342
48	969
48	1928
48	1289
48	1678
48	1381
48	1221
48	1625
48	2567
48	1405
48	2794
48	2122
48	1680
48	1337
48	2335
48	2214
48	2591
48	1718
48	1585
48	2027
48	2633
48	1835
48	1735
48	2286
48	2452
48	2180
48	2686
48	3306
48	3198
48	3203
48	2508
48	2804
48	2414
48	3130
48	2713
48	2474
48	3002
48	2808
48	2734
48	2265
48	2516
48	2756
48	2619
48	2793
48	3559
48	3092
48	3547
48	3309
48	3551
48	3353
48	3056
48	3200
48	3529
48	3272
48	3733
48	3424
48	3780
48	3210
48	3509
48	3614
48	3243
48	3642
48	3575
48	3760
48	3454
48	3989
48	4430
48	4217
48	4171
48	3585
48	4035
48	4176
48	4101
48	4074
48	3889
48	3754
48	3847
48	4403
48	3717
48	3940
48	4584
48	3582
48	3628
48	4507
48	4764
48	4361
48	4700
48	5068
48	4596
48	3991
48	4828
48	4884
48	4800
48	4388
48	4827
48	4705
48	4697
48	5409
48	5175
48	5186
48	5553
48	5681
48	5272
48	5304
48	5183
48	5454
48	4707
48	5206
48	4483
48	5430
48	5084
48	5573
48	5604
48	5754
48	5406
48	5291
48	5563
48	6237
48	6175
48	6141
48	6283
48	5799
48	5087
48	5699
48	6077
48	5987
48	6456
48	6261
48	6595
48	5986
48	6901
48	6461
48	6592
48	6687
48	6251
44	569
44	49
44	370
44	954
44	572
44	1095
44	787
44	701
44	1134
44	460
44	1565
44	195
44	184
44	54
44	669
44	848
44	648
44	24
44	728
44	238
44	1078
44	508
44	665
44	321
44	981
44	1230
44	1456
44	398
44	629
44	338
44	1026
44	1298
44	1684
44	1768
44	2176
44	2026
44	2091
44	1505
44	1911
44	2034
44	2047
44	1608
44	1864
44	1445
44	1985
44	1532
44	2282
44	1898
44	1556
44	1582
44	1877
44	1360
44	1519
44	1998
44	882
44	1695
44	1065
44	1392
44	1384
44	1893
44	1959
44	2025
44	2329
44	1499
44	1707
44	1880
44	1786
44	1882
44	1381
44	2333
44	2361
44	1676
44	1705
44	1671
44	2348
44	1593
44	2731
44	2214
44	2150
44	2796
44	2823
44	2305
44	2428
44	2356
44	2420
44	2284
44	2712
44	2101
44	2542
44	2338
44	2027
44	2155
44	1986
44	1837
44	2672
44	2422
44	2160
44	2187
44	1752
44	1813
44	2062
44	2376
44	2515
44	2502
44	2451
44	2445
44	3166
44	2720
44	2491
44	3068
44	2494
44	3239
44	3241
44	3337
44	3058
44	3517
44	3257
44	3032
44	3352
44	3155
44	3251
44	2688
44	2953
44	3287
44	3508
44	3403
44	2980
44	3002
44	2579
44	2590
44	2875
44	2908
44	3335
44	3145
44	3047
44	3281
44	3364
44	2185
44	3232
44	2864
44	3519
44	3904
44	3868
44	3660
44	3361
44	3915
44	3386
44	3830
44	3710
44	4111
44	3985
44	3551
44	3438
44	3675
44	3484
44	3212
44	3516
44	3566
44	3620
44	3936
44	3747
44	3661
44	3815
44	3743
44	3818
44	3736
44	3722
44	3662
44	3694
44	3791
44	3473
44	3836
44	3806
44	3435
44	3520
44	3726
44	3670
44	4174
44	3914
44	4481
44	3811
44	4199
44	4064
44	3604
44	4109
44	4411
44	4215
44	4382
44	4297
44	3889
44	4295
44	3847
44	4257
44	4045
44	4527
44	4293
44	3990
44	4234
44	4413
44	4408
44	4065
44	3884
44	4311
44	4418
44	4012
44	4378
44	3690
44	4135
44	4586
44	4763
44	5095
44	4709
44	4925
44	4380
44	4782
44	4846
44	4633
44	4842
44	4632
44	5146
44	4284
44	5030
44	4437
44	4901
44	4751
44	5020
44	5198
44	4967
44	5180
44	5045
44	4699
44	4939
44	5147
44	4673
44	5128
44	4603
44	4894
44	4569
44	4498
44	4920
44	5467
44	5456
44	5733
44	5643
44	5768
44	5303
44	5850
44	5389
44	5326
44	5382
44	5279
44	5348
44	4765
44	5537
44	5141
44	5678
44	5662
44	5851
44	5627
44	5251
44	4816
44	4977
44	5525
44	5339
44	5080
44	5498
44	5371
44	5509
44	5570
44	5695
44	5408
44	5162
44	5651
44	5309
44	5814
44	5581
44	5820
44	5200
44	5754
44	5435
44	6097
44	6194
44	6435
44	6127
44	5941
44	6031
44	6121
44	6099
44	6351
44	5621
44	6391
44	6058
44	5960
44	6075
44	6415
44	6491
44	6162
44	6042
44	6001
44	6108
44	5823
44	6400
44	5862
44	6124
44	6225
44	6446
44	6979
44	6635
44	6832
44	6852
44	6208
44	5899
44	5928
44	6683
44	6041
44	6834
44	7064
44	6821
44	6928
44	6799
44	6671
44	6444
44	6666
44	6562
44	6655
44	6441
44	6643
44	6670
57	2474
57	3444
57	2850
57	3914
57	4208
57	4216
57	4465
57	4128
57	4100
57	4333
57	3966
57	4582
57	4492
57	4801
57	4251
57	4819
57	4945
57	4987
57	4872
57	5062
57	4851
57	4749
57	4697
57	4745
57	4974
57	3827
57	4366
57	3983
57	4397
57	4501
57	5438
57	5121
57	5278
57	5403
57	5640
57	4976
57	5002
57	5332
57	5407
57	5021
57	5503
57	5035
57	5413
57	5028
57	5493
57	4837
57	5757
57	5080
57	4036
57	5333
57	5325
57	5454
57	5217
57	4788
57	4879
57	5330
57	5305
57	4888
57	4865
57	5393
57	4720
57	4870
57	4188
57	4900
57	5319
57	4614
57	4724
57	5516
57	4342
57	4468
57	6132
57	5992
57	5900
57	6096
57	5802
57	5907
57	5981
57	6085
57	5680
57	5343
57	6420
57	6415
57	5564
57	5826
57	5831
57	5646
57	5555
57	5799
57	5639
57	5924
57	6236
57	5902
57	5244
57	5349
57	5865
57	5634
57	5584
57	5710
57	5772
57	5267
57	6000
57	5562
57	6193
57	6970
57	7071
57	5599
57	6247
57	6746
57	6405
57	6313
57	6302
57	6208
57	6570
57	6762
57	6263
57	6710
57	6394
57	6833
57	6336
28	2639
28	2711
28	1485
28	2618
28	2497
28	3996
28	3877
28	3565
28	3143
28	3491
28	3687
28	2689
28	2521
28	2125
28	3923
28	4234
28	4187
28	3402
28	4440
28	3847
28	4317
28	4204
28	3889
28	4071
28	4495
28	4481
28	4403
28	3734
28	4635
28	4404
28	4347
28	3906
28	4764
28	3717
28	3863
28	4880
28	4950
28	4083
28	4469
28	3823
28	4889
28	4939
28	5108
28	5182
28	5067
28	5180
28	4825
28	5042
28	5383
28	2447
28	4566
28	5175
28	4437
28	5045
28	5060
28	5553
28	5514
28	5460
28	5430
28	3980
28	5371
28	5731
28	4081
28	4657
28	5754
28	5425
28	5652
28	5651
28	4466
28	5295
28	5522
28	5783
28	5820
28	5577
28	5347
28	5925
28	5733
28	6010
28	4569
28	6087
28	5805
28	6042
28	6296
28	6340
28	6365
28	6061
28	6130
28	6305
28	5687
28	5888
28	6386
28	6610
28	3934
28	6191
28	5254
28	6451
28	6845
28	6875
28	7023
30	4419
30	4967
30	3785
30	4668
30	5022
30	4583
30	4798
30	3362
30	5426
30	5856
30	4284
30	5934
30	5373
30	5185
30	5795
30	5150
30	6036
30	5935
30	5500
30	4275
30	5597
30	6101
30	6008
30	5025
30	5200
30	6219
30	5676
30	5954
30	6028
30	5984
30	5697
30	6364
30	5409
30	6262
30	5952
30	5323
30	6429
30	6352
30	6162
30	6549
30	5837
30	6189
30	6542
30	6260
30	5732
30	5926
30	5485
30	5834
30	6064
30	5334
30	6140
30	6410
30	6230
30	6461
30	6119
30	6267
30	5794
30	6151
30	6572
30	6363
30	6418
30	6559
30	6300
30	6457
30	6030
30	5845
30	6689
30	6075
30	6718
30	6839
30	6465
30	6118
30	4483
30	6715
30	6696
30	6688
30	6737
30	6749
30	5603
30	6903
30	6955
30	6974
30	6965
30	6539
30	4741
30	6571
30	6665
30	6980
30	6826
30	6946
30	6753
30	6851
30	7018
30	7040
30	7049
30	6917
30	7003
30	7075
30	7089
30	6646
84	1128
84	3629
39	65
39	467
39	954
39	223
39	620
39	582
39	624
39	808
39	549
39	640
39	669
39	453
39	81
39	793
39	187
39	812
39	309
39	1565
39	101
39	409
39	545
39	410
39	794
39	367
39	1379
39	785
39	1156
39	197
39	929
39	1180
39	1112
39	380
39	1533
39	659
39	1266
39	828
39	1444
39	537
39	1447
39	1354
39	1619
39	2099
39	1512
39	1278
39	1248
39	943
39	1006
39	1392
39	1065
39	1596
39	2184
39	1179
39	1810
39	1838
39	1236
39	1367
39	1119
39	904
39	1427
39	1296
39	1519
39	1397
39	1673
39	1042
39	1360
39	1148
39	1651
39	1098
39	1877
39	2087
39	1582
39	1302
39	1710
39	1157
39	1898
39	2183
39	1128
39	2245
39	2266
39	1814
39	2126
39	1626
39	1608
39	1914
39	2047
39	1956
39	1390
39	1943
39	2034
39	1685
39	2091
39	1779
39	841
39	1384
39	1395
39	1801
39	935
39	1221
39	1731
39	2329
39	2025
39	1962
39	1381
39	1509
39	1554
39	2116
39	1732
39	2017
39	2065
39	1617
39	1308
39	1928
39	986
39	2176
39	2248
39	1590
39	748
39	1639
39	2371
39	1593
39	1488
39	1680
39	1976
39	2790
39	1997
39	2054
39	2141
39	2122
39	2403
39	2512
39	2546
39	2503
39	2555
39	2258
39	1889
39	2031
39	2567
39	2600
39	2162
39	1940
39	1752
39	2187
39	2160
39	2422
39	2702
39	2672
39	2921
39	2633
39	1837
39	2198
39	2498
39	2726
39	1774
39	1939
39	2501
39	1718
39	2542
39	2650
39	2690
39	2111
39	2127
39	2871
39	2284
39	2457
39	1829
39	2304
39	2396
39	2256
39	2307
39	2428
39	2565
39	2837
39	2725
39	2484
39	2817
39	2199
39	2344
39	2645
39	2188
39	2075
39	2454
39	2591
39	2589
39	2305
39	2769
39	2874
39	2681
39	2596
39	2564
39	2906
39	2845
39	2764
39	2261
39	2322
39	2156
39	2781
39	2262
39	2078
39	1932
39	2370
39	2709
39	2605
39	2653
39	2247
39	2450
39	2358
39	2257
39	2745
39	1992
39	2615
39	2394
39	2803
39	2402
39	2231
39	2586
39	2810
39	2452
39	2835
39	2328
39	2013
39	2286
39	2732
39	2252
39	2446
39	2413
39	2193
39	2588
39	2514
39	1912
39	2640
39	1776
39	2098
39	2679
39	2613
39	2671
39	2771
39	2797
39	3099
39	2718
39	2990
39	2494
39	2508
39	2777
39	3162
39	2707
39	2847
39	3370
39	3419
39	2950
39	3026
39	2519
39	3003
39	3298
39	3211
39	2330
39	3316
39	3053
39	3121
39	2587
39	2309
39	2772
39	2925
39	3063
39	3113
39	3364
39	3281
39	3047
39	2102
39	3335
39	2875
39	3049
39	3341
39	2945
39	3437
39	2734
39	2687
39	3051
39	2808
39	3482
39	3323
39	2692
39	2638
39	3040
39	3485
39	3002
39	3184
39	3168
39	3004
39	3297
39	2982
39	3258
39	2896
39	2939
39	3248
39	3352
39	3199
39	3038
39	3088
39	3103
39	2928
39	3137
39	2993
39	2975
39	2934
39	3264
39	3115
39	2962
39	3247
39	3299
39	3108
39	3001
39	2961
39	2459
39	2911
39	2844
39	3154
39	3200
39	3608
39	3484
39	3056
39	3675
39	3176
39	3338
39	3340
39	3918
39	3833
39	3744
39	3698
39	3309
39	3652
39	3710
39	3545
39	3386
39	3807
39	3530
39	3693
39	3278
39	3327
39	3361
39	3626
39	3660
39	3868
39	3519
39	3723
39	3436
39	3243
39	3649
39	3787
39	3442
39	3614
39	4009
39	3434
39	3772
39	3591
39	3716
39	3578
39	3618
39	3752
39	3964
39	3588
39	3942
39	3606
39	3706
39	3502
39	3605
39	3814
39	3800
39	3360
39	3315
39	3532
39	3999
39	4196
39	3664
39	4248
39	4270
39	4116
39	3703
39	3988
39	3932
39	4138
39	4114
39	4127
39	4331
39	4096
39	4171
39	4218
39	4338
39	4198
39	4405
39	4203
39	4126
39	4137
39	3989
39	4425
39	4413
39	4353
39	4045
39	4453
39	4257
39	4339
39	4109
39	4179
39	4499
39	4596
39	4670
39	4653
39	4380
39	4519
39	4826
39	4422
39	4740
39	5077
39	4857
39	4139
39	5068
39	4334
39	4615
39	5114
39	4617
39	4775
39	4832
39	5115
39	4688
39	4929
39	4834
39	4388
39	4829
39	4920
39	5558
39	5256
39	4951
39	4816
39	5251
39	5159
39	5851
39	5450
39	5263
39	5300
39	5605
39	5307
39	5479
39	5622
39	5282
39	5675
39	5755
39	5317
39	5570
39	6346
39	6488
39	6396
39	6186
39	6354
39	6351
39	5790
39	5874
39	6280
39	5709
68	52
68	108
68	24
68	3129
68	3403
68	3806
68	3424
68	4052
68	4148
68	3934
68	4432
68	4604
68	5170
68	5483
68	5524
68	5420
68	5585
68	6094
68	6150
68	5676
68	5941
68	6693
68	6585
68	6859
68	6805
68	6646
68	6292
49	540
49	50
49	59
49	10
49	9
49	15
49	2
49	21
49	23
49	161
49	27
49	1
49	185
49	57
49	989
49	186
49	926
49	11
49	12
49	45
49	728
49	1396
49	1101
49	398
49	629
49	1099
49	1714
49	992
49	1278
49	970
49	1828
49	1654
49	1587
49	1566
49	2063
49	1505
49	1723
49	1514
49	1423
49	1609
49	1923
49	1662
49	2108
49	1710
49	1949
49	1745
49	1468
49	1499
49	1750
49	2536
49	1074
49	2042
49	1676
49	2455
49	1734
49	2368
49	1364
49	1593
49	2386
49	1819
49	2573
49	2172
49	2817
49	2484
49	2304
49	2004
49	2599
49	2803
49	2652
49	2988
49	2814
49	3432
49	3026
49	2663
49	3134
49	2627
49	3099
49	2737
49	2716
49	2584
49	2953
49	3138
49	2426
49	2580
49	2326
49	3225
49	2997
49	3254
49	3124
49	3111
49	2799
49	3289
49	3309
49	3563
49	3698
49	3740
49	3833
49	3340
49	3968
49	3510
49	3194
49	3454
49	3685
49	3502
49	3706
49	3567
49	3021
49	3815
49	4020
49	3554
49	3401
49	3277
49	3998
49	4308
49	4518
49	4083
49	3811
49	4198
49	4218
49	4162
49	3767
49	4238
49	4134
49	4002
49	3943
49	4346
49	4039
49	4154
49	4081
49	4189
49	4068
49	4296
49	5085
49	4466
49	4669
49	4471
49	4595
49	4861
49	5086
49	4779
49	5029
49	4913
49	4574
49	4920
49	4802
49	4890
49	5722
49	5375
49	5627
49	4714
49	5012
49	5376
49	5134
49	4576
49	5418
49	5586
49	5245
49	6016
49	5894
49	6243
49	6132
49	5831
49	5585
49	5774
49	5778
49	6363
49	5800
49	6462
49	5032
49	6747
49	6495
49	6144
49	6838
49	5507
49	5766
49	7095
49	6818
49	6819
49	6886
49	6885
58	620
58	989
58	808
58	1920
58	4228
58	1698
58	1433
58	1367
58	1554
58	1404
58	1976
58	2082
58	2130
58	2360
58	2101
58	2560
58	2847
58	2093
58	2015
58	2907
58	3129
58	2711
58	3347
58	2755
58	3010
58	3361
58	3537
58	3255
58	3600
58	2738
58	3529
58	3504
58	3515
58	3860
58	3252
58	3751
58	3429
58	3890
58	3880
58	3897
58	3274
58	4128
58	4029
58	3724
58	4106
58	4503
58	4076
58	3944
58	4657
58	4592
58	4859
58	4526
58	4092
58	4798
58	5067
58	4956
58	4848
58	5068
58	4684
58	4557
58	4451
58	4895
58	4751
58	4708
58	4637
58	4983
58	4603
58	4656
58	4638
58	4305
58	5062
58	4326
58	5836
58	5456
58	5373
58	5259
58	5303
58	5136
58	5271
58	5277
58	4860
58	5012
58	5455
58	5581
58	5072
58	5402
58	6364
58	5963
58	6254
58	6255
58	6121
58	5803
58	5466
58	6092
58	5925
58	5751
58	5962
58	6401
58	5927
58	5201
58	6793
58	6341
58	5750
58	7023
58	6624
58	6515
87	61
87	139
87	1157
87	2256
87	3235
87	4166
24	1
24	2
24	10
24	9
24	11
24	29
24	23
24	26
24	34
24	8
24	51
24	66
24	56
24	50
24	16
24	52
24	44
24	54
24	48
24	37
24	82
24	88
24	237
24	63
24	169
24	87
24	340
24	68
24	55
24	85
24	344
24	636
24	766
24	806
24	387
24	147
24	113
24	446
24	786
24	351
24	571
24	583
24	200
24	1005
24	590
24	720
24	547
24	71
24	919
24	932
24	317
24	798
24	1087
24	648
24	1052
24	1008
24	534
24	397
24	161
24	555
24	726
24	1502
24	882
24	1695
24	826
24	1668
24	1570
24	1416
24	1763
24	1865
24	1832
24	1967
24	481
24	1398
24	992
24	1828
24	1894
24	1895
24	2129
24	2277
24	1753
24	2510
24	866
24	1901
24	1393
24	2335
24	1703
24	2112
24	2855
24	1947
24	2908
24	2491
24	2475
24	3117
24	2682
24	3404
24	2228
24	3157
24	3569
24	5401
5	34
5	25
5	9
5	22
5	39
5	59
5	2
5	64
5	1096
5	15
5	441
5	370
5	540
5	118
5	23
5	547
5	29
5	52
5	10
5	649
5	1042
5	127
5	67
5	966
5	1296
5	315
5	1392
5	147
5	582
5	136
5	2162
5	549
5	159
5	318
5	223
5	620
5	71
5	2111
5	1128
5	1143
5	1512
5	2175
5	1940
5	367
5	1248
5	1359
5	3473
5	640
5	2925
5	2565
5	1945
5	2258
5	1397
5	2428
5	2897
5	2725
5	1898
5	2102
5	1556
5	904
5	1730
5	2031
5	594
5	1382
5	1939
5	2919
5	1889
5	1837
5	1285
5	2601
5	659
5	1664
5	81
5	1360
5	1774
5	624
5	1098
5	812
5	453
5	1080
5	869
5	1278
5	309
5	908
5	1065
5	187
5	2260
5	3132
5	3002
5	2004
5	2774
5	2457
5	2127
5	2256
5	1718
5	2692
5	1829
5	1391
76	152
76	2178
76	3099
76	3239
76	3510
76	3626
76	3338
76	3745
76	4162
76	4127
76	4356
76	4943
76	4775
76	4740
76	5013
76	5367
76	5440
76	5717
76	5542
76	6295
76	6222
76	6163
76	7055
76	6677
76	6467
76	5966
53	594
53	1179
53	2162
53	1485
53	2420
53	2062
53	1902
53	2372
53	2050
53	2618
53	2497
53	2411
53	3110
53	2125
53	2474
53	2875
53	3167
53	2952
53	3136
53	2733
53	3021
53	3742
53	3590
53	2995
53	2829
53	3440
53	3553
53	3175
53	3411
53	3549
53	3169
53	2850
53	4341
53	3863
53	3717
53	4129
53	4091
53	3785
53	4346
53	4153
53	4041
53	4503
53	3397
53	3786
53	4284
53	4225
53	4668
53	4441
53	4583
53	4609
53	4449
53	4136
53	5254
53	5185
53	5089
53	4707
53	4803
53	5039
53	5376
53	4860
53	5210
53	5485
53	5771
53	6513
3	51
3	8
3	39
3	1116
3	33
3	70
3	9
3	655
3	678
3	42
3	1598
3	387
3	344
3	13
3	7
3	882
3	16
3	781
3	22
3	24
3	2
3	370
3	492
3	1096
3	172
3	118
3	63
3	216
3	27
3	1463
3	64
3	711
3	555
3	161
3	50
3	287
3	10
3	26
3	648
3	676
3	540
3	52
3	866
3	147
3	237
3	1997
3	318
3	1071
3	1064
3	1866
3	1102
3	67
3	1371
3	808
3	1042
3	1312
3	958
3	389
3	1629
3	316
3	2162
3	992
3	2154
3	168
3	176
3	1760
3	397
3	1659
3	758
3	549
3	848
3	434
3	127
3	136
3	71
3	159
3	1285
3	1098
3	1657
3	1835
3	904
3	433
3	1986
3	2134
3	1585
3	1967
3	1284
3	2429
3	1359
3	453
3	1945
3	1119
3	309
3	81
3	1342
3	179
3	624
3	659
3	1752
3	1293
51	659
51	4228
51	2733
51	3708
51	3536
51	2829
51	2995
51	3544
51	3272
51	3937
51	3832
51	3483
51	4098
51	4041
51	4250
51	4038
51	4080
51	4739
51	4895
51	4676
51	4173
51	4097
51	4884
51	4546
51	4681
51	4761
51	4938
51	4843
51	4885
51	4894
51	4745
51	4671
51	4492
51	4921
51	4683
51	4797
51	4824
51	4987
51	4851
51	5612
51	5157
51	4707
51	4766
51	4860
51	5617
51	5760
51	5556
51	5418
51	5120
51	5306
51	5486
51	4975
51	5238
51	5355
51	4504
51	5162
51	5089
51	4874
51	5448
51	5084
51	5566
51	5424
51	5474
51	5294
51	5604
51	5299
51	5721
51	4946
51	4932
51	4976
51	5072
51	5756
51	5037
51	4788
51	5217
51	5325
51	5080
51	4252
51	5041
51	5403
51	4833
51	5125
51	5366
51	5757
51	4988
51	4321
51	5028
51	4288
51	5380
51	4720
51	4640
51	5825
51	6190
51	5547
51	5269
51	6238
51	5911
51	5778
51	6092
51	6009
51	6076
51	5712
51	5961
51	5982
51	5858
51	6077
51	6338
51	6001
51	6093
51	5800
51	6456
51	5823
51	6086
51	6376
51	6027
51	5908
51	6007
51	6377
51	5950
51	6281
51	6003
51	5946
51	6293
51	6411
51	6097
51	5997
51	6015
51	6016
51	6089
51	6554
51	6153
51	6175
51	5889
51	5922
51	6479
51	6154
51	5869
51	5620
51	5639
51	6057
51	5802
51	5576
51	6253
51	5683
51	5826
51	6308
51	6209
51	6035
51	5699
51	6260
51	5931
51	5951
51	6435
51	6534
51	6268
51	6110
51	5963
51	6507
51	5962
51	6321
51	6170
51	6018
51	5940
51	5862
51	5737
51	5680
51	5673
51	5770
51	5520
51	6287
51	5765
51	6103
51	5374
51	6460
51	6493
51	6292
51	6334
51	6527
51	6603
51	6575
51	7096
51	6979
51	6693
51	5689
51	6247
51	6877
51	6302
51	6313
51	5599
51	5986
51	5750
51	6656
51	6647
51	6643
51	6428
51	6805
51	6870
51	6307
51	6885
51	6687
51	6299
51	5895
51	6499
51	6972
51	6409
51	6859
51	6251
51	6526
51	6601
26	101
26	187
26	669
26	309
26	81
26	812
26	1065
26	453
26	1360
26	1302
26	1119
26	1710
26	1829
26	1512
26	954
26	1939
26	1296
26	1354
26	1837
26	2198
26	2284
26	1248
26	640
26	620
26	904
26	1718
26	2141
26	1397
26	1519
26	1940
26	1392
26	2519
26	1889
26	1488
26	1236
26	2187
26	2031
26	1673
26	943
26	1810
26	1006
26	2304
26	2638
26	2102
26	2633
26	2054
26	2498
26	3297
26	2122
26	2687
26	2494
26	1997
26	3008
26	2690
26	2925
26	2309
26	2508
26	2672
26	2600
26	2875
26	2808
26	3003
26	2555
26	2847
26	3243
26	3434
26	3063
26	3316
26	3442
26	4045
26	2777
26	2772
26	3340
26	3591
26	4137
26	3693
26	3309
26	3484
26	2718
26	4413
26	3176
26	3833
26	3626
26	4096
26	3652
26	3989
26	4126
26	3327
26	4114
26	4198
26	4270
26	4353
26	4380
26	4116
26	4615
26	4740
26	5282
26	4388
26	4834
26	5450
45	63
45	29
45	193
45	59
45	485
45	172
45	65
45	27
45	161
45	1276
45	770
45	546
45	548
45	783
45	749
45	1455
45	719
45	673
45	442
45	409
45	821
45	61
45	87
45	108
45	309
45	793
45	176
45	147
45	164
45	925
45	318
45	85
45	46
45	11
45	549
45	624
45	1417
45	1352
45	338
45	1321
45	1099
45	26
45	23
45	1035
45	1248
45	966
45	1218
45	1199
45	1566
45	1587
45	866
45	1596
45	2205
45	2001
45	1510
45	1885
45	1914
45	1423
45	1936
45	1128
45	1698
45	1157
45	1645
45	2014
45	2227
45	1042
45	1296
45	2118
45	1427
45	1114
45	1049
45	1236
45	1866
45	869
45	1739
45	1768
45	1893
45	1654
45	1928
45	1727
45	1497
45	1631
45	2119
45	2361
45	2278
45	2031
45	2503
45	2403
45	2141
45	2054
45	1516
45	1158
45	2238
45	1817
45	1803
45	2681
45	2867
45	2382
45	2267
45	2344
45	2428
45	2256
45	2297
45	1902
45	1836
45	2192
45	1939
45	2234
45	2198
45	2422
45	2342
45	2600
45	2277
45	1593
45	2601
45	2010
45	2586
45	2399
45	2834
45	2476
45	3211
45	3074
45	2519
45	2459
45	3099
45	2771
45	2584
45	3038
45	2827
45	3081
45	2825
45	2791
45	3235
45	2639
45	2625
45	3347
45	3040
45	2783
45	2692
45	3152
45	2669
45	2581
45	3082
45	2265
45	3158
45	3103
45	2562
45	2526
45	3161
45	3667
45	3854
45	3915
45	3710
45	3671
45	3698
45	3656
45	3731
45	3518
45	2529
45	3412
45	3608
45	3385
45	3685
45	3295
45	3333
45	2902
45	3606
45	3620
45	3635
45	3021
45	3648
45	3809
45	3590
45	3618
45	3578
45	3736
45	3493
45	3875
45	3694
45	3543
45	3440
45	3507
45	3202
45	3872
45	3828
45	3255
45	4629
45	3989
45	4482
45	4621
45	4130
45	4259
45	3906
45	3996
45	4261
45	4182
45	4231
45	4312
45	3865
45	3856
45	4196
45	4128
45	4091
45	4333
45	4206
45	3917
45	4257
45	4095
45	4098
45	4420
45	4146
45	4065
45	3465
45	4135
45	4059
45	4600
45	5135
45	4815
45	4657
45	4617
45	4092
45	4780
45	5042
45	4991
45	4709
45	5055
45	4848
45	4225
45	4841
45	4273
45	4861
45	5107
45	4643
45	4982
45	5796
45	4929
45	4885
45	4838
45	4509
45	4697
45	5655
45	5475
45	5653
45	5136
45	5271
45	5533
45	5677
45	5622
45	5340
45	4816
45	4252
45	5268
45	5595
45	5354
45	5171
45	5566
45	5382
45	5072
45	4506
45	6281
45	6340
45	5771
45	6094
45	5718
45	5992
45	6354
45	6396
45	6167
45	5682
45	5518
45	5683
45	5388
45	6130
45	6063
45	5877
45	6086
45	5934
45	6462
45	6225
45	6758
45	7005
45	6880
45	6970
45	6041
45	6538
45	6649
45	6571
45	6500
45	6361
45	6843
4	85
4	25
4	59
4	42
4	2
4	34
4	387
4	113
4	14
4	1990
4	24
4	33
4	70
4	344
4	21
4	13
4	30
4	4
4	49
4	745
4	22
4	9
4	648
4	1714
4	50
4	1245
4	287
4	2240
4	370
4	932
4	64
4	26
4	29
4	27
4	23
4	15
4	88
4	534
4	10
4	540
4	63
4	52
4	2268
4	826
4	1035
4	176
4	549
4	1559
4	315
4	966
4	1006
4	434
4	1651
4	2385
4	954
4	620
4	168
4	389
4	649
4	798
4	758
4	159
4	127
4	67
4	136
4	71
4	1427
4	2403
4	1359
4	1157
4	1119
4	943
4	908
4	594
4	624
4	1302
4	2175
4	1855
4	2206
4	1835
4	2945
4	2258
4	640
4	1360
4	869
4	81
4	1703
4	1098
4	1837
4	1664
4	714
4	2198
4	187
4	669
4	1278
4	1080
4	659
4	453
4	2256
4	1829
8	54
8	2
8	16
8	764
8	1502
8	2145
8	1515
8	168
8	1940
8	1080
8	2498
8	2521
8	3125
8	1837
8	3591
8	2187
8	3020
8	1577
8	187
8	1918
8	3430
8	3077
8	943
8	2233
8	2102
8	1427
8	624
8	1382
8	2304
8	1098
8	2687
8	2508
8	908
8	2753
8	2581
8	970
8	2703
8	3537
8	2397
8	3570
8	3424
8	3594
8	2224
8	3722
8	3050
8	2755
8	4187
8	4095
8	3755
8	2775
8	3210
8	3515
8	2711
8	2125
8	3051
8	2062
8	3434
8	2326
8	2580
8	2590
8	2127
8	3599
8	2641
8	2497
8	4079
8	3611
8	2453
8	3674
8	3132
8	1902
8	2297
8	2639
8	3493
8	3339
8	2618
8	3491
8	3592
8	2004
8	2789
8	2426
8	2859
8	1485
8	2995
8	3536
8	4104
8	4330
8	4347
8	4983
8	3785
8	4475
8	4774
8	2984
8	4076
8	3509
8	4449
8	4153
8	4041
8	5104
8	2829
8	2447
95	1384
95	2532
95	3960
95	3753
95	4170
95	4311
95	4362
95	3867
95	4378
95	3781
95	4645
95	4579
95	4986
95	5550
95	6345
142	4343
142	4608
142	4938
142	4614
142	5728
114	594
158	1392
7	678
7	21
7	169
7	71
7	67
7	620
7	582
7	316
7	223
7	1179
7	812
7	1397
7	1774
7	3020
7	3636
7	1577
7	624
7	3195
7	2307
7	1148
7	1080
7	1730
7	2753
7	2309
7	2420
7	2379
7	3063
7	908
7	3125
7	2772
7	904
7	3203
7	2687
7	1837
7	1889
7	2258
7	594
7	3049
7	2555
7	2698
7	1735
7	453
7	2130
7	2622
7	2581
7	970
7	2004
7	3258
7	3287
7	2426
7	2951
7	1485
7	3554
7	1829
7	2789
7	1445
7	3537
7	3307
7	4095
7	2125
7	2260
7	1423
7	2703
7	3515
7	2457
7	2590
7	2284
7	1902
7	2775
7	2711
7	2127
7	2727
7	2995
7	3565
7	2484
7	1391
7	4098
7	3401
7	2326
7	3592
7	2497
7	3348
7	2625
7	2641
7	2614
7	2224
7	3210
7	2755
7	2618
7	2547
7	2580
7	2859
7	2639
7	3740
7	2733
7	3509
7	4449
7	3536
7	2688
80	3409
80	3724
80	5673
29	3708
29	4098
29	3536
29	2733
29	3937
29	2995
29	4250
29	4763
29	4546
29	4681
29	4041
29	3483
29	4843
29	4894
29	4261
29	4761
29	4885
29	5389
29	5294
29	2829
29	4884
29	5306
29	4938
29	5167
29	5272
29	4975
29	4946
29	4932
29	5355
29	5424
29	5604
29	5566
29	5136
29	4874
29	5474
29	4866
29	5823
29	5120
29	5238
29	5858
29	5587
29	6097
29	4504
29	5889
29	5997
29	5653
29	5760
29	6015
29	5712
29	5908
29	5162
29	6211
29	6293
29	6311
29	5084
29	5719
29	5721
29	6175
29	6086
29	5448
29	6474
29	5869
29	6027
29	5089
29	6007
29	6016
29	5922
29	5125
29	5800
29	5617
29	6061
29	5946
29	5299
29	6153
29	6377
29	6077
29	6092
29	6281
29	6093
29	6163
29	6089
29	6456
29	6554
29	6635
29	6411
29	5911
29	6479
29	5961
29	6376
29	6238
29	5982
29	6334
29	6076
29	5269
29	6003
29	6575
29	6009
29	6527
29	6292
29	6979
6	14
6	8
6	4
6	9
6	35
6	16
6	12
6	7
6	2
6	37
6	50
6	64
6	15
6	278
6	26
6	63
6	52
6	23
6	316
6	620
6	808
6	67
6	127
6	223
6	549
6	1179
6	71
6	1945
6	1556
6	2233
6	1680
6	1302
6	1236
6	2031
6	2772
6	1148
6	2422
6	1664
6	2042
6	1774
6	1752
6	1080
6	1730
6	81
6	2720
6	453
6	2198
6	2102
6	2974
6	970
6	1119
6	2753
6	2432
6	2379
6	904
6	1382
6	3125
6	1278
6	2187
6	624
6	2111
6	1889
6	1939
6	1940
6	908
6	594
6	659
6	1098
6	1735
6	1837
6	1577
6	187
6	2859
6	2774
6	1902
6	2188
6	2625
6	3515
6	2484
6	2692
6	2689
6	2775
6	3210
6	2224
6	3002
6	3132
6	2426
6	2127
6	2497
6	2755
6	2714
6	1391
6	2614
6	2284
6	2547
6	1829
6	2453
6	3175
6	1718
6	2004
140	2512
140	4005
110	1189
91	3401
91	4607
91	4890
91	5507
91	5766
113	3202
113	4984
42	659
42	44
42	1485
42	2082
42	2125
42	2521
42	2497
42	2590
42	2447
42	2618
42	2711
42	2639
42	2689
42	2727
42	3037
42	2713
42	3052
42	2523
42	3250
42	2761
42	3164
42	3062
42	2806
42	3600
42	3353
42	3143
42	3687
42	3826
42	3348
42	2914
42	2984
42	3565
42	3491
42	3808
42	3050
42	3823
42	3430
42	3509
42	3493
42	3877
42	3590
42	3424
42	3599
42	4020
42	3368
42	3891
42	3021
42	3620
42	3407
42	3705
42	3678
42	3544
42	3714
42	3415
42	3813
42	3909
42	3689
42	3202
42	3745
42	3739
42	3440
42	3447
42	2738
42	3274
42	3402
42	4238
42	3865
42	4199
42	4495
42	4261
42	2779
42	4584
42	3996
42	4481
42	4071
42	4083
42	3906
42	3923
42	3885
42	4005
42	4401
42	3890
42	4229
42	4204
42	4234
42	4443
42	3734
42	4440
42	4187
42	4079
42	4347
42	4527
42	4095
42	4153
42	3674
42	4341
42	3980
42	4319
42	4373
42	3863
42	4403
42	3847
42	3754
42	4295
42	4416
42	4475
42	4134
42	4076
42	4081
42	4104
42	4271
42	4166
42	4206
42	4317
42	3934
42	4129
42	4074
42	3859
42	4283
42	4091
42	4382
42	4352
42	4356
42	4106
42	4211
42	4346
42	4411
42	4023
42	4029
42	3853
42	4386
42	3919
42	4507
42	3465
42	4141
42	4145
42	4012
42	4090
42	4412
42	4503
42	4314
42	4053
42	3690
42	4514
42	3997
42	3973
42	4151
42	4050
42	4264
42	4429
42	4018
42	4367
42	4627
42	4684
42	4958
42	5078
42	4225
42	3907
42	4956
42	5067
42	4656
42	4700
42	4635
42	5042
42	4302
42	4426
42	4592
42	4657
42	5135
42	4572
42	4770
42	4880
42	4566
42	4847
42	4466
42	4404
42	4804
42	4059
42	4764
42	5003
42	5128
42	4838
42	4673
42	4449
42	4563
42	4939
42	4825
42	5063
42	4699
42	5045
42	4827
42	4291
42	5180
42	4963
42	4719
42	4746
42	5108
42	4950
42	4569
42	5046
42	4628
42	4918
42	5020
42	4469
42	4437
42	4889
42	4606
42	4903
42	4498
42	5074
42	4515
42	4779
42	4415
42	4842
42	4828
42	5237
42	4599
42	4710
42	5086
42	4805
42	4846
42	5005
42	4200
42	4728
42	4912
42	4638
42	4672
42	4796
42	4969
42	4326
42	4534
42	4755
42	4935
42	4822
42	4587
42	4999
42	4343
42	4769
42	4119
42	4856
42	4980
42	4869
42	4665
42	4650
42	4902
42	4608
42	4790
42	4136
42	5440
42	5530
42	5277
42	5525
42	4977
42	4714
42	5043
42	4730
42	5629
42	5213
42	5392
42	5627
42	5514
42	5340
42	5798
42	5522
42	5191
42	5489
42	5397
42	5396
42	5460
42	5368
42	5248
42	5386
42	5521
42	5326
42	5644
42	5303
42	5060
42	5716
42	5391
42	5431
42	5733
42	5259
42	5681
42	5553
42	5383
42	5186
42	5175
42	5652
42	5655
42	5361
42	5754
42	5731
42	5344
42	5104
42	5820
42	5425
42	5581
42	5814
42	5651
42	5618
42	5483
42	5295
42	5430
42	5182
42	5354
42	5560
42	5600
42	5371
42	5569
42	5274
42	5149
42	5577
42	5758
42	5347
42	5254
42	4576
42	5231
42	5498
42	5206
42	5376
42	5406
42	5429
42	5395
42	5563
42	5528
42	5364
42	5073
42	5291
42	5580
42	5402
42	5350
42	4864
42	5324
42	4986
42	5517
42	5452
42	4941
42	5752
42	6099
42	6249
42	6121
42	5808
42	6120
42	6167
42	5734
42	6165
42	6240
42	6276
42	5947
42	5664
42	6283
42	6365
42	5819
42	5903
42	6014
42	6061
42	6296
42	6111
42	5998
42	5718
42	6445
42	6010
42	6237
42	6340
42	6222
42	5888
42	5829
42	5898
42	6416
42	6088
42	6087
42	5827
42	6305
42	6042
42	5925
42	5783
42	5805
42	6191
42	6386
42	5687
42	6491
42	5565
42	5866
42	6558
42	5785
42	6130
42	4916
42	6058
42	5990
42	6021
42	5642
42	5813
42	5702
42	5973
42	6198
42	5863
42	5920
42	5616
42	6225
42	5948
42	6484
42	5939
42	6091
42	6543
42	7050
42	6882
42	6648
42	6709
42	6629
42	6451
42	6637
42	7042
42	7079
42	6832
42	7008
42	6652
42	6980
42	6513
42	6969
42	6875
42	6446
42	6902
42	6610
42	6478
42	6624
42	6845
42	6650
42	6887
42	6923
42	7023
42	6834
42	6649
42	6676
42	6593
42	6548
42	6877
42	6460
42	6592
143	5502
143	4870
143	5076
143	5959
149	2052
98	970
98	2326
98	4083
98	4466
98	5012
98	4866
98	4951
69	2484
69	2052
69	2004
69	2893
69	3097
69	2580
69	3491
69	3523
69	4653
69	3876
69	4400
69	3908
62	2711
62	5659
62	5072
64	187
64	624
64	1179
64	1801
64	1260
64	1902
64	2618
64	3553
64	3317
64	3411
64	3590
64	4153
64	4091
64	4917
64	5108
64	4845
11	54
11	1005
11	44
11	441
11	766
11	595
11	1649
11	1412
11	1410
11	1407
11	1583
11	147
11	1994
11	397
11	874
11	2622
11	926
11	2014
11	3747
11	2897
11	1985
11	2075
11	2420
11	1148
11	3184
11	2956
11	3129
11	2297
11	4419
11	3081
11	4440
11	2453
11	2454
11	2789
11	1445
11	2618
11	3424
11	4051
11	4637
11	2711
11	3106
11	2127
11	4295
11	4649
11	1829
11	4416
11	2871
11	3403
11	3050
11	1423
11	4134
11	2397
11	4076
11	3733
11	4382
11	4681
11	4403
11	2688
11	4792
11	5020
11	4475
11	4606
11	3889
11	4884
11	4695
11	4228
11	3708
11	4129
11	2733
11	4038
11	4081
11	3934
11	3483
11	5120
11	4515
11	5274
11	2829
11	5866
11	5418
11	4643
11	2523
11	5354
11	4373
11	4327
11	4189
11	4211
11	4101
11	4437
11	4921
11	4352
11	3717
11	3847
11	4275
11	3362
11	5149
11	5347
11	4173
11	4576
11	3832
11	5485
31	71
31	659
31	699
31	113
31	81
31	67
31	39
31	572
31	82
31	453
31	496
31	101
31	410
31	187
31	185
31	701
31	316
31	127
31	23
31	402
31	43
31	367
31	108
31	318
31	649
31	168
31	52
31	136
31	159
31	409
31	69
31	337
31	1
31	232
31	28
31	397
31	223
31	9
31	1278
31	970
31	908
31	2136
31	1098
31	1080
31	1445
31	1626
31	1654
31	1682
31	1685
31	1943
31	1563
31	1635
31	1814
31	1634
31	1812
31	976
31	4228
31	1148
31	2079
31	869
31	2108
31	841
31	935
31	1617
31	1962
31	1554
31	1678
31	1497
31	986
31	2184
31	1802
31	1587
31	1664
31	2031
31	1889
31	2224
31	2555
31	1538
31	1593
31	1817
31	1853
31	1945
31	2453
31	2258
31	2565
31	2002
31	2536
31	2368
31	1819
31	1950
31	2573
31	1572
31	2150
31	2628
31	2097
31	1983
31	2439
31	2454
31	2130
31	2075
31	2260
31	2320
31	2127
31	1918
31	2111
31	1842
31	2271
31	1718
31	2155
31	2233
31	1837
31	1577
31	1940
31	1382
31	2379
31	1735
31	2781
31	2764
31	2156
31	2078
31	2446
31	2560
31	2231
31	2535
31	2452
31	2803
31	2605
31	2800
31	2772
31	2686
31	2988
31	2587
31	2720
31	2814
31	3298
31	3003
31	2547
31	2707
31	2125
31	2641
31	2639
31	3166
31	2951
31	2414
31	2756
31	2580
31	2614
31	2711
31	2521
31	3051
31	3140
31	3110
31	3025
31	3228
31	2713
31	2896
31	2714
31	2791
31	2727
31	2689
31	2789
31	2326
31	2581
31	3437
31	2703
31	2974
31	3077
31	2753
31	2330
31	2508
31	3088
31	3347
31	2761
31	2858
31	2606
31	3403
31	3191
31	2637
31	3062
31	3247
31	3164
31	2526
31	2911
31	2873
31	2718
31	2634
31	2826
31	3290
31	3361
31	3278
31	2914
31	3597
31	3348
31	3826
31	3687
31	3249
31	3740
31	3358
31	3353
31	3112
31	3413
31	3608
31	3416
31	3580
31	3401
31	3050
31	3594
31	3536
31	3147
31	3540
31	3911
31	3685
31	3502
31	3678
31	3706
31	3104
31	2902
31	3755
31	3635
31	3727
31	3272
31	3815
31	4011
31	3964
31	3599
31	3554
31	3339
31	3132
31	3590
31	3576
31	3642
31	3210
31	3591
31	3636
31	3611
31	3125
31	3509
31	3795
31	2608
31	3570
31	3860
31	3565
31	3537
31	3823
31	3758
31	3277
31	3839
31	3800
31	3451
31	3926
31	3202
31	3192
31	3575
31	4358
31	3571
31	4208
31	4489
31	4250
31	4005
31	3885
31	4115
31	4203
31	4493
31	4144
31	3965
31	3950
31	4259
31	3923
31	3789
31	4071
31	4344
31	3831
31	4495
31	4212
31	4218
31	4171
31	4357
31	4046
31	3582
31	3027
31	3865
31	3603
31	3703
31	4248
31	4196
31	3402
31	3546
31	4324
31	3532
31	4304
31	3362
31	4330
31	4029
31	3182
31	3966
31	4035
31	4148
31	3397
31	4375
31	4211
31	4356
31	4038
31	4283
31	4039
31	3859
31	4256
31	4074
31	4317
31	4503
31	4216
31	4104
31	3937
31	4081
31	4189
31	4134
31	3483
31	3952
31	4068
31	3917
31	4008
31	4300
31	3674
31	4453
31	4293
31	4224
31	4079
31	4447
31	4187
31	4276
31	4535
31	4457
31	4204
31	4308
31	3853
31	3884
31	3465
31	4050
31	3628
31	4429
31	4292
31	3690
31	4412
31	4578
31	3528
31	4764
31	4059
31	4804
31	4566
31	4572
31	4426
31	4302
31	4390
31	4924
31	5114
31	4656
31	4798
31	4716
31	4956
31	4369
31	4139
31	5075
31	4612
31	4701
31	4826
31	4230
31	5078
31	4529
31	4329
31	4958
31	4876
31	4627
31	3870
31	4472
31	4376
31	4915
31	4739
31	4595
31	4931
31	4103
31	4200
31	5005
31	4599
31	4676
31	4823
31	4779
31	4515
31	5103
31	4862
31	4606
31	4884
31	4695
31	4582
31	4889
31	4469
31	5126
31	5020
31	4918
31	4628
31	4761
31	4949
31	4746
31	5064
31	4774
31	4667
31	4963
31	4967
31	4699
31	4843
31	4480
31	4563
31	5128
31	4124
31	4210
31	4603
31	4708
31	4827
31	4935
31	4650
31	4541
31	4920
31	4858
31	4290
31	4981
31	3972
31	4113
31	4946
31	5426
31	5409
31	5856
31	5755
31	5681
31	4438
31	4026
31	5245
31	5846
31	5060
31	5303
31	5644
31	5389
31	5167
31	5521
31	5039
31	5653
31	5542
31	5136
31	5495
31	5272
31	5232
31	5628
31	4598
31	5396
31	5397
31	5191
31	5561
31	5522
31	5111
31	5590
31	5159
31	4799
31	5629
31	5043
31	5256
31	5530
31	5440
31	5053
31	5360
31	4730
31	4890
31	5333
31	5273
31	5268
31	5278
31	5403
31	4833
31	5640
31	4860
31	5568
31	5121
31	5617
31	5347
31	5149
31	5760
31	5274
31	5556
31	5795
31	5509
31	4984
31	5488
31	5320
31	4275
31	5025
31	5162
31	5483
31	5618
31	4874
31	5696
31	5242
31	5474
31	5104
31	5344
31	5604
31	5372
31	5721
31	5587
31	5567
31	5569
31	5037
31	5429
31	5177
31	5169
31	5380
31	5350
31	4506
31	5452
31	5563
31	6377
31	5829
31	6281
31	5888
31	6140
31	5834
31	6293
31	6222
31	5996
31	5997
31	6015
31	6110
31	6268
31	6445
31	6294
31	6094
31	5998
31	5922
31	5869
31	6163
31	5993
31	6111
31	6008
31	6061
31	6036
31	6211
31	6113
31	6401
31	6311
31	6078
31	5664
31	5947
31	6017
31	5769
31	6195
31	5958
31	5936
31	5734
31	5682
31	6132
31	6065
31	5752
31	5774
31	5799
31	5917
31	5670
31	5642
31	6021
31	5990
31	6308
31	5388
31	5699
31	5547
31	5900
31	6096
31	5740
31	5842
31	5269
31	5564
31	5984
31	5911
31	5778
31	6009
31	5785
31	5967
31	6289
31	5866
31	5712
31	6053
31	6191
31	6118
31	6363
31	6338
31	5832
31	6064
31	6321
31	6305
31	5932
31	6171
31	6093
31	5741
31	6002
31	5893
31	6260
31	6230
31	6429
31	6376
31	6352
31	6027
31	5908
31	5828
31	6119
31	6007
31	6088
31	6028
31	6462
31	5697
31	5405
31	5520
31	5673
31	5973
31	6198
31	5975
31	5857
31	6893
31	6603
31	6446
31	6875
31	6719
31	6810
31	6275
31	6495
31	6637
31	6451
31	6577
31	6877
31	6736
31	6144
31	6302
31	5766
31	5966
31	5986
31	6676
31	5793
31	5804
31	6692
31	6465
31	6646
31	7024
31	6461
31	6369
31	6887
31	6783
31	6888
31	6151
31	6478
31	6902
31	6486
31	6700
31	6821
31	6559
31	6715
31	6727
31	6515
31	6543
31	6361
31	6499
31	6859
31	6393
31	6258
31	6843
31	6617
31	5895
161	1650
161	2013
161	3887
97	2521
97	2727
97	3407
97	4526
119	467
71	1310
23	196
23	1074
23	446
23	682
23	834
23	17
23	1036
23	871
23	238
23	588
23	203
23	162
23	43
23	186
23	938
23	686
23	728
23	1672
23	173
23	1621
23	1169
23	1078
23	508
23	38
23	321
23	402
23	1230
23	876
23	1766
23	1854
23	2669
23	2874
23	1824
23	558
23	1893
23	1943
23	989
23	2113
23	1276
23	3945
23	1625
23	3800
23	1962
23	2596
23	1563
23	886
23	1497
23	2681
23	3038
23	2401
23	2372
23	2982
23	2275
23	3742
23	1793
23	3352
23	1173
23	2853
23	1804
23	3826
23	3529
23	1289
23	2764
23	2164
23	3140
23	3727
23	3927
23	4033
23	3743
23	3332
23	4697
23	3706
23	4599
23	5042
23	3202
23	4635
23	4411
23	4404
23	4412
23	4005
23	4950
23	4735
23	4343
23	4204
23	3490
23	3103
23	3980
23	3635
23	3952
23	3571
23	4344
23	3943
23	4935
23	4106
23	4074
23	3037
23	3942
23	3465
23	4119
23	3923
23	3940
23	4234
23	3726
23	5206
23	4023
23	4638
23	3758
23	4215
23	3620
23	4507
23	5560
23	5005
23	4819
23	3754
23	4755
23	5350
23	5320
23	5169
23	5990
23	4999
23	4569
23	5429
23	3859
23	3734
23	4842
23	4912
23	3853
23	5073
23	5086
23	4895
23	5062
23	5612
23	5241
23	6021
23	4938
23	5642
23	6027
23	5908
23	4866
23	4988
23	4939
23	4963
23	5674
23	5478
23	5175
23	5406
23	5795
23	6018
23	5046
23	5022
23	5862
23	5291
23	5254
23	4346
23	4012
23	5927
23	4326
23	4200
23	5238
23	4466
23	5025
23	6540
23	6075
23	5973
23	5721
23	5758
23	4506
23	6253
23	5827
23	5089
23	5911
23	5940
23	5556
23	4860
23	5966
23	6238
23	6035
23	5037
23	4321
23	5231
23	4833
23	5597
23	5946
23	6028
23	5773
23	6308
23	5466
23	5299
23	6009
23	5794
23	5834
23	6030
23	5200
23	5803
23	5750
23	5419
23	6457
23	6683
23	5868
23	5845
2	16
2	8
2	24
2	152
2	30
2	478
2	21
2	12
2	25
2	13
2	181
2	39
2	200
2	51
2	42
2	49
2	712
2	70
2	22
2	11
2	47
2	2
2	14
2	59
2	113
2	33
2	9
2	4
2	7
2	587
2	633
2	375
2	590
2	591
2	534
2	481
2	37
2	711
2	569
2	492
2	64
2	287
2	27
2	161
2	1297
2	172
2	278
2	193
2	50
2	540
2	216
2	15
2	10
2	1123
2	370
2	63
2	52
2	23
2	1136
2	397
2	176
2	1049
2	434
2	1312
2	1540
2	1658
2	1371
2	1364
2	1071
2	992
2	758
2	1035
2	582
2	726
2	127
2	919
2	1536
2	826
2	1218
2	1559
2	1405
2	1748
2	2361
2	798
2	315
2	966
2	71
2	907
2	549
2	318
2	67
2	168
2	136
2	389
2	869
2	433
2	1187
2	164
2	1657
2	1274
52	197
52	453
52	594
52	223
52	237
52	2176
52	976
52	1673
52	1554
52	986
52	2224
52	1538
52	2428
52	2420
52	1774
52	2156
52	2450
52	2252
52	2052
52	2521
52	2641
52	2093
52	2711
52	2015
52	2688
52	2727
52	3280
52	2907
52	2789
52	2580
52	2618
52	2755
52	2447
52	2703
52	2590
52	2753
52	2125
52	3159
52	3164
52	2853
52	2873
52	3190
52	3115
52	2984
52	3249
52	3740
52	3537
52	3147
52	3600
52	3706
52	2738
52	3755
52	3407
52	3132
52	3590
52	3818
52	3504
52	2829
52	2995
52	3491
52	3327
52	3240
52	3322
52	3926
52	3216
52	4064
52	4213
52	4148
52	4215
52	4038
52	4091
52	4283
52	4039
52	4076
52	4475
52	4341
52	4100
52	3940
52	4432
52	3734
52	4057
52	4050
52	3690
52	5022
52	4059
52	4804
52	4566
52	5135
52	4526
52	4956
52	4848
52	4451
52	4494
52	5005
52	4895
52	4735
52	4928
52	4842
52	4779
52	4280
52	4582
52	5020
52	4681
52	5331
52	5064
52	4827
52	4449
52	4603
52	4369
52	4653
52	4938
52	4560
52	5062
52	4726
52	4438
52	5381
52	4890
52	5653
52	5136
52	5495
52	5533
52	4730
52	5333
52	5325
52	5273
52	4252
52	5278
52	5134
52	4860
52	5617
52	4741
52	5455
52	5120
52	5238
52	5814
52	5104
52	4906
52	5294
52	5163
52	4321
52	5952
52	6364
52	5998
52	5837
52	6401
52	5947
52	5936
52	5803
52	5466
52	6329
52	5269
52	5911
52	5967
52	5931
52	6064
52	5697
52	5520
52	6013
52	5940
52	5686
52	6893
52	6513
52	6961
52	6341
52	6727
52	6242
52	6695
52	6074
52	5750
52	5928
52	5767
52	6477
52	5897
52	5603
52	6901
52	6665
52	7024
52	6571
52	6771
52	6299
52	5916
52	6859
52	6328
52	6900
52	6670
52	6885
52	6564
52	6385
52	6024
66	1661
66	1073
66	3025
66	3038
66	3488
141	3155
141	3347
141	2738
141	4148
141	4092
81	4228
81	2062
81	1516
81	2523
81	2447
81	3544
81	2829
81	3863
81	3803
81	3274
81	3832
81	3717
81	4291
81	5125
81	4892
81	5486
81	5089
81	4288
159	970
159	3111
82	4097
82	4376
82	4792
82	4103
82	4483
82	5242
82	5200
82	5863
82	6266
82	5917
82	6251
82	5804
82	6617
92	2907
92	2727
92	2521
92	3322
92	3407
40	561
40	572
40	152
40	172
40	370
40	42
40	67
40	796
40	24
40	246
40	434
40	179
40	159
40	758
40	848
40	64
40	127
40	168
40	1016
40	318
40	925
40	595
40	926
40	433
40	164
40	714
40	874
40	176
40	441
40	1410
40	184
40	155
40	316
40	195
40	886
40	108
40	61
40	186
40	989
40	429
40	488
40	623
40	143
40	112
40	558
40	701
40	1217
40	673
40	885
40	772
40	1772
40	787
40	548
40	1039
40	1605
40	1027
40	1666
40	1386
40	836
40	1368
40	1276
40	1362
40	728
40	508
40	1417
40	321
40	1240
40	1624
40	99
40	1043
40	1684
40	1551
40	1089
40	1256
40	1099
40	1378
40	51
40	337
40	1235
40	224
40	17
40	486
40	1026
40	1400
40	659
40	338
40	1230
40	868
40	1403
40	1321
40	898
40	1636
40	1142
40	1241
40	964
40	1481
40	1189
40	1409
40	485
40	65
40	375
40	537
40	1439
40	870
40	1284
40	676
40	1102
40	1353
40	2167
40	1245
40	1566
40	1199
40	1218
40	1172
40	1136
40	587
40	1035
40	1536
40	1068
40	1739
40	1342
40	1293
40	958
40	869
40	1312
40	1515
40	2063
40	1359
40	1760
40	1659
40	1080
40	1049
40	1114
40	1064
40	1745
40	1227
40	2145
40	1271
40	1540
40	1433
40	1285
40	1187
40	1250
40	2227
40	1888
40	2014
40	2113
40	1173
40	4228
40	1532
40	1143
40	1920
40	1923
40	1615
40	1634
40	1985
40	1793
40	1609
40	1818
40	1936
40	1951
40	1864
40	2033
40	1944
40	1635
40	1345
40	2383
40	1854
40	1563
40	1804
40	2161
40	2164
40	1505
40	1857
40	2026
40	2205
40	2289
40	1959
40	1981
40	1724
40	1893
40	2300
40	1952
40	2254
40	1762
40	1823
40	1581
40	1880
40	1727
40	1625
40	1786
40	1859
40	1660
40	1984
40	2086
40	1995
40	1497
40	1100
40	2306
40	1601
40	2119
40	1631
40	1750
40	1499
40	1260
40	1738
40	2299
40	2333
40	1612
40	1756
40	1764
40	1435
40	1614
40	1741
40	1853
40	1646
40	2238
40	1158
40	2007
40	1434
40	1364
40	1705
40	2448
40	1676
40	2237
40	1461
40	1856
40	2812
40	2386
40	2294
40	2794
40	2385
40	2175
40	2201
40	2278
40	1405
40	1664
40	2662
40	2268
40	1629
40	2838
40	2230
40	2429
40	2180
40	2154
40	2206
40	1945
40	1835
40	2782
40	1986
40	2155
40	2027
40	2215
40	2338
40	1585
40	2234
40	2290
40	2684
40	2389
40	2023
40	2399
40	1842
40	2192
40	2302
40	1836
40	2134
40	2360
40	2372
40	2356
40	2913
40	2630
40	2267
40	2382
40	2867
40	2710
40	2275
40	2628
40	2376
40	2434
40	2483
40	2053
40	2957
40	2415
40	2533
40	2431
40	2105
40	2647
40	2535
40	2313
40	2088
40	2979
40	2729
40	2611
40	2303
40	2451
40	2146
40	3158
40	2716
40	2922
40	2549
40	2899
40	1769
40	2627
40	2414
40	3010
40	3134
40	2890
40	2946
40	2985
40	2490
40	2799
40	2860
40	2562
40	2994
40	2666
40	2663
40	2784
40	2943
40	2739
40	2539
40	2834
40	3114
40	2418
40	3292
40	2706
40	2910
40	2443
40	2720
40	2715
40	2606
40	2563
40	3306
40	3128
40	3166
40	2966
40	2686
40	3111
40	2967
40	3124
40	2432
40	2974
40	3082
40	2972
40	3304
40	2997
40	3263
40	2513
40	2669
40	3152
40	3107
40	3293
40	2996
40	3151
40	2897
40	2774
40	2919
40	2953
40	3303
40	3355
40	3239
40	3031
40	3119
40	3039
40	3881
40	3212
40	3267
40	3252
40	3413
40	3500
40	3112
40	3255
40	3194
40	3372
40	3326
40	3375
40	3839
40	3282
40	3395
40	3398
40	3510
40	2529
40	3023
40	3518
40	3731
40	3359
40	3283
40	3730
40	3448
40	3505
40	3667
40	3797
40	3473
40	3391
40	3388
40	3855
40	3694
40	3526
40	3589
40	3743
40	3993
40	3725
40	4324
40	4087
40	3604
40	4320
40	3672
40	3480
40	3775
40	3955
40	4544
40	4485
40	4162
40	4357
40	3331
40	4217
40	4479
40	4260
40	4130
40	4518
40	4445
40	4493
40	4394
40	4146
40	4508
40	3912
40	4379
40	3948
40	4711
40	4660
40	4781
40	4881
40	4528
40	5015
40	4896
40	5016
40	5013
40	4654
40	4871
40	5054
40	4709
40	5006
40	4480
40	4516
40	4110
40	5097
40	4806
40	5195
40	5283
40	5677
40	5178
40	5423
40	6141
129	3182
129	4738
129	5907
77	1920
77	2454
77	4011
77	2744
77	3780
77	4520
77	3859
77	4276
77	4509
77	4492
77	4699
77	5324
77	5900
77	6646
77	6649
65	1423
65	1902
65	2127
65	1538
65	3458
65	2447
65	2703
65	2590
65	3580
65	3620
65	3708
65	3877
65	3636
65	4408
65	4123
65	3362
65	4100
65	4684
65	5001
65	4991
65	3876
65	4708
65	4376
65	4119
65	4103
65	5135
65	4671
65	4326
65	5548
65	4616
65	4483
65	5194
65	5325
65	4275
65	5350
65	5279
65	5223
65	4906
65	4962
65	4252
65	5053
65	5466
65	5837
65	5868
65	6075
65	5686
65	6308
65	5564
65	5834
65	6098
65	5794
65	5709
65	6008
65	6017
65	6329
65	6222
65	6300
65	6693
65	6299
65	6571
65	6441
65	6513
65	6385
65	5767
65	6446
99	1538
99	2590
99	2447
99	4100
99	5714
99	6174
99	6013
63	65
63	1215
63	560
63	886
63	1944
63	970
63	1423
63	2004
63	1829
63	2042
63	2484
63	2601
63	2772
63	2988
63	2309
63	3138
63	2737
63	3443
63	3815
63	3633
63	3685
63	3740
63	3985
63	3567
63	3454
63	4346
63	4189
63	3906
63	3767
63	4542
63	3811
63	4154
63	4238
63	3943
63	4218
63	4104
63	4895
63	5029
63	5062
63	4913
63	4415
63	4608
63	4546
63	4574
63	4657
63	5086
63	5283
63	5627
63	5194
63	5755
63	5590
63	5418
63	5586
63	4837
63	4951
63	5800
63	5940
63	5894
63	5699
63	5774
63	6109
63	5712
63	6016
63	5900
63	6363
63	5875
63	6058
63	6885
63	6144
63	5603
63	6500
120	3416
120	5149
120	6415
111	3693
22	1038
22	2407
22	1754
22	1332
22	32
22	1130
22	1036
22	305
22	393
22	162
22	873
22	402
22	173
22	321
22	527
22	1169
22	588
22	186
22	1824
22	195
22	1551
22	1862
22	1818
22	184
22	1089
22	1673
22	1112
22	143
22	558
22	1766
22	1854
22	2160
22	1301
22	545
22	3292
22	2034
22	1250
22	1565
22	1838
22	2488
22	3482
22	2808
22	3164
22	4481
22	4064
22	3240
22	2817
22	2078
22	1804
22	3442
22	3800
22	2764
22	3529
22	3331
22	3194
22	1836
22	3752
22	2344
22	3199
22	429
22	2372
22	3520
22	1608
22	2980
22	2823
22	2593
22	3471
22	2761
22	5064
22	2630
22	1616
22	3675
22	935
22	3143
22	1793
22	1433
22	3155
22	1563
22	1877
22	2164
22	1256
22	2370
22	3040
22	2619
22	4894
22	3571
22	3332
22	3687
22	4023
22	3944
22	3353
22	4343
22	3760
22	4161
22	4457
22	4199
22	3448
22	4174
22	4708
22	4311
22	2914
22	4411
22	4074
22	2904
22	3952
22	4495
22	3940
22	4386
22	3670
22	3635
22	4804
22	4292
22	2825
22	3639
22	4697
22	4967
22	5182
22	3623
22	2605
22	3943
22	4404
22	3726
22	4638
22	4592
22	3465
22	3758
22	4029
22	3411
22	5086
22	4827
22	5392
22	5560
22	4092
22	3859
22	3853
22	4842
22	4955
22	4999
22	4843
22	5571
22	4819
22	5108
22	5241
22	5320
22	4912
22	4885
22	4091
22	5136
22	4895
22	5163
22	4317
22	4563
22	4969
22	4541
22	4507
22	3734
22	4699
22	5858
22	5272
22	5528
22	5823
22	5989
22	5406
22	5569
22	4938
22	5295
22	5072
22	4988
22	5376
22	4963
22	5039
22	4901
22	5063
22	5171
22	4657
22	4326
22	5756
22	4628
22	4866
22	4012
22	5355
22	4796
22	5373
22	4583
22	5795
22	4860
22	5702
22	5037
22	5089
22	5760
22	5922
22	5563
22	5911
22	5238
22	5556
22	6334
22	5084
22	5794
22	6151
22	5200
27	496
27	1906
27	594
27	1556
27	649
27	1391
27	2144
27	908
27	1730
27	1382
27	2042
27	2879
27	1735
27	970
27	1577
27	1918
27	2775
27	2004
27	2271
27	2297
27	2379
27	2614
27	2581
27	3077
27	2528
27	2622
27	3165
27	2753
27	2326
27	2459
27	3471
27	3132
27	2859
27	3030
27	3662
27	3203
27	3554
27	3515
27	3020
27	3570
27	3632
27	4336
27	3232
27	3401
27	3147
27	3806
27	3543
27	3580
27	3830
27	4214
27	3950
27	3940
27	3799
27	4115
27	4543
27	2703
27	4296
27	3864
27	4477
27	4182
27	3603
27	4192
27	3301
27	3831
27	3811
27	4649
27	4586
27	4815
27	4669
27	4304
27	4729
27	4329
27	4782
27	3683
27	4767
27	4369
27	3347
27	3957
27	5126
27	4695
27	3944
27	4925
27	4964
27	3642
27	4092
27	4983
27	4934
27	5146
27	3870
27	5408
27	5372
27	5354
27	5542
27	3742
27	5434
27	4984
27	3798
27	6094
27	5695
27	6961
89	1577
160	6418
55	157
55	316
55	1515
55	1651
55	986
55	2564
55	2320
55	2622
55	2547
55	2714
55	3358
55	3632
55	3488
55	3795
55	3571
55	3950
55	4530
55	4248
55	3402
55	4435
55	4265
55	3734
55	4457
55	4507
55	4770
55	5042
55	5054
55	4826
55	4931
55	5005
55	4599
55	4695
55	4792
55	5198
55	4949
55	4838
55	4459
55	5856
55	5391
55	5653
55	5533
55	5561
55	5159
55	5439
55	4799
55	5556
55	5468
55	4989
55	5268
55	5568
55	5347
55	5149
55	4504
55	5730
55	4946
55	4288
55	4282
55	5073
55	5210
55	5528
55	5888
55	6110
55	6294
55	5697
55	5719
55	6017
55	5869
55	6161
55	5825
55	6035
55	6507
55	6376
55	6839
55	6275
55	6961
55	6736
55	5804
55	6428
55	6334
55	6887
55	6700
147	2290
147	1485
147	2766
147	6063
43	179
43	546
43	548
43	61
43	155
43	187
43	99
43	1026
43	397
43	1172
43	1006
43	966
43	970
43	1284
43	1391
43	1804
43	1510
43	1685
43	1626
43	2266
43	1427
43	904
43	1236
43	869
43	1596
43	1342
43	1278
43	841
43	2120
43	1468
43	1260
43	1308
43	2017
43	1664
43	2567
43	2201
43	2031
43	2175
43	2062
43	2555
43	2135
43	1703
43	2256
43	1950
43	2439
43	2130
43	2199
43	2484
43	2297
43	2601
43	2457
43	2192
43	2111
43	2399
43	1718
43	2233
43	2633
43	2180
43	1074
43	2740
43	1680
43	2482
43	2231
43	2599
43	2052
43	3030
43	3306
43	2698
43	3211
43	3432
43	3074
43	2539
43	2739
43	2950
43	2459
43	2860
43	3140
43	2223
43	3199
43	3303
43	3052
43	2688
43	2827
43	3258
43	2982
43	2727
43	3301
43	3235
43	3008
43	2919
43	3004
43	2711
43	2625
43	3482
43	2859
43	3049
43	2432
43	3203
43	2772
43	3344
43	3219
43	2526
43	2853
43	2928
43	3161
43	3395
43	3586
43	3675
43	3056
43	3600
43	3540
43	3394
43	3838
43	4033
43	3747
43	3984
43	3661
43	3809
43	3175
43	3339
43	3590
43	3875
43	3589
43	3592
43	3195
43	3611
43	3430
43	3799
43	3660
43	3854
43	2984
43	3742
43	3330
43	3136
43	3451
43	3726
43	3587
43	3872
43	3828
43	3523
43	3623
43	4204
43	3957
43	4250
43	4517
43	4192
43	3702
43	4405
43	3831
43	4239
43	4182
43	4544
43	4196
43	4138
43	3929
43	3805
43	4352
43	4091
43	3859
43	4271
43	3952
43	4319
43	4003
43	4379
43	4153
43	3990
43	4098
43	4525
43	4296
43	4314
43	4311
43	4362
43	4412
43	5001
43	5115
43	4059
43	5085
43	4600
43	4943
43	4302
43	4795
43	5042
43	4334
43	4612
43	5077
43	4225
43	4654
43	4519
43	4739
43	4861
43	4620
43	4387
43	4805
43	4921
43	4824
43	4903
43	4889
43	4284
43	4437
43	4546
43	5796
43	4950
43	5108
43	5064
43	4637
43	4825
43	5655
43	5817
43	5163
43	5457
43	5328
43	5438
43	5158
43	5248
43	5271
43	5533
43	5628
43	5677
43	5622
43	5561
43	5627
43	5590
43	5213
43	5723
43	4788
43	5468
43	5273
43	5812
43	5757
43	5674
43	5254
43	5455
43	5418
43	5509
43	5306
43	5600
43	5354
43	5238
43	5171
43	5566
43	4812
43	5701
43	5429
43	5380
43	4988
43	5786
43	5946
43	5963
43	6101
43	6237
43	5934
43	6010
43	5964
43	6534
43	5718
43	5837
43	6353
43	6296
43	6282
43	6330
43	6096
43	4916
43	5565
43	5898
43	5702
43	5770
43	5874
43	6198
43	6946
43	6878
43	6476
43	6593
43	5599
43	5462
43	5750
43	6477
43	5603
43	6571
43	6624
43	6500
43	6857
43	6543
43	6562
43	6393
43	6385
12	57
12	68
12	49
12	1005
12	316
12	875
12	1887
12	2183
12	2565
12	3301
12	187
12	2913
12	3008
12	3838
12	2791
12	2199
12	5237
12	4416
12	4763
12	4187
12	2484
12	4419
12	1485
12	4710
12	4805
12	3132
12	3130
12	4676
12	4098
12	3138
12	3106
12	3798
12	2297
12	3705
12	3536
12	4081
12	4846
12	4347
12	3708
12	4707
12	3368
12	5157
12	3483
12	4695
12	4739
12	4824
12	4228
12	3934
12	4884
12	3588
12	3889
12	4038
12	4779
12	3683
12	2829
12	3870
12	5474
12	3847
12	4975
12	4097
12	4921
12	5498
12	4352
12	4327
12	4252
12	5074
12	4498
12	4437
12	4515
12	3937
12	5455
12	5547
12	4989
12	5712
12	3832
12	4284
12	3362
12	6209
12	5344
12	4576
12	6092
12	5984
12	5347
12	5617
12	5778
12	5125
12	4916
12	5670
12	5269
12	4946
12	4173
12	5577
12	4280
12	4766
12	5388
12	6329
12	6429
12	4504
12	4339
12	5585
171	624
36	4
36	278
36	569
36	71
36	70
36	26
36	954
36	55
36	844
36	57
36	429
36	1095
36	43
36	1379
36	1455
36	1058
36	367
36	885
36	185
36	1407
36	794
36	673
36	558
36	623
36	128
36	786
36	1008
36	571
36	44
36	316
36	184
36	187
36	766
36	100
36	806
36	446
36	127
36	492
36	919
36	344
36	136
36	287
36	648
36	179
36	30
36	56
36	534
36	620
36	181
36	1
36	196
36	682
36	981
36	232
36	1163
36	1034
36	629
36	873
36	1622
36	1441
36	1356
36	203
36	1068
36	1658
36	1297
36	1906
36	711
36	2136
36	2107
36	1398
36	1353
36	1284
36	870
36	1261
36	1009
36	1354
36	1967
36	2001
36	1322
36	1628
36	1857
36	2246
36	1887
36	1693
36	2315
36	1944
36	1818
36	1609
36	1793
36	2266
36	2035
36	1920
36	1926
36	2108
36	1898
36	1710
36	2113
36	2014
36	1876
36	1285
36	1391
36	1071
36	1271
36	1540
36	1227
36	1745
36	904
36	2174
36	1760
36	1312
36	869
36	907
36	1342
36	1714
36	1278
36	4228
36	1724
36	1959
36	1801
36	1678
36	1404
36	1969
36	1984
36	1786
36	1641
36	2299
36	2030
36	2208
36	1530
36	1750
36	1381
36	521
36	2670
36	1730
36	2240
36	2258
36	2840
36	1074
36	2135
36	1703
36	2042
36	2551
36	2740
36	1461
36	2067
36	1754
36	1337
36	2348
36	2371
36	2140
36	2510
36	2573
36	2214
36	2776
36	2172
36	2769
36	2382
36	2520
36	2591
36	2454
36	2558
36	2987
36	2356
36	2256
36	2144
36	1842
36	2101
36	2690
36	2542
36	2290
36	1718
36	2215
36	2498
36	2702
36	1657
36	1748
36	2429
36	2230
36	2201
36	2781
36	2535
36	2328
36	2445
36	2446
36	2647
36	2803
36	2772
36	2966
36	2879
36	3121
36	3128
36	2185
36	2720
36	2443
36	2418
36	3114
36	2330
36	3432
36	3298
36	2943
36	2927
36	2562
36	3117
36	2718
36	2407
36	2899
36	2093
36	2999
36	2682
36	2922
36	2908
36	3241
36	3517
36	3452
36	3032
36	3490
36	3251
36	2939
36	2896
36	2825
36	2953
36	3508
36	2756
36	3008
36	3297
36	3004
36	2774
36	2951
36	3168
36	3165
36	2897
36	3002
36	3151
36	3040
36	3107
36	3482
36	2859
36	2997
36	3304
36	2972
36	2102
36	2265
36	3124
36	3111
36	2925
36	2814
36	3301
36	2526
36	3079
36	2843
36	3119
36	3797
36	3519
36	3505
36	2505
36	3634
36	3738
36	2914
36	3545
36	3721
36	3283
36	3981
36	3698
36	3359
36	3499
36	3551
36	3326
36	3372
36	3477
36	3353
36	3112
36	3484
36	3818
36	4051
36	3226
36	3633
36	3488
36	3838
36	3104
36	3588
36	3655
36	4011
36	3780
36	3743
36	3266
36	3752
36	3210
36	3636
36	3509
36	3614
36	3855
36	3388
36	2965
36	4013
36	3391
36	3410
36	3740
36	3745
36	3202
36	3725
36	4204
36	4358
36	3957
36	4146
36	4394
36	3702
36	3880
36	4260
36	3811
36	4405
36	4584
36	4217
36	4530
36	4261
36	4239
36	4096
36	4485
36	4114
36	3955
36	3775
36	3988
36	3703
36	4304
36	4117
36	3585
36	4356
36	4333
36	3859
36	4271
36	4475
36	4403
36	4003
36	4300
36	3912
36	4098
36	4450
36	4161
36	4313
36	4368
36	4024
36	4331
36	4087
36	4418
36	4050
36	4412
36	5173
36	5008
36	5006
36	4832
36	4936
36	4924
36	4361
36	4700
36	4543
36	5054
36	4615
36	4782
36	4376
36	5253
36	4811
36	5237
36	4982
36	4097
36	5030
36	4901
36	5047
36	5126
36	5046
36	5180
36	4291
36	4827
36	5063
36	4840
36	5085
36	4943
36	4705
36	4210
36	4876
36	4935
36	4697
36	5062
36	4920
36	4343
36	5836
36	5797
36	5675
36	5401
36	5464
36	5846
36	5060
36	5460
36	5605
36	5436
36	5851
36	5514
36	5571
36	5325
36	5509
36	5408
36	5182
36	4504
36	5430
36	5171
36	5573
36	5321
36	5429
36	5072
36	5756
36	5291
36	4506
36	5324
36	5921
36	6314
36	6411
36	6015
36	5934
36	6262
36	6445
36	6294
36	6534
36	5951
36	6426
36	6210
36	6354
36	6399
36	6014
36	5641
36	6186
36	5875
36	6535
36	6254
36	5958
36	6120
36	6209
36	6096
36	6130
36	6309
36	6517
36	6587
36	6044
36	5925
36	5868
36	6321
36	6042
36	5893
36	5827
36	6261
36	6087
36	6088
36	6028
36	5898
36	5989
36	6253
36	5948
36	5863
36	6810
36	7049
36	6980
36	6652
36	6628
36	6653
36	7059
36	6747
36	6667
36	6877
36	6585
36	6493
36	6649
36	6369
36	6610
36	6647
36	6719
36	6793
36	6460
36	6722
38	3
38	560
38	751
38	1
38	844
38	157
38	55
38	599
38	481
38	485
38	699
38	27
38	161
38	6
38	23
38	21
38	39
38	16
38	2
38	555
38	181
38	1038
38	781
38	15
38	25
38	9
38	1087
38	22
38	10
38	227
38	26
38	216
38	655
38	45
38	33
38	34
38	591
38	59
38	51
38	1073
38	49
38	193
38	113
38	932
38	70
38	29
38	590
38	71
38	569
38	50
38	278
38	540
38	534
38	47
38	63
38	4
38	200
38	14
38	389
38	351
38	720
38	8
38	317
38	13
38	56
38	118
38	30
38	633
38	478
38	387
38	1332
38	12
38	7
38	1096
38	695
38	648
38	88
38	37
38	287
38	136
38	344
38	678
38	52
38	11
38	35
38	315
38	919
38	492
38	798
38	1380
38	446
38	121
38	764
38	806
38	1052
38	745
38	583
38	46
38	77
38	85
38	116
38	1539
38	340
38	636
38	54
38	397
38	305
38	375
38	66
38	893
38	147
38	237
38	100
38	766
38	1583
38	1412
38	82
38	32
38	48
38	887
38	79
38	174
38	169
38	295
38	44
38	571
38	38
38	1008
38	87
38	139
38	786
38	1005
38	547
38	821
38	128
38	68
38	348
38	588
38	527
38	57
38	875
38	1215
38	1134
38	1169
38	183
38	1206
38	17
38	1407
38	185
38	719
38	1478
38	1058
38	173
38	1688
38	1455
38	749
38	293
38	855
38	783
38	1636
38	162
38	102
38	43
38	72
38	1110
38	138
38	1511
38	355
38	1036
38	853
38	230
38	1766
38	1672
38	686
38	704
38	20
38	581
38	1095
38	402
38	804
38	876
38	780
38	834
38	827
38	938
38	31
38	1078
38	815
38	665
38	238
38	871
38	1025
38	1093
38	537
38	97
38	40
38	873
38	125
38	196
38	1130
38	1301
38	393
38	713
38	553
38	84
38	76
38	160
38	692
38	561
38	28
38	1101
38	203
38	107
38	573
38	1396
38	1298
38	1262
38	861
38	86
38	659
38	398
38	682
38	860
38	484
38	1257
38	1456
38	1518
38	883
38	60
38	18
38	1356
38	1564
38	1046
38	1163
38	727
38	629
38	101
38	1034
38	897
38	457
38	1661
38	497
38	1495
38	234
38	1622
38	1352
38	1201
38	1507
38	1383
38	1441
38	843
38	1336
38	1638
38	471
38	112
38	787
38	192
38	770
38	371
38	1913
38	1426
38	1009
38	866
38	1261
38	1587
38	1654
38	1116
38	1828
38	1531
38	1398
38	2107
38	966
38	1463
38	992
38	711
38	1297
38	1123
38	1658
38	826
38	1768
38	712
38	1559
38	1714
38	1274
38	907
38	726
38	1832
38	1870
38	1598
38	2005
38	1371
38	1866
38	1695
38	2174
38	1967
38	1865
38	882
38	1570
38	1229
38	1989
38	1502
38	1763
38	1592
38	1647
38	2079
38	1416
38	1744
38	1991
38	1736
38	1071
38	1668
38	1649
38	1855
38	1645
38	2210
38	1824
38	2108
38	1926
38	1662
38	2035
38	1994
38	2179
38	2315
38	1958
38	1862
38	1621
38	1887
38	1628
38	1465
38	1955
38	1549
38	2022
38	1641
38	1880
38	1543
38	1683
38	1882
38	1827
38	1706
38	2133
38	1637
38	2071
38	1013
38	856
38	1969
38	1942
38	1847
38	1725
38	1721
38	1980
38	1833
38	1415
38	1006
38	2348
38	1671
38	1749
38	2347
38	1867
38	1337
38	1947
38	1754
38	2067
38	1393
38	2112
38	2368
38	2792
38	1734
38	2455
38	2129
38	2200
38	2848
38	2488
38	1703
38	1895
38	2135
38	1074
38	2840
38	2648
38	1813
38	2240
38	1990
38	2670
38	2361
38	2277
38	2510
38	2335
38	2140
38	1753
38	1748
38	2652
38	1657
38	3044
38	2723
38	1901
38	2424
38	2668
38	1894
38	2593
38	2401
38	2445
38	2175
38	2737
38	2736
38	2682
38	2746
38	2999
38	2969
38	2407
38	2475
38	2932
38	3294
38	3262
38	2804
38	3290
38	3022
38	3117
38	2968
38	2491
38	2185
38	3006
38	2855
38	2908
38	3428
38	2228
38	3412
38	3822
38	3477
38	3321
38	3596
38	3438
38	3586
38	2766
38	3399
38	3512
38	3499
38	3873
38	3634
38	3404
38	3157
38	3420
38	2842
38	3736
38	3613
38	3538
38	4155
38	4034
38	4140
38	4540
38	4025
38	3569
38	4446
38	5246
38	4669
38	5513
38	5401
38	5393
38	6310
90	2453
90	3401
90	5403
70	316
70	4410
93	3751
93	3683
93	4141
93	5420
93	5588
112	3639
112	3774
112	4136
112	4119
112	5761
131	3705
131	3256
131	3905
59	184
59	102
59	885
59	558
59	316
59	1026
59	1284
59	1582
59	2175
59	1836
59	1983
59	1382
59	1074
59	2502
59	2535
59	2966
59	3063
59	2899
59	3251
59	3458
59	2756
59	2951
59	2497
59	2914
59	3359
59	3416
59	3163
59	3733
59	3752
59	3210
59	3722
59	3491
59	3745
59	3192
59	4408
59	4489
59	3402
59	3532
59	4513
59	3859
59	4265
59	3754
59	3483
59	3952
59	3917
59	4300
59	4098
59	4276
59	4123
59	3628
59	3690
59	4412
59	4964
59	4656
59	4376
59	4515
59	4097
59	5020
59	4950
59	4746
59	4699
59	4935
59	5232
59	5397
59	5191
59	5420
59	5149
59	5459
59	5360
59	5320
59	5355
59	5162
59	5696
59	5171
59	4812
59	5372
59	5950
59	5786
59	5834
59	6411
59	6109
59	6015
59	5998
59	6111
59	6113
59	5664
59	5805
59	6161
59	5642
59	5900
59	6238
59	6266
59	5785
59	5832
59	5863
59	6628
59	6495
59	5966
59	6585
59	5928
59	6902
10	68
10	57
10	139
10	786
10	316
10	1008
10	61
10	112
10	1735
10	2271
10	2581
10	2199
10	1855
10	2565
10	187
10	1157
10	2791
10	2690
10	1148
10	81
10	3493
10	3722
10	3403
10	4166
10	3674
10	4513
10	3570
10	3705
10	2951
10	3594
10	1902
10	3611
10	3235
10	4416
10	4419
10	2590
10	2859
10	2774
10	3642
10	2639
10	3165
10	2995
10	2789
10	2713
10	3424
10	4051
10	4071
10	2062
10	3339
10	1485
10	3877
10	2326
10	2618
10	3129
10	2711
10	4295
10	2484
10	4134
10	2580
10	2397
10	4475
10	4681
10	4228
10	3906
10	4347
10	4606
10	4403
10	4746
10	3588
10	4918
10	3021
10	4469
10	4546
10	4884
10	4068
10	4792
10	2733
10	3509
10	4761
10	3708
10	3536
10	3863
10	4076
10	3483
10	4668
10	4291
10	4327
10	5306
10	5371
10	5274
10	4189
10	4921
10	2447
10	3937
10	4373
10	3847
10	3717
10	5294
10	4284
10	3832
20	305
20	1058
20	446
20	32
20	508
20	1865
20	1763
20	588
20	1895
20	1078
20	821
20	295
20	66
20	340
20	402
20	783
20	173
20	162
20	749
20	2389
20	1818
20	2234
20	785
20	2513
20	2668
20	2005
20	2669
20	2113
20	1906
20	1052
20	787
20	855
20	2063
20	2155
20	1842
20	1565
20	887
20	1814
20	1519
20	925
20	195
20	1250
20	2501
20	3358
20	3278
20	2126
20	3038
20	2790
20	2837
20	4306
20	2401
20	3603
20	1608
20	5064
20	3263
20	2097
20	1810
20	3606
20	1221
20	3649
20	3040
20	2638
20	3694
20	3232
20	841
20	1944
20	3224
20	1894
20	2808
20	3030
20	2356
20	3159
20	2619
20	429
20	1864
20	3240
20	1433
20	3347
20	2052
20	2156
20	3808
20	2650
20	3471
20	185
20	3248
20	3752
20	1838
20	1582
20	2761
20	3143
20	1616
20	5067
20	4386
20	4203
20	4457
20	3974
20	3890
20	2896
20	3662
20	4225
20	4599
20	4358
20	5180
20	4667
20	3980
20	4629
20	2756
20	5259
20	4609
20	3923
20	3502
20	4015
20	4199
20	4894
20	3885
20	4296
20	4584
20	4447
20	4770
20	3706
20	4008
20	3950
20	3490
20	4115
20	3907
20	3571
20	4229
20	4023
20	3353
20	3823
20	3678
20	4764
20	4215
20	3277
20	4057
20	5042
20	3943
20	3942
20	4234
20	4106
20	3952
20	1635
20	4950
20	4204
20	3875
20	3635
20	4308
20	3687
20	4495
20	3639
20	2939
20	3940
20	3623
20	3411
20	4261
20	4005
20	3620
20	3793
20	3110
20	3103
20	2914
20	4091
20	4566
20	4535
20	4919
20	4825
20	5108
20	3734
20	4569
20	4885
20	5136
20	4398
20	5005
20	4895
20	5163
20	4356
20	4843
20	4092
20	3859
20	4912
20	4317
20	3853
20	3754
20	5063
20	5175
20	4699
20	5426
20	4796
20	5039
20	5022
20	4583
20	5376
20	5355
20	4628
20	4657
20	4346
20	5185
20	5238
20	4059
20	5150
21	32
21	871
21	230
21	1744
21	1991
21	1736
21	834
21	173
21	1676
21	1539
21	749
21	1621
21	186
21	1672
21	588
21	728
21	1818
21	2512
21	827
21	2091
21	1824
21	1673
21	1551
21	2210
21	2943
21	1943
21	2899
21	2726
21	2192
21	1276
21	2994
21	2113
21	2946
21	2023
21	1505
21	989
21	2501
21	2996
21	1668
21	841
21	2434
21	1959
21	2790
21	2707
21	3482
21	1976
21	1684
21	3826
21	3529
21	2052
21	3298
21	1877
21	2928
21	3199
21	2356
21	3003
21	1838
21	2370
21	3772
21	1173
21	3240
21	1616
21	2078
21	3152
21	2141
21	2097
21	3145
21	3040
21	1836
21	2982
21	3228
21	2122
21	1804
21	3945
21	4033
21	1221
21	3143
21	2808
21	1390
21	3927
21	5064
21	4015
21	4489
21	4057
21	4572
21	3635
21	3942
21	4296
21	4411
21	4609
21	4050
21	4735
21	4764
21	4215
21	4880
21	3662
21	5331
21	4029
21	4656
21	4667
21	3885
21	4234
21	3726
21	3789
21	4447
21	4716
21	4527
21	3974
21	4770
21	4950
21	3890
21	4457
21	3490
21	4894
21	4115
21	4412
21	4401
21	3620
21	3706
21	3277
21	3502
21	3875
21	3980
21	2914
21	4106
21	4319
21	4261
21	2904
21	3103
21	3943
21	3411
21	4308
21	3639
21	3944
21	4967
21	4204
21	5206
21	4074
21	4152
21	3623
21	4599
21	4386
21	4023
21	3940
21	3465
21	4541
21	4755
21	4700
21	4885
21	3754
21	5108
21	3859
21	3734
21	4969
21	5241
21	4843
21	4569
21	5268
21	5163
21	3853
21	4507
21	4317
21	4895
21	5072
21	4988
21	4939
21	5046
21	5500
21	5303
21	4628
21	4866
21	5242
21	5376
21	4346
21	5795
21	5832
21	4932
21	4657
21	5581
21	4798
21	5424
21	4901
21	5063
21	5642
21	5566
21	5039
21	5478
21	4012
21	4938
21	4796
21	5355
21	4963
21	4200
21	5022
21	5697
21	4059
21	4860
21	5089
21	5162
21	5238
35	620
35	223
35	467
35	751
35	112
35	808
35	197
35	794
35	89
35	108
35	397
35	640
35	24
35	1112
35	12
35	3
35	1944
35	1390
35	976
35	1128
35	1143
35	4228
35	1698
35	1876
35	1433
35	1360
35	1673
35	1397
35	1732
35	1962
35	1554
35	1404
35	986
35	1730
35	2224
35	1976
35	1817
35	2206
35	1585
35	2188
35	2082
35	2573
35	1755
35	2657
35	2565
35	2144
35	2453
35	1774
35	1837
35	2528
35	2429
35	1577
35	1538
35	1461
35	2156
35	2358
35	2560
35	1992
35	2483
35	2966
35	2309
35	3030
35	2606
35	2521
35	3084
35	2833
35	3370
35	2641
35	3010
35	2718
35	2976
35	2899
35	2093
35	2797
35	2397
35	3037
35	2696
35	2015
35	3102
35	2688
35	3106
35	2727
35	3280
35	2907
35	3129
35	2789
35	2711
35	2580
35	2692
35	2618
35	2703
35	2590
35	3077
35	2753
35	2847
35	2756
35	3142
35	3164
35	2853
35	2873
35	2904
35	3190
35	3115
35	3723
35	2984
35	3224
35	3864
35	3327
35	3693
35	3307
35	3826
35	3744
35	3679
35	3512
35	3176
35	3255
35	3252
35	3147
35	3599
35	2738
35	3529
35	3755
35	3705
35	3793
35	4011
35	3780
35	3132
35	3515
35	2829
35	3591
35	2995
35	3791
35	3799
35	3860
35	3455
35	2914
35	3240
35	4015
35	3909
35	3745
35	3800
35	3751
35	3726
35	3322
35	3926
35	3429
35	3639
35	3321
35	4174
35	3890
35	4126
35	4203
35	4493
35	4144
35	3905
35	2779
35	3480
35	4064
35	4295
35	4475
35	4189
35	4410
35	4128
35	4029
35	4002
35	4213
35	4148
35	4215
35	4106
35	4297
35	4283
35	4039
35	3683
35	3798
35	4076
35	4403
35	4167
35	3940
35	4224
35	4368
35	4296
35	4187
35	3880
35	3897
35	3944
35	3945
35	4057
35	3884
35	3332
35	3973
35	4012
35	4378
35	3690
35	4059
35	4804
35	4566
35	4592
35	4910
35	4092
35	4361
35	5055
35	4956
35	5068
35	3907
35	4841
35	5100
35	4684
35	4509
35	4557
35	4451
35	5253
35	4494
35	5005
35	4633
35	4895
35	4928
35	4842
35	4415
35	4280
35	4173
35	4498
35	4582
35	4628
35	4681
35	4569
35	5331
35	4774
35	4637
35	4983
35	4967
35	5180
35	4574
35	4885
35	4688
35	5022
35	4964
35	4638
35	5062
35	4819
35	4611
35	5652
35	5224
35	5598
35	4438
35	5373
35	5626
35	5381
35	4890
35	5218
35	5136
35	5533
35	5232
35	5659
35	5397
35	5605
35	5392
35	4730
35	5277
35	5459
35	5333
35	4252
35	4989
35	5157
35	5091
35	5498
35	5134
35	5288
35	4860
35	5782
35	5617
35	4741
35	5053
35	5238
35	5355
35	5295
35	5448
35	5696
35	5651
35	5814
35	5294
35	5588
35	5434
35	5921
35	6189
35	6140
35	6411
35	6310
35	6295
35	6210
35	6282
35	5903
35	5819
35	6365
35	5875
35	6164
35	5936
35	5808
35	5803
35	6021
35	5699
35	5417
35	6239
35	5334
35	6053
35	5805
35	5732
35	5783
35	6064
35	5868
35	5751
35	6269
35	5827
35	5697
35	6401
35	6253
35	6013
35	6174
35	5975
35	6893
35	6446
35	7071
35	7039
35	6341
35	7042
35	6629
35	6648
35	6242
35	6695
35	5767
35	5844
35	6477
35	5603
35	6649
35	6267
35	6887
35	6978
35	6651
35	6799
35	6671
35	6658
35	6922
35	6859
35	6885
35	6385
35	6722
121	1915
121	1289
121	3960
121	4504
121	4816
121	5550
121	6148
116	3327
173	620
130	2707
130	2619
130	3327
130	5084
130	6293
130	6251
46	620
46	223
46	467
46	112
46	89
46	848
46	16
46	1112
46	1043
46	2176
46	1390
46	1944
46	976
46	1128
46	4228
46	1698
46	1876
46	1042
46	1397
46	1730
46	1461
46	1976
46	2082
46	2796
46	2628
46	2144
46	2453
46	2712
46	1774
46	2206
46	1577
46	2311
46	2542
46	2428
46	1992
46	2605
46	2309
46	2833
46	2847
46	2641
46	2976
46	2093
46	2797
46	2969
46	3155
46	3287
46	3037
46	3106
46	3280
46	2397
46	2692
46	3077
46	3164
46	2853
46	3304
46	2904
46	3115
46	3223
46	2556
46	3660
46	3307
46	3806
46	3744
46	3679
46	3176
46	3255
46	3147
46	3416
46	3272
46	3540
46	2738
46	3705
46	3793
46	3599
46	3504
46	3515
46	3722
46	3591
46	3791
46	3799
46	3455
46	3212
46	3726
46	3751
46	3429
46	4629
46	4174
46	4229
46	3890
46	4203
46	3880
46	3897
46	3906
46	2779
46	4199
46	3944
46	3664
46	4076
46	4128
46	4029
46	4106
46	4039
46	3683
46	4189
46	3980
46	4095
46	4187
46	4234
46	4046
46	3604
46	3945
46	3798
46	4398
46	3884
46	3332
46	3973
46	4378
46	4404
46	4566
46	4964
46	4657
46	4910
46	4092
46	4798
46	5067
46	4848
46	5068
46	3907
46	4841
46	5045
46	4557
46	4451
46	5253
46	4633
46	4415
46	4280
46	4824
46	4173
46	4632
46	4498
46	4751
46	4605
46	4628
46	5331
46	4983
46	5180
46	4885
46	4673
46	4603
46	4569
46	4305
46	4541
46	4611
46	4290
46	5797
46	5224
46	5598
46	5456
46	5373
46	4932
46	5328
46	5303
46	5218
46	5850
46	5158
46	5542
46	5271
46	5659
46	5392
46	5439
46	5420
46	5277
46	5325
46	4252
46	5498
46	5288
46	4741
46	5760
46	5419
46	5571
46	5295
46	5814
46	5588
46	5434
46	4730
46	5530
46	5093
46	5402
46	5324
46	6189
46	6140
46	6003
46	6554
46	6310
46	6435
46	5998
46	5697
46	6282
46	6400
46	5903
46	5819
46	6164
46	5936
46	6240
46	5734
46	6255
46	5808
46	6121
46	5334
46	5826
46	6021
46	5417
46	5931
46	6053
46	5732
46	5925
46	5991
46	6401
46	5989
46	6124
46	6174
46	6225
46	5975
46	6446
46	6749
46	7096
46	6800
46	7071
46	6341
46	6728
46	6648
46	6242
46	6695
46	6978
46	6928
46	6864
46	6922
46	7080
46	6499
46	5916
46	6900
46	6722
72	2618
72	2447
72	3407
72	4280
72	4735
72	4526
72	4730
72	6003
72	6034
72	6513
94	1397
94	4290
94	4730
34	582
34	4
34	63
34	29
34	41
34	23
34	6
34	172
34	751
34	3
34	699
34	572
34	1180
34	1276
34	402
34	770
34	1386
34	355
34	787
34	1688
34	173
34	673
34	442
34	410
34	1217
34	701
34	1215
34	112
34	545
34	409
34	348
34	488
34	821
34	87
34	101
34	108
34	886
34	1565
34	309
34	812
34	195
34	48
34	793
34	595
34	340
34	85
34	46
34	669
34	1052
34	806
34	121
34	919
34	315
34	11
34	52
34	287
34	549
34	1096
34	434
34	796
34	193
34	107
34	338
34	1321
34	1298
34	230
34	216
34	1559
34	1006
34	1536
34	1768
34	826
34	1136
34	1218
34	1566
34	2099
34	1245
34	1102
34	1439
34	726
34	1293
34	712
34	1885
34	1443
34	2034
34	1804
34	1943
34	1956
34	2047
34	2033
34	1793
34	2266
34	1634
34	1615
34	1532
34	2282
34	1698
34	1157
34	1302
34	2113
34	2014
34	2087
34	1877
34	1187
34	1433
34	1042
34	1271
34	2145
34	1296
34	1227
34	1745
34	1592
34	2118
34	1427
34	1119
34	1865
34	2174
34	1080
34	1616
34	1371
34	1870
34	1312
34	2184
34	1596
34	1739
34	1447
34	1898
34	1128
34	2279
34	1928
34	1468
34	2025
34	1678
34	1499
34	1727
34	1497
34	1882
34	1631
34	2306
34	1726
34	1713
34	2258
34	2503
34	1074
34	2546
34	2488
34	2403
34	2740
34	2812
34	2790
34	2448
34	1434
34	1158
34	1593
34	2422
34	2277
34	1819
34	2019
34	2082
34	2552
34	2776
34	2442
34	2305
34	2520
34	2267
34	2454
34	2630
34	2913
34	2657
34	2344
34	2725
34	2428
34	2307
34	2601
34	2304
34	1829
34	2457
34	2127
34	2622
34	2134
34	1836
34	2302
34	2192
34	2111
34	1894
34	2399
34	2668
34	2684
34	2501
34	2234
34	2782
34	2498
34	2198
34	1837
34	2633
34	1835
34	2921
34	2672
34	1753
34	1382
34	2838
34	1629
34	2600
34	2268
34	1813
34	2817
34	2764
34	2322
34	2615
34	2328
34	2370
34	2257
34	2599
34	2452
34	3185
34	3166
34	3306
34	2715
34	2720
34	2443
34	2834
34	3074
34	3564
34	3003
34	2519
34	2950
34	3162
34	2860
34	2968
34	3022
34	3262
34	2641
34	2990
34	2999
34	3158
34	3428
34	3239
34	3242
34	2678
34	2939
34	2896
34	3081
34	3258
34	3037
34	3138
34	2791
34	3403
34	2980
34	3004
34	3129
34	3165
34	3184
34	3177
34	2783
34	3046
34	3232
34	3152
34	3263
34	3437
34	2972
34	2590
34	3522
34	3145
34	2974
34	2753
34	3113
34	2899
34	3344
34	3103
34	2526
34	3115
34	3119
34	3723
34	3519
34	3904
34	3684
34	3660
34	3854
34	3530
34	3443
34	3915
34	3386
34	3806
34	3710
34	3671
34	3249
34	3698
34	3656
34	3340
34	3398
34	3512
34	3321
34	3252
34	3643
34	3675
34	3516
34	3911
34	3706
34	2902
34	3606
34	3620
34	3635
34	3648
34	3686
34	3661
34	3815
34	3783
34	3655
34	3535
34	3964
34	3504
34	3578
34	3642
34	3493
34	3716
34	3875
34	3404
34	3195
34	3772
34	3125
34	3694
34	3430
34	3614
34	3471
34	3570
34	3539
34	4209
34	3436
34	3586
34	3758
34	3507
34	3926
34	3202
34	3872
34	3725
34	3828
34	3670
34	4425
34	4070
34	4242
34	4174
34	4250
34	4306
34	4137
34	4240
34	4126
34	4482
34	3965
34	4260
34	4481
34	4338
34	4218
34	4357
34	4540
34	4162
34	4046
34	4485
34	3970
34	4199
34	3845
34	3603
34	3856
34	4377
34	4109
34	4029
34	4035
34	4213
34	4411
34	4215
34	4356
34	4382
34	4297
34	4327
34	4256
34	4152
34	4317
34	4206
34	4271
34	4104
34	3937
34	4373
34	4319
34	4513
34	3917
34	3844
34	4257
34	4095
34	4045
34	4527
34	4347
34	3990
34	4440
34	4443
34	4413
34	4237
34	3703
34	3853
34	4114
34	3949
34	4804
34	4586
34	4894
34	4767
34	4617
34	4780
34	4873
34	5095
34	4925
34	4716
34	4934
34	4956
34	4124
34	5155
34	4519
34	4159
34	4509
34	4653
34	5015
34	4876
34	4595
34	5107
34	4494
34	4671
34	4961
34	4823
34	4824
34	5103
34	4982
34	4797
34	5129
34	4903
34	5030
34	4571
34	5126
34	5020
34	5082
34	4667
34	4983
34	4419
34	4929
34	4793
34	4885
34	4603
34	4764
34	4588
34	4439
34	4859
34	4369
34	4673
34	4541
34	4999
34	5817
34	5598
34	5435
34	5456
34	5733
34	5282
34	5245
34	5716
34	5850
34	5389
34	5326
34	5521
34	5653
34	5348
34	5659
34	5677
34	5537
34	5375
34	5678
34	5662
34	5367
34	5627
34	4951
34	5403
34	5498
34	5231
34	4766
34	5274
34	5265
34	5371
34	5306
34	5600
34	5570
34	5162
34	5483
34	5651
34	5581
34	4812
34	5037
34	4994
34	6189
34	6553
34	6541
34	6395
34	6340
34	6016
34	6554
34	6110
34	6445
34	6435
34	6094
34	6127
34	6185
34	6400
34	5941
34	5903
34	5815
34	6301
34	6158
34	5808
34	6037
34	5683
34	5882
34	5825
34	5621
34	6391
34	6058
34	4916
34	5759
34	5732
34	5868
34	6162
34	6305
34	5751
34	6093
34	5800
34	5877
34	5948
34	6057
34	7018
34	6865
34	7099
34	7040
34	6919
34	6636
34	6970
34	6543
34	6877
34	6548
34	6676
34	5773
34	5844
34	6477
34	5897
34	7024
34	7022
34	6780
34	6478
34	6486
34	6857
34	6922
34	6920
34	6533
34	6655
34	6900
\.


--
-- Data for Name: set; Type: TABLE DATA; Schema: public; Owner: ttnwfvvb
--

COPY public.set (id, name, type) FROM stdin;
1	Top solved	main
2	Codeforces Rating < 1300	ladder
3	1300 <= Codeforces Rating <= 1399	ladder
4	1400 <= Codeforces Rating <= 1499	ladder
5	1500 <= Codeforces Rating <= 1599	ladder
6	1600 <= Codeforces Rating <= 1699	ladder
7	1700 <= Codeforces Rating <= 1799	ladder
8	1800 <= Codeforces Rating <= 1899	ladder
9	1900 <= Codeforces Rating <= 1999	ladder
10	2000 <= Codeforces Rating <= 2099	ladder
11	2100 <= Codeforces Rating <= 2199	ladder
12	Codeforces Rating >= 2200	ladder
13	Codeforces Rating < 1300 (Extra)	ladder
14	1300 <= Codeforces Rating <= 1399 (Extra)	ladder
15	1400 <= Codeforces Rating <= 1499 (Extra)	ladder
16	1500 <= Codeforces Rating <= 1599 (Extra)	ladder
17	1600 <= Codeforces Rating <= 1699 (Extra)	ladder
18	1700 <= Codeforces Rating <= 1799 (Extra)	ladder
19	1800 <= Codeforces Rating <= 1899 (Extra)	ladder
20	1900 <= Codeforces Rating <= 1999 (Extra)	ladder
21	2000 <= Codeforces Rating <= 2099 (Extra)	ladder
22	2100 <= Codeforces Rating <= 2199 (Extra)	ladder
23	Codeforces Rating >= 2200 (Extra)	ladder
24	Codeforces Div. 2, A	ladder
25	Codeforces Div. 2, B	ladder
26	Codeforces Div. 2, C	ladder
27	Codeforces Div. 2, D	ladder
28	Codeforces Div. 2, E	ladder
29	Codeforces Div. 1, D	ladder
30	Codeforces Div. 1, E	ladder
31	Dynamic Programming	category
32	implementation	category
33	math	category
34	Greedy	category
35	DFS & BFS & Dijkstra	category
36	brute force	category
37	data structures	category
38	Codeforces Div. 2 - A Problems	category
39	Codeforces Div. 2 - C Problems	category
40	Codeforces Div. 2 - B Problems	category
41	Codeforces Div. 2 - D Problems	category
42	Codeforces Div. 2 - E Problems	category
43	Binary Search & Ternary Search	category
44	constructive algorithms	category
45	sortings	category
46	graphs	category
47	Geometry	category
48	Number Theory	category
49	strings	category
50	combinatorics	category
51	Codeforces Div. 1, D	category
52	trees	category
53	Segment Tree	category
54	Network Flow	category
55	probabilities	category
56	two pointers	category
57	Codeforces Div. 2 - F Problems	category
58	dsu	category
59	bitmasks	category
60	Matrix Power	category
61	games	category
62	MST,Disjoint sets,SCC	category
63	hashing	category
64	Binary Indexed Tree	category
65	divide and conquer	category
66	Ad-hoc	category
67	CUET	category
68	Maximum Matching / Vertex Cover on Bipartite Graph	category
69	Trie	category
70	backtracking	category
71	bfs	category
72	Heavy-Light Descomposition	category
73	Non-Classical Dynamic Programming	category
74	KMP	category
75	string suffix structures	category
76	expresison and parsing	category
77	Meet in The Middle	category
78	Suffix Array/Tree	category
79	0/1 Knapsack	category
80	Balanced Binary Search Trees	category
81	MO?s Algorithm (Query square root decomposition)	category
82	FFT	category
83	Convex hull	category
84	TopologicalSort	category
85	2sat	category
86	LIS	category
87	ACM-ICPC Dhaka Site Regional Contests	category
88	polynomial	category
89	All Pair Shortest Path (Floyd-Warshall)	category
90	LCS	category
91	Aho-Corasick	category
92	LCA	category
93	EulerianTour	category
94	Strongly Connected Components	category
95	interactive	category
96	back-tracking	category
97	Lowest Common Ancestor	category
98	Suffix automaton	category
99	Centroid Decomposition	category
100	line sweep	category
101	Hungarian Algorithm	category
102	Reasoning	category
103	Gaussian elimination	category
104	DFS&BFS	category
105	Coin Change	category
106	Strategy	category
107	Mobius Function	category
108	Math Games	category
109	Edit Distance	category
110	ad hoc	category
111	STL	category
112	Persistent Segment Tree	category
113	TowerOfHanoi	category
114	Sqrt decomposition	category
115	Numerical_Integration	category
116	Articulation Point	category
117	Heaps	category
118	Complete Searsh	category
119	Dijkstra	category
120	bit manipulation	category
121	Randomized Algorithm	category
122	MCM & OBST	category
123	Simulated Annealing	category
124	segment trees	category
125	RMQ	category
126	Simulation	category
127	Bellman-Ford	category
128	big numbers	category
129	digit dp	category
130	chinese remainder theorem	category
131	0/1 BFS	category
132	Square Root Decomposition	category
133	BinarySearchVariants	category
134	Rabin-Karp	category
135	kth shortest path	category
136	Optimization	category
137	Game Theory	category
138	Recursion	category
139	Treap	category
140	matrix exponentiation	category
141	Minimum Spanning Tree	category
142	2D Range Queries	category
143	Minimum Cost Flow	category
144	ETF	category
145	Partitioning	category
146	Grid compression	category
147	schedules	category
148	AI	category
149	tries	category
150	Graph basics concepts BFS & DFS	category
151	Kadane's Algorithm	category
152	Range tree	category
153	Newton Raphson method	category
154	Float precision	category
155	Difference Constraints	category
156	flood fill	category
157	binary search	category
158	linked list	category
159	Z algorithm	category
160	Minkowski addition	category
161	Prefix Sums	category
162	Algorithm X	category
163	Voronoi	category
164	Max points on line	category
165	Minimum Enclosing Circle	category
166	Polygon centroid	category
167	Pigeonhole principle	category
168	Factoradic Index	category
169	Linear Programming	category
170	Biconnected Component	category
171	data structure	category
172	bst	category
173	dfs	category
174	dp	category
175	maxflow	category
176	MST	category
177	big mod	category
178	SQRT Heuristic	category
179	frequency ARRAY	category
180	Circle sweep	category
181	maximum empty rectangle 	category
182	Stable Marriage	category
\.


--
-- Data for Name: sols; Type: TABLE DATA; Schema: public; Owner: ttnwfvvb
--

COPY public.sols (user_id, problem_id) FROM stdin;
2	48
2	47
2	46
2	62
2	32
2	1
3	48
3	47
3	46
3	41
3	62
3	48
1	8
1	9
1	7
1	6
1	10
1	5
1	4
1	2
1	3
1	1
1	49
1	48
1	47
1	46
1	45
1	44
1	41
1	43
1	42
1	40
1	39
1	62
1	31
1	30
1	28
1	27
1	25
1	24
1	21
1	20
1	29
1	19
1	18
1	22
1	26
1	23
1	17
1	16
1	14
1	13
1	15
1	12
1	11
1	50
1	51
1	54
3	49
1	52
1	53
3	52
3	53
3	54
\.


--
-- Data for Name: team; Type: TABLE DATA; Schema: public; Owner: ttnwfvvb
--

COPY public.team (id, name, "problemsNum", index, updated, "solvedToday", "setId") FROM stdin;
1	ERROR	3	54	2021-09-19	f	1
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: ttnwfvvb
--

COPY public."user" (id, email, handle, password, name, "teamId", "darkMode") FROM stdin;
2	mohamedelfeky250@gmail.com	Mohamed.-.Elfeky	sha256$FgzKH4Qn$6759112c8d461024fc4a240923c9de3ec0641452e0ea9ea3a3657a5da5bc652b	Mohamed Abdelfatah Elfeky	1	f
3	mostafahussinelsayed@gmail.com	Mostafa_Hu	sha256$jcPUKg0q$c4be88c1476b43749c93f0b8f31fc8b3919b4a63494fb5bfb9236cf266ede997	Mustafa Hussin	1	t
1	mo.aggour@gmail.com	M_Agour	sha256$TM30OmFM$6eeefef0ac53ade11375cb35d243949e0ff428589b19b3768df13b4d4d931271	Mohamed Nagy	1	t
\.


--
-- Name: problem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ttnwfvvb
--

SELECT pg_catalog.setval('public.problem_id_seq', 8309, true);


--
-- Name: set_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ttnwfvvb
--

SELECT pg_catalog.setval('public.set_id_seq', 182, true);


--
-- Name: team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ttnwfvvb
--

SELECT pg_catalog.setval('public.team_id_seq', 1, true);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ttnwfvvb
--

SELECT pg_catalog.setval('public.user_id_seq', 3, true);


--
-- Name: problem problem_pkey; Type: CONSTRAINT; Schema: public; Owner: ttnwfvvb
--

ALTER TABLE ONLY public.problem
    ADD CONSTRAINT problem_pkey PRIMARY KEY (id);


--
-- Name: set set_pkey; Type: CONSTRAINT; Schema: public; Owner: ttnwfvvb
--

ALTER TABLE ONLY public.set
    ADD CONSTRAINT set_pkey PRIMARY KEY (id);


--
-- Name: team team_pkey; Type: CONSTRAINT; Schema: public; Owner: ttnwfvvb
--

ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_pkey PRIMARY KEY (id);


--
-- Name: user user_email_key; Type: CONSTRAINT; Schema: public; Owner: ttnwfvvb
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_email_key UNIQUE (email);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: ttnwfvvb
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: due due_problem_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ttnwfvvb
--

ALTER TABLE ONLY public.due
    ADD CONSTRAINT due_problem_id_fkey FOREIGN KEY (problem_id) REFERENCES public.problem(id);


--
-- Name: due due_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ttnwfvvb
--

ALTER TABLE ONLY public.due
    ADD CONSTRAINT due_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id);


--
-- Name: problem_set problem_set_problem_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ttnwfvvb
--

ALTER TABLE ONLY public.problem_set
    ADD CONSTRAINT problem_set_problem_id_fkey FOREIGN KEY (problem_id) REFERENCES public.problem(id);


--
-- Name: problem_set problem_set_set_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ttnwfvvb
--

ALTER TABLE ONLY public.problem_set
    ADD CONSTRAINT problem_set_set_id_fkey FOREIGN KEY (set_id) REFERENCES public.set(id);


--
-- Name: sols sols_problem_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ttnwfvvb
--

ALTER TABLE ONLY public.sols
    ADD CONSTRAINT sols_problem_id_fkey FOREIGN KEY (problem_id) REFERENCES public.problem(id);


--
-- Name: sols sols_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ttnwfvvb
--

ALTER TABLE ONLY public.sols
    ADD CONSTRAINT sols_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id);


--
-- Name: team team_setId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ttnwfvvb
--

ALTER TABLE ONLY public.team
    ADD CONSTRAINT "team_setId_fkey" FOREIGN KEY ("setId") REFERENCES public.set(id);


--
-- Name: user user_teamId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ttnwfvvb
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "user_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES public.team(id);


--
-- PostgreSQL database dump complete
--

