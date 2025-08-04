--
-- PostgreSQL database dump
--

-- Dumped from database version 14.15 (Homebrew)
-- Dumped by pg_dump version 16.6 (Homebrew)

-- Started on 2025-07-28 09:09:11 CDT

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
-- TOC entry 213 (class 1259 OID 130760)
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
-- TOC entry 214 (class 1259 OID 130766)
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
-- TOC entry 215 (class 1259 OID 130772)
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
-- TOC entry 216 (class 1259 OID 130778)
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
-- TOC entry 217 (class 1259 OID 130784)
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
-- TOC entry 218 (class 1259 OID 130790)
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
-- TOC entry 3703 (class 0 OID 57345)
-- Dependencies: 210
-- Data for Name: app_status; Type: TABLE DATA; Schema: trivia; Owner: -
--

INSERT INTO trivia.app_status VALUES (1, '2025-07-27 10:35:21.97061', NULL, '2025-07-26 19:38:13.14988');


--
-- TOC entry 3704 (class 0 OID 57351)
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
10: The Cubs break the Curse of the Billy Goat and win the World Series.', 'P', 10);


--
-- TOC entry 3705 (class 0 OID 57356)
-- Dependencies: 212
-- Data for Name: scoring_results; Type: TABLE DATA; Schema: trivia; Owner: -
--

INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293770596465310261, 'Q1', 'I - Brandon Johnson', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293770596465310261, 'Q2', 'E - Richard M. Daley', 0, 'Explanation: The submitted answer is incorrect because Richard J. Daley and Richard M. Daley are two different people, both served as mayors of Chicago, but they are not the same person.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293770596465310261, 'Q3', 'M - Harold Washington', 1, 'Explanation: The submitted answer precisely matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293770596465310261, 'Q4', 'K - William B. Ogden', 0, 'Explanation: The submitted answer names a different person, William B. Ogden, rather than the correct answer, Carter Harrison Sr.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293770596465310261, 'Q5', 'B - Jane Byrne', 1, 'Explanation: The submitted answer correctly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293770596465310261, 'Q6', 'D - Richard J. Daley', 0, 'Explanation: The submitted answer is incorrect because the name provided does not match the correct answer, as the middle initials are different.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293770596465310261, 'Q7', 'L - William “Big Bill” Thompson', 0, 'Explanation: The submitted answer identifies a different person than the one mentioned in the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293770596465310261, 'Q8', 'J - Lori Lightfoot', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293770596465310261, 'Q9', 'A - Michael Bilandic', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293770596465310261, 'Q10', 'H - Carter Harrison Jr.', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293770596465310261, 'Q11', 'F - Rahm Emanuel', 1, 'Explanation: The submitted answer matches exactly with the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293770596465310261, 'Q12', 'C - Anton Cermak', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293778959318508989, 'Q1', 'I - Brandon Johnson', 1, 'Explanation: The submitted answer perfectly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293778959318508989, 'Q2', 'D - Richard J. Daley', 1, 'Explanation: The submitted answer matches the correct answer perfectly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293778959318508989, 'Q3', 'M - Harold Washington', 1, 'Explanation: The submitted answer matches the correct one exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293778959318508989, 'Q4', 'G - Carter Harrison Sr.', 1, 'Explanation: The submitted answer is exactly the same as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293778959318508989, 'Q5', 'B - Jane Byrne', 1, 'Explanation: The submitted answer is exactly the same as the correct one.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293778959318508989, 'Q6', 'E - Richard M. Daley', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293778959318508989, 'Q7', 'K - William B. Ogden', 1, 'Explanation: The submitted answer correctly identifies the mayor as William B. Ogden.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293778959318508989, 'Q8', 'J - Lori Lightfoot', 1, 'Explanation: The submitted answer perfectly matches with the correct answer, indicating that it is correct.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293778959318508989, 'Q9', 'A - Michael Bilandic', 1, 'Explanation: The submitted answer matches the correct one.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293778959318508989, 'Q10', 'H - Carter Harrison Jr.', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293778959318508989, 'Q11', 'F - Rahm Emanuel', 1, 'Explanation: The submitted answer correctly identifies the mayor in question.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293778959318508989, 'Q12', 'C - Anton Cermak', 1, 'Explanation: The submitted answer perfectly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293779566461550002, 'Q1', 'Batman Begins', 0, 'Explanation: The submitted answer, "Batman Begins," is not correct as the correct answer should be "The Dark Knight."');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293779566461550002, 'Q2', 'High Fidelity', 1, 'Explanation: The submitted answer exactly matches the correct one.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293779566461550002, 'Q3', 'The Blues Brothers', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293779566461550002, 'Q4', 'Miller’s Crossing', 0, 'Explanation: The submitted answer, Miller’s Crossing, is a different movie than the correct answer, Road to Perdition.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293779566461550002, 'Q5', 'Risky Business', 1, 'Explanation: The submitted answer correctly identifies the movie in question.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293779566461550002, 'Q6', 'The Fugitive', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293779566461550002, 'Q7', 'The Untouchables', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293779566461550002, 'Q8', 'Ferris Bueller’s Day Off', 1, 'Explanation: Although there''s a slight difference in the spelling, it''s clear that the respondent was referring to the correct film, hence the answer is accepted.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293779566461550002, 'Q9', 'Adventures in Babysitting', 1, 'Explanation: The submitted answer correctly identifies the movie, despite slight difference in capitalization.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293779566461550002, 'Q10', 'While You Were Sleeping', 1, 'Explanation: The submitted answer is exactly the same as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293779566461550002, 'Q11', 'My Best Friend’s Wedding', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293779566461550002, 'Q12', 'About Last Night', 1, 'Explanation: The submitted answer is the same as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station2_chicagohistory', 6293780224038324150, 'Q1', '1: Jean Baptiste Point du Sable builds a house and trading post on the Chicago River.
2: The Great Chicago Fire levels the city.
3: The Home Insurance Building, the world’s first skyscraper, is completed at ten stories tall.
4: John Kinzie fatally stabs Jean LeLime and flees Chicago.
5: The Century of Progress World’s Fair begins a two-year run.
6: The SS Eastland capsizes while docked on the Chicago River, killing 844.
7: Hugh Hefner opens the first Playboy Club.
8: The Chicago River’s flow is reversed.
9: Disco Demolition Night at Comiskey Park sees thousands storm the field, blow up disco records, and cancel a Sox game.
10: The Cubs break the Curse of the Billy Goat and win the World Series.', 7, 'Explanation: While the player correctly identified all events and most of them are in the proper order, there are discrepancies in the arrangement of specific events, particularly John Kinzie''s act, The Chicago River’s flow reversal, and The Century of Progress World’s Fair.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293791687295524088, 'Q1', 'Riverside Park', 0, 'Explanation: The submitted answer, Riverside Park, is not correct as the correct answer is Riverview Park.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293791687295524088, 'Q2', 'Vienna', 1, 'Explanation: The submitted answer is correct because Emil Reichel and Sam Ladany are indeed from Vienna.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293791687295524088, 'Q3', 'Leonard Chess', 0, 'Explanation: The submitted answer is incorrect because the trivia question pertains to Walt Disney, not Leonard Chess.');
INSERT INTO trivia.scoring_results VALUES ('station2_chicagohistory', 6293781892292479079, 'Q1', '1: Jean Baptiste Point du Sable builds a house and trading post on the Chicago River.
2: John Kinzie fatally stabs Jean LeLime and flees Chicago.
3: The Great Chicago Fire levels the city.
4: The Chicago River’s flow is reversed.
5: The Home Insurance Building, the world’s first skyscraper, is completed at ten stories tall.
6: The SS Eastland capsizes while docked on the Chicago River, killing 844.
7: The Century of Progress World’s Fair begins a two-year run.
8: Hugh Hefner opens the first Playboy Club.
9: Disco Demolition Night at Comiskey Park sees thousands storm the field, blow up disco records, and cancel a Sox game.
10: The Cubs break the Curse of the Billy Goat and win the World Series.', 9, 'Explanation: The submitted answer accurately lists all the events in the correct order, but it incorrectly places the reversing of the Chicago River''s flow before the completion of the Home Insurance Building, thus losing one point.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293785772214680741, 'Q1', 'Music Box', 1, 'Explanation: The submitted answer correctly identifies the sign as belonging to the Music Box, although it omits the word ''Theater''.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293785772214680741, 'Q2', 'Goodman Theatre', 0, 'Explanation: The submitted answer, Goodman Theatre, is not correct as the image is from the Aragon Ballroom.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293785772214680741, 'Q3', 'Superdawg', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293785772214680741, 'Q4', 'The Weiner Circle', 0, 'Explanation: The submitted answer, The Weiner Circle, is a hot dog stand in Chicago, not the Wrigley Field sign, therefore, it is incorrect.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293785772214680741, 'Q5', 'The Berghoff', 1, 'Explanation: The submitted answer identifies the correct location, even though it doesn''t include the word "Restaurant."');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293785772214680741, 'Q6', 'Ed Debevic’s', 0, 'Explanation: The submitted answer, Ed Debevic’s, does not match with the correct answer, which is United Center.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293785772214680741, 'Q7', 'Pequod’s', 1, 'Explanation: The submitted answer, "Pequod''s," is a shorthand reference to "Pequod''s Pizza," so it is considered correct.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293785772214680741, 'Q8', 'The Weiner Circle', 1, 'Explanation: Despite the slight difference in spelling, it''s clear that The Weiner Circle and Wiener''s Circle refer to the same iconic sign in Chicago.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293785772214680741, 'Q9', 'Fender Guitars', 0, 'Explanation: The submitted answer, Fender Guitars, is not the same as the correct answer, Buddy Guy''s Legends.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293785772214680741, 'Q10', 'Original Pancake House', 0, 'Explanation: The correct answer is Palmer House, but the submitted answer is Original Pancake House which is a different establishment.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293785772214680741, 'Q11', 'Chicago Theater', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293785772214680741, 'Q12', 'Soldier Field', 1, 'Explanation: The submitted answer has the correct information, though it contains a minor typo.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293785772214680741, 'Q13', 'Grant Park', 0, 'Explanation: The submitted answer "Grant Park" does not match the correct answer "Guaranteed Rate Field".');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293787845139261717, 'Q1', 'I - Brandon Johnson', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293787845139261717, 'Q2', 'E - Richard M. Daley', 0, 'Explanation: The submitted answer is incorrect because Richard J. Daley and Richard M. Daley are two different people, both serving as mayors of Chicago but at different times.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293787845139261717, 'Q3', 'M - Harold Washington', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293787845139261717, 'Q4', 'G - Carter Harrison Sr.', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293787845139261717, 'Q5', 'B - Jane Byrne', 1, 'Explanation: The submitted answer correctly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293787845139261717, 'Q6', 'D - Richard J. Daley', 0, 'Explanation: Though they share a last name and both served as mayors of Chicago, Richard M. Daley and Richard J. Daley are different people.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293787845139261717, 'Q7', 'K - William B. Ogden', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293787845139261717, 'Q8', 'J - Lori Lightfoot', 1, 'Explanation: The submitted answer is exactly the same as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293787845139261717, 'Q9', 'A - Michael Bilandic', 1, 'Explanation: The Submitted Answer exactly matches the Correct Answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293787845139261717, 'Q10', 'H - Carter Harrison Jr.', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293787845139261717, 'Q11', 'F - Rahm Emanuel', 1, 'Explanation: The submitted answer is exactly the same as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293787845139261717, 'Q12', 'C - Anton Cermak', 1, 'Explanation: The submitted answer correctly identifies the mayor as Anton Cermak.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293790652813767330, 'Q1', 'Music Box Theater', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293790652813767330, 'Q2', 'Chicago Theater', 0, 'Explanation: The submitted answer is incorrect as the iconic sign in the image is from the Aragon Ballroom not the Chicago Theater.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293790652813767330, 'Q3', 'Super Dawg', 1, 'Explanation: Although the spelling is slightly different, it is clear that the submitted answer is referring to the same iconic Chicago sign, Superdawg.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293790652813767330, 'Q4', 'Wrigley Field', 1, 'Explanation: The submitted answer correctly identifies the sign as Wrigley Field.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293790652813767330, 'Q5', 'Berghoff', 1, 'Explanation: Although the submitted answer is not as detailed, it still correctly identifies the sign as being from Berghoff Restaurant.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293790652813767330, 'Q6', 'Ed Debevics', 0, 'Explanation: The submitted answer, Ed Debevics, is a diner in Chicago, not the iconic sign from United Center.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293790652813767330, 'Q7', 'Peaquods', 1, 'Explanation: Despite a minor spelling error, the submitted answer still clearly refers to the correct location.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293790652813767330, 'Q8', 'Weiner Circle', 1, 'Explanation: Despite the slight spelling difference, it''s clear that the submitted answer is referring to the same place as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293790652813767330, 'Q9', 'Salt Shed', 0, 'Explanation: The submitted answer, "Salt Shed", is not the same as the correct answer, which is "Buddy Guy''s Legends".');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293790652813767330, 'Q10', 'Original Pancake House', 0, 'Explanation: The submitted answer, Original Pancake House, does not match the correct answer, Palmer House.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293790652813767330, 'Q11', 'Chicago Theater', 1, 'Explanation: The submitted answer correctly identified the image as from the Chicago Theater.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293790652813767330, 'Q12', 'Goldblatts', 0, 'Explanation: The submitted answer, "Goldblatts," does not match the correct answer, which is "Soldier Field."');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293790652813767330, 'Q13', '?', 0, 'Explanation: The submitted answer is blank.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293791687295524088, 'Q4', 'Standard Oil Building', 1, 'Explanation: The submitted answer is correct as it identifies the correct building where the incident happened.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293791687295524088, 'Q5', 'Barack Obama', 1, 'Explanation: The submitted answer correctly identifies Barack Obama as the person who lost to Bobby Rush in a 2000 U.S. House primary.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293791687295524088, 'Q6', 'Live at the Palace', 0, 'Explanation: The submitted answer ''Live at the Palace'' is not the same as the correct answer ''Paradise Theater''.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293791687295524088, 'Q7', '13 mph', 0, 'Explanation: The submitted answer is incorrect as the airspeed of an unladen piping plover according to the American Ornithological Society 2020 study is 26 mph, not 13 mph.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293791957291843842, 'Q1', 'Underground wonder bar', 0, 'Explanation: The submitted answer "Underground Wonder bar" does not match the correct answer, "Metro," therefore it is incorrect.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293791957291843842, 'Q2', 'Cabaret Metro', 0, 'Explanation: The submitted answer, Cabaret Metro, is not a match with the correct answer, The Hideout, indicating the venue intended by the trivia question.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293791957291843842, 'Q3', 'Checkers', 0, 'Explanation: The submitted answer, Checkers, does not match the correct answer, Kingston Mines, which is the actual location of the original stage production of Grease.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293791957291843842, 'Q4', 'The auditorium theater', 1, 'Explanation: The submitted answer correctly identifies the theater, despite differences in capitalization.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293791957291843842, 'Q5', 'Thalia hall', 1, 'Explanation: The submitted answer matches the correct answer, despite the lack of proper capitalization.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293791957291843842, 'Q6', 'Elbow room', 0, 'Explanation: The submitted answer is incorrect because Radley was the cat of The Empty Bottle, not the Elbow Room.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293791957291843842, 'Q7', 'Schubas', 1, 'Explanation: The minor difference of the apostrophe does not alter the main spelling and identification of the venue, thus the submitted answer is accepted.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293791957291843842, 'Q8', 'Salt shed', 1, 'Explanation: The submitted answer is correct, as it matches the correct answer given but only with different capitalization, which does not alter the meaning.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293791957291843842, 'Q9', 'The Riviera', 1, 'Explanation: Although the answer is not fully articulated, the submitted answer refers to the correct place, hence it is correct.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293791957291843842, 'Q10', 'The green mill', 1, 'Explanation: The submitted answer is correct as it matches the actual answer despite the capitalization difference.');
INSERT INTO trivia.scoring_results VALUES ('station2_chicagohistory', 6293793569311248719, 'Q1', '1: Jean Baptiste Point du Sable builds a house and trading post on the Chicago River.
2: The Great Chicago Fire levels the city.
3: The Century of Progress World’s Fair begins a two-year run.
4: The Chicago River’s flow is reversed.
5: The SS Eastland capsizes while docked on the Chicago River, killing 844.
6: John Kinzie fatally stabs Jean LeLime and flees Chicago.
7: The Home Insurance Building, the world’s first skyscraper, is completed at ten stories tall.
8: Hugh Hefner opens the first Playboy Club.
9: Disco Demolition Night at Comiskey Park sees thousands storm the field, blow up disco records, and cancel a Sox game.
10: The Cubs break the Curse of the Billy Goat and win the World Series.', 7, 'Explanation: While all the events listed in the submitted answer are correct, the order of events 2, 3, 4, 6, and 7 are incorrect, hence points have been deducted for these mistakes.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293794767469158789, 'Q1', 'Musicbox', 1, 'Explanation: The answer ''Music Box'' was shortened to ''Musicbox'', a minor phrasing difference that still accurately represents the original answer.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293794767469158789, 'Q2', 'Aragon', 1, 'Explanation: The submitted answer, "Aragon", correctly refers to the same venue albeit abbreviated.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293794767469158789, 'Q3', 'Supersawg', 0, 'Explanation: The submitted answer incorrectly spelled the name of the iconic sign, "Superdawg", as "Supersawg".');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293794767469158789, 'Q4', 'Wrigleyfield', 1, 'Explanation: Although there''s a space missing, the submitted answer includes the correct terms and is recognizable as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293794767469158789, 'Q5', 'Bergoff', 0, 'Explanation: The submitted answer is not correct because it misspells "Berghoff."');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293794767469158789, 'Q6', 'United Center', 1, 'Explanation: The submitted answer correctly matches the official answer.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293794767469158789, 'Q7', 'Pequods', 1, 'Explanation: The submitted answer is a slight abbreviation but it still clearly refers to the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293794767469158789, 'Q8', 'Weiner Circle', 1, 'Explanation: Despite the minor spelling difference, it''s clear the respondent was referring to the correct location.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293794767469158789, 'Q9', 'Buddy Guys Legends', 1, 'Explanation: The submitted answer is correct as it identifies the same sign, just without the proper punctuation.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293794767469158789, 'Q10', 'Littlefuse', 0, 'Explanation: The submitted answer ''Littlefuse'' does not match with the correct answer ''Palmer House''; they are two entirely different locations in Chicago.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293794767469158789, 'Q11', 'Chicago Theater', 1, 'Explanation: The submitted answer correctly identifies the iconic sign in the provided image.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293794767469158789, 'Q12', 'Goldblatts', 0, 'Explanation: The submitted answer "Goldblatts" is not the correct answer as the question is referring to the sign from "Solider Field".');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293794767469158789, 'Q13', 'Grant Park', 0, 'Explanation: The submitted answer, Grant Park, does not match with the correct answer which is Guaranteed Rate Field.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293796172834265351, 'Q1', '??', 0, 'Explanation: Without a submitted answer provided, there is nothing to compare with the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293796172834265351, 'Q2', 'Double door', 0, 'Explanation: The submitted answer, Double Door, is not the same as the correct answer, The Hideout.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293796172834265351, 'Q3', '??', 0, 'Explanation: The submitted answer is blank.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293796172834265351, 'Q4', 'Vic', 0, 'Explanation: The submitted answer "Vic" does not match with the correct answer, "The Auditorium Theater".');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293796172834265351, 'Q5', 'Thalia', 1, 'Explanation: Even though the full name wasn''t provided, Thalia is unique and specific enough to infer it refers to Thalia Hall.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293796172834265351, 'Q6', '??', 0, 'Explanation: The submitted answer is blank, so it''s not correct.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293796172834265351, 'Q7', 'Schubas', 1, 'Explanation: The submitted answer is most likely a minor spelling error and is very close to the correct answer, therefore understanding of the question can be inferred.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293796172834265351, 'Q8', 'Salt shed', 1, 'Explanation: Despite differences in capitalization, the submitted answer correctly identifies the location.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293796172834265351, 'Q9', 'Riviera', 1, 'Explanation: The submitted answer "Riviera" is a short form of the correct answer "The Riviera Theater", thus it can be accepted.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293796172834265351, 'Q10', 'Green mill', 1, 'Explanation: The submitted answer is correct as it mentions the correct place, despite the lack of capitalization.');
INSERT INTO trivia.scoring_results VALUES ('station2_chicagohistory', 6293797239163333219, 'Q1', '1: Jean Baptiste Point du Sable builds a house and trading post on the Chicago River.
2: The Great Chicago Fire levels the city.
3: The SS Eastland capsizes while docked on the Chicago River, killing 844.
4: The Home Insurance Building, the world’s first skyscraper, is completed at ten stories tall.
5: The Century of Progress World’s Fair begins a two-year run.
6: The Chicago River’s flow is reversed.
7: John Kinzie fatally stabs Jean LeLime and flees Chicago.
8: Disco Demolition Night at Comiskey Park sees thousands storm the field, blow up disco records, and cancel a Sox game.
9: Hugh Hefner opens the first Playboy Club.
10: The Cubs break the Curse of the Billy Goat and win the World Series.', 6, 'Explanation: The submitted answer correctly includes all of the events but presents them in an incorrect order.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293798997173942316, 'Q1', 'Metro', 1, 'Explanation: The submitted answer exactly matches the correct answer, indicating that this response is correct.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293798997173942316, 'Q2', 'Lottie’s pub', 0, 'Explanation: The submitted answer, "Lottie’s pub", is different from the correct answer, "The Hideout."');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293798997173942316, 'Q3', 'Biograph theater', 0, 'Explanation: The submitted answer, Biograph Theater, is incorrect because the original stage production of Grease first appeared at Kingston Mines.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293798997173942316, 'Q4', 'The auditorium', 0, 'Explanation: While the submitted answer did capture part of the correct response, it''s missing the important word "Theater," which is necessary to indicate its functionality and specificity.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293798997173942316, 'Q5', 'Thalia hall', 1, 'Explanation: The submitted answer is correct; it is the same as the official answer but with a different capitalization.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293798997173942316, 'Q6', 'Chicago theater', 0, 'Explanation: The submitted answer does not mention or is not in any way related to the specific venue "The Empty Bottle".');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293798997173942316, 'Q7', 'Schuba’s', 1, 'Explanation: The submitted answer is exactly the same as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293798997173942316, 'Q8', 'Salt shed', 1, 'Explanation: The submitted answer is correct because it correctly identifies the name of the venue, despite a slight difference in the formatting of the name.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293798997173942316, 'Q9', 'The Riviera', 1, 'Explanation: While it is not the full name of the venue, "The Riviera" is commonly used and is recognizable enough to be deemed correct.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293798997173942316, 'Q10', 'Green mill', 1, 'Explanation: The submitted answer correctly names the venue, despite not capitalizing both words of the name.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293799548184639246, 'Q1', 'Green Mill', 0, 'Explanation: The submitted answer, Green Mill, is not the same as the correct answer, Riverview Park.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293799548184639246, 'Q2', 'Frankfurt', 0, 'Explanation: The submitted answer is incorrect because the founders of Vienna Beef, Emil Reichel and Sam Ladany, were from Vienna, not Frankfurt.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293799548184639246, 'Q3', 'Walt Disney', 1, 'Explanation: The submitted answer correctly identifies Walt Disney as the person who was born on Tripp Street and later founded a successful studio.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293799548184639246, 'Q4', 'Carbide and Carbon', 0, 'Explanation: The submitted answer names a completely different building; it was the Standard Oil Building, also known as Amoco Building or Aon Center, where the incident occurred.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293799548184639246, 'Q5', 'Rahm Emanuel', 0, 'Explanation: The submitted answer is incorrect because the person who lost to Bobby Rush in the 2000 U.S. House primary was Barack Obama, not Rahm Emanuel.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293799548184639246, 'Q6', 'The Casmir', 0, 'Explanation: The submitted answer, "The Casmir," does not match the correct answer, which is "Paradise Theater."');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293799548184639246, 'Q7', '34 mph', 0, 'Explanation: The submitted answer of 34 mph is not correct, as the correct airspeed of an unladen piping plover is 26 mph as per the 2020 study by the American Ornithological Society.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293800372286213146, 'Q1', 'Metro', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293800372286213146, 'Q2', 'Lottie’s Pub', 0, 'Explanation: The submitted answer ''Lottie’s Pub'' is not the same as the correct answer, ''The Hideout''.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293800372286213146, 'Q3', 'House of Blues', 0, 'Explanation: The submitted answer "House of Blues" is not correct; the original stage production of Grease indeed premiered at "Kingston Mines".');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293800372286213146, 'Q4', 'Logan Theater', 0, 'Explanation: The submitted answer, Logan Theater, is different from the correct answer which is The Auditorium Theater.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293800372286213146, 'Q5', 'Lincoln Hall', 0, 'Explanation: The submitted answer, Lincoln Hall, is not the same as the correct answer, Thalia Hall.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293800372286213146, 'Q6', 'Salt Shed', 0, 'Explanation: The submitted answer, "Salt Shed", does not match with the correct answer, "The Empty Bottle".');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293800372286213146, 'Q7', 'House of Blues', 0, 'Explanation: The submitted answer, House of Blues, does not match the correct answer, which is Schuba''s.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293800372286213146, 'Q8', 'Salt Shed', 1, 'Explanation: The submitted answer correctly identifies the venue, although it omits the article "The" which doesn''t have any significant role in this context.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293800372286213146, 'Q9', 'Riviera', 1, 'Explanation: The submitted answer "Riviera" could be implying the Riviera Theater, while it lacks the full designation, it refers to the same establishment.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293800372286213146, 'Q10', 'Green Mill', 1, 'Explanation: The answer ''Green Mill'' is shorter but essentially the same as the correct answer ''The Green Mill'', thus it is correct.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293805375912113205, 'Q1', 'Dark Knight', 1, 'Explanation: The submitted answer is correct even if it missed "The" from the movie title.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293805375912113205, 'Q2', 'High Fidelty', 0, 'Explanation: The submitted answer is nearly correct, but it contains a spelling error, spelling "Fidelity" as "Fidelty".');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293805375912113205, 'Q3', 'Hill street Blues', 0, 'Explanation: The submitted answer, Hill Street Blues, is a television show, not the movie The Blues Brothers.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293805375912113205, 'Q4', 'Idk', 0, 'Explanation: The submitted answer "Idk" (I don''t know) does not match the correct answer "Road to Perdition."');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293805375912113205, 'Q5', 'Risky Business', 1, 'Explanation: The submitted answer is exactly the same as the correct one.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293805375912113205, 'Q6', 'Ferris Bueller', 0, 'Explanation: The submitted answer, Ferris Bueller, doesn''t match the correct answer, The Fugitive.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293805375912113205, 'Q7', 'Untouchable', 0, 'Explanation: Although the titles are similar, "Untouchable" is a different movie from "The Untouchables".');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293805375912113205, 'Q8', 'Idk', 0, 'Explanation: The submitted answer "Idk" does not match or relate to the correct answer "Ferris Bueller''s Day Off."');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293805375912113205, 'Q9', 'Vice Versa', 0, 'Explanation: The submitted answer, "Vice Versa," does not match the correct answer, "Adventures In Babysitting."');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293805375912113205, 'Q10', 'While you were sleeping', 1, 'Explanation: The submitted answer correctly identifies the movie, despite the lack of capitalization.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293805375912113205, 'Q11', 'My Best Friends Wedding', 1, 'Explanation: Even though the submitted answer missed the apostrophe in "Friend''s", it''s clear that they intended the same title.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293805375912113205, 'Q12', 'Rookie of the Year', 0, 'Explanation: The submitted answer is a different movie title than the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293805397719068110, 'Q1', 'The elbow room', 0, 'Explanation: The submitted answer "The elbow room" is not the venue where REM played their first show in 1982; the correct answer is "Metro."');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293805397719068110, 'Q2', 'Biograph theatre', 0, 'Explanation: The submitted answer, Biograph theatre, does not match the correct answer which is The Hideout.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293805397719068110, 'Q3', 'House of blues', 0, 'Explanation: The submitted answer, House of Blues, is not the correct location as the original stage production of Grease first appeared in Kingston Mines.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293805397719068110, 'Q4', 'Chicago theatre', 0, 'Explanation: The submitted answer, Chicago theatre, is different from the correct answer, The Auditorium Theater.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293805397719068110, 'Q5', 'Chicago theatre', 0, 'Explanation: The submitted answer is incorrect because the Thalia Hall, not the Chicago Theatre, was the venue that underwent renovations and discovered bones beneath the floorboards in 2013.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293805397719068110, 'Q6', 'Goodman theatre', 0, 'Explanation: The submitted answer, "Goodman theatre", does not match the correct answer, "The Empty Bottle", thus it is incorrect.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293805397719068110, 'Q7', 'Scubas', 0, 'Explanation: The submitted answer, "Scubas", is not spelled correctly, and is therefore not accepted.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293805397719068110, 'Q8', 'Morton salt shed', 0, 'Explanation: Although both answers contain the word "shed", the specific names "The Salt Shed" and "Morton salt shed" refer to two different locations, so they cannot be considered the same.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293805397719068110, 'Q9', 'Aragon', 0, 'Explanation: The submitted answer, Aragon, does not match the correct answer, which is The Riviera Theater.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293805397719068110, 'Q10', 'Green mill', 1, 'Explanation: The submitted answer correctly identifies the venue, despite not having initial capitalization in "mill."');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293806386317861440, 'Q1', 'Smart Bar', 0, 'Explanation: The submitted answer is incorrect because the first show at the venue in question, Metro, was played by REM, not at Smart Bar.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293806386317861440, 'Q2', '?', 0, 'Explanation: Without the submitted answer, there''s no way for me to assess its correctness.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293806386317861440, 'Q3', 'Kingston Mines', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293806386317861440, 'Q4', 'Auditorium Theater', 1, 'Explanation: The submitted answer correctly identifies the theatre, not including the word "The" doesn''t change the essence of the answer.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293806386317861440, 'Q5', 'Lyric Opera House', 0, 'Explanation: The submitted answer, Lyric Opera House, does not match with the correct answer, Thalia Hall.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293806386317861440, 'Q6', 'Empty Bottle', 1, 'Explanation: The submitted answer is correct as it retains the key information (the name of the venue) even without the "The" prior to "Empty Bottle".');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293806386317861440, 'Q7', 'Schubas', 1, 'Explanation: Though there is a slight spelling error, the submitted answer is phonetically identical to the correct answer and it is clear what venue is being referenced.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293806386317861440, 'Q8', 'Salt Shed', 1, 'Explanation: The submitted answer is correct because it presents the main and necessary information - "Salt Shed" - which matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293806386317861440, 'Q9', 'Congress Theater', 0, 'Explanation: The submitted answer, Congress Theater, is incorrect as the accurate response is the Riviera Theater.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293806386317861440, 'Q10', 'Green Mill', 1, 'Explanation: The submitted answer contains the key information - the name of the venue - and only lacks the article typically used in English before it.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293809691765404658, 'Q1', 'The Dark knight', 1, 'Explanation: Even though the ''K'' in ''Knight'' is not capitalized in the submitted answer, the essence of the correct movie title is captured.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293809691765404658, 'Q2', 'High Fidelity', 1, 'Explanation: The submitted answer correctly identifies the movie in question.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293809691765404658, 'Q3', 'Blues brothers', 1, 'Explanation: The submitted answer correctly identifies the movie, albeit without the initial "The".');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293809691765404658, 'Q4', 'Millers crossing', 0, 'Explanation: The submitted answer, Miller''s Crossing, is a different film entirely and not Road to Perdition.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293809691765404658, 'Q5', 'Risky business', 1, 'Explanation: The submitted answer matches the correct answer in terms of the movie title, despite the difference in capitalization.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293809691765404658, 'Q6', 'The fugitive', 1, 'Explanation: The submitted answer matches the correct answer, with the only difference being capitalization, which does not impact the correctness of the response in this context.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293809691765404658, 'Q7', 'Untouchables', 1, 'Explanation: The omission of the definite article "The" does not change the fundamental identification of the film.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293809691765404658, 'Q8', 'Ferris Bueller Day off', 1, 'Explanation: Although the spelling of "Bueller" is incorrect in the submitted answer, it is evident what movie the contestant is referring to and the key elements of the title are included.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293809691765404658, 'Q9', 'Adventures in Babysitting', 1, 'Explanation: The submitted answer is the same as the correct answer, just with different capitalization.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293809691765404658, 'Q10', 'While you were sleeping', 1, 'Explanation: The submitted answer accurately identifies the movie, despite the lack of capitalization.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293809691765404658, 'Q11', 'Runaway bride', 0, 'Explanation: The submitted answer, "Runaway Bride", is a different movie and not "My Best Friend''s Wedding."');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293809691765404658, 'Q12', 'About last night', 1, 'Explanation: The submitted answer accurately identifies the movie title, though the capitalization is slightly different.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293809992822672308, 'Q1', 'I - Brandon Johnson', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293809992822672308, 'Q2', 'E - Richard M. Daley', 0, 'Explanation: Although they both were mayors and share the same last name, Richard J. Daley and Richard M. Daley are two different people, hence the submitted answer is incorrect.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293809992822672308, 'Q3', 'M - Harold Washington', 1, 'Explanation: The submitted answer perfectly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293809992822672308, 'Q4', 'H - Carter Harrison Jr.', 0, 'Explanation: The submitted answer is incorrect because it names Carter Harrison Jr., not Carter Harrison Sr., as stated in the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293809992822672308, 'Q5', 'B - Jane Byrne', 1, 'Explanation: The submitted answer matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293809992822672308, 'Q6', 'D - Richard J. Daley', 0, 'Explanation: The submitted answer is incorrect because the correct answer is Richard M. Daley, not Richard J. Daley.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293809992822672308, 'Q7', 'G - Carter Harrison Sr.', 0, 'Explanation: The submitted answer, Carter Harrison Sr., does not match with the correct answer, William B. Ogden.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293809992822672308, 'Q8', 'J - Lori Lightfoot', 1, 'Explanation: The submitted answer perfectly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293809992822672308, 'Q9', 'H - Carter Harrison Jr.', 0, 'Explanation: The submitted answer, "Carter Harrison Jr.", is not the same person as "Michael Bilandic", the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293809992822672308, 'Q10', 'C - Anton Cermak', 0, 'Explanation: The submitted answer, Anton Cermak, is a different individual than the correct answer, Carter Harrison Jr., therefore it''s not correct.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293809992822672308, 'Q11', 'F - Rahm Emanuel', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293809992822672308, 'Q12', 'K - William B. Ogden', 0, 'Explanation: The submitted answer identifies a different person than the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station2_chicagohistory', 6293810362924984732, 'Q1', '1: Jean Baptiste Point du Sable builds a house and trading post on the Chicago River.
2: The Great Chicago Fire levels the city.
3: The SS Eastland capsizes while docked on the Chicago River, killing 844.
4: John Kinzie fatally stabs Jean LeLime and flees Chicago.
5: The Home Insurance Building, the world’s first skyscraper, is completed at ten stories tall.
6: The Century of Progress World’s Fair begins a two-year run.
7: Hugh Hefner opens the first Playboy Club.
8: The Chicago River’s flow is reversed.
9: Disco Demolition Night at Comiskey Park sees thousands storm the field, blow up disco records, and cancel a Sox game.
10: The Cubs break the Curse of the Billy Goat and win the World Series.', 7, 'Explanation: Despite a slight mistake in the sequence of events with the Great Chicago Fire and John Kinzie''s incident, the majority of events in the submitted answer are listed in the accurate chronological order.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293810460126177247, 'Q1', 'I - Brandon Johnson', 1, 'Explanation: The submitted answer is identical to the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293810460126177247, 'Q2', 'E - Richard M. Daley', 0, 'Explanation: The submitted answer provided a different middle initial indicating a different person, thus it is incorrect.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293810460126177247, 'Q3', 'M - Harold Washington', 1, 'Explanation: The submitted answer correctly identifies the mayor in the question.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293810460126177247, 'Q4', 'K - William B. Ogden', 0, 'Explanation: The submitted answer identifies a different individual, William B. Ogden, not the correct answer, Carter Harrison Sr.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293810460126177247, 'Q5', 'B - Jane Byrne', 1, 'Explanation: The submitted answer matches the correct answer perfectly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293810460126177247, 'Q6', 'D - Richard J. Daley', 0, 'Explanation: The submitted answer is incorrect because Richard M. Daley and Richard J. Daley are different people who both served as mayors of Chicago at different times.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293810460126177247, 'Q7', 'L - William “Big Bill” Thompson', 0, 'Explanation: The correct answer is William B. Ogden and the submitted answer is William “Big Bill” Thompson, which are two different people.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293810460126177247, 'Q8', 'J - Lori Lightfoot', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293810460126177247, 'Q9', 'A - Michael Bilandic', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293810460126177247, 'Q10', 'C - Anton Cermak', 0, 'Explanation: The submitted answer identifies a completely different person from the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293810460126177247, 'Q11', 'F - Rahm Emanuel', 1, 'Explanation: The submitted answer is exactly the same as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293810460126177247, 'Q12', 'H - Carter Harrison Jr.', 0, 'Explanation: The submitted answer is incorrect because Anton Cermak and Carter Harrison Jr. were two different mayors of Chicago, and the latter does not match the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293813428926349496, 'Q1', 'I - Brandon Johnson', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293813428926349496, 'Q2', 'E - Richard M. Daley', 0, 'Explanation: The submitted answer is incorrect because Richard J. Daley and Richard M. Daley are two different people, both served as mayors of Chicago, but they are not the same person, so the names are not interchangeable.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293813428926349496, 'Q3', 'M - Harold Washington', 1, 'Explanation: The answer provided accurately matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293813428926349496, 'Q4', 'G - Carter Harrison Sr.', 1, 'Explanation: The submitted answer correctly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293813428926349496, 'Q5', 'B - Jane Byrne', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293813428926349496, 'Q6', 'D - Richard J. Daley', 0, 'Explanation: The submitted answer is incorrect as it mentions a different middle initial from the correct answer, thus referring to a different person.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293813428926349496, 'Q7', 'L - William “Big Bill” Thompson', 0, 'Explanation: The submitted answer named a different person (William “Big Bill” Thompson) instead of the correct one (William B. Ogden).');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293813428926349496, 'Q8', 'J - Lori Lightfoot', 1, 'Explanation: The submitted answer perfectly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293813428926349496, 'Q9', 'A - Michael Bilandic', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293813428926349496, 'Q10', 'H - Carter Harrison Jr.', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293813428926349496, 'Q11', 'F - Rahm Emanuel', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293813428926349496, 'Q12', 'C - Anton Cermak', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station2_chicagohistory', 6293814321762050602, 'Q1', '1: Jean Baptiste Point du Sable builds a house and trading post on the Chicago River.
2: The Century of Progress World’s Fair begins a two-year run.
3: The SS Eastland capsizes while docked on the Chicago River, killing 844.
4: The Great Chicago Fire levels the city.
5: The Chicago River’s flow is reversed.
6: The Home Insurance Building, the world’s first skyscraper, is completed at ten stories tall.
7: John Kinzie fatally stabs Jean LeLime and flees Chicago.
8: Hugh Hefner opens the first Playboy Club.
9: Disco Demolition Night at Comiskey Park sees thousands storm the field, blow up disco records, and cancel a Sox game.
10: The Cubs break the Curse of the Billy Goat and win the World Series.', 6, 'Explanation: The submitted answer provides all the correct events but several of them are not in the right historical order—making the response halfway accurate.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293814437915036587, 'Q1', 'Riverside', 0, 'Explanation: The name "Riverside" is significantly different from the correct answer "Riverview Park," hence it is not correct.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293814437915036587, 'Q2', 'Vienna', 1, 'Explanation: The submitted answer correctly identifies Vienna as the European city from which the founders of Vienna Beef hailed.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293814437915036587, 'Q3', 'Chess', 0, 'Explanation: The submitted answer "Chess" does not match with the correct answer "Walt Disney," referring to the individual who founded a successful studio with his brother.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293814437915036587, 'Q4', 'Standard Oil Building', 1, 'Explanation: The submitted answer correctly identifies the Standard Oil Building as the site of the event described in the question.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293814437915036587, 'Q5', 'Barack Obama', 1, 'Explanation: The submitted answer correctly identifies Barack Obama as the individual who lost a 2000 U.S. House primary to former Black Panther Bobby Rush and never ran for the House again.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293814437915036587, 'Q6', 'Paradise', 1, 'Explanation: The submitted answer, "Paradise", is correct as this is indeed the essential component of the correct answer, "Paradise Theater".');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293814437915036587, 'Q7', '13 mph', 0, 'Explanation: The submitted answer does not match the data from the 2020 study which states that the airspeed of an unladen piping plover is 26 mph.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293818407526989783, 'Q1', 'The Riverside', 0, 'Explanation: The submitted answer, "The Riverside," is not the same as the correct answer, "Riverview Park."');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293818407526989783, 'Q2', 'Austria', 0, 'Explanation: While Vienna is indeed in Austria, the submitted answer is too broad since the question specifically asks for a city.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293818407526989783, 'Q3', 'WGN', 0, 'Explanation: The submitted answer "WGN" is incorrect because the trivia asks for a person''s name, specifically Walt Disney, not a radio station.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293818407526989783, 'Q4', 'Standard Oil  Building', 1, 'Explanation: The submitted answer is correct because it is one of the accepted names for the building the question identifies.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293818407526989783, 'Q5', 'Obama', 1, 'Explanation: The submitted answer is correct as it refers to the same individual, Barack Obama.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293818407526989783, 'Q6', 'Chicago', 0, 'Explanation: The submitted answer, which is "Chicago", does not match the correct answer "Paradise Theater", therefore it''s incorrect.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293818407526989783, 'Q7', '19 mph', 0, 'Explanation: The submitted answer is not correct as the unladen airspeed of a piping plover is 26 mph, not 19 mph.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293818902824153728, 'Q1', 'The Riverside', 0, 'Explanation: The submitted answer, "The Riverside," is not the same as the correct answer, "Riverview Park."');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293818902824153728, 'Q2', 'Vienna', 1, 'Explanation: The submitted answer is correct as it matches the correct answer given, which is ''Vienna''.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293818902824153728, 'Q3', 'Weinsteins', 0, 'Explanation: The submitted answer (Weinsteins) is incorrect because the question is referring to Walt Disney, not Harvey and Bob Weinstein.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293818902824153728, 'Q4', 'Aon center/amoco building', 1, 'Explanation: The submitted answer references two of the acceptable names for the building in question, thus it is correct.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293818902824153728, 'Q5', 'Obama', 1, 'Explanation: The submitted answer "Obama" is essentially correct as it refers to the same person "Barack Obama," despite not including the full name.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293818902824153728, 'Q6', 'Paradise Theater', 1, 'Explanation: The submitted answer accurately matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293818902824153728, 'Q7', '26 mph', 1, 'Explanation: The submitted answer correctly matches the expected response.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293821824435565797, 'Q1', 'Dark Knight', 1, 'Explanation: The submitted answer ''Dark Knight'' adequately refers to the full title ''The Dark Knight'', notwithstanding the missing article "The".');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293821824435565797, 'Q2', 'High Fidelity', 1, 'Explanation: The submitted answer is an exact match to the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293821824435565797, 'Q3', 'Blues Brothers', 1, 'Explanation: The submitted answer refers to the same movie, just without the ''The'' in front, which is a minor detail.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293821824435565797, 'Q4', 'Road to Perdition', 1, 'Explanation: The submitted answer correctly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293821824435565797, 'Q5', 'Risky Business', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293821824435565797, 'Q6', 'The Fugitive', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293821824435565797, 'Q7', 'The Untouchables', 1, 'Explanation: The submitted answer is the same as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293821824435565797, 'Q8', 'Ferris Buller''s Day Off', 1, 'Explanation: Despite the minor spelling error, it''s clear the participant was referring to the correct movie as the names sound almost identical.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293821824435565797, 'Q9', 'Adventures in Babysitting', 1, 'Explanation: The submitted answer correctly identifies the name of the movie, even though the capitalization in "in" is different, it doesn''t change the name of the movie itself.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293821824435565797, 'Q10', 'While You Were Sleeping', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293821824435565797, 'Q11', 'My Best Friends Wedding', 1, 'Explanation: Despite the minor punctuation error, it is clear that the submitted answer is referring to the same film as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293821824435565797, 'Q12', 'About Last Night', 1, 'Explanation: The submitted answer is exactly the same as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293821929165905557, 'Q1', 'Music Box', 1, 'Explanation: The submitted answer, "Music Box," sufficiently provides the correct answer as it refers to the same location, albeit with a shortened name.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293821929165905557, 'Q2', 'Aragon', 1, 'Explanation: Although the submitted answer was not complete, it provided the essential part of the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293821929165905557, 'Q3', 'Superdawg', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293821929165905557, 'Q4', 'Wriggly Field', 0, 'Explanation: The submitted answer has a misspelling of "Wrigley Field".');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293821929165905557, 'Q5', 'Bergoff', 0, 'Explanation: The submitted answer lacks the essential ''the'' and incorrectly spells ''Berghoff'', namely it is missing the second ''h''. Thus, it is not accepted as correct.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293821929165905557, 'Q6', 'United Center', 1, 'Explanation: The submitted answer is exactly the same as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293821929165905557, 'Q7', 'Peninsula', 0, 'Explanation: The submitted answer, Peninsula, is not the correct answer because the sign pictured is from Pequod''s Pizza.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293821929165905557, 'Q8', 'Weiner circle', 1, 'Explanation: The submitted answer slightly misspelled "Wiener''s Circle" but it''s clear they had the right location in mind; spelling errors can be overlooked in this instance.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293821929165905557, 'Q9', 'Buddy guys legends', 1, 'Explanation: The submitted answer is correct, it''s just not properly punctuated.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293821929165905557, 'Q10', 'The muse theatre', 0, 'Explanation: The correct answer is Palmer House and not The Muse Theatre, therefore, the submitted answer is incorrect.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293821929165905557, 'Q11', 'Chicago theatre', 1, 'Explanation: The submitted answer has the same meaning as the correct answer, but uses a different spelling, which is also acceptable.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293821929165905557, 'Q12', 'Old town school of folk music', 0, 'Explanation: The submitted answer references a completely different location in Chicago, not the Soldier Field.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293821929165905557, 'Q13', 'Grant park', 0, 'Explanation: The submitted answer "Grant park" is not the same location as the correct answer, which is "Guaranteed Rate Field."');
INSERT INTO trivia.scoring_results VALUES ('station2_chicagohistory', 6293823169116177157, 'Q1', '1: The Cubs break the Curse of the Billy Goat and win the World Series.
2: Disco Demolition Night at Comiskey Park sees thousands storm the field, blow up disco records, and cancel a Sox game.
3: Hugh Hefner opens the first Playboy Club.
4: The SS Eastland capsizes while docked on the Chicago River, killing 844.
5: The Century of Progress World’s Fair begins a two-year run.
6: The Chicago River’s flow is reversed.
7: The Home Insurance Building, the world’s first skyscraper, is completed at ten stories tall.
8: John Kinzie fatally stabs Jean LeLime and flees Chicago.
9: The Great Chicago Fire levels the city.
10: Jean Baptiste Point du Sable builds a house and trading post on the Chicago River.', 0, 'Explanation: The submitted answer has all the events in reverse order compared to the correct answer, demonstrating a complete misunderstanding of the historical timeline.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293823905031827276, 'Q1', 'Music Box', 1, 'Explanation: Despite not mentioning "Theater", the submitted answer "Music Box" is clearly referring to the same place.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293823905031827276, 'Q2', 'Amphitheater', 0, 'Explanation: The submitted answer, "Amphitheater", is not the same as the correct answer, which is "Aragon Ballroom".');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293823905031827276, 'Q3', 'Super Dawgs', 1, 'Explanation: The submitted answer is essentially the same as the correct answer, there''s just an extra space.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293823905031827276, 'Q4', 'Wrigley Field marquee', 1, 'Explanation: The submitted answer is correct as the marquee is notably part of Wrigley Field.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293823905031827276, 'Q5', 'Berghoff', 1, 'Explanation: The submitted answer, "Berghoff", is accepted since it refers to the same iconic sign in Chicago, despite leaving out the full title "The Berghoff Restaurant".');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293823905031827276, 'Q6', 'Ed Debevics', 0, 'Explanation: The submitted answer, Ed Debevics, is incorrect because the image is from the United Center sign in Chicago.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293823905031827276, 'Q7', 'Pequods', 1, 'Explanation: The submitted answer "Pequods" correctly refers to the iconic sign "Pequod''s Pizza," just omitting the term "pizza" which is not necessarily needed in context.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293823905031827276, 'Q8', 'Wiener Circles', 1, 'Explanation: Despite the minor difference in phrasing, the submitted answer clearly identifies the correct location.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293823905031827276, 'Q9', 'Buddy Guy Legends', 1, 'Explanation: The submitted answer might not include the possessive "''s" but it still correctly identifies the sign.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293823905031827276, 'Q10', 'White Palace', 0, 'Explanation: The submitted answer, "White Palace," does not match the correct answer, which is "Palmer House."');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293823905031827276, 'Q11', 'Chicago Theater', 1, 'Explanation: The submitted answer is identical to the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293823905031827276, 'Q12', 'Goldblatts', 0, 'Explanation: The submitted answer "Goldblatts" does not match the correct answer which is "Solider Field", hence it is incorrect.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293823905031827276, 'Q13', 'Lawry’s', 0, 'Explanation: The submitted answer "Lawry’s" does not match the correct answer, which is "Guaranteed Rate Field."');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293826757712473664, 'Q1', 'Riverview', 1, 'Explanation: "Riverview" is a shortened form of "Riverview Park" making the submitted answer essentially accurate.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293826757712473664, 'Q2', 'Vienna', 1, 'Explanation: The submitted answer correctly identifies Vienna as the city from which the founders of Vienna Beef hailed.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293826757712473664, 'Q3', 'Frank Lloyd wright', 0, 'Explanation: The submitted answer, Frank Lloyd Wright, is incorrect as he is not associated with founding a successful studio with his brother; that achievement belongs to Walt Disney.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293826757712473664, 'Q4', 'Carbon and carbide', 0, 'Explanation: The submitted answer "Carbon and carbide" does not match or relate to the correct answer of "Standard Oil Building, also accept Amoco Building or Aon Center".');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293826757712473664, 'Q5', 'Barack Obama', 1, 'Explanation: The submitted answer correctly identifies Barack Obama as the individual who lost the 2000 U.S. House primary to Bobby Rush.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293826757712473664, 'Q6', 'The Vic', 0, 'Explanation: The submitted answer, ''The Vic'', does not match with the correct answer which is ''Paradise Theater''.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6293826757712473664, 'Q7', '26 mph', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293836387172221386, 'Q4', 'A - Michael Bilandic', 0, 'Explanation: The submitted answer is incorrect because Michael Bilandic and Carter Harrison Sr. are different people who served as mayors at different times.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293836387172221386, 'Q5', 'B - Jane Byrne', 1, 'Explanation: The submitted answer is identical to the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station2_chicagohistory', 6293828623037657688, 'Q1', '1: The Home Insurance Building, the world’s first skyscraper, is completed at ten stories tall.
2: Jean Baptiste Point du Sable builds a house and trading post on the Chicago River.
3: John Kinzie fatally stabs Jean LeLime and flees Chicago.
4: The Great Chicago Fire levels the city.
5: The Century of Progress World’s Fair begins a two-year run.
6: The SS Eastland capsizes while docked on the Chicago River, killing 844.
7: The Chicago River’s flow is reversed.
8: Hugh Hefner opens the first Playboy Club.
9: Disco Demolition Night at Comiskey Park sees thousands storm the field, blow up disco records, and cancel a Sox game.
10: The Cubs break the Curse of the Billy Goat and win the World Series.', 5, 'Explanation: The submitted answer contains all the correct events, but they are not in the correct order, hence why it gets half the points.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293832507719452652, 'Q1', 'I - Brandon Johnson', 1, 'Explanation: The submitted answer is exactly the same as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293832507719452652, 'Q2', 'D - Richard J. Daley', 1, 'Explanation: The submitted answer is exactly the same as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293832507719452652, 'Q3', 'M - Harold Washington', 1, 'Explanation: The submitted answer matches the correct answer verbatim.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293832507719452652, 'Q4', 'G - Carter Harrison Sr.', 1, 'Explanation: The submitted answer is exactly the same as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293832507719452652, 'Q5', 'B - Jane Byrne', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293832507719452652, 'Q6', 'E - Richard M. Daley', 1, 'Explanation: The submitted answer matches perfectly with the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293832507719452652, 'Q7', 'K - William B. Ogden', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293832507719452652, 'Q8', 'J - Lori Lightfoot', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293832507719452652, 'Q9', 'A - Michael Bilandic', 1, 'Explanation: The submitted answer is exactly the same as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293832507719452652, 'Q10', 'C - Anton Cermak', 0, 'Explanation: The submitted answer is incorrect because Anton Cermak is a different person from Carter Harrison Jr.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293832507719452652, 'Q11', 'F - Rahm Emanuel', 1, 'Explanation: The submitted answer is identical to the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293832507719452652, 'Q12', 'L - William “Big Bill” Thompson', 0, 'Explanation: The submitted answer identifies a different person than the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835214641293135, 'Q1', 'The Dark Knight', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835214641293135, 'Q2', 'High Fidelity', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835214641293135, 'Q3', 'Blues Brothers', 1, 'Explanation: Despite the slight deviation, the submitted answer clearly refers to the same movie as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835214641293135, 'Q4', 'Road to Perdition', 1, 'Explanation: The submitted answer perfectly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835214641293135, 'Q5', 'American Psycho', 0, 'Explanation: The submitted answer, American Psycho, is a different movie than the correct answer, Risky Business.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835214641293135, 'Q6', 'The Fugitive', 1, 'Explanation: The submitted answer precisely matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835214641293135, 'Q7', 'Untouchables', 1, 'Explanation: The submitted answer is missing the article "The" but it still correctly identifies the movie.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835214641293135, 'Q8', 'Ferris Bueller’s Day Off', 1, 'Explanation: The submitted answer correctly identifies the movie, despite a slight difference in spelling.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835214641293135, 'Q9', 'Adventures in Babysitting', 1, 'Explanation: The submitted answer correctly identifies the movie, despite minor differences in capitalization.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835214641293135, 'Q10', 'While You Were Sleeping', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835214641293135, 'Q11', 'My Best Friend’s Wedding', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835214641293135, 'Q12', 'About Last Night', 1, 'Explanation: The answer matches exactly with the correct one.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835878163720643, 'Q1', 'the dark knight', 1, 'Explanation: Even though the capitalization is different, the submitted answer matches the correct answer phonetically.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835878163720643, 'Q2', 'high fidelity', 1, 'Explanation: The answer correctly identifies the movie, regardless of capitalization.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835878163720643, 'Q3', 'blues brothers', 1, 'Explanation: The submitted answer correctly identifies the movie, despite not using the full official title with the capitalized "The".');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835878163720643, 'Q4', 'road to perdition', 1, 'Explanation: The submitted answer is correct as it matches the correct answer, just the capitalisation is different.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835878163720643, 'Q5', 'running scared', 0, 'Explanation: The submitted answer "running scared" is a different movie and not related to the correct answer, "Risky Business."');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835878163720643, 'Q6', 'the fugitive', 1, 'Explanation: The submitted answer correctly identifies the movie, despite a difference in capitalization.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835878163720643, 'Q7', 'untouchables', 1, 'Explanation: The submitted answer correctly identifies the movie, despite lacking the definite article "The".');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835878163720643, 'Q8', 'babys day out', 0, 'Explanation: The submitted answer, "babys day out," is a different movie and not the correct movie "Ferris Beuller''s Day Off."');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835878163720643, 'Q9', 'adventures in babysitting', 1, 'Explanation: The submitted answer is a correct match, despite not using proper capitalization.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835878163720643, 'Q10', 'while you were sleeping', 1, 'Explanation: The submitted answer is correct; it is just in lowercase which doesn''t affect the answer''s accuracy.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835878163720643, 'Q11', 'my best friends wedding', 1, 'Explanation: The submission is essentially the same as the correct answer, just missing the possessive apostrophe.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293835878163720643, 'Q12', 'about last night', 1, 'Explanation: The submitted answer is correct as it matches the correct answer, just with different capitalization.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293836387172221386, 'Q1', 'I - Brandon Johnson', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293836387172221386, 'Q2', 'D - Richard J. Daley', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293836387172221386, 'Q3', 'M - Harold Washington', 1, 'Explanation: The submitted answer correctly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293836387172221386, 'Q6', 'E - Richard M. Daley', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293836387172221386, 'Q7', 'K - William B. Ogden', 1, 'Explanation: The submitted answer is identical to the correct answer, so it is correct.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293836387172221386, 'Q8', 'J - Lori Lightfoot', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293836387172221386, 'Q9', 'H - Carter Harrison Jr.', 0, 'Explanation: The submitted answer, Carter Harrison Jr., is not the same person as the correct answer, Michael Bilandic.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293836387172221386, 'Q10', 'C - Anton Cermak', 0, 'Explanation: The correct answer is Carter Harrison Jr. and the contestant''s answer was Anton Cermak, which is a different person entirely.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293836387172221386, 'Q11', 'F - Rahm Emanuel', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293836387172221386, 'Q12', 'L - William “Big Bill” Thompson', 0, 'Explanation: The submitted answer picked a different person entirely, not Anton Cermak.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293837407183631419, 'Q1', 'I - Brandon Johnson', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293837407183631419, 'Q2', 'E - Richard M. Daley', 0, 'Explanation: The submitted answer is incorrect because Richard J. Daley and Richard M. Daley are two different persons, both of whom served as Mayors of Chicago, but are not the same person.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293837407183631419, 'Q3', 'M - Harold Washington', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293837407183631419, 'Q4', 'L - William “Big Bill” Thompson', 0, 'Explanation: The submitted answer names a different person than the one specified as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293837407183631419, 'Q5', 'B - Jane Byrne', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293837407183631419, 'Q6', 'D - Richard J. Daley', 0, 'Explanation: Though both share the surname Daley, Richard M. Daley and Richard J. Daley are two different individuals. They even both served as mayors of Chicago, but they are not the same person.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293837407183631419, 'Q7', 'C - Anton Cermak', 0, 'Explanation: The submitted answer identified a different individual than the correct answer provided, thus it is incorrect.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293837407183631419, 'Q8', 'J - Lori Lightfoot', 1, 'Explanation: The submitted answer correctly identifies the mayor in question.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293837407183631419, 'Q9', 'A - Michael Bilandic', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293837407183631419, 'Q10', 'G - Carter Harrison Sr.', 0, 'Explanation: The submitted answer mentioned a different person (Carter Harrison Sr.) than the correct one (Carter Harrison Jr.), hence it is incorrect.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293837407183631419, 'Q11', 'F - Rahm Emanuel', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293837407183631419, 'Q12', 'H - Carter Harrison Jr.', 0, 'Explanation: The submitted answer, Carter Harrison Jr., is a different person than the correct answer, Anton Cermak.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293837431766380192, 'Q1', 'Metro', 1, 'Explanation: The submitted answer is exactly the same as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293837431766380192, 'Q2', 'Speakeasy', 0, 'Explanation: The submitted answer "Speakeasy" is incorrect because it does not match with the actual name of the venue mentioned in the question, which is "The Hideout".');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293837431766380192, 'Q3', 'Buddy Guy''s', 0, 'Explanation: The submitted answer is incorrect because the original stage production of Grease first appeared in 1971 at the Kingston Mines, not Buddy Guy''s.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293837431766380192, 'Q4', 'Cadillac theater', 0, 'Explanation: The submitted answer, "Cadillac theater," is not correct because the correct answer to the trivia question is "The Auditorium Theater."');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293837431766380192, 'Q5', 'Civic opera house', 0, 'Explanation: The submitted answer, Civic Opera House, is not the same as the correct answer, Thalia Hall.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293837431766380192, 'Q6', 'Mockingbirds', 0, 'Explanation: The submitted answer, "Mockingbirds", does not match with the correct answer "The Empty Bottle," which is a specific venue.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293837431766380192, 'Q7', 'Aragon', 0, 'Explanation: The submitted answer "Aragon" is not correct because the correct answer is "Schuba''s".');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293837431766380192, 'Q8', 'Salt shed', 1, 'Explanation: The submitted answer correctly identifies the establishment, even without the formal designation "The" before "Salt Shed," which does not affect the contents of the answer.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293837431766380192, 'Q9', 'The Coronado', 0, 'Explanation: The submitted answer, "The Coronado", is incorrect because the correct answer is "The Riviera Theater".');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293837431766380192, 'Q10', 'Green mill', 1, 'Explanation: The submitted answer is correct, it''s just a variation in capitalization of the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293840688165547474, 'Q1', 'I - Brandon Johnson', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293840688165547474, 'Q2', 'E - Richard M. Daley', 0, 'Explanation: Despite both being former mayors of Chicago, Richard J. Daley and Richard M. Daley are different individuals.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293840688165547474, 'Q3', 'M - Harold Washington', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293840688165547474, 'Q4', 'G - Carter Harrison Sr.', 1, 'Explanation: The submitted answer is exactly the same as the correct one.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293840688165547474, 'Q5', 'B - Jane Byrne', 1, 'Explanation: The submitted answer is exactly the same as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293840688165547474, 'Q6', 'D - Richard J. Daley', 0, 'Explanation: The submitted answer is incorrect because the answer is Richard M. Daley and not Richard J. Daley.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293840688165547474, 'Q7', 'L - William “Big Bill” Thompson', 0, 'Explanation: The submitted answer names a different person, William "Big Bill" Thompson, rather than the correct answer, William B. Ogden.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293840688165547474, 'Q8', 'J - Lori Lightfoot', 1, 'Explanation: The submitted answer is exactly the same as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293840688165547474, 'Q9', 'A - Michael Bilandic', 1, 'Explanation: The submitted answer is correct as it exactly matches the correct answer provided.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293840688165547474, 'Q10', 'C - Anton Cermak', 0, 'Explanation: The submitted answer names Anton Cermak, who is a different person from Carter Harrison Jr., the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293840688165547474, 'Q11', 'F - Rahm Emanuel', 1, 'Explanation: The submitted answer matches the correct one exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6293840688165547474, 'Q12', 'K - William B. Ogden', 0, 'Explanation: The submitted answer identifies a different individual than the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293845714629574309, 'Q1', 'Dark Night', 0, 'Explanation: Although the name given is similar, it does not accurately reflect the correct title of the film, The Dark Knight.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293845714629574309, 'Q2', 'High Fidelity', 1, 'Explanation: The submitted answer perfectly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293845714629574309, 'Q3', 'Planes, Trains, and Automobiles', 0, 'Explanation: The submitted answer "Planes, Trains, and Automobiles" is a different movie from the correct answer, "The Blues Brothers".');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293845714629574309, 'Q4', 'Oppenheimer', 0, 'Explanation: The correct movie title is "Road to Perdition," not "Oppenheimer," so the submitted answer isn''t correct.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293845714629574309, 'Q5', 'Blues Brothers', 0, 'Explanation: The submitted answer "Blues Brothers" is a completely different movie than the correct answer "Risky Business".');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293845714629574309, 'Q6', 'The Fugitive', 1, 'Explanation: The submitted answer correctly identifies the movie as outlined in the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293845714629574309, 'Q7', 'Untouchables', 1, 'Explanation: The submitted answer implies the same movie even though "The" is missing.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293845714629574309, 'Q8', 'Ferris Bueller’s Day Off', 1, 'Explanation: The submitted answer is essentially identical, with just a minor difference in the spelling which does not affect the meaning or identification of the movie.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293845714629574309, 'Q9', 'Babysitter’s Adventure', 0, 'Explanation: The submitted answer ''Babysitter’s Adventure'' is not the correct title, and while it communicates similar ideas, it''s not close enough to ''Adventures In Babysitting'' to be considered correct.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293845714629574309, 'Q10', 'While You Were Sleeping', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293845714629574309, 'Q11', 'My Best Friend’s Wedding', 1, 'Explanation: The submitted answer is exactly the same as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6293845714629574309, 'Q12', 'Game!', 0, 'Explanation: The submitted answer, "Game!", does not match with the correct answer, "About Last Night", therefore it is incorrect.');
INSERT INTO trivia.scoring_results VALUES ('station2_chicagohistory', 6293845651306618379, 'Q1', '1: Jean Baptiste Point du Sable builds a house and trading post on the Chicago River.
2: The Century of Progress World’s Fair begins a two-year run.
3: The Great Chicago Fire levels the city.
4: The Home Insurance Building, the world’s first skyscraper, is completed at ten stories tall.
5: The Chicago River’s flow is reversed.
6: The SS Eastland capsizes while docked on the Chicago River, killing 844.
7: John Kinzie fatally stabs Jean LeLime and flees Chicago.
8: Hugh Hefner opens the first Playboy Club.
9: Disco Demolition Night at Comiskey Park sees thousands storm the field, blow up disco records, and cancel a Sox game.
10: The Cubs break the Curse of the Billy Goat and win the World Series.', 7, 'Explanation: The player correctly placed 7 events in their chronological order but made a mistake with "The Century of Progress World’s Fair" and "John Kinzie fatally stabs Jean LeLime and flees Chicago".');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293851153465672921, 'Q1', 'Smart Bar', 0, 'Explanation: The submitted answer, "Smart Bar", is not the same as the correct answer, "Metro".');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293851153465672921, 'Q2', 'The Hideout', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293851153465672921, 'Q3', 'Buddy Guys', 0, 'Explanation: The submitted answer is incorrect because the original stage production of Grease first appeared at Kingston Mines, not Buddy Guys.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293851153465672921, 'Q4', 'Auditorium Theater', 1, 'Explanation: The submitted answer is correct as it correctly identifies the theatre, even though it doesn''t include the "The" from the original answer.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293851153465672921, 'Q5', 'Chicago Ooera House', 0, 'Explanation: The submitted answer, "Chicago Opera House", is not the same venue as the correct answer, "Thalia Hall".');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293851153465672921, 'Q6', 'Empty Bottle', 1, 'Explanation: The submitted answer correctly identifies the venue, only missing the article "The", which doesn''t change the essential information.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293851153465672921, 'Q7', 'The Schubas', 1, 'Explanation: The answer provided is essentially correct; the added ''The'' does not fundamentally change the identification and meaning of the venue.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293851153465672921, 'Q8', 'The Salt Shed', 1, 'Explanation: The submitted answer is identical to the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293851153465672921, 'Q9', 'The Riviera', 1, 'Explanation: Despite not including the word "Theater," the submitted answer is referring to the correct venue, so it''s acceptable.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6293851153465672921, 'Q10', 'Green Mill', 1, 'Explanation: The submitted answer is correct as it accurately identifies the venue, only missing the word ''The'' from the beginning which is a minor omission.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293851562826974025, 'Q1', 'Music box', 1, 'Explanation: Although the "Theater" part is missing in the submitted answer, "Music Box" is the crucial part of the name, and so it is still correct.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293851562826974025, 'Q2', 'Goodman theater', 0, 'Explanation: The given answer is incorrect because it names the Goodman Theater, not the Aragon Ballroom.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293851562826974025, 'Q3', 'Superdawgs', 1, 'Explanation: Even though the submitted answer is in plural form, it still accurately identifies the iconic sign in Chicago.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293851562826974025, 'Q4', 'Wrigley field', 1, 'Explanation: The submitted answer correctly identifies the iconic sign as belonging to Wrigley Field, despite the lack of capitalization on the word "field".');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293851562826974025, 'Q5', 'Berghoffs', 1, 'Explanation: The submitted answer correctly names the restaurant, albeit with an additional "s."');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293851562826974025, 'Q6', 'United Center', 1, 'Explanation: The submitted answer matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293851562826974025, 'Q7', 'Steppenwolfe theater', 0, 'Explanation: The submitted answer, Steppenwolfe theater, is different from the correct answer, Pequod''s Pizza.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293851562826974025, 'Q8', 'Wiener circle', 1, 'Explanation: The submitted answer correctly identifies the location, though it doesn''t use the exact capitalization.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293851562826974025, 'Q9', 'Second city', 0, 'Explanation: The submitted answer refers to "Second City," which is a famous improvisational comedy enterprise in Chicago, while the correct answer is "Buddy Guy''s Legends," a notable blues club owned by musician Buddy Guy; they are two distinct entities.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293851562826974025, 'Q10', 'Union station', 0, 'Explanation: The submitted answer, ''Union station'', is incorrect because the correct response is ''Palmer House''.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293851562826974025, 'Q11', 'Chicago theater', 1, 'Explanation: The answer is correct, it''s just not capitalized, but it conveys the same meaning.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293851562826974025, 'Q12', 'Holiday Inn', 0, 'Explanation: The submitted answer is incorrect as the image is from Soldier Field, not Holiday Inn.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293851562826974025, 'Q13', 'Grant park', 0, 'Explanation: The submitted answer, Grant Park, is not the same as the correct answer, Guaranteed Rate Field.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293855518165185333, 'Q1', 'music box', 1, 'Explanation: Although the submitted answer "music box" is not complete, it does reference the correct place which suggests the player knew the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293855518165185333, 'Q2', 'golden nugget', 0, 'Explanation: The submitted answer ''golden nugget'' does not match with the correct answer ''Aragon Ballroom''.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293855518165185333, 'Q3', 'super dog', 0, 'Explanation: While both submitted and correct answer refers to the same famed place, the spelling is distinct and specific, forming the brand name "Superdawg".');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293855518165185333, 'Q4', 'wrigley field marquee', 1, 'Explanation: The submitted answer specifically mentions Wrigley Field, which makes it correct.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293855518165185333, 'Q5', 'berghoff', 1, 'Explanation: Despite not including "The" or "Restaurant", the key identifier "Berghoff" is used in the submitted answer which clearly refers to The Berghoff Restaurant in Chicago.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293855518165185333, 'Q6', 'comedy store', 0, 'Explanation: The submitted answer ''comedy store'' does not match with the correct answer ''United Center''.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293855518165185333, 'Q7', 'cope cabana', 0, 'Explanation: The submitted answer "cope cabana" is not related to the correct answer "Pequod''s Pizza", indicating it is a reference to a different place.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293855518165185333, 'Q8', 'wieners circle', 1, 'Explanation: The submitted answer may lack proper capitalization, but it correctly identifies the location in question.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293855518165185333, 'Q9', 'friendlys', 0, 'Explanation: The submitted answer "friendlys" doesn''t match the correct answer "Buddy Guy''s Legends", indicating two different venues.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293855518165185333, 'Q10', 'used cars', 0, 'Explanation: The submitted answer "used cars" is not equivalent or related to the correct answer "Palmer House."');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293855518165185333, 'Q11', 'chicago theater', 1, 'Explanation: The submitted answer is correct - it recognized the "Chicago Theater" correctly although the capitalization is different.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293855518165185333, 'Q12', 'old navy', 0, 'Explanation: The submitted answer of "old navy" is not correct as the question refers to the iconic sign of ''Soldier Field'' in Chicago.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293855518165185333, 'Q13', 'lane bryant', 0, 'Explanation: The submitted answer "lane bryant" does not match the correct answer "Guaranteed Rate Field," indicating the name of a retail store rather than the iconic sign in Chicago.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293858370358731294, 'Q1', 'Music Box Theatre', 1, 'Explanation: The submitted answer may have a different spelling ("Theatre" instead of "Theater"), but it still refers to the same place; the spelling difference is mainly due to British and American English variations.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293858370358731294, 'Q2', 'Chicago', 0, 'Explanation: The submitted answer is incorrect because it only states the city and not the specific location (Aragon Ballroom) mentioned in the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293858370358731294, 'Q3', 'Superdawg', 1, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293858370358731294, 'Q4', 'Waveland', 0, 'Explanation: The submitted answer, Waveland, is not considered correct because the iconic sign is specifically associated with Wrigley Field.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293858370358731294, 'Q5', 'Berghoff', 1, 'Explanation: The submitted answer might lack a word but it still indicates the correct answer as it is referring to the same location.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293858370358731294, 'Q6', 'United Terminal', 0, 'Explanation: The submitted answer is incorrect because the United Terminal is not the same as the United Center.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293858370358731294, 'Q7', 'Pequod’s', 1, 'Explanation: The submitted answer refers to the same establishment, just without the word "Pizza".');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293858370358731294, 'Q8', 'Cleveland', 0, 'Explanation: The submitted answer ''Cleveland'' is a city, not the name of the iconic sign ''Wiener''s Circle'' in Chicago.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293858370358731294, 'Q9', 'Land’s End', 0, 'Explanation: The submitted answer, "Land''s End," does not match with the correct answer, "Buddy Guy''s Legends."');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293858370358731294, 'Q10', 'Reduce Reuse Recycle', 0, 'Explanation: The submitted answer does not match with the correct answer which is Palmer House.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293858370358731294, 'Q11', 'Chicago Theater', 1, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293858370358731294, 'Q12', 'Steingold’s', 0, 'Explanation: The submitted answer, Steingold''s, is not correct as the iconic sign referenced in the question is from Soldier Field, not Steingold''s.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6293858370358731294, 'Q13', 'Grant Park', 0, 'Explanation: The submitted answer refers to a different location in Chicago, not the Guaranteed Rate Field where the iconic sign is located.');


