--
-- PostgreSQL database dump
--

-- Dumped from database version 14.18
-- Dumped by pg_dump version 16.6 (Homebrew)




--
-- TOC entry 5408 (class 0 OID 0)
-- Dependencies: 26
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 1230 (class 1259 OID 123527)
-- Name: question_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE trivia.question_metadata (
    station text NOT NULL,
    question text NOT NULL,
    question_text text,
    correct_answer text
);


--
-- TOC entry 1231 (class 1259 OID 123546)
-- Name: scoring_results; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE trivia.scoring_results (
    station text NOT NULL,
    submission_id bigint NOT NULL,
    question text NOT NULL,
    answer text,
    score boolean,
    explanation text
);


--
-- TOC entry 1232 (class 1259 OID 645812)
-- Name: station1_filmedinchicago; Type: TABLE; Schema: public; Owner: -
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
-- TOC entry 1233 (class 1259 OID 645818)
-- Name: station2_chicagohistory; Type: TABLE; Schema: public; Owner: -
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
-- TOC entry 1234 (class 1259 OID 645824)
-- Name: station3_damare; Type: TABLE; Schema: public; Owner: -
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
-- TOC entry 1235 (class 1259 OID 645830)
-- Name: station4_signs; Type: TABLE; Schema: public; Owner: -
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
-- TOC entry 1236 (class 1259 OID 645836)
-- Name: station5_oddsandends; Type: TABLE; Schema: public; Owner: -
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
-- TOC entry 1237 (class 1259 OID 645842)
-- Name: station6_musicvenues; Type: TABLE; Schema: public; Owner: -
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
-- TOC entry 5395 (class 0 OID 123527)
-- Dependencies: 1230
-- Data for Name: question_metadata; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO trivia.question_metadata VALUES ('station5_oddsandends', 'Q1', 'Originally opened as Sharpshooters Park, this venue claimed up to 16 lives before it eventually closed in 1967', 'Riverview Park');
INSERT INTO trivia.question_metadata VALUES ('station5_oddsandends', 'Q2', 'Vienna Beef founders Emil Reichel and Sam Ladany originally hailed from this European city.', 'Vienna');
INSERT INTO trivia.question_metadata VALUES ('station5_oddsandends', 'Q3', 'Born on the second floor of a home on Tripp Street in Hermosa, he later founded a successful studio with his brother.', 'Walt Disney');
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q5', 'Who is this mayor?', 'B - Jane Byrne');
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q6', 'Who is this mayor?', 'E - Richard M. Daley');
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q7', 'Who is this mayor?', 'K - William B. Ogden');
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q8', 'Who is this mayor?', 'J - Lori Lightfoot');
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q9', 'Who is this mayor?', 'A - Michael Bilandic');
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q10', 'Who is this mayor?', 'H - Carter Harrison Jr.');
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q11', 'Who is this mayor?', 'F - Rahm Emanuel');
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q12', 'Who is this mayor?', 'C - Anton Cermak');
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q1', 'Who is this mayor?', 'I - Brandon Johnson');
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q2', 'Who is this mayor?', 'D - Richard J. Daley');
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q3', 'Who is this mayor?', 'M - Harold Washington');
INSERT INTO trivia.question_metadata VALUES ('station3_damare', 'Q4', 'Who is this mayor?', 'G - Carter Harrison Sr.');
INSERT INTO trivia.question_metadata VALUES ('station5_oddsandends', 'Q4', 'On Christmas Day in 1973, a 350 pound slab of Carrera marble popped off this building, setting off an $80 million replacement project finally completed in 1992', 'Standard Oil Building, also accept Amoco Building or Aon Center');
INSERT INTO trivia.question_metadata VALUES ('station5_oddsandends', 'Q5', 'He lost a 2000 U.S. House primary to former Black Panther Bobby Rush by a 2-to-1 margin and never ran for the House again. ', 'Barack Obama');
INSERT INTO trivia.question_metadata VALUES ('station5_oddsandends', 'Q6', 'This West Garfield Park movie palace on Crawford Ave (later Pulaski Rd) was demolished in 1958, about 20 years before it inspired a hit album.', 'Paradise Theater');
INSERT INTO trivia.question_metadata VALUES ('station5_oddsandends', 'Q7', 'According to a 2020 study by the American Ornithological Society, what is the airspeed of an unladen piping plover?', '26 mph');
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q2', 'What movie is this scene from?', 'High Fidelity');
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q3', 'What movie is this scene from?', 'The Blues Brothers');
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q4', 'What movie is this scene from?', 'Road to Perdition');
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q5', 'What movie is this scene from?', 'Risky Business');
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q6', 'What movie is this scene from?', 'The Fugitive');
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q7', 'What movie is this scene from?', 'The Untouchables');
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q8', 'What movie is this scene from?', 'Ferris Beuller''s Day Off');
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q9', 'What movie is this scene from?', 'Adventures In Babysitting');
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q10', 'What movie is this scene from?', 'While You Were Sleeping');
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q11', 'What movie is this scene from?', 'My Best Friend''s Wedding');
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q12', 'What movie is this scene from?', 'About Last Night');
INSERT INTO trivia.question_metadata VALUES ('station1_filmedinchicago', 'Q1', 'What movie is this scene from?', 'The Dark Knight');
INSERT INTO trivia.question_metadata VALUES ('station2_chicagohistory', 'Q1', 'Chicago events in historical order', '1: Jean Baptiste Point du Sable builds a house and trading post on the Chicago River.
2: John Kinzie fatally stabs Jean LeLime and flees Chicago.
3: The Great Chicago Fire levels the city.
4: The Home Insurance Building, the world’s first skyscraper, is completed at ten stories tall.
5: The Chicago River’s flow is reversed.
6: The SS Eastland capsizes while docked on the Chicago River, killing 844.
7: The Century of Progress World’s Fair begins a two-year run.
8: Hugh Hefner opens the first Playboy Club.
9: Disco Demolition Night at Comiskey Park sees thousands storm the field, blow up disco records, and cancel a Sox game.
10: The Cubs break the Curse of the Billy Goat and win the World Series.');
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q1', 'Which iconic sign in Chicago is this image from?', 'Music Box Theater');
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q2', 'Which iconic sign in Chicago is this image from?', 'Aragon Ballroom');
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q3', 'Which iconic sign in Chicago is this image from?', 'Superdawg');
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q4', 'Which iconic sign in Chicago is this image from?', 'Wrigley Field');
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q5', 'Which iconic sign in Chicago is this image from?', 'The Berghoff Restaurant');
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q6', 'Which iconic sign in Chicago is this image from?', 'United Center');
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q7', 'Which iconic sign in Chicago is this image from?', 'Pequod''s Pizza');
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q8', 'Which iconic sign in Chicago is this image from?', 'Wiener''s Circle');
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q9', 'Which iconic sign in Chicago is this image from?', 'Buddy Guy''s Legends');
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q10', 'Which iconic sign in Chicago is this image from?', 'Palmer House');
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q11', 'Which iconic sign in Chicago is this image from?', 'Chicago Theater');
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q12', 'Which iconic sign in Chicago is this image from?', 'Solider Field');
INSERT INTO trivia.question_metadata VALUES ('station4_signs', 'Q13', 'Which iconic sign in Chicago is this image from?', 'Guaranteed Rate Field');
INSERT INTO trivia.question_metadata VALUES ('station6_musicvenues', 'Q1', 'REM played the first show at this urban underground venue when it opened in 1982', 'Metro');
INSERT INTO trivia.question_metadata VALUES ('station6_musicvenues', 'Q2', 'After prohibition ended, this tucked away venue opened (legally) in 1934 as a tavern – obviously without a sign
', 'The Hideout');
INSERT INTO trivia.question_metadata VALUES ('station6_musicvenues', 'Q3', 'The original stage production of Grease first appeared in 1971 at this popular blues nightclub.', 'Kingston Mines');
INSERT INTO trivia.question_metadata VALUES ('station6_musicvenues', 'Q4', 'After falling into bankruptcy, the stage of this massive Adler & Sullivan theatre was converted into a bowling alley for a period of time during WWII', 'The Auditorium Theater');
INSERT INTO trivia.question_metadata VALUES ('station6_musicvenues', 'Q5', 'During 2013 renovations of this venue inspired by the Prague Opera House, owners brought in a psychic when bones were found beneath the floorboards', 'Thalia Hall');
INSERT INTO trivia.question_metadata VALUES ('station6_musicvenues', 'Q6', 'Patrons and staff likely poured one out in 2009 when this venue lost "Radley", its beloved house cat of nearly 20 years', 'The Empty Bottle');
INSERT INTO trivia.question_metadata VALUES ('station6_musicvenues', 'Q7', 'This music venue first opened in 1903 as a Schlitz tied house, one of 57 built – and only 10 remaining – across Chicago, before being bought in 1989 by brothers Chris and Mike', 'Schuba''s');
INSERT INTO trivia.question_metadata VALUES ('station6_musicvenues', 'Q8', 'Developers poured over $50 million into this former warehouse and opened both an indoor and an outdoor concert space, each operated seasonally ', 'The Salt Shed');
INSERT INTO trivia.question_metadata VALUES ('station6_musicvenues', 'Q9', 'This French Renaissance-style movie palace, not to be confused with a coastal resort, eventually began hosting concerts 80 years after it opened in 1917.', 'The Riviera Theater');
INSERT INTO trivia.question_metadata VALUES ('station6_musicvenues', 'Q10', 'This venue opened in 1915 and was named as an homage to Paris’s Moulin Rouge, and originally included the venue’s appropriately colored eponymous feature on the rooftop', 'The Green Mill');


--
-- TOC entry 5396 (class 0 OID 123546)
-- Dependencies: 1231
-- Data for Name: scoring_results; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6285129775025128790, 'Q1', 'dark knight', true, 'Explanation: The submitted answer correctly identifies the film, despite not including "The" from the title.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6285129775025128790, 'Q2', 'high infidelity', false, 'Explanation: Despite the similarity in spelling and phrasing, "High Fidelity" and "High Infidelity" are distinct titles, so the answer is incorrect.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6285129775025128790, 'Q3', 'blues brothers', true, 'Explanation: The submitted answer is correct as it mentions the correct movie, albeit without the capitalization on the title.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6285129775025128790, 'Q4', 'road to predition', false, 'Explanation: Although the submitted answer is phonetically similar, it is not the correct spelling of the movie title "Road to Perdition".');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6285129775025128790, 'Q5', 'risky business', true, 'Explanation: The submitted answer is the same as the correct answer, it just lacks the capitalization.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6285129775025128790, 'Q6', 'fugitive', true, 'Explanation: Despite the absence of the article "The" in the submitted answer, it still accurately identifies the film, so it must be counted as correct.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6285129775025128790, 'Q7', 'untouchables', true, 'Explanation: Although the submitted answer lacks capitalization, it essentially refers to the same movie, hence it is correct.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6285129775025128790, 'Q8', 'ferris beullers day off', true, 'Explanation: Despite minor spelling errors, the submitted answer unmistakably refers to the correct movie, Ferris Bueller''s Day Off.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6285129775025128790, 'Q9', 'adventures in babysitting', true, 'Explanation: The submitted answer is correct as it matches the correct answer exactly (ignoring capitalization, which is not significant here).');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6285129775025128790, 'Q10', 'while you were sleeping', true, 'Explanation: The submitted answer correctly identifies the film, despite not using capitalized letters.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6285129775025128790, 'Q11', 'my best friends wedding', true, 'Explanation: Even though the apostrophe is missing in the submitted answer, the main words are the same as the correct answer and it does not affect understanding.');
INSERT INTO trivia.scoring_results VALUES ('station1_filmedinchicago', 6285129775025128790, 'Q12', 'about last nite', true, 'Explanation: Despite the slight difference in spelling, the submitted answer clearly refers to the same movie.');
INSERT INTO trivia.scoring_results VALUES ('station2_chicagohistory', 6285133155026967242, 'Q1', '1: Jean Baptiste Point du Sable builds a house and trading post on the Chicago River.
2: John Kinzie fatally stabs Jean LeLime and flees Chicago.
3: The Great Chicago Fire levels the city.
4: The Home Insurance Building, the world’s first skyscraper, is completed at ten stories tall.
5: The Chicago River’s flow is reversed.
6: The SS Eastland capsizes while docked on the Chicago River, killing 844.
7: Hugh Hefner opens the first Playboy Club.
8: The Century of Progress World’s Fair begins a two-year run.
9: Disco Demolition Night at Comiskey Park sees thousands storm the field, blow up disco records, and cancel a Sox game.
10: The Cubs break the Curse of the Billy Goat and win the World Series.', false, 'Explanation: The submitted answer incorrectly switched the order of events 7 and 8.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6285134655024636746, 'Q1', 'I - Brandon Johnson', true, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6285134655024636746, 'Q2', 'D - Richard J. Daley', true, 'Explanation: The submitted answer correctly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6285134655024636746, 'Q3', 'M - Harold Washington', true, 'Explanation: The submitted answer is exactly the same as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6285134655024636746, 'Q4', 'G - Carter Harrison Sr.', true, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6285134655024636746, 'Q5', 'B - Jane Byrne', true, 'Explanation: The submitted answer matches the correct answer exactly.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6285134655024636746, 'Q6', 'E - Richard M. Daley', true, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6285134655024636746, 'Q7', 'K - William B. Ogden', true, 'Explanation: The submitted answer is exactly the same as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6285134655024636746, 'Q8', 'J - Lori Lightfoot', true, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6285134655024636746, 'Q9', 'A - Michael Bilandic', true, 'Explanation: The submitted answer correctly identified the mayor as Michael Bilandic.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6285134655024636746, 'Q10', 'H - Carter Harrison Jr.', true, 'Explanation: The submitted answer is exactly the same as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6285134655024636746, 'Q11', 'F - Rahm Emanuel', true, 'Explanation: The submitted answer is the exact same as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station3_damare', 6285134655024636746, 'Q12', 'C - Anton Cermak', true, 'Explanation: The submitted answer is an exact match to the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6285136275021770352, 'Q1', 'music box', true, 'Explanation: The submitted answer "music box" is correct as it captures the essential part of the correct answer, "Music Box Theater".');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6285136275021770352, 'Q2', 'aragon', true, 'Explanation: The submitted answer, while not complete, does reference the key part of the correct answer, which is "Aragon".');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6285136275021770352, 'Q3', 'superdog', false, 'Explanation: Though phonetically similar, the original name of the iconic sign is "Superdawg," not "superdog".');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6285136275021770352, 'Q4', 'wrigley', true, 'Explanation: The submitted answer, even though it is not completely detailed, adequately refers to the correct answer, Wrigley Field.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6285136275021770352, 'Q5', 'berghoff', true, 'Explanation: The submitted answer is correct as it refers to the same iconic sign in Chicago albeit without formal title specifications.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6285136275021770352, 'Q6', 'united center', true, 'Explanation: The submitted answer correctly identifies the sign, despite the lack of capitalization.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6285136275021770352, 'Q7', 'pequods', true, 'Explanation: The submitted answer is correct; it just lacks the apostrophe and the word "Pizza" does not affect the correctness of the response as the main brand name is present.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6285136275021770352, 'Q8', 'weiner circle', true, 'Explanation: Despite the minor spelling error, the submitted answer is clearly referring to the same location as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6285136275021770352, 'Q9', 'legends', true, 'Explanation: The submitted answer is shorter but it contains the unique key word from the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6285136275021770352, 'Q10', 'palmer house', true, 'Explanation: Despite the lack of capitalization, the submitted answer correctly identifies the "Palmer House."');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6285136275021770352, 'Q11', 'chicago theater', true, 'Explanation: The submitted answer is correct as it accurately identifies the iconic sign in Chicago.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6285136275021770352, 'Q12', 'soldier field', true, 'Explanation: Despite a minor spelling mistake, the submitted answer helps us understand that the respondent intended to put Solider Field, Chicago.');
INSERT INTO trivia.scoring_results VALUES ('station4_signs', 6285136275021770352, 'Q13', 'guaranteed rate', true, 'Explanation: Although the answer does not include the word "Field", it does identify the core part of the location, which is "Guaranteed Rate". Thus, it can be accepted.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6285138285022899637, 'Q1', 'riverview', true, 'Explanation: The submitted answer correctly identifies the venue, despite not including ''Park'' at the end.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6285138285022899637, 'Q2', 'veinna', true, 'Explanation: Despite the minor spelling error, it is clear that the submitted answer is referring to the same city as the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6285138285022899637, 'Q3', 'disney', true, 'Explanation: While not specifying Walt, "Disney" still refers to the correct entity involved in founding the studio.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6285138285022899637, 'Q4', 'aon center', true, 'Explanation: The submitted answer is correct as the Aon Center is one of the acceptable responses to the question.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6285138285022899637, 'Q5', 'obama', true, 'Explanation: The submitted answer is correct as it accurately identifies Barack Obama, albeit without his full name.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6285138285022899637, 'Q6', 'paradise theater', true, 'Explanation: The submitted answer is the same as the correct answer just with different capitalization, which does not change the meaning or identify of the answer.');
INSERT INTO trivia.scoring_results VALUES ('station5_oddsandends', 6285138285022899637, 'Q7', '26 mph', true, 'Explanation: The submitted answer exactly matches the correct answer.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6285139905022202470, 'Q1', 'metro', true, 'Explanation: The submitted answer is correct as it matches the correct answer, only the capitalization is different, which is negligible in this context.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6285139905022202470, 'Q2', 'hideout', true, 'Explanation: The submitted answer correctly identifies the venue described in the question, and while it does not include the article "The", the essence of the answer remains the same.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6285139905022202470, 'Q3', 'kingston mines', true, 'Explanation: The submitted answer is correct as it precisely matches the correct answer, though it lacks capitalization.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6285139905022202470, 'Q4', 'auditorium', true, 'Explanation: The submitted answer correctly identifies the location of the theater, despite lacking the full name.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6285139905022202470, 'Q5', 'thalia hall', true, 'Explanation: The submission is the exact match of the correct answer, just in lowercase.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6285139905022202470, 'Q6', 'empty bottle', true, 'Explanation: The submitted answer is the same as the correct answer just without the leading article "The".');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6285139905022202470, 'Q7', 'schubas', true, 'Explanation: The submitted answer is correct as it refers to the same music venue, although the initial letter is not capitalized.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6285139905022202470, 'Q8', 'salt shed', true, 'Explanation: The submitted answer is correct but doesn''t apply proper capitalization, which is acceptable in this scenario.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6285139905022202470, 'Q9', 'riviera', true, 'Explanation: The submitted answer may not include the full name ("The Riviera Theater"), but it is clear that they are referencing the same location.');
INSERT INTO trivia.scoring_results VALUES ('station6_musicvenues', 6285139905022202470, 'Q10', 'green mill', true, 'Explanation: Although the submitted answer does not include "The" before "green mill", it is basically the same as the correct answer without it.');


