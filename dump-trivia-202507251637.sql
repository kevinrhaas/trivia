--
-- PostgreSQL database dump
--

-- Dumped from database version 14.15 (Homebrew)
-- Dumped by pg_dump version 16.6 (Homebrew)

-- Started on 2025-07-25 16:37:32 CDT

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
-- TOC entry 6 (class 2615 OID 57344)
-- Name: trivia; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA trivia;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 210 (class 1259 OID 57345)
-- Name: app_status; Type: TABLE; Schema: trivia; Owner: -
--

CREATE TABLE trivia.app_status (
    id integer DEFAULT 1 NOT NULL,
    last_run timestamp without time zone,
    last_refresh timestamp without time zone,
    last_score timestamp without time zone
);


--
-- TOC entry 211 (class 1259 OID 57351)
-- Name: question_metadata; Type: TABLE; Schema: trivia; Owner: -
--

CREATE TABLE trivia.question_metadata (
    station text NOT NULL,
    question text NOT NULL,
    question_text text,
    correct_answer text,
    score_type character varying DEFAULT 'S'::character varying,
    max_points integer DEFAULT 1
);


--
-- TOC entry 212 (class 1259 OID 57356)
-- Name: scoring_results; Type: TABLE; Schema: trivia; Owner: -
--

CREATE TABLE trivia.scoring_results (
    station text NOT NULL,
    submission_id bigint NOT NULL,
    question text NOT NULL,
    answer text,
    score real,
    explanation text
);


--
-- TOC entry 213 (class 1259 OID 77509)
-- Name: station1_filmedinchicago; Type: TABLE; Schema: trivia; Owner: -
--

CREATE TABLE trivia.station1_filmedinchicago (
    "Submission Date" text,
    "Team Name" text,
    "Q1" text,
    "Q2" text,
    "Q3" text,
    "Q4" text,
    "Q5" text,
    "Q6" text,
    "Q7" text,
    "Q8" text,
    "Q9" text,
    "Q10" text,
    "Q11" text,
    "Q12" text,
    "Submission IP" text,
    "Submission URL" text,
    "Submission Edit URL" text,
    "Last Update Date" text,
    "Submission ID" bigint
);


--
-- TOC entry 214 (class 1259 OID 77545)
-- Name: station2_chicagohistory; Type: TABLE; Schema: trivia; Owner: -
--

CREATE TABLE trivia.station2_chicagohistory (
    "Submission Date" text,
    "Q1" text,
    "Submission IP" text,
    "Submission URL" text,
    "Submission Edit URL" text,
    "Last Update Date" text,
    "Team Name" text,
    "Submission ID" bigint
);


--
-- TOC entry 215 (class 1259 OID 77551)
-- Name: station3_damare; Type: TABLE; Schema: trivia; Owner: -
--

CREATE TABLE trivia.station3_damare (
    "Submission Date" text,
    "Team Name" text,
    "Q1" text,
    "Q2" text,
    "Q3" text,
    "Q4" text,
    "Q5" text,
    "Q6" text,
    "Q7" text,
    "Q8" text,
    "Q9" text,
    "Q10" text,
    "Q11" text,
    "Q12" text,
    "Submission IP" text,
    "Submission URL" text,
    "Submission Edit URL" text,
    "Last Update Date" text,
    "Submission ID" bigint
);


--
-- TOC entry 216 (class 1259 OID 77557)
-- Name: station4_signs; Type: TABLE; Schema: trivia; Owner: -
--

CREATE TABLE trivia.station4_signs (
    "Submission Date" text,
    "Team Name" text,
    "Q1" text,
    "Q2" text,
    "Q3" text,
    "Q4" text,
    "Q5" text,
    "Q6" text,
    "Q7" text,
    "Q8" text,
    "Q9" text,
    "Q10" text,
    "Q11" text,
    "Q12" text,
    "Q13" text,
    "Submission IP" text,
    "Submission URL" text,
    "Submission Edit URL" text,
    "Last Update Date" text,
    "Submission ID" bigint
);


--
-- TOC entry 217 (class 1259 OID 77563)
-- Name: station5_oddsandends; Type: TABLE; Schema: trivia; Owner: -
--

