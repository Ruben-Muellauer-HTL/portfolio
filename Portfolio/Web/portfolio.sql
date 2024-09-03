--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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
-- Name: design_images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.design_images (
    did integer NOT NULL,
    name text
);


ALTER TABLE public.design_images OWNER TO postgres;

--
-- Name: design_images_did_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.design_images_did_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.design_images_did_seq OWNER TO postgres;

--
-- Name: design_images_did_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.design_images_did_seq OWNED BY public.design_images.did;


--
-- Name: icons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.icons (
    id integer NOT NULL,
    name text
);


ALTER TABLE public.icons OWNER TO postgres;

--
-- Name: icons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.icons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.icons_id_seq OWNER TO postgres;

--
-- Name: icons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.icons_id_seq OWNED BY public.icons.id;


--
-- Name: time_icons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.time_icons (
    tid integer,
    iid integer
);


ALTER TABLE public.time_icons OWNER TO postgres;

--
-- Name: timeline; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.timeline (
    id integer NOT NULL,
    title text,
    subtitle text,
    description text,
    side text,
    icons text
);


ALTER TABLE public.timeline OWNER TO postgres;

--
-- Name: timeline_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.timeline_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.timeline_id_seq OWNER TO postgres;

--
-- Name: timeline_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.timeline_id_seq OWNED BY public.timeline.id;


--
-- Name: web_icons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_icons (
    wid integer,
    iid integer
);


ALTER TABLE public.web_icons OWNER TO postgres;

--
-- Name: web_projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.web_projects (
    wid integer NOT NULL,
    name text,
    description text,
    gelernt text,
    titleimage text
);


ALTER TABLE public.web_projects OWNER TO postgres;

--
-- Name: web_projects_wid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.web_projects_wid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_projects_wid_seq OWNER TO postgres;

--
-- Name: web_projects_wid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.web_projects_wid_seq OWNED BY public.web_projects.wid;


--
-- Name: design_images did; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.design_images ALTER COLUMN did SET DEFAULT nextval('public.design_images_did_seq'::regclass);


--
-- Name: icons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.icons ALTER COLUMN id SET DEFAULT nextval('public.icons_id_seq'::regclass);


--
-- Name: timeline id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timeline ALTER COLUMN id SET DEFAULT nextval('public.timeline_id_seq'::regclass);


--
-- Name: web_projects wid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_projects ALTER COLUMN wid SET DEFAULT nextval('public.web_projects_wid_seq'::regclass);


--
-- Data for Name: design_images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.design_images (did, name) FROM stdin;
1	Alaba.jpg
2	ArdaGuler.jpg
3	Tel.jpg
4	LamineYoungstar.jpg
5	Kylian.jpg
6	RodriBallondor.png
7	ViniBallondor.png
8	LautaroBallondor.png
9	BallondorFront.png
10	BusinessCardFront.png
11	BusinessCardBack.png
\.


--
-- Data for Name: icons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.icons (id, name) FROM stdin;
1	vue.png
2	js.png
3	html.png
4	css.png
5	quasar.png
6	bootstrap.png
7	python.png
8	adobexd.png
10	photoshop.png
11	indesign.png
12	confluence.png
13	unity.png
9	csharp.png
14	sql.png
15	perl.png
16	premiere.png
17	after.png
19	handshake.png
20	degree.png
21	pwa.png
\.


--
-- Data for Name: time_icons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.time_icons (tid, iid) FROM stdin;
66	7
66	3
66	4
66	2
67	9
67	10
67	8
68	14
69	15
69	7
70	1
70	6
70	11
70	16
70	17
73	13
74	19
75	20
71	12
72	10
73	5
\.


