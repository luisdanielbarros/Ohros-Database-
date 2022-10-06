-- Meaning of Table Pre-fixes:
-- u -> User & Project Table Group
-- s -> Story Table Group
-- wbc -> World Building Concept (WBC) Table Group
-- a -> Arguments Table Group
-- r -> Relational Table Group
-- User & Project Table Group
INSERT INTO
    u_users (Username, Userpass, Email, Confirmed)
VALUES
    ('John Doe', 'johndoe', 'johndoe@gmail.com', 1),
    ('Jane Doe', 'janedoe', 'janedoe@gmail.com', 1),
    ('Joe Doakes', 'joedoakes', 'joedoakes@gmail.com', 1);

INSERT INTO
    u_projects (Projname, Projpass)
VALUES
    ('Lifelane', 'Open');

INSERT INTO
    u_projwhitelists (Id_User, Id_Project, Id_ProjectRole)
VALUES
    (1, 1, 3),
    (2, 1, 2),
    (3, 1, 1);

-- Story Table Group
INSERT INTO
    s_timelines (Id_Project, Title, Description)
VALUES
    (1, 'Main Timeline', 'No description yet.');

INSERT INTO
    s_arcs (Id_Timeline, Title, Description, Realtime, Screentime)
VALUES
    (1, 'The Calling', 'No description yet.', 1, 1),
    (1, 'Eyes to Hear, Ears to See', 'No description yet.', 2, 2),
    (1, 'Speak w/ Knuckles & Teeth', 'No description yet.', 3, 3),
    (1, 'The Tragic End', 'No description yet.', 4, 4),
    (1, 'Gifted', 'No description yet.', 5, 5),
    (1, 'The Gods that Walked', 'No description yet.', 6, 6),
    (1, 'A Lesser Evil', 'No description yet.', 7, 7),
    (1, 'Into the Wilderness', 'No description yet.', 7, 7);
INSERT INTO
    s_acts (Id_Arc, Title, Description, Realtime, Screentime)
VALUES
    (1, 'Introduction', 'Introducing the audience to the main predicament.', 1, 1),
    (1, 'The Face of Evil', 'The moment the hero first faces evil and, unable to ignore it, chooses to step into the hellmouth.', 2, 2),
    (1, 'Survival', 'Development of the main goal of surviving in an post-apocalyptic world.', 3, 3),
    (1, 'Pairs', 'Acceptance of the basic fact that allies and human relationships are necessary for survival in a pure anarchy.', 4, 4),
    (1, 'The Calling', 'A mysterious voice is broadcasted everywhere at once setting up a meeting place at a specific time, it promises to rescue everyone it finds "back to the normal world".', 5, 5),
    (1, 'Argumentation', 'Heated arguments discussing whether to trust the broadcast or if it\'s just the most obvious ambush in history.', 5, 5),
    (1, 'Call to Action', 'MC and Marie choose to go for it with a small group of spur-of-the-moment allies.', 6, 6),
    (1, 'Obstacles in the city', 'Group attempts to avoid obstacles and faces dangers in the form of delinquents, criminals and monsters.', 7, 7),
    (1, 'Strange Metro Station', 'Group board a train at a strange metro station submersed in a other-wordly atmosphere.', 8, 8),
    (1, 'Train Ride', 'Group faces more dangers now in the form of "magic" as well, seeing a "magic-user" in action.', 9, 9),
    (1, 'Promised Place', 'The broadcaster was honest, but the meeting was still ambushed anyways.', 10, 10),
    (1, 'Wake Up (Again)', 'MC wakes up in his bedroom, he was saved. When he blinks his eyes he\'s back in the "dangerous side". This time with a bounty on his head. Everyone he met before wants him dead.', 11, 11),

    (2, 'Example Act', 'No description yet.', 1, 1),

    (3, 'Example Act', 'No description yet.', 1, 1),

    (4, 'Everyone Dies Someday', 'No description yet.', 1, 1),
    (4, 'All-in', 'No description yet.', 2, 2),
    (4, 'Was your existence meaningful?', 'No description yet.', 3, 3),
    (4, 'Merchant of Death', 'No description yet.', 4, 4),
    (4, 'Second Thoughts', 'No description yet.', 4, 4),
    (4, 'Omnimous Dream', 'No description yet.', 5, 5),
    (4, 'The End', 'No description yet.', 6, 6),

    (5, 'Ominous Dream', 'No description yet.', 1, 1),
    (5, 'A Pact of Blood for Blood', 'No description yet.', 2, 2),
    (5, 'The Baredevil', 'No description yet.', 3, 3),
    (5, 'Let\'s Hunt the Dead', 'No description yet.', 4, 4),
    (5, 'Life Finds a Way', 'No description yet.', 3, 3),
    (5, 'Hope', 'No description yet.', 4, 4),
    (5, 'Preparations & Sacrifices', 'No description yet.', 5, 5),
    (5, 'Ancient Scriptures', 'No description yet.', 6, 6),
    (5, 'The Gods that Walked', 'No description yet.', 7, 7),
    (5, 'A Forgotten Place', 'No description yet.', 8, 8),
    (5, 'Want to Fight Me?', 'No description yet.', 9, 9),
    (5, 'Forgotten Memories', 'No description yet.', 10, 10);