CREATE TABLE trivia.station5_oddsandends (
    "Submission Date" text,
    "Team Name" text,
    "Q1" text,
    "Q2" text,
    "Q3" text,
    "Q4" text,
    "Q5" text,
    "Q6" text,
    "Q7" text,
    "Submission IP" text,
    "Submission URL" text,
    "Submission Edit URL" text,
    "Last Update Date" text,
    "Submission ID" bigint
);


--
-- TOC entry 218 (class 1259 OID 77569)
-- Name: station6_musicvenues; Type: TABLE; Schema: trivia; Owner: -
--

CREATE TABLE trivia.station6_musicvenues (
    "Submission Date" text,
    "Team Name" text,
    "Q1" text,
    "Q2" text,
    "Q3" text,
    "Q4" text,
    "Q5" text,
    "Q6" text,
    "Q7" text,
    "Q8" text,
    "Q9" text,
    "Q10" text,
    "Submission IP" text,
    "Submission URL" text,
    "Submission Edit URL" text,
    "Last Update Date" text,
    "Submission ID" bigint
);


--
-- TOC entry 3702 (class 0 OID 57345)
-- Dependencies: 210
-- Data for Name: app_status; Type: TABLE DATA; Schema: trivia; Owner: -
--

INSERT INTO trivia.app_status VALUES (1, '2025-07-25 16:37:17.68375', NULL, '2025-07-25 11:47:27.519822');


--
-- TOC entry 3703 (class 0 OID 57351)
-- Dependencies: 211
-- Data for Name: question_metadata; Type: TABLE DATA; Schema: trivia; Owner: -
--