--
-- TOC entry 5397 (class 0 OID 645812)
-- Dependencies: 1232
-- Data for Name: station1_filmedinchicago; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO trivia.station1_filmedinchicago VALUES ('2025-07-16 17:09:37', 'Monkey', 'dark knight', 'high infidelity', 'blues brothers', 'road to predition', 'risky business', 'fugitive', 'untouchables', 'ferris beullers day off', 'adventures in babysitting', 'while you were sleeping', 'my best friends wedding', 'about last nite', '108.206.192.205', 'https://www.jotform.com/inbox/6285129775025128790', 'https://www.jotform.com/edit/6285129775025128790', '', 6285129775025128790);


--
-- TOC entry 5398 (class 0 OID 645818)
-- Dependencies: 1233
-- Data for Name: station2_chicagohistory; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO trivia.station2_chicagohistory VALUES ('2025-07-16 17:15:15', '1: Jean Baptiste Point du Sable builds a house and trading post on the Chicago River.
2: John Kinzie fatally stabs Jean LeLime and flees Chicago.
3: The Great Chicago Fire levels the city.
4: The Home Insurance Building, the world’s first skyscraper, is completed at ten stories tall.
5: The Chicago River’s flow is reversed.
6: The SS Eastland capsizes while docked on the Chicago River, killing 844.
7: Hugh Hefner opens the first Playboy Club.
8: The Century of Progress World’s Fair begins a two-year run.
9: Disco Demolition Night at Comiskey Park sees thousands storm the field, blow up disco records, and cancel a Sox game.
10: The Cubs break the Curse of the Billy Goat and win the World Series.', '108.206.192.205', 'https://submit.jotform.com/inbox/6285133155026967242', 'https://submit.jotform.com/edit/6285133155026967242', '', 'Monkey', 6285133155026967242);


--
-- TOC entry 5399 (class 0 OID 645824)
-- Dependencies: 1234
-- Data for Name: station3_damare; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO trivia.station3_damare VALUES ('2025-07-16 17:17:45', 'Monkey', 'I - Brandon Johnson', 'D - Richard J. Daley', 'M - Harold Washington', 'G - Carter Harrison Sr.', 'B - Jane Byrne', 'E - Richard M. Daley', 'K - William B. Ogden', 'J - Lori Lightfoot', 'A - Michael Bilandic', 'H - Carter Harrison Jr.', 'F - Rahm Emanuel', 'C - Anton Cermak', '108.206.192.205', 'https://submit.jotform.com/inbox/6285134655024636746', 'https://submit.jotform.com/edit/6285134655024636746', '', 6285134655024636746);


--
-- TOC entry 5400 (class 0 OID 645830)
-- Dependencies: 1235
-- Data for Name: station4_signs; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO trivia.station4_signs VALUES ('2025-07-16 17:20:27', 'Monkey', 'music box', 'aragon', 'superdog', 'wrigley', 'berghoff', 'united center', 'pequods', 'weiner circle', 'legends', 'palmer house', 'chicago theater', 'soldier field', 'guaranteed rate', '108.206.192.205', 'https://submit.jotform.com/inbox/6285136275021770352', 'https://submit.jotform.com/edit/6285136275021770352', '', 6285136275021770352);


--
-- TOC entry 5401 (class 0 OID 645836)
-- Dependencies: 1236
-- Data for Name: station5_oddsandends; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO trivia.station5_oddsandends VALUES ('2025-07-16 17:23:48', 'Monkey', 'riverview', 'veinna', 'disney', 'aon center', 'obama', 'paradise theater', '26 mph', '108.206.192.205', 'https://submit.jotform.com/inbox/6285138285022899637', 'https://submit.jotform.com/edit/6285138285022899637', '', 6285138285022899637);


--
-- TOC entry 5402 (class 0 OID 645842)
-- Dependencies: 1237
-- Data for Name: station6_musicvenues; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO trivia.station6_musicvenues VALUES ('2025-07-16 17:26:30', 'Monkey', 'metro', 'hideout', 'kingston mines', 'auditorium', 'thalia hall', 'empty bottle', 'schubas', 'salt shed', 'riviera', 'green mill', '108.206.192.205', 'https://submit.jotform.com/inbox/6285139905022202470', 'https://submit.jotform.com/edit/6285139905022202470', '', 6285139905022202470);


--
-- TOC entry 5247 (class 2606 OID 123533)
-- Name: question_metadata question_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY trivia.question_metadata
    ADD CONSTRAINT question_metadata_pkey PRIMARY KEY (station, question);


--
-- TOC entry 5249 (class 2606 OID 123552)
-- Name: scoring_results scoring_results_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY trivia.scoring_results
    ADD CONSTRAINT scoring_results_pkey PRIMARY KEY (station, submission_id, question);


--
-- TOC entry 5250 (class 1259 OID 645817)
-- Name: station1_filmedinchicago_submission_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX station1_filmedinchicago_submission_id_idx ON trivia.station1_filmedinchicago USING btree ("Submission ID");


--
-- TOC entry 5251 (class 1259 OID 645823)
-- Name: station2_chicagohistory_submission_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX station2_chicagohistory_submission_id_idx ON trivia.station2_chicagohistory USING btree ("Submission ID");


--
-- TOC entry 5252 (class 1259 OID 645829)
-- Name: station3_damare_submission_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX station3_damare_submission_id_idx ON trivia.station3_damare USING btree ("Submission ID");


--
-- TOC entry 5253 (class 1259 OID 645835)
-- Name: station4_signs_submission_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX station4_signs_submission_id_idx ON trivia.station4_signs USING btree ("Submission ID");


--
-- TOC entry 5254 (class 1259 OID 645841)
-- Name: station5_oddsandends_submission_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX station5_oddsandends_submission_id_idx ON trivia.station5_oddsandends USING btree ("Submission ID");


--
-- TOC entry 5255 (class 1259 OID 645847)
-- Name: station6_musicvenues_submission_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX station6_musicvenues_submission_id_idx ON trivia.station6_musicvenues USING btree ("Submission ID");


-- Completed on 2025-07-21 09:58:45 CDT

--
-- PostgreSQL database dump complete
--