--
-- TOC entry 3706 (class 0 OID 130760)
-- Dependencies: 213
-- Data for Name: station1_filmedinchicago; Type: TABLE DATA; Schema: trivia; Owner: -
--

INSERT INTO trivia.station1_filmedinchicago VALUES ('2025-07-26 17:25:56', 'The Bons', 'Batman Begins', 'High Fidelity', 'The Blues Brothers', 'Miller’s Crossing', 'Risky Business', 'The Fugitive', 'The Untouchables', 'Ferris Bueller’s Day Off', 'Adventures in Babysitting', 'While You Were Sleeping', 'My Best Friend’s Wedding', 'About Last Night', '2a09:bac3:7899:1800::264:a6', 'https://submit.jotform.com/inbox/6293779566461550002', 'https://submit.jotform.com/edit/6293779566461550002', '', 6293779566461550002);
INSERT INTO trivia.station1_filmedinchicago VALUES ('2025-07-26 18:16:09', 'Bourgeois Burbs', 'The Dark knight', 'High Fidelity', 'Blues brothers', 'Millers crossing', 'Risky business', 'The fugitive', 'Untouchables', 'Ferris Bueller Day off', 'Adventures in Babysitting', 'While you were sleeping', 'Runaway bride', 'About last night', '2600:1008:b17b:5e77:805:77ff:fe6e:7a1f', 'https://submit.jotform.com/inbox/6293809691765404658', 'https://submit.jotform.com/edit/6293809691765404658', '', 6293809691765404658);
INSERT INTO trivia.station1_filmedinchicago VALUES ('2025-07-26 18:36:22', 'Say What?!', 'Dark Knight', 'High Fidelity', 'Blues Brothers', 'Road to Perdition', 'Risky Business', 'The Fugitive', 'The Untouchables', 'Ferris Buller''s Day Off', 'Adventures in Babysitting', 'While You Were Sleeping', 'My Best Friends Wedding', 'About Last Night', '2a09:bac3:5eb3:8c::e:344', 'https://submit.jotform.com/inbox/6293821824435565797', 'https://submit.jotform.com/edit/6293821824435565797', '', 6293821824435565797);
INSERT INTO trivia.station1_filmedinchicago VALUES ('2025-07-26 18:58:41', 'Four-Tucks', 'The Dark Knight', 'High Fidelity', 'Blues Brothers', 'Road to Perdition', 'American Psycho', 'The Fugitive', 'Untouchables', 'Ferris Bueller’s Day Off', 'Adventures in Babysitting', 'While You Were Sleeping', 'My Best Friend’s Wedding', 'About Last Night', '2a09:bac2:6cd5:266e::3d4:64', 'https://submit.jotform.com/inbox/6293835214641293135', 'https://submit.jotform.com/edit/6293835214641293135', '', 6293835214641293135);
INSERT INTO trivia.station1_filmedinchicago VALUES ('2025-07-26 18:59:47', 'Mom Squad', 'the dark knight', 'high fidelity', 'blues brothers', 'road to perdition', 'running scared', 'the fugitive', 'untouchables', 'babys day out', 'adventures in babysitting', 'while you were sleeping', 'my best friends wedding', 'about last night', '2600:387:f:6a1b::8', 'https://submit.jotform.com/inbox/6293835878163720643', 'https://submit.jotform.com/edit/6293835878163720643', '', 6293835878163720643);
INSERT INTO trivia.station1_filmedinchicago VALUES ('2025-07-26 19:16:11', 'Consistently Wrong', 'Dark Night', 'High Fidelity', 'Planes, Trains, and Automobiles', 'Oppenheimer', 'Blues Brothers', 'The Fugitive', 'Untouchables', 'Ferris Bueller’s Day Off', 'Babysitter’s Adventure', 'While You Were Sleeping', 'My Best Friend’s Wedding', 'Game!', '2a09:bac3:789f:1800::264:be', 'https://submit.jotform.com/inbox/6293845714629574309', 'https://submit.jotform.com/edit/6293845714629574309', '', 6293845714629574309);
INSERT INTO trivia.station1_filmedinchicago VALUES ('2025-07-26 18:08:57', 'Yin and Yang', 'Dark Knight', 'High Fidelty', 'Hill street Blues', 'Idk', 'Risky Business', 'Ferris Bueller', 'Untouchable', 'Idk', 'Vice Versa', 'While you were sleeping', 'My Best Friends Wedding', 'Rookie of the Year', '2a09:bac3:789e:1046::19f:b5', 'https://submit.jotform.com/inbox/6293805375912113205', 'https://submit.jotform.com/edit/6293805375912113205', '', 6293805375912113205);