INSERT INTO trivia.question_metadata VALUES ('station5_oddsandends', 'Q1', 'Originally opened as Sharpshooters Park, this venue claimed up to 16 lives before it eventually closed in 1967', 'Riverview Park', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station5_oddsandends', 'Q2', 'Vienna Beef founders Emil Reichel and Sam Ladany originally hailed from this European city.', 'Vienna', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station5_oddsandends', 'Q3', 'Born on the second floor of a home on Tripp Street in Hermosa, he later founded a successful studio with his brother.', 'Walt Disney', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q5', 'Who is this mayor?', 'B - Jane Byrne', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q6', 'Who is this mayor?', 'E - Richard M. Daley', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q7', 'Who is this mayor?', 'K - William B. Ogden', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q8', 'Who is this mayor?', 'J - Lori Lightfoot', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q9', 'Who is this mayor?', 'A - Michael Bilandic', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q10', 'Who is this mayor?', 'H - Carter Harrison Jr.', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q11', 'Who is this mayor?', 'F - Rahm Emanuel', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q12', 'Who is this mayor?', 'C - Anton Cermak', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q1', 'Who is this mayor?', 'I - Brandon Johnson', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q2', 'Who is this mayor?', 'D - Richard J. Daley', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q3', 'Who is this mayor?', 'M - Harold Washington', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q4', 'Who is this mayor?', 'G - Carter Harrison Sr.', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station5_oddsandends', 'Q4', 'On Christmas Day in 1973, a 350 pound slab of Carrera marble popped off this building, setting off an $80 million replacement project finally completed in 1992', 'Standard Oil Building, also accept Amoco Building or Aon Center', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station5_oddsandends', 'Q5', 'He lost a 2000 U.S. House primary to former Black Panther Bobby Rush by a 2-to-1 margin and never ran for the House again. ', 'Barack Obama', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station5_oddsandends', 'Q6', 'This West Garfield Park movie palace on Crawford Ave (later Pulaski Rd) was demolished in 1958, about 20 years before it inspired a hit album.', 'Paradise Theater', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station5_oddsandends', 'Q7', 'According to a 2020 study by the American Ornithological Society, what is the airspeed of an unladen piping plover?', '26 mph', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q2', 'What movie is this scene from?', 'High Fidelity', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q3', 'What movie is this scene from?', 'The Blues Brothers', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q4', 'What movie is this scene from?', 'Road to Perdition', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q5', 'What movie is this scene from?', 'Risky Business', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q6', 'What movie is this scene from?', 'The Fugitive', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q7', 'What movie is this scene from?', 'The Untouchables', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q8', 'What movie is this scene from?', 'Ferris Beuller''s Day Off', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q9', 'What movie is this scene from?', 'Adventures In Babysitting', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q10', 'What movie is this scene from?', 'While You Were Sleeping', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q11', 'What movie is this scene from?', 'My Best Friend''s Wedding', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q12', 'What movie is this scene from?', 'About Last Night', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q1', 'What movie is this scene from?', 'The Dark Knight', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q1', 'Which iconic sign in Chicago is this image from?', 'Music Box Theater', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q2', 'Which iconic sign in Chicago is this image from?', 'Aragon Ballroom', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q3', 'Which iconic sign in Chicago is this image from?', 'Superdawg', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q4', 'Which iconic sign in Chicago is this image from?', 'Wrigley Field', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q5', 'Which iconic sign in Chicago is this image from?', 'The Berghoff Restaurant', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q6', 'Which iconic sign in Chicago is this image from?', 'United Center', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q7', 'Which iconic sign in Chicago is this image from?', 'Pequod''s Pizza', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q8', 'Which iconic sign in Chicago is this image from?', 'Wiener''s Circle', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q9', 'Which iconic sign in Chicago is this image from?', 'Buddy Guy''s Legends', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q10', 'Which iconic sign in Chicago is this image from?', 'Palmer House', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q11', 'Which iconic sign in Chicago is this image from?', 'Chicago Theater', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q12', 'Which iconic sign in Chicago is this image from?', 'Solider Field', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q13', 'Which iconic sign in Chicago is this image from?', 'Guaranteed Rate Field', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station6_musicvenues', 'Q1', 'REM played the first show at this urban underground venue when it opened in 1982', 'Metro', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station6_musicvenues', 'Q2', 'After prohibition ended, this tucked away venue opened (legally) in 1934 as a tavern – obviously without a sign
', 'The Hideout', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station6_musicvenues', 'Q3', 'The original stage production of Grease first appeared in 1971 at this popular blues nightclub.', 'Kingston Mines', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station6_musicvenues', 'Q4', 'After falling into bankruptcy, the stage of this massive Adler & Sullivan theatre was converted into a bowling alley for a period of time during WWII', 'The Auditorium Theater', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station6_musicvenues', 'Q5', 'During 2013 renovations of this venue inspired by the Prague Opera House, owners brought in a psychic when bones were found beneath the floorboards', 'Thalia Hall', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station6_musicvenues', 'Q6', 'Patrons and staff likely poured one out in 2009 when this venue lost "Radley", its beloved house cat of nearly 20 years', 'The Empty Bottle', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station6_musicvenues', 'Q7', 'This music venue first opened in 1903 as a Schlitz tied house, one of 57 built – and only 10 remaining – across Chicago, before being bought in 1989 by brothers Chris and Mike', 'Schuba''s', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station6_musicvenues', 'Q8', 'Developers poured over $50 million into this former warehouse and opened both an indoor and an outdoor concert space, each operated seasonally ', 'The Salt Shed', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station6_musicvenues', 'Q9', 'This French Renaissance-style movie palace, not to be confused with a coastal resort, eventually began hosting concerts 80 years after it opened in 1917.', 'The Riviera Theater', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station6_musicvenues', 'Q10', 'This venue opened in 1915 and was named as an homage to Paris’s Moulin Rouge, and originally included the venue’s appropriately colored eponymous feature on the rooftop', 'The Green Mill', 'S', 1);
INSERT INTO trivia.question_metadata VALUES ('station2_chicagohistory', 'Q1', 'Chicago events in historical order', '1: Jean Baptiste Point du Sable builds a house and trading post on the Chicago River.
2: John Kinzie fatally stabs Jean LeLime and flees Chicago.
3: The Great Chicago Fire levels the city.
4: The Home Insurance Building, the world’s first skyscraper, is completed at ten stories tall.
5: The Chicago River’s flow is reversed.
6: The SS Eastland capsizes while docked on the Chicago River, killing 844.
7: The Century of Progress World’s Fair begins a two-year run.
8: Hugh Hefner opens the first Playboy Club.
9: Disco Demolition Night at Comiskey Park sees thousands storm the field, blow up disco records, and cancel a Sox game.
10: The Cubs break the Curse of the Billy Goat and win the World Series.', 'M', 10);


--
-- TOC entry 3704 (class 0 OID 57356)
-- Dependencies: 212
-- Data for Name: scoring_results; Type: TABLE DATA; Schema: trivia; Owner: -
--



--
-- TOC entry 3705 (class 0 OID 77509)
-- Dependencies: 213
-- Data for Name: station1_filmedinchicago; Type: TABLE DATA; Schema: trivia; Owner: -
--



--
-- TOC entry 3706 (class 0 OID 77545)
-- Dependencies: 214
-- Data for Name: station2_chicagohistory; Type: TABLE DATA; Schema: trivia; Owner: -
--



--
-- TOC entry 3707 (class 0 OID 77551)
-- Dependencies: 215
-- Data for Name: station3_damare; Type: TABLE DATA; Schema: trivia; Owner: -
--



--
-- TOC entry 3708 (class 0 OID 77557)
-- Dependencies: 216
-- Data for Name: station4_signs; Type: TABLE DATA; Schema: trivia; Owner: -
--



--
-- TOC entry 3709 (class 0 OID 77563)
-- Dependencies: 217
-- Data for Name: station5_oddsandends; Type: TABLE DATA; Schema: trivia; Owner: -
--



--
-- TOC entry 3710 (class 0 OID 77569)
-- Dependencies: 218
-- Data for Name: station6_musicvenues; Type: TABLE DATA; Schema: trivia; Owner: -
--



--
-- TOC entry 3552 (class 2606 OID 57350)
-- Name: app_status app_status_pkey; Type: CONSTRAINT; Schema: trivia; Owner: -
--

ALTER TABLE ONLY trivia.app_status
    ADD CONSTRAINT app_status_pkey PRIMARY KEY (id);


--
-- TOC entry 3554 (class 2606 OID 57392)
-- Name: question_metadata question_metadata_pkey; Type: CONSTRAINT; Schema: trivia; Owner: -
--

ALTER TABLE ONLY trivia.question_metadata
    ADD CONSTRAINT question_metadata_pkey PRIMARY KEY (station, question);


--
-- TOC entry 3556 (class 2606 OID 57394)
-- Name: scoring_results scoring_results_pkey; Type: CONSTRAINT; Schema: trivia; Owner: -
--

ALTER TABLE ONLY trivia.scoring_results
    ADD CONSTRAINT scoring_results_pkey PRIMARY KEY (station, submission_id, question);


--
-- TOC entry 3557 (class 1259 OID 77514)
-- Name: station1_filmedinchicago_submission_id_idx; Type: INDEX; Schema: trivia; Owner: -
--

CREATE UNIQUE INDEX station1_filmedinchicago_submission_id_idx ON trivia.station1_filmedinchicago USING btree ("Submission ID");


--
-- TOC entry 3558 (class 1259 OID 77550)
-- Name: station2_chicagohistory_submission_id_idx; Type: INDEX; Schema: trivia; Owner: -
--

CREATE UNIQUE INDEX station2_chicagohistory_submission_id_idx ON trivia.station2_chicagohistory USING btree ("Submission ID");


--
-- TOC entry 3559 (class 1259 OID 77556)
-- Name: station3_damare_submission_id_idx; Type: INDEX; Schema: trivia; Owner: -
--

CREATE UNIQUE INDEX station3_damare_submission_id_idx ON trivia.station3_damare USING btree ("Submission ID");


--
-- TOC entry 3560 (class 1259 OID 77562)
-- Name: station4_signs_submission_id_idx; Type: INDEX; Schema: trivia; Owner: -
--

CREATE UNIQUE INDEX station4_signs_submission_id_idx ON trivia.station4_signs USING btree ("Submission ID");


--
-- TOC entry 3561 (class 1259 OID 77568)
-- Name: station5_oddsandends_submission_id_idx; Type: INDEX; Schema: trivia; Owner: -
--

CREATE UNIQUE INDEX station5_oddsandends_submission_id_idx ON trivia.station5_oddsandends USING btree ("Submission ID");


--
-- TOC entry 3562 (class 1259 OID 77574)
-- Name: station6_musicvenues_submission_id_idx; Type: INDEX; Schema: trivia; Owner: -
--

CREATE UNIQUE INDEX station6_musicvenues_submission_id_idx ON trivia.station6_musicvenues USING btree ("Submission ID");


-- Completed on 2025-07-25 16:37:32 CDT

--
-- PostgreSQL database dump complete
--

