DROP DATABASE IF EXISTS ohros;

CREATE DATABASE ohros;

-- Meaning of Table Pre-fixes:
-- u -> User & Project Table Group
-- s -> Story Table Group
-- wb -> World Building Concept (wb) Table Group
-- a -> Arguments Table Group
-- r -> Relational Table Group
-- User & Project Table Group
CREATE TABLE u_users(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(24) NOT NULL UNIQUE,
    Userpass VARCHAR(128) NOT NULL,
    Email VARCHAR(256) NOT NULL UNIQUE,
    Confirmed BIT NOT NULL
);

CREATE TABLE u_usercodes(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_User INT NOT NULL,
    Code VARCHAR(256) NOT NULL,
    Expired BIT NOT NULL,
	FOREIGN KEY (Id_User) REFERENCES u_users(Id)
);

CREATE TABLE u_projects(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Projname VARCHAR(64) NOT NULL,
	Summary VARCHAR(128),
	Description LONGTEXT,
    Projpass VARCHAR(128) NOT NULL
);

CREATE TABLE u_projroles(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ProjType VARCHAR(24) NOT NULL
);

INSERT INTO
    u_projroles (ProjType)
VALUES
    ('Administrator'),
    ('Editor'),
    ('Reader');

CREATE TABLE u_projwhitelists(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_User INT NOT NULL,
    Id_Project INT NOT NULL,
    Id_ProjectRole INT NOT NULL,
    FOREIGN KEY (Id_User) REFERENCES u_users(Id),
    FOREIGN KEY (Id_Project) REFERENCES u_projects(Id),
    FOREIGN KEY (Id_ProjectRole) REFERENCES u_projroles(Id)
);

CREATE TABLE u_tokens(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    AccessToken VARCHAR(256) NOT NULL,
    RefreshToken VARCHAR(256) NOT NULL,
    ExpirationDate DATETIME NOT NULL,
	Id_User INT NOT NULL,
    Id_Project INT,
	FOREIGN KEY (Id_User) REFERENCES u_users(Id),
    FOREIGN KEY (Id_Project) REFERENCES u_projects(Id)
);

-- Story Table Group
CREATE TABLE s_timelines(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_Project INT NOT NULL,
    Title VARCHAR(64) NOT NULL,
	Summary VARCHAR(128),
    Description LONGTEXT,
    FOREIGN KEY (Id_Project) REFERENCES u_projects(Id)
);

CREATE TABLE s_arcs(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_Timeline INT NOT NULL,
    Title VARCHAR(64) NOT NULL,
	Summary VARCHAR(128),
	Description LONGTEXT,
	Realtime INT,
	Screentime INT,
    FOREIGN KEY (Id_Timeline) REFERENCES s_timelines(Id)
);

CREATE TABLE s_acts(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_Arc INT NOT NULL,
    Title VARCHAR(64) NOT NULL,
	Summary VARCHAR(256),
	Description LONGTEXT,
	Realtime INT,
	Screentime INT,
    FOREIGN KEY (Id_Arc) REFERENCES s_arcs(Id)
);

CREATE TABLE s_actions(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_Act INT NOT NULL,
    Title VARCHAR(128) NOT NULL,
	Summary VARCHAR(128),
	Description LONGTEXT,
	Realtime INT,
	Screentime INT,
    FOREIGN KEY (Id_Act) REFERENCES s_acts(Id)
);

-- World Building Concept (wb) Table Group
CREATE TABLE wb_types(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    wbType VARCHAR(24) NOT NULL
);

INSERT INTO
    wb_types (wbType)
VALUES
    ('Character'),
    ('Location'),
    ('Object'),
    ('Metaphysics');

CREATE TABLE wb_bases(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_Project INT NOT NULL,
    Id_Type INT NOT NULL,
	Concept LONGTEXT,
	ReasonOfConcept LONGTEXT,
    Title VARCHAR(64) NOT NULL,
    Summary VARCHAR(128),
    Description LONGTEXT,
	Cause LONGTEXT,
    Purpose LONGTEXT,
    Myth LONGTEXT,
    FOREIGN KEY (Id_Project) REFERENCES u_projects(Id),
    FOREIGN KEY (Id_Type) REFERENCES wb_types(Id)
);