--
-- TOC entry 3707 (class 0 OID 130766)
-- Dependencies: 214
-- Data for Name: station2_chicagohistory; Type: TABLE DATA; Schema: trivia; Owner: -
--

INSERT INTO trivia.station2_chicagohistory VALUES ('2025-07-26 17:27:02', '1: Jean Baptiste Point du Sable builds a house and trading post on the Chicago River.
2: The Great Chicago Fire levels the city.
3: The Home Insurance Building, the world’s first skyscraper, is completed at ten stories tall.
4: John Kinzie fatally stabs Jean LeLime and flees Chicago.
5: The Century of Progress World’s Fair begins a two-year run.
6: The SS Eastland capsizes while docked on the Chicago River, killing 844.
7: Hugh Hefner opens the first Playboy Club.
8: The Chicago River’s flow is reversed.
9: Disco Demolition Night at Comiskey Park sees thousands storm the field, blow up disco records, and cancel a Sox game.
10: The Cubs break the Curse of the Billy Goat and win the World Series.', '2a09:bac3:7899:25a5::3c0:4c', 'https://submit.jotform.com/inbox/6293780224038324150', 'https://submit.jotform.com/edit/6293780224038324150', '', 'Consistently Wrong', 6293780224038324150);
INSERT INTO trivia.station2_chicagohistory VALUES ('2025-07-26 17:29:49', '1: Jean Baptiste Point du Sable builds a house and trading post on the Chicago River.
2: John Kinzie fatally stabs Jean LeLime and flees Chicago.
3: The Great Chicago Fire levels the city.
4: The Chicago River’s flow is reversed.
5: The Home Insurance Building, the world’s first skyscraper, is completed at ten stories tall.
6: The SS Eastland capsizes while docked on the Chicago River, killing 844.
7: The Century of Progress World’s Fair begins a two-year run.
8: Hugh Hefner opens the first Playboy Club.
9: Disco Demolition Night at Comiskey Park sees thousands storm the field, blow up disco records, and cancel a Sox game.
10: The Cubs break the Curse of the Billy Goat and win the World Series.', '2a09:bac2:7899:19cd::292:e2', 'https://submit.jotform.com/inbox/6293781892292479079', 'https://submit.jotform.com/edit/6293781892292479079', '', 'The Bons', 6293781892292479079);
INSERT INTO trivia.station2_chicagohistory VALUES ('2025-07-26 17:49:16', '1: Jean Baptiste Point du Sable builds a house and trading post on the Chicago River.
2: The Great Chicago Fire levels the city.
3: The Century of Progress World’s Fair begins a two-year run.
4: The Chicago River’s flow is reversed.
5: The SS Eastland capsizes while docked on the Chicago River, killing 844.
6: John Kinzie fatally stabs Jean LeLime and flees Chicago.
7: The Home Insurance Building, the world’s first skyscraper, is completed at ten stories tall.
8: Hugh Hefner opens the first Playboy Club.
9: Disco Demolition Night at Comiskey Park sees thousands storm the field, blow up disco records, and cancel a Sox game.
10: The Cubs break the Curse of the Billy Goat and win the World Series.', '2600:387:f:6a13::9', 'https://submit.jotform.com/inbox/6293793569311248719', 'https://submit.jotform.com/edit/6293793569311248719', '', 'The Miller’s', 6293793569311248719);
INSERT INTO trivia.station2_chicagohistory VALUES ('2025-07-26 17:55:23', '1: Jean Baptiste Point du Sable builds a house and trading post on the Chicago River.
2: The Great Chicago Fire levels the city.
3: The SS Eastland capsizes while docked on the Chicago River, killing 844.
4: The Home Insurance Building, the world’s first skyscraper, is completed at ten stories tall.
5: The Century of Progress World’s Fair begins a two-year run.
6: The Chicago River’s flow is reversed.
7: John Kinzie fatally stabs Jean LeLime and flees Chicago.
8: Disco Demolition Night at Comiskey Park sees thousands storm the field, blow up disco records, and cancel a Sox game.
9: Hugh Hefner opens the first Playboy Club.
10: The Cubs break the Curse of the Billy Goat and win the World Series.', '2600:387:f:7619::a', 'https://submit.jotform.com/inbox/6293797239163333219', 'https://submit.jotform.com/edit/6293797239163333219', '', 'Four-Tucks', 6293797239163333219);
INSERT INTO trivia.station2_chicagohistory VALUES ('2025-07-26 18:17:16', '1: Jean Baptiste Point du Sable builds a house and trading post on the Chicago River.
2: The Great Chicago Fire levels the city.
3: The SS Eastland capsizes while docked on the Chicago River, killing 844.
4: John Kinzie fatally stabs Jean LeLime and flees Chicago.
5: The Home Insurance Building, the world’s first skyscraper, is completed at ten stories tall.
6: The Century of Progress World’s Fair begins a two-year run.
7: Hugh Hefner opens the first Playboy Club.
8: The Chicago River’s flow is reversed.
9: Disco Demolition Night at Comiskey Park sees thousands storm the field, blow up disco records, and cancel a Sox game.
10: The Cubs break the Curse of the Billy Goat and win the World Series.', '2a09:bac3:7899:19cd::292:ee', 'https://submit.jotform.com/inbox/6293810362924984732', 'https://submit.jotform.com/edit/6293810362924984732', '', 'Yin and Yang', 6293810362924984732);
INSERT INTO trivia.station2_chicagohistory VALUES ('2025-07-26 18:23:52', '1: Jean Baptiste Point du Sable builds a house and trading post on the Chicago River.
2: The Century of Progress World’s Fair begins a two-year run.
3: The SS Eastland capsizes while docked on the Chicago River, killing 844.
4: The Great Chicago Fire levels the city.
5: The Chicago River’s flow is reversed.
6: The Home Insurance Building, the world’s first skyscraper, is completed at ten stories tall.
7: John Kinzie fatally stabs Jean LeLime and flees Chicago.
8: Hugh Hefner opens the first Playboy Club.
9: Disco Demolition Night at Comiskey Park sees thousands storm the field, blow up disco records, and cancel a Sox game.
10: The Cubs break the Curse of the Billy Goat and win the World Series.', '2600:1008:b17b:5e77:805:77ff:fe6e:7a1f', 'https://submit.jotform.com/inbox/6293814321762050602', 'https://submit.jotform.com/edit/6293814321762050602', '', 'Bourgeois Burbs', 6293814321762050602);
INSERT INTO trivia.station2_chicagohistory VALUES ('2025-07-26 18:38:36', '1: The Cubs break the Curse of the Billy Goat and win the World Series.
2: Disco Demolition Night at Comiskey Park sees thousands storm the field, blow up disco records, and cancel a Sox game.
3: Hugh Hefner opens the first Playboy Club.
4: The SS Eastland capsizes while docked on the Chicago River, killing 844.
5: The Century of Progress World’s Fair begins a two-year run.
6: The Chicago River’s flow is reversed.
7: The Home Insurance Building, the world’s first skyscraper, is completed at ten stories tall.
8: John Kinzie fatally stabs Jean LeLime and flees Chicago.
9: The Great Chicago Fire levels the city.
10: Jean Baptiste Point du Sable builds a house and trading post on the Chicago River.', '89.187.183.119', 'https://submit.jotform.com/inbox/6293823169116177157', 'https://submit.jotform.com/edit/6293823169116177157', '', 'Preston', 6293823169116177157);
INSERT INTO trivia.station2_chicagohistory VALUES ('2025-07-26 18:47:42', '1: The Home Insurance Building, the world’s first skyscraper, is completed at ten stories tall.
2: Jean Baptiste Point du Sable builds a house and trading post on the Chicago River.
3: John Kinzie fatally stabs Jean LeLime and flees Chicago.
4: The Great Chicago Fire levels the city.
5: The Century of Progress World’s Fair begins a two-year run.
6: The SS Eastland capsizes while docked on the Chicago River, killing 844.
7: The Chicago River’s flow is reversed.
8: Hugh Hefner opens the first Playboy Club.
9: Disco Demolition Night at Comiskey Park sees thousands storm the field, blow up disco records, and cancel a Sox game.
10: The Cubs break the Curse of the Billy Goat and win the World Series.', '2a09:bac2:789d:25a5::3c0:3d', 'https://submit.jotform.com/inbox/6293828623037657688', 'https://submit.jotform.com/edit/6293828623037657688', '', 'Potato', 6293828623037657688);
INSERT INTO trivia.station2_chicagohistory VALUES ('2025-07-26 19:16:05', '1: Jean Baptiste Point du Sable builds a house and trading post on the Chicago River.
2: The Century of Progress World’s Fair begins a two-year run.
3: The Great Chicago Fire levels the city.
4: The Home Insurance Building, the world’s first skyscraper, is completed at ten stories tall.
5: The Chicago River’s flow is reversed.
6: The SS Eastland capsizes while docked on the Chicago River, killing 844.
7: John Kinzie fatally stabs Jean LeLime and flees Chicago.
8: Hugh Hefner opens the first Playboy Club.
9: Disco Demolition Night at Comiskey Park sees thousands storm the field, blow up disco records, and cancel a Sox game.
10: The Cubs break the Curse of the Billy Goat and win the World Series.', '2a02:26f7:b057:4000:e800::31', 'https://submit.jotform.com/inbox/6293845651306618379', 'https://submit.jotform.com/edit/6293845651306618379', '', 'Say What?!', 6293845651306618379);


--
-- TOC entry 3708 (class 0 OID 130772)
-- Dependencies: 215
-- Data for Name: station3_damare; Type: TABLE DATA; Schema: trivia; Owner: -
--

INSERT INTO trivia.station3_damare VALUES ('2025-07-26 17:10:59', 'The Bons', 'I - Brandon Johnson', 'E - Richard M. Daley', 'M - Harold Washington', 'K - William B. Ogden', 'B - Jane Byrne', 'D - Richard J. Daley', 'L - William “Big Bill” Thompson', 'J - Lori Lightfoot', 'A - Michael Bilandic', 'H - Carter Harrison Jr.', 'F - Rahm Emanuel', 'C - Anton Cermak', '2a09:bac3:7899:1800::264:a6', 'https://submit.jotform.com/inbox/6293770596465310261', 'https://submit.jotform.com/edit/6293770596465310261', '', 6293770596465310261);
INSERT INTO trivia.station3_damare VALUES ('2025-07-26 17:24:55', 'The Miller’s', 'I - Brandon Johnson', 'D - Richard J. Daley', 'M - Harold Washington', 'G - Carter Harrison Sr.', 'B - Jane Byrne', 'E - Richard M. Daley', 'K - William B. Ogden', 'J - Lori Lightfoot', 'A - Michael Bilandic', 'H - Carter Harrison Jr.', 'F - Rahm Emanuel', 'C - Anton Cermak', '2600:387:f:6a13::9', 'https://submit.jotform.com/inbox/6293778959318508989', 'https://submit.jotform.com/edit/6293778959318508989', '', 6293778959318508989);
INSERT INTO trivia.station3_damare VALUES ('2025-07-26 17:39:44', 'Consistently Wrong', 'I - Brandon Johnson', 'E - Richard M. Daley', 'M - Harold Washington', 'G - Carter Harrison Sr.', 'B - Jane Byrne', 'D - Richard J. Daley', 'K - William B. Ogden', 'J - Lori Lightfoot', 'A - Michael Bilandic', 'H - Carter Harrison Jr.', 'F - Rahm Emanuel', 'C - Anton Cermak', '2a09:bac3:7899:8c::e:315', 'https://submit.jotform.com/inbox/6293787845139261717', 'https://submit.jotform.com/edit/6293787845139261717', '', 6293787845139261717);
INSERT INTO trivia.station3_damare VALUES ('2025-07-26 18:17:26', 'Say What?!', 'I - Brandon Johnson', 'E - Richard M. Daley', 'M - Harold Washington', 'K - William B. Ogden', 'B - Jane Byrne', 'D - Richard J. Daley', 'L - William “Big Bill” Thompson', 'J - Lori Lightfoot', 'A - Michael Bilandic', 'C - Anton Cermak', 'F - Rahm Emanuel', 'H - Carter Harrison Jr.', '2a09:bac2:cc72:1cd2::2df:10f', 'https://submit.jotform.com/inbox/6293810460126177247', 'https://submit.jotform.com/edit/6293810460126177247', '', 6293810460126177247);
INSERT INTO trivia.station3_damare VALUES ('2025-07-26 18:22:22', 'Yin and Yang', 'I - Brandon Johnson', 'E - Richard M. Daley', 'M - Harold Washington', 'G - Carter Harrison Sr.', 'B - Jane Byrne', 'D - Richard J. Daley', 'L - William “Big Bill” Thompson', 'J - Lori Lightfoot', 'A - Michael Bilandic', 'H - Carter Harrison Jr.', 'F - Rahm Emanuel', 'C - Anton Cermak', '2a09:bac3:789c:8c::e:298', 'https://submit.jotform.com/inbox/6293813428926349496', 'https://submit.jotform.com/edit/6293813428926349496', '', 6293813428926349496);
INSERT INTO trivia.station3_damare VALUES ('2025-07-26 18:54:10', 'Four-Tucks', 'I - Brandon Johnson', 'D - Richard J. Daley', 'M - Harold Washington', 'G - Carter Harrison Sr.', 'B - Jane Byrne', 'E - Richard M. Daley', 'K - William B. Ogden', 'J - Lori Lightfoot', 'A - Michael Bilandic', 'C - Anton Cermak', 'F - Rahm Emanuel', 'L - William “Big Bill” Thompson', '2600:387:f:7617::7', 'https://submit.jotform.com/inbox/6293832507719452652', 'https://submit.jotform.com/edit/6293832507719452652', '', 6293832507719452652);
INSERT INTO trivia.station3_damare VALUES ('2025-07-26 19:00:38', 'Preston', 'I - Brandon Johnson', 'D - Richard J. Daley', 'M - Harold Washington', 'A - Michael Bilandic', 'B - Jane Byrne', 'E - Richard M. Daley', 'K - William B. Ogden', 'J - Lori Lightfoot', 'H - Carter Harrison Jr.', 'C - Anton Cermak', 'F - Rahm Emanuel', 'L - William “Big Bill” Thompson', '2600:387:f:7c17::b', 'https://submit.jotform.com/inbox/6293836387172221386', 'https://submit.jotform.com/edit/6293836387172221386', '', 6293836387172221386);
INSERT INTO trivia.station3_damare VALUES ('2025-07-26 19:02:20', 'Potato', 'I - Brandon Johnson', 'E - Richard M. Daley', 'M - Harold Washington', 'L - William “Big Bill” Thompson', 'B - Jane Byrne', 'D - Richard J. Daley', 'C - Anton Cermak', 'J - Lori Lightfoot', 'A - Michael Bilandic', 'G - Carter Harrison Sr.', 'F - Rahm Emanuel', 'H - Carter Harrison Jr.', '2a09:bac2:7898:f9b::18e:17c', 'https://submit.jotform.com/inbox/6293837407183631419', 'https://submit.jotform.com/edit/6293837407183631419', '', 6293837407183631419);
INSERT INTO trivia.station3_damare VALUES ('2025-07-26 19:07:48', 'Mom Squad', 'I - Brandon Johnson', 'E - Richard M. Daley', 'M - Harold Washington', 'G - Carter Harrison Sr.', 'B - Jane Byrne', 'D - Richard J. Daley', 'L - William “Big Bill” Thompson', 'J - Lori Lightfoot', 'A - Michael Bilandic', 'C - Anton Cermak', 'F - Rahm Emanuel', 'K - William B. Ogden', '2600:387:f:6a1b::8', 'https://submit.jotform.com/inbox/6293840688165547474', 'https://submit.jotform.com/edit/6293840688165547474', '', 6293840688165547474);
INSERT INTO trivia.station3_damare VALUES ('2025-07-26 18:16:39', 'Bourgeois Burbs', 'I - Brandon Johnson', 'E - Richard M. Daley', 'M - Harold Washington', 'H - Carter Harrison Jr.', 'B - Jane Byrne', 'D - Richard J. Daley', 'G - Carter Harrison Sr.', 'J - Lori Lightfoot', 'H - Carter Harrison Jr.', 'C - Anton Cermak', 'F - Rahm Emanuel', 'K - William B. Ogden', '2600:1008:b215:1f56:12a:45cb:760:282f', 'https://submit.jotform.com/inbox/6293809992822672308', 'https://submit.jotform.com/edit/6293809992822672308', '', 6293809992822672308);


--
-- TOC entry 3709 (class 0 OID 130778)
-- Dependencies: 216
-- Data for Name: station4_signs; Type: TABLE DATA; Schema: trivia; Owner: -
--

INSERT INTO trivia.station4_signs VALUES ('2025-07-26 17:36:17', 'The Bons', 'Music Box', 'Goodman Theatre', 'Superdawg', 'The Weiner Circle', 'The Berghoff', 'Ed Debevic’s', 'Pequod’s', 'The Weiner Circle', 'Fender Guitars', 'Original Pancake House', 'Chicago Theater', 'Soldier Field', 'Grant Park', '2a09:bac3:789e:1cd2::2df:b', 'https://submit.jotform.com/inbox/6293785772214680741', 'https://submit.jotform.com/edit/6293785772214680741', '', 6293785772214680741);
INSERT INTO trivia.station4_signs VALUES ('2025-07-26 17:51:16', 'Potato', 'Musicbox', 'Aragon', 'Supersawg', 'Wrigleyfield', 'Bergoff', 'United Center', 'Pequods', 'Weiner Circle', 'Buddy Guys Legends', 'Littlefuse', 'Chicago Theater', 'Goldblatts', 'Grant Park', '2a09:bac2:789a:1800::264:7b', 'https://submit.jotform.com/inbox/6293794767469158789', 'https://submit.jotform.com/edit/6293794767469158789', '', 6293794767469158789);
INSERT INTO trivia.station4_signs VALUES ('2025-07-26 18:36:32', 'Four-Tucks', 'Music Box', 'Aragon', 'Superdawg', 'Wriggly Field', 'Bergoff', 'United Center', 'Peninsula', 'Weiner circle', 'Buddy guys legends', 'The muse theatre', 'Chicago theatre', 'Old town school of folk music', 'Grant park', '2600:387:f:7619::a', 'https://submit.jotform.com/inbox/6293821929165905557', 'https://submit.jotform.com/edit/6293821929165905557', '', 6293821929165905557);
INSERT INTO trivia.station4_signs VALUES ('2025-07-26 18:39:50', 'Yin and Yang', 'Music Box', 'Amphitheater', 'Super Dawgs', 'Wrigley Field marquee', 'Berghoff', 'Ed Debevics', 'Pequods', 'Wiener Circles', 'Buddy Guy Legends', 'White Palace', 'Chicago Theater', 'Goldblatts', 'Lawry’s', '2a09:bac2:789b:25a5::3c0:5f', 'https://submit.jotform.com/inbox/6293823905031827276', 'https://submit.jotform.com/edit/6293823905031827276', '', 6293823905031827276);
INSERT INTO trivia.station4_signs VALUES ('2025-07-26 19:32:31', 'Mom Squad', 'music box', 'golden nugget', 'super dog', 'wrigley field marquee', 'berghoff', 'comedy store', 'cope cabana', 'wieners circle', 'friendlys', 'used cars', 'chicago theater', 'old navy', 'lane bryant', '2600:387:f:6a1b::8', 'https://submit.jotform.com/inbox/6293855518165185333', 'https://submit.jotform.com/edit/6293855518165185333', '', 6293855518165185333);
INSERT INTO trivia.station4_signs VALUES ('2025-07-26 19:37:17', 'Consistently Wrong', 'Music Box Theatre', 'Chicago', 'Superdawg', 'Waveland', 'Berghoff', 'United Terminal', 'Pequod’s', 'Cleveland', 'Land’s End', 'Reduce Reuse Recycle', 'Chicago Theater', 'Steingold’s', 'Grant Park', '2a09:bac3:789b:25a5::3c0:b', 'https://submit.jotform.com/inbox/6293858370358731294', 'https://submit.jotform.com/edit/6293858370358731294', '', 6293858370358731294);
INSERT INTO trivia.station4_signs VALUES ('2025-07-26 17:44:25', 'Say What?!', 'Music Box Theater', 'Chicago Theater', 'Super Dawg', 'Wrigley Field', 'Berghoff', 'Ed Debevics', 'Peaquods', 'Weiner Circle', 'Salt Shed', 'Original Pancake House', 'Chicago Theater', 'Goldblatts', '?', '2a09:bac3:a048:f91::18d:d2', 'https://submit.jotform.com/inbox/6293790652813767330', 'https://submit.jotform.com/edit/6293790652813767330', '', 6293790652813767330);
INSERT INTO trivia.station4_signs VALUES ('2025-07-26 19:25:56', 'Bourgeois Burbs', 'Music box', 'Goodman theater', 'Superdawgs', 'Wrigley field', 'Berghoffs', 'United Center', 'Steppenwolfe theater', 'Wiener circle', 'Second city', 'Union station', 'Chicago theater', 'Holiday Inn', 'Grant park', '2600:1008:b215:1f56:12a:45cb:760:282f', 'https://submit.jotform.com/inbox/6293851562826974025', 'https://submit.jotform.com/edit/6293851562826974025', '', 6293851562826974025);


--
-- TOC entry 3710 (class 0 OID 130784)
-- Dependencies: 217
-- Data for Name: station5_oddsandends; Type: TABLE DATA; Schema: trivia; Owner: -
--

INSERT INTO trivia.station5_oddsandends VALUES ('2025-07-26 17:46:08', 'The Bons', 'Riverside Park', 'Vienna', 'Leonard Chess', 'Standard Oil Building', 'Barack Obama', 'Live at the Palace', '13 mph', '2a09:bac2:7898:19cd::292:e7', 'https://submit.jotform.com/inbox/6293791687295524088', 'https://submit.jotform.com/edit/6293791687295524088', '', 6293791687295524088);
INSERT INTO trivia.station5_oddsandends VALUES ('2025-07-26 17:59:14', 'Consistently Wrong', 'Green Mill', 'Frankfurt', 'Walt Disney', 'Carbide and Carbon', 'Rahm Emanuel', 'The Casmir', '34 mph', '2a09:bac3:789e:f9b::18e:18f', 'https://submit.jotform.com/inbox/6293799548184639246', 'https://submit.jotform.com/edit/6293799548184639246', '', 6293799548184639246);
INSERT INTO trivia.station5_oddsandends VALUES ('2025-07-26 18:30:40', 'Yin and Yang', 'The Riverside', 'Austria', 'WGN', 'Standard Oil  Building', 'Obama', 'Chicago', '19 mph', '2a09:bac3:7898:19cd::292:57', 'https://submit.jotform.com/inbox/6293818407526989783', 'https://submit.jotform.com/edit/6293818407526989783', '', 6293818407526989783);
INSERT INTO trivia.station5_oddsandends VALUES ('2025-07-26 18:44:35', 'Four-Tucks', 'Riverview', 'Vienna', 'Frank Lloyd wright', 'Carbon and carbide', 'Barack Obama', 'The Vic', '26 mph', '2600:387:f:7617::7', 'https://submit.jotform.com/inbox/6293826757712473664', 'https://submit.jotform.com/edit/6293826757712473664', '', 6293826757712473664);
INSERT INTO trivia.station5_oddsandends VALUES ('2025-07-26 18:24:03', 'Say What?!', 'Riverside', 'Vienna', 'Chess', 'Standard Oil Building', 'Barack Obama', 'Paradise', '13 mph', '2a09:bac3:964c:1046::19f:e7', 'https://submit.jotform.com/inbox/6293814437915036587', 'https://submit.jotform.com/edit/6293814437915036587', '', 6293814437915036587);
INSERT INTO trivia.station5_oddsandends VALUES ('2025-07-26 18:31:30', 'Bourgeois Burbs', 'The Riverside', 'Vienna', 'Weinsteins', 'Aon center/amoco building', 'Obama', 'Paradise Theater', '26 mph', '2600:1008:b215:1f56:12a:45cb:760:282f', 'https://submit.jotform.com/inbox/6293818902824153728', 'https://submit.jotform.com/edit/6293818902824153728', '', 6293818902824153728);


--
-- TOC entry 3711 (class 0 OID 130790)
-- Dependencies: 218
-- Data for Name: station6_musicvenues; Type: TABLE DATA; Schema: trivia; Owner: -
--

INSERT INTO trivia.station6_musicvenues VALUES ('2025-07-26 17:46:35', 'The Bons', 'Underground wonder bar', 'Cabaret Metro', 'Checkers', 'The auditorium theater', 'Thalia hall', 'Elbow room', 'Schubas', 'Salt shed', 'The Riviera', 'The green mill', '2a09:bac2:7898:19cd::292:e7', 'https://submit.jotform.com/inbox/6293791957291843842', 'https://submit.jotform.com/edit/6293791957291843842', '', 6293791957291843842);
INSERT INTO trivia.station6_musicvenues VALUES ('2025-07-26 17:53:37', 'Preston', '??', 'Double door', '??', 'Vic', 'Thalia', '??', 'Schubas', 'Salt shed', 'Riviera', 'Green mill', '89.187.183.82', 'https://submit.jotform.com/inbox/6293796172834265351', 'https://submit.jotform.com/edit/6293796172834265351', '', 6293796172834265351);
INSERT INTO trivia.station6_musicvenues VALUES ('2025-07-26 17:58:19', 'Preston', 'Metro', 'Lottie’s pub', 'Biograph theater', 'The auditorium', 'Thalia hall', 'Chicago theater', 'Schuba’s', 'Salt shed', 'The Riviera', 'Green mill', '2600:387:f:7c17::b', 'https://submit.jotform.com/inbox/6293798997173942316', 'https://submit.jotform.com/edit/6293798997173942316', '', 6293798997173942316);
INSERT INTO trivia.station6_musicvenues VALUES ('2025-07-26 18:00:37', 'Potato', 'Metro', 'Lottie’s Pub', 'House of Blues', 'Logan Theater', 'Lincoln Hall', 'Salt Shed', 'House of Blues', 'Salt Shed', 'Riviera', 'Green Mill', '2a09:bac3:789a:8c::e:2d2', 'https://submit.jotform.com/inbox/6293800372286213146', 'https://submit.jotform.com/edit/6293800372286213146', '', 6293800372286213146);
INSERT INTO trivia.station6_musicvenues VALUES ('2025-07-26 18:08:59', 'Four-Tucks', 'The elbow room', 'Biograph theatre', 'House of blues', 'Chicago theatre', 'Chicago theatre', 'Goodman theatre', 'Scubas', 'Morton salt shed', 'Aragon', 'Green mill', '2600:387:f:7617::7', 'https://submit.jotform.com/inbox/6293805397719068110', 'https://submit.jotform.com/edit/6293805397719068110', '', 6293805397719068110);
INSERT INTO trivia.station6_musicvenues VALUES ('2025-07-26 18:10:38', 'Say What?!', 'Smart Bar', '?', 'Kingston Mines', 'Auditorium Theater', 'Lyric Opera House', 'Empty Bottle', 'Schubas', 'Salt Shed', 'Congress Theater', 'Green Mill', '2a09:bac2:5eb7:f9b::18e:136', 'https://submit.jotform.com/inbox/6293806386317861440', 'https://submit.jotform.com/edit/6293806386317861440', '', 6293806386317861440);
INSERT INTO trivia.station6_musicvenues VALUES ('2025-07-26 19:02:23', 'Bourgeois Burbs', 'Metro', 'Speakeasy', 'Buddy Guy''s', 'Cadillac theater', 'Civic opera house', 'Mockingbirds', 'Aragon', 'Salt shed', 'The Coronado', 'Green mill', '2600:1008:b17b:5e77:805:77ff:fe6e:7a1f', 'https://submit.jotform.com/inbox/6293837431766380192', 'https://submit.jotform.com/edit/6293837431766380192', '', 6293837431766380192);
INSERT INTO trivia.station6_musicvenues VALUES ('2025-07-26 19:25:15', 'Yin and Yang', 'Smart Bar', 'The Hideout', 'Buddy Guys', 'Auditorium Theater', 'Chicago Ooera House', 'Empty Bottle', 'The Schubas', 'The Salt Shed', 'The Riviera', 'Green Mill', '2a09:bac3:7898:1800::264:3f', 'https://submit.jotform.com/inbox/6293851153465672921', 'https://submit.jotform.com/edit/6293851153465672921', '', 6293851153465672921);


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
-- TOC entry 3557 (class 1259 OID 130765)
-- Name: station1_filmedinchicago_submission_id_idx; Type: INDEX; Schema: trivia; Owner: -
--

CREATE UNIQUE INDEX station1_filmedinchicago_submission_id_idx ON trivia.station1_filmedinchicago USING btree ("Submission ID");


--
-- TOC entry 3558 (class 1259 OID 130797)
-- Name: station1_filmedinchicago_submission_id_pk_idx; Type: INDEX; Schema: trivia; Owner: -
--

CREATE UNIQUE INDEX station1_filmedinchicago_submission_id_pk_idx ON trivia.station1_filmedinchicago USING btree ("Submission ID");


--
-- TOC entry 3559 (class 1259 OID 130771)
-- Name: station2_chicagohistory_submission_id_idx; Type: INDEX; Schema: trivia; Owner: -
--

CREATE UNIQUE INDEX station2_chicagohistory_submission_id_idx ON trivia.station2_chicagohistory USING btree ("Submission ID");


--
-- TOC entry 3560 (class 1259 OID 130777)
-- Name: station3_damare_submission_id_idx; Type: INDEX; Schema: trivia; Owner: -
--

CREATE UNIQUE INDEX station3_damare_submission_id_idx ON trivia.station3_damare USING btree ("Submission ID");


--
-- TOC entry 3561 (class 1259 OID 130783)
-- Name: station4_signs_submission_id_idx; Type: INDEX; Schema: trivia; Owner: -
--

CREATE UNIQUE INDEX station4_signs_submission_id_idx ON trivia.station4_signs USING btree ("Submission ID");


--
-- TOC entry 3562 (class 1259 OID 130789)
-- Name: station5_oddsandends_submission_id_idx; Type: INDEX; Schema: trivia; Owner: -
--

CREATE UNIQUE INDEX station5_oddsandends_submission_id_idx ON trivia.station5_oddsandends USING btree ("Submission ID");


--
-- TOC entry 3563 (class 1259 OID 130795)
-- Name: station6_musicvenues_submission_id_idx; Type: INDEX; Schema: trivia; Owner: -
--

CREATE UNIQUE INDEX station6_musicvenues_submission_id_idx ON trivia.station6_musicvenues USING btree ("Submission ID");


-- Completed on 2025-07-28 09:09:12 CDT

--
-- PostgreSQL database dump complete
--