INSERT INTO
    s_actions (Id_Act, Title, Description, Realtime, Screentime)
VALUES
    (1, 'Introduction to calm, modern, urban life', 'No description yet.', 1, 1),
    (1, 'Weird questionnaire', 'No description yet.', 2, 2),
    (1, 'MC wakes up', 'No description yet.', 3, 3),
    (1, 'MC comments on the strange landscape', 'No description yet.', 4, 4),
    (1, 'MC walks through', 'No description yet.', 5, 5),
    (1, 'MC watches odd news on a billboard', 'No description yet.', 6, 6),
	
    (2, 'Example action', 'No description yet.', 1, 1),

    (3, 'Example action', 'No description yet.', 1, 1),

    (7, 'A sort of \"promise\" is the theme of a dubious conversation', 'No description yet.', 1, 1),
    (7, 'Shelter is ambushed', 'No description yet.', 2, 2),
    (8, 'MC boards the last train', 'No description yet.', 1, 1),
    (8, 'MC encounters Chika', 'Wasn\'t it Nietzsche who said morals were for the weak? Your life or mine.', 2, 2),
    (8, 'MC fights Chika', 'No description yet.', 3, 3),
    (8, 'Sensory disintegration', 'No description yet.', 4, 4),
    (8, 'MC returns \"home\"', 'No description yet.', 4, 4),
    (9, 'MC is ambushed', 'No description yet.', 1, 1),
    (9, 'MC\'s \"death\"', 'No description yet.', 2, 2),
    (10, 'Merchan of Death\'s Hunt for Puppets', 'No description yet.', 1, 1),
    (11, 'Chika has second thoughts', 'To be preyed or to hunt.', 1, 1),
	(12, 'Omnimous dream', 'No description yet.', 1, 1),
    (13, 'Destruction and death', 'No description yet.', 2, 2),
	
    (22, 'MC has an omnimous dream', 'No description yet.', 1, 1),
    (23, 'MC wakes up', 'No description yet.', 1, 1),
    (23, 'MC is offered a deal', 'No description yet.', 2, 2),
    (23, 'MC reluctantly accepts it', 'No description yet.', 3, 3),
    (23, 'Upon adversity MC refuses to follow the deal\'s rules', 'No description yet.', 5, 5),
    (23, 'MC & Chika fight shortly, earning each other\'s respect by punching and kicking', 'A', 6, 6),
    (23, 'MC and Chika decide to meet half-way by forming a soul pact', 'No description yet.', 7, 7),
    (25, 'MC sees Chika tending to animals and plants', 'No description yet.', 7, 7),
    (25, 'MC learns Chika tends to manipulate people to get what she wants', 'No description yet.', 7, 7),
    (30, 'MC sees Chika committing what seems to be cold-blooded murder to a person', 'No description yet.', 7, 7),
    (30, 'MC finds Chika talking to herself yet again like some crazy person, this time the conversation being particularly strange', 'No description yet.', 7, 7),
    (31, 'MC sees Chika\'s been hiding some strange power. This hiding having put them in danger', 'No description yet.', 7, 7),
    (31, 'MC learns of Chika\'s noble heritage', 'No description yet.', 7, 7),
    (31, 'MC learns Chika\'s real status as an orphan, and learns of Threaders', 'No description yet.', 7, 7),
    (32, 'MC & Chika fight yet again, this time understanding the unbridgable psychological gap in between.', 'No description yet.', 1, 1);

-- Bookmark Table Group
INSERT INTO
    b_bookmarks (Id_Project, Title, Description)
VALUES
    (1, 'MC & Chika\'s Important Interactions', 'No description yet.');

INSERT INTO
    r_actions_bookmarks (Id_Action, Id_Bookmark)
VALUES
    (12, 1),
    (19, 1),
    (27, 1),
    (29, 1),
    (30, 1),
    (31, 1),
    (32, 1),
    (33, 1),
    (34, 1),
    (35, 1),
    (36, 1);
	
-- World Building (WB) Table Group
-- -- Characters
-- -- -- Samuel Len
INSERT INTO wb_bases (Id_Project, Id_Type, Concept, ReasonOfConcept, Title, Summary, Description, Cause, Purpose, Myth)
VALUES (1, 1, 'Concept', 'ReasonOfConcept', 'Samuel Len', 'Summary', 'No description yet.', 'Cause', 'Purpose', 'Myth');
INSERT INTO wb_characters(Id_Base, JungModel, OCEANModel, Ego, Complexes, Persona, Anima, Shadow, Self, PsychicQuirks, PhysicQuirks)
VALUES (1, '50;50;50;50;50;', '50;50;50;50;50;', 'Ego', 'Complexes', 'Persona', 'Anima', 'Shadow', 'Self', 'PsychicQuirks', 'PhysicQuirks');

-- -- -- Marie Walsh
INSERT INTO wb_bases (Id_Project, Id_Type, Concept, ReasonOfConcept, Title, Summary, Description, Cause, Purpose, Myth)
VALUES (1, 1, 'Concept', 'ReasonOfConcept', 'Marie Walsh', 'Summary', 'No description yet.', 'Cause', 'Purpose', 'Myth');
INSERT INTO wb_characters(Id_Base, JungModel, OCEANModel, Ego, Complexes, Persona, Anima, Shadow, Self, PsychicQuirks, PhysicQuirks)
VALUES (2, '50;50;50;50;50;', '50;50;50;50;50;', 'Ego', 'Complexes', 'Persona', 'Anima', 'Shadow', 'Self', 'PsychicQuirks', 'PhysicQuirks');

-- -- -- Joshua Ja
INSERT INTO wb_bases (Id_Project, Id_Type, Concept, ReasonOfConcept, Title, Summary, Description, Cause, Purpose, Myth)
VALUES (1, 1, 'Concept', 'ReasonOfConcept', 'Joshua Ja', 'Summary', 'No description yet.', 'Cause', 'Purpose', 'Myth');
INSERT INTO wb_characters(Id_Base, JungModel, OCEANModel, Ego, Complexes, Persona, Anima, Shadow, Self, PsychicQuirks, PhysicQuirks)
VALUES (3, '50;50;50;50;50;', '50;50;50;50;50;', 'Ego', 'Complexes', 'Persona', 'Anima', 'Shadow', 'Self', 'PsychicQuirks', 'PhysicQuirks');

-- -- -- Chika Sunson
INSERT INTO wb_bases (Id_Project, Id_Type, Concept, ReasonOfConcept, Title, Summary, Description, Cause, Purpose, Myth)
VALUES (1, 1, 'Concept', 'ReasonOfConcept', 'Chika Sunson', 'Summary', 'No description yet.', 'Cause', 'Purpose', 'Myth');
INSERT INTO wb_characters(Id_Base, JungModel, OCEANModel, Ego, Complexes, Persona, Anima, Shadow, Self, PsychicQuirks, PhysicQuirks)
VALUES (4, '50;50;50;50;50;', '50;50;50;50;50;', 'Ego', 'Complexes', 'Persona', 'Anima', 'Shadow', 'Self', 'PsychicQuirks', 'PhysicQuirks');

-- -- -- Isabella Aella
INSERT INTO wb_bases (Id_Project, Id_Type, Concept, ReasonOfConcept, Title, Summary, Description, Cause, Purpose, Myth)
VALUES (1, 1, 'Concept', 'ReasonOfConcept', 'Isabella Aella', 'Summary', 'No description yet.', 'Cause', 'Purpose', 'Myth');
INSERT INTO wb_characters(Id_Base, JungModel, OCEANModel, Ego, Complexes, Persona, Anima, Shadow, Self, PsychicQuirks, PhysicQuirks)
VALUES (5, '50;50;50;50;50;', '50;50;50;50;50;', 'Ego', 'Complexes', 'Persona', 'Anima', 'Shadow', 'Self', 'PsychicQuirks', 'PhysicQuirks');

-- -- -- A A
INSERT INTO wb_bases (Id_Project, Id_Type, Concept, ReasonOfConcept, Title, Summary, Description, Cause, Purpose, Myth)
VALUES (1, 1, 'Concept', 'ReasonOfConcept', 'A A', 'Summary', 'No description yet.', 'Cause', 'Purpose', 'Myth');
INSERT INTO wb_characters(Id_Base, JungModel, OCEANModel, Ego, Complexes, Persona, Anima, Shadow, Self, PsychicQuirks, PhysicQuirks)
VALUES (6, '50;50;50;50;50;', '50;50;50;50;50;', 'Ego', 'Complexes', 'Persona', 'Anima', 'Shadow', 'Self', 'PsychicQuirks', 'PhysicQuirks');

-- -- -- Alice
INSERT INTO wb_bases (Id_Project, Id_Type, Concept, ReasonOfConcept, Title, Summary, Description, Cause, Purpose, Myth)
VALUES (1, 1, 'Concept', 'ReasonOfConcept', 'Alice', 'Summary', 'No description yet.', 'Cause', 'Purpose', 'Myth');
INSERT INTO wb_characters(Id_Base, JungModel, OCEANModel, Ego, Complexes, Persona, Anima, Shadow, Self, PsychicQuirks, PhysicQuirks)
VALUES (7, '50;50;50;50;50;', '50;50;50;50;50;', 'Ego', 'Complexes', 'Persona', 'Anima', 'Shadow', 'Self', 'PsychicQuirks', 'PhysicQuirks');

-- -- -- Alice's Brother
INSERT INTO wb_bases (Id_Project, Id_Type, Concept, ReasonOfConcept, Title, Summary, Description, Cause, Purpose, Myth)
VALUES (1, 1, 'Concept', 'ReasonOfConcept', 'Alices Brother', 'Summary', 'No description yet.', 'Cause', 'Purpose', 'Myth');
INSERT INTO wb_characters(Id_Base, JungModel, OCEANModel, Ego, Complexes, Persona, Anima, Shadow, Self, PsychicQuirks, PhysicQuirks)
VALUES (8, '50;50;50;50;50;', '50;50;50;50;50;', 'Ego', 'Complexes', 'Persona', 'Anima', 'Shadow', 'Self', 'PsychicQuirks', 'PhysicQuirks');