CREATE TABLE wb_images(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_Base INT NOT NULL,
    Name VARCHAR(64) NOT NULL,
    Description LONGTEXT,
    Link VARCHAR(128) NOT NULL,
    FOREIGN KEY (Id_Base) REFERENCES wb_bases(Id)

);

CREATE TABLE wb_characters(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_Base INT NOT NULL,
    JungModel VARCHAR(20),
    OCEANModel VARCHAR(19),
    Ego LONGTEXT,
	Complexes LONGTEXT,
	Persona LONGTEXT,
	Anima LONGTEXT,
    Shadow LONGTEXT,
    Self LONGTEXT,
    PsychicQuirks VARCHAR(256),
    PhysicQuirks VARCHAR(256),
    FOREIGN KEY (Id_Base) REFERENCES wb_bases(Id)
);

CREATE TABLE wb_locations(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_Base INT NOT NULL,
    FOREIGN KEY (Id_Base) REFERENCES wb_bases(Id)
);

CREATE TABLE wb_objects(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_Base INT NOT NULL,
    FOREIGN KEY (Id_Base) REFERENCES wb_bases(Id)
);

CREATE TABLE wb_metaphysics(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_Base INT NOT NULL,
    FOREIGN KEY (Id_Base) REFERENCES wb_bases(Id)
);

-- Bookmarks Table Group
CREATE TABLE b_bookmarks(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Id_Project INT NOT NULL,
    Title VARCHAR(64) NOT NULL,
	Summary VARCHAR(128),
    Description LONGTEXT,
	FOREIGN KEY (Id_Project) REFERENCES u_projects(Id)
);

-- Arguments Table Group
CREATE TABLE a_arguments(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Id_Action INT NOT NULL,
    Id_Evoker INT NOT NULL,
    Id_Target INT NOT NULL,
    Title VARCHAR(64) NOT NULL,
    Argument VARCHAR(1024) NOT NULL,
    FOREIGN KEY (Id_Action) REFERENCES s_actions(Id),
    FOREIGN KEY (Id_Evoker) REFERENCES wb_bases(Id),
    FOREIGN KEY (Id_Target) REFERENCES wb_bases(Id)
	
);

CREATE TABLE a_links(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_Argument INT NOT NULL,
    Id_ArgumentTwo INT,
    Id_Result INT NOT NULL,
    FOREIGN KEY (Id_Argument) REFERENCES a_arguments(Id),
    FOREIGN KEY (Id_ArgumentTwo) REFERENCES a_arguments(Id),
    FOREIGN KEY (Id_Result) REFERENCES a_arguments(Id)
);

-- Relational Table Group
CREATE TABLE r_actions_wbs(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_Action INT NOT NULL,
    Id_WB INT NOT NULL,
    FOREIGN KEY (Id_Action) REFERENCES s_actions(Id),
    FOREIGN KEY (Id_wb) REFERENCES wb_bases(Id)
);

CREATE TABLE r_actions_bookmarks(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_Action INT NOT NULL,
    Id_Bookmark INT NOT NULL,
    FOREIGN KEY (Id_Action) REFERENCES s_actions(Id),
    FOREIGN KEY (Id_Bookmark) REFERENCES b_bookmarks(Id)
);

CREATE TABLE r_cause_type(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    rType VARCHAR(24) NOT NULL
);

INSERT INTO
    r_cause_type (rType)
VALUES
    ('Cause'),
    ('Consequence'),
    ('Relevant');
	
CREATE TABLE r_actions_arguments(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_Action INT NOT NULL,
    Id_Argument INT NOT NULL,
    Id_Type INT NOT NULL,
    FOREIGN KEY (Id_Action) REFERENCES s_actions(Id),
    FOREIGN KEY (Id_Argument) REFERENCES a_arguments(Id),
    FOREIGN KEY (Id_Type) REFERENCES r_cause_type(Id)
);

CREATE TABLE r_wbs_developments(
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_Base INT NOT NULL,
    Id_Action INT NOT NULL,
    Characteristic VARCHAR(32) NOT NULL,
    NewContent VARCHAR(1024) NOT NULL,
	FOREIGN KEY (Id_Base) REFERENCES wb_bases(Id),
	FOREIGN KEY (Id_Action) REFERENCES s_actions(Id)
);