--
-- Data for Name: timeline; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.timeline (id, title, subtitle, description, side, icons) FROM stdin;
67	Zweite Klasse HTL: C# und Design	Schuljahr 2020-2021	Im zweiten Schuljahr erweiterte ich meine Programmierkenntnisse mit C# und vertiefte mich in die Grundlagen des Designs. Ich begann, Icons und benutzerfreundliche Oberflächen zu gestalten und entwickelte komplexere Anwendungen und Spiele.	right	python.svg,html.svg,css.svg,js.svg
68	Dritte Klasse HTL: Projekte und SQL	Schuljahr 2021-2022	Das dritte Schuljahr war geprägt von der Vertiefung in C# und SQL. Ich arbeitete an anspruchsvollen Projekten, darunter ein Multimedia-Projekt zur Müllverarbeitung in Wien und ein Upcycling-Projekt mit einem Raspberry Pi.	left	python.svg,html.svg,css.svg,js.svg
69	Praktikum bei ITSV	Sommer 2022	Nach der dritten Klasse absolvierte ich ein einmonatiges Pflichtpraktikum bei der ITSV. Dort aktualisierte ich die Netzwerkdokumentation der ÖGK-Wien, erstellte ein Python Script zur Prüfung der Provisionierung von Netzwerkgeräten, konvertierte ein Perl Script in Python und entwickelte ein internes Tool zur Informationsbereitstellung von Firewallpolicies weiter.	right	python.svg,html.svg,css.svg,js.svg
70	Vierte Klasse HTL: Fullstack und Design	Schuljahr 2022-2023	Im vierten Schuljahr konzentrierte ich mich auf Fullstack-Entwicklung und Design. Ich erlernte das Frontend-Framework Vue.js, gestaltete Flyer, Magazine und Websites, und arbeitete an einer Tourismus-Website als Fullstack-Projekt.	left	python.svg,html.svg,css.svg,js.svg
71	Praktikum bei ITSV	Sommer 2023	Nach der vierten Klasse absolvierte ich ein weiteres Praktikum bei der ITSV. Hier wirkte ich am Aufbau einer neuen Dokumentationsplattform mit, bereitete Dokumentationen optisch auf und übertrug sie in eine neue Plattform-Struktur.	right	python.svg,html.svg,css.svg,js.svg
72	Praktikum in Irland	Juni-Juli 2023	Im Sommer 2023 absolvierte ich ein zweiwöchiges Praktikum in Irland. Während dieser Zeit war ich für das Überarbeiten einer Website und das Designen verschiedener Werbematerialien zuständig. Diese Erfahrung erweiterte meine internationalen Arbeitskenntnisse.	left	python.svg,html.svg,css.svg,js.svg
73	Fünfte Klasse HTL: Spezialisierung und Diplomarbeit	Schuljahr 2023-2024	Im fünften Schuljahr vertiefte ich mich in die Frontend-Entwicklung, insbesondere mit Vue.js. Ich erlernte das CSS-Framework Quasar, gestaltete komplexe Frontend-Projekte und arbeitete an meiner Diplomarbeit "Akztar", einem Spiel basierend auf griechischer Mythologie.	right	python.svg,html.svg,css.svg,js.svg
74	Praktikum im Fitnessstudio in Irland	Juni-Juli 2024	Im Sommer 2024 absolvierte ich ein weiteres Praktikum, diesmal in einem Fitnessstudio. Hier konnte ich mein Englisch weiter festigen und lernte, im direkten Kundenkontakt zu arbeiten. Diese Erfahrung stärkte meine Kommunikationsfähigkeiten und mein Verständnis für den Kundenservice.	left	python.svg,html.svg,css.svg,js.svg
75	HTL Abschluss	2024	Im Jahr 2024 schloss ich die HTL erfolgreich ab, mit einem herausragenden Notendurchschnitt von 1.16. Dieser Abschluss reflektiert mein Engagement und meine Leidenschaft für Technik und Design.	right	python.svg,html.svg,css.svg,js.svg
66	HTL Beginn und Grundlagen	September 2019 - 2020	Im September 2019 begann ich meine schulische Laufbahn an der HTL mit dem Schwerpunkt Medientechnik. Im ersten Jahr lag der Fokus auf der Einführung in die Programmierung mit Python und den Grundlagen der Webentwicklung, einschließlich HTML, CSS und JavaScript.	left	python.png,html.png,css.png,js.png
\.


--
-- Data for Name: web_icons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_icons (wid, iid) FROM stdin;
1	3
1	4
1	2
2	3
2	4
2	2
1	10
3	1
3	6
3	14
4	1
4	5
4	21
4	14
\.