-- -- -- Anima Mundi
INSERT INTO wb_bases (Id_Project, Id_Type, Concept, ReasonOfConcept, Title, Summary, Description, Cause, Purpose, Myth)
VALUES (1, 1, 'Concept', 'ReasonOfConcept', 'Anima Mundi', 'Summary', 'No description yet.', 'Cause', 'Purpose', 'Myth');
INSERT INTO wb_characters(Id_Base, JungModel, OCEANModel, Ego, Complexes, Persona, Anima, Shadow, Self, PsychicQuirks, PhysicQuirks)
VALUES (9, '50;50;50;50;50;', '50;50;50;50;50;', 'Ego', 'Complexes', 'Persona', 'Anima', 'Shadow', 'Self', 'PsychicQuirks', 'PhysicQuirks');

-- -- -- Merchant of Death
INSERT INTO wb_bases (Id_Project, Id_Type, Concept, ReasonOfConcept, Title, Summary, Description, Cause, Purpose, Myth)
VALUES (1, 1, 'Concept', 'ReasonOfConcept', 'Merchant of Death', 'Summary', 'No description yet.', 'Cause', 'Purpose', 'Myth');
INSERT INTO wb_characters(Id_Base, JungModel, OCEANModel, Ego, Complexes, Persona, Anima, Shadow, Self, PsychicQuirks, PhysicQuirks)
VALUES (10, '50;50;50;50;50;', '50;50;50;50;50;', 'Ego', 'Complexes', 'Persona', 'Anima', 'Shadow', 'Self', 'PsychicQuirks', 'PhysicQuirks');

-- -- -- Merchant of Death
INSERT INTO wb_bases (Id_Project, Id_Type, Concept, ReasonOfConcept, Title, Summary, Description, Cause, Purpose, Myth)
VALUES (1, 1, 'Concept', 'ReasonOfConcept', 'Merchant of Death', 'Summary', 'No description yet.', 'Cause', 'Purpose', 'Myth');
INSERT INTO wb_characters(Id_Base, JungModel, OCEANModel, Ego, Complexes, Persona, Anima, Shadow, Self, PsychicQuirks, PhysicQuirks)
VALUES (11, '50;50;50;50;50;', '50;50;50;50;50;', 'Ego', 'Complexes', 'Persona', 'Anima', 'Shadow', 'Self', 'PsychicQuirks', 'PhysicQuirks');

-- -- Locations
-- -- -- City, Deadend
INSERT INTO wb_bases (Id_Project, Id_Type, Concept, ReasonOfConcept, Title, Summary, Description, Cause, Purpose, Myth)
VALUES (1, 2, 'Concept', 'ReasonOfConcept', 'City, Deadend', 'Summary', 'No description yet.', 'Cause', 'Purpose', 'Myth');
INSERT INTO wb_locations(Id_Base)
VALUES (5);

-- -- -- City, Main Plaza
INSERT INTO wb_bases (Id_Project, Id_Type, Concept, ReasonOfConcept, Title, Summary, Description, Cause, Purpose, Myth)
VALUES (1, 2, 'Concept', 'ReasonOfConcept', 'City, Main Plaza', 'Summary', 'No description yet.', 'Cause', 'Purpose', 'Myth');
INSERT INTO wb_locations(Id_Base)
VALUES (6);

-- -- Objects
-- -- -- Odd Metal Junk
INSERT INTO wb_bases (Id_Project, Id_Type, Concept, ReasonOfConcept, Title, Summary, Description, Cause, Purpose, Myth)
VALUES (1, 3, 'Concept', 'ReasonOfConcept', 'Odd Metal Junk', 'Summary', 'No description yet.', 'Cause', 'Purpose', 'Myth');
INSERT INTO wb_objects(Id_Base)
VALUES (7);

-- -- Metaphysics
-- -- -- Surname Sunson
INSERT INTO wb_bases (Id_Project, Id_Type, Concept, ReasonOfConcept, Title, Summary, Description, Cause, Purpose, Myth)
VALUES (1, 4, 'Concept', 'ReasonOfConcept', 'Surname Sunson', 'Summary', 'No description yet.', 'Cause', 'Purpose', 'Myth');
INSERT INTO wb_metaphysics(Id_Base)
VALUES (8);