--
-- Data for Name: web_projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.web_projects (wid, name, description, gelernt, titleimage) FROM stdin;
4	Fullstack PWA Tourismus Website	<p>Dieses Projekt baut auf der zuvor entwickelten Tourismus-Website auf und erweitert sie um Progressive Web App (PWA)-Funktionalitäten. Benutzer können die Website nicht nur nutzen, um Touren zu buchen und zu verwalten, sondern auch die Webanwendung auf ihren Geräten installieren, um sie wie eine native App zu verwenden.</p><p>Die PWA bietet zusätzliche Funktionen wie Offline-Betrieb, sodass die Benutzer auch ohne Internetverbindung auf die wichtigsten Funktionen zugreifen können.</p><p>Das Backend wurde erneut mit JavaScript und REST-APIs entwickelt, die Datenbank mit PostgreSQL in DataGrip erstellt. Das Frontend wurde mit dem Vue-Framework und dem CSS-Framework Quasar gestaltet, das mehr Flexibilität und kreative Gestaltungsmöglichkeiten als Bootstrap bietet.</p>	In diesem Projekt habe ich gelernt, wie man eine Webanwendung in eine PWA umwandelt und sie mit Offline-Funktionen ausstattet. Ich habe auch meine Fähigkeiten im Umgang mit dem Quasar-Framework verbessert, das es mir ermöglichte, eine individuellere und flexiblere Benutzeroberfläche zu gestalten. Dies hat mein Verständnis für die Entwicklung moderner Webanwendungen erheblich erweitert, insbesondere in Bezug auf die Bereitstellung von Offline-Funktionen und die Verbesserung der Benutzererfahrung durch PWA-Technologien.	tourismpwa.png
3	Fullstack Tourismus Website	<p>Dieses Projekt ist eine umfassende Tourismus-Website, die es Benutzern ermöglicht, verschiedene Touren zu buchen, Details zu diesen Touren einzusehen und Buchungen bei Bedarf zu stornieren.</p><p>Die Website erfordert eine Benutzerregistrierung, und angemeldete Benutzer können auf personalisierte Inhalte zugreifen.</p><p>Für die Entwicklung des Backends wurde JavaScript verwendet, wobei REST-APIs zum Einsatz kamen. Die Datenbank wurde mit PostgreSQL im Programm DataGrip erstellt. Das Frontend wurde mit dem Vue-Framework und dem CSS-Framework Bootstrap entwickelt.</p><p>Bootstrap bot den Vorteil, vorgefertigte Komponenten bereitzustellen, die die Gestaltung der Benutzeroberfläche erleichterten und beschleunigten.</p>	Während der Arbeit an dieser Website habe ich gelernt, wie man eine vollständige Webanwendung entwickelt, die eine nahtlose Integration zwischen Backend, Datenbank und Frontend bietet. Darüber hinaus habe ich die Vorteile von Bootstrap kennengelernt, insbesondere wie es den Entwicklungsprozess durch die Bereitstellung von wiederverwendbaren und anpassbaren UI-Komponenten beschleunigen kann.	tourism.png
1	Memory (Erstes Projekt)	<p>Dieses Projekt ist eine digitale Umsetzung des klassischen Memory-Spiels. Der Benutzer hat die Möglichkeit, zwischen drei verschiedenen Schwierigkeitsstufen zu wählen: 4x4, 8x8 und 16x16 Raster. Diese unterschiedlichen Rastergrößen erhöhen die Komplexität und bieten eine Herausforderung für Spieler unterschiedlichen Niveaus.</p><p>Das Spiel wurde vollständig mit Vanilla HTML, CSS und JavaScript entwickelt. Für die Gestaltung der Karten und das Zuschneiden der Bilder wurde Affinity Photo verwendet.</p><p>Die Entwicklung dieses Projekts erforderte ein tiefes Verständnis der Grundlagen der Webentwicklung und der Interaktion zwischen den verschiedenen Technologien.	Während der Arbeit an diesem Projekt habe ich gelernt, wie HTML, CSS und JavaScript zusammenarbeiten, um eine dynamische und interaktive Benutzeroberfläche zu erstellen. Ich habe auch praktische Erfahrungen im Umgang mit Bildbearbeitungssoftware gesammelt, um die visuellen Elemente des Spiels ansprechend zu gestalten.	memory.png
2	Multimedia Müllverarbeitung	<p>Dieses Projekt ist eine umfassende Website, die sich mit der Müllverarbeitung in Wien befasst. Es werden nicht nur die technischen Aspekte der Müllverarbeitung behandelt, sondern auch die Geschichte und die bedeutenden Persönlichkeiten, die diesen Bereich geprägt haben.</p><p>Die Website kombiniert verschiedene Multimedia-Elemente, darunter Texte, Videos, Audiodateien und interaktive Komponenten wie eine Timeline, um den Benutzern ein reichhaltiges und informatives Erlebnis zu bieten.</p><p>Das Projekt wurde mit einer Kombination aus HTML, CSS, JavaScript und einem Website Builder realisiert, um eine ansprechende und benutzerfreundliche Oberfläche zu schaffen.</p>	Bei der Entwicklung dieser Website habe ich gelernt, wie man externe JavaScript-Bibliotheken, insbesondere Leaflet, integriert und verwendet, um interaktive Karten zu erstellen. Dies hat mein Verständnis für den Einsatz von Drittanbieter-Bibliotheken in Webprojekten vertieft und mir gezeigt, wie sie genutzt werden können, um die Funktionalität einer Website zu erweitern.	muell.png
\.


--
-- Name: design_images_did_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.design_images_did_seq', 17, true);


--
-- Name: icons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.icons_id_seq', 20, true);


--
-- Name: timeline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.timeline_id_seq', 75, true);


--
-- Name: web_projects_wid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.web_projects_wid_seq', 4, true);


--
-- Name: design_images design_images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.design_images
    ADD CONSTRAINT design_images_pkey PRIMARY KEY (did);


--
-- Name: icons icons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.icons
    ADD CONSTRAINT icons_pkey PRIMARY KEY (id);


--
-- Name: timeline timeline_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timeline
    ADD CONSTRAINT timeline_pkey PRIMARY KEY (id);


--
-- Name: web_projects web_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_projects
    ADD CONSTRAINT web_projects_pkey PRIMARY KEY (wid);


--
-- Name: time_icons time_icons_iid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_icons
    ADD CONSTRAINT time_icons_iid_fkey FOREIGN KEY (iid) REFERENCES public.icons(id);


--
-- Name: time_icons time_icons_tid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_icons
    ADD CONSTRAINT time_icons_tid_fkey FOREIGN KEY (tid) REFERENCES public.timeline(id);


--
-- Name: web_icons web_icons_iid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_icons
    ADD CONSTRAINT web_icons_iid_fkey FOREIGN KEY (iid) REFERENCES public.icons(id);


--
-- Name: web_icons web_icons_wid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.web_icons
    ADD CONSTRAINT web_icons_wid_fkey FOREIGN KEY (wid) REFERENCES public.web_projects(wid);


--
-- PostgreSQL database dump complete
--

