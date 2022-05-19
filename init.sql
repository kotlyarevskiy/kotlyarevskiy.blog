--
-- ���� ������������ � ������� SQLiteStudio v3.3.3 � �� ��� 19 15:19:19 2022
--
-- �������������� ��������� ������: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- �������: app_api_credentials_apicredentials
DROP TABLE IF EXISTS app_api_credentials_apicredentials;

CREATE TABLE app_api_credentials_apicredentials (
    id         INTEGER      NOT NULL
                            PRIMARY KEY AUTOINCREMENT,
    name       VARCHAR (50) NOT NULL,
    parameters TEXT         NOT NULL
                            CHECK ( (JSON_VALID("parameters") OR 
                                     "parameters" IS NULL) ) 
);

INSERT INTO app_api_credentials_apicredentials (
                                                   id,
                                                   name,
                                                   parameters
                                               )
                                               VALUES (
                                                   1,
                                                   'openweathermap_current',
                                                   '{"URI": "https://api.openweathermap.org", "secured": true, "endpoint": "/data/2.5/weather", "token": "1f2289f98a72f3cf8beba34aa01e78ca"}'
                                               );


-- �������: app_areas_of_knowledges_categoriesandareas
DROP TABLE IF EXISTS app_areas_of_knowledges_categoriesandareas;

CREATE TABLE app_areas_of_knowledges_categoriesandareas (
    id             INTEGER            NOT NULL
                                      PRIMARY KEY AUTOINCREMENT,
    name           VARCHAR (150)      NOT NULL,
    is_category    BOOL               NOT NULL,
    lft            [INTEGER UNSIGNED] NOT NULL
                                      CHECK ("lft" >= 0),
    rght           [INTEGER UNSIGNED] NOT NULL
                                      CHECK ("rght" >= 0),
    tree_id        [INTEGER UNSIGNED] NOT NULL
                                      CHECK ("tree_id" >= 0),
    level          [INTEGER UNSIGNED] NOT NULL
                                      CHECK ("level" >= 0),
    name_en        VARCHAR (150),
    name_uk        VARCHAR (150),
    description    TEXT,
    description_en TEXT,
    description_uk TEXT,
    parent_id      BIGINT
                                      REFERENCES app_areas_of_knowledges_categoriesandareas (id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           11,
                                                           'Software',
                                                           1,
                                                           1,
                                                           16,
                                                           3,
                                                           0,
                                                           'Software',
                                                           '��������� ������������',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           NULL
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           12,
                                                           'Web Servers',
                                                           1,
                                                           2,
                                                           15,
                                                           3,
                                                           1,
                                                           'Web Servers',
                                                           '��� �������',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           11
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           13,
                                                           'IIS',
                                                           0,
                                                           5,
                                                           12,
                                                           3,
                                                           2,
                                                           'IIS',
                                                           'IIS',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           12
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           14,
                                                           '6.0',
                                                           0,
                                                           6,
                                                           7,
                                                           3,
                                                           3,
                                                           '6.0',
                                                           '6.0',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           13
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           15,
                                                           '10.0',
                                                           0,
                                                           10,
                                                           11,
                                                           3,
                                                           3,
                                                           '10.0',
                                                           '10.0',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           13
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           16,
                                                           '7.0',
                                                           0,
                                                           8,
                                                           9,
                                                           3,
                                                           3,
                                                           '7.0',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           13
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           17,
                                                           '�������������',
                                                           1,
                                                           1,
                                                           42,
                                                           4,
                                                           0,
                                                           'Programming',
                                                           '�������������',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           NULL
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           18,
                                                           '���� �������������',
                                                           1,
                                                           20,
                                                           29,
                                                           4,
                                                           1,
                                                           'Programming languages',
                                                           '���� �������������',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           17
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           19,
                                                           '���� �������',
                                                           1,
                                                           30,
                                                           37,
                                                           4,
                                                           1,
                                                           'Markup languages',
                                                           '���� �������',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           17
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           20,
                                                           '���� ������������',
                                                           1,
                                                           38,
                                                           41,
                                                           4,
                                                           1,
                                                           'Formatting languages',
                                                           '���� ������������',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           17
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           21,
                                                           '���� ������',
                                                           1,
                                                           2,
                                                           19,
                                                           4,
                                                           1,
                                                           'Query languages',
                                                           '���� ������',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           17
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           22,
                                                           'CSS',
                                                           0,
                                                           39,
                                                           40,
                                                           4,
                                                           2,
                                                           'CSS',
                                                           'CSS',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           20
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           23,
                                                           'SQL',
                                                           1,
                                                           3,
                                                           12,
                                                           4,
                                                           2,
                                                           'SQL',
                                                           'SQL',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           21
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           24,
                                                           'T-SQL',
                                                           0,
                                                           4,
                                                           5,
                                                           4,
                                                           3,
                                                           'T-SQL',
                                                           'T-SQL',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           23
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           25,
                                                           'MySQL',
                                                           0,
                                                           6,
                                                           7,
                                                           4,
                                                           3,
                                                           'MySQL',
                                                           'MySQL',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           23
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           26,
                                                           'PostgreSQL',
                                                           0,
                                                           8,
                                                           9,
                                                           4,
                                                           3,
                                                           'PostgreSQL',
                                                           'PostgreSQL',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           23
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           27,
                                                           'SQLite',
                                                           0,
                                                           10,
                                                           11,
                                                           4,
                                                           3,
                                                           'SQLite',
                                                           'SQLite',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           23
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           28,
                                                           'XML',
                                                           1,
                                                           13,
                                                           18,
                                                           4,
                                                           2,
                                                           'XML',
                                                           'XML',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           21
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           29,
                                                           'XQuery',
                                                           0,
                                                           16,
                                                           17,
                                                           4,
                                                           3,
                                                           'XQuery',
                                                           'XQuery',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           28
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           30,
                                                           'XPath',
                                                           0,
                                                           14,
                                                           15,
                                                           4,
                                                           3,
                                                           'XPath',
                                                           'XPath',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           28
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           31,
                                                           'HTML',
                                                           0,
                                                           31,
                                                           32,
                                                           4,
                                                           2,
                                                           'HTML',
                                                           'HTML',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           19
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           32,
                                                           'XML',
                                                           0,
                                                           35,
                                                           36,
                                                           4,
                                                           2,
                                                           'XML',
                                                           'XML',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           19
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           33,
                                                           'XHML',
                                                           0,
                                                           33,
                                                           34,
                                                           4,
                                                           2,
                                                           'XHML',
                                                           'XHML',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           19
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           34,
                                                           'Python',
                                                           0,
                                                           25,
                                                           26,
                                                           4,
                                                           2,
                                                           'Python',
                                                           'Python',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           18
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           35,
                                                           'C#',
                                                           0,
                                                           21,
                                                           22,
                                                           4,
                                                           2,
                                                           'C#',
                                                           'C#',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           18
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           36,
                                                           'JavaScript',
                                                           0,
                                                           23,
                                                           24,
                                                           4,
                                                           2,
                                                           'JavaScript',
                                                           'JavaScript',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           18
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           37,
                                                           'TypeScript',
                                                           0,
                                                           27,
                                                           28,
                                                           4,
                                                           2,
                                                           'TypeScript',
                                                           'TypeScript',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           18
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           38,
                                                           'Libraries',
                                                           1,
                                                           1,
                                                           6,
                                                           2,
                                                           0,
                                                           'Libraries',
                                                           '���������',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           NULL
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           39,
                                                           'Frameworks',
                                                           1,
                                                           1,
                                                           2,
                                                           1,
                                                           0,
                                                           'Frameworks',
                                                           '����������',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           NULL
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           40,
                                                           'ORM',
                                                           1,
                                                           2,
                                                           5,
                                                           2,
                                                           1,
                                                           'ORM',
                                                           'ORM',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           38
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           41,
                                                           'SQLAlchemy',
                                                           0,
                                                           3,
                                                           4,
                                                           2,
                                                           2,
                                                           'SQLAlchemy',
                                                           'SQLAlchemy',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           40
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           42,
                                                           'Apache',
                                                           0,
                                                           3,
                                                           4,
                                                           3,
                                                           2,
                                                           'Apache',
                                                           'Apache',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           12
                                                       );

INSERT INTO app_areas_of_knowledges_categoriesandareas (
                                                           id,
                                                           name,
                                                           is_category,
                                                           lft,
                                                           rght,
                                                           tree_id,
                                                           level,
                                                           name_en,
                                                           name_uk,
                                                           description,
                                                           description_en,
                                                           description_uk,
                                                           parent_id
                                                       )
                                                       VALUES (
                                                           43,
                                                           'Nginx',
                                                           0,
                                                           13,
                                                           14,
                                                           3,
                                                           2,
                                                           'Nginx',
                                                           'Nginx',
                                                           NULL,
                                                           NULL,
                                                           NULL,
                                                           12
                                                       );


-- �������: app_areas_of_knowledges_competencelevels
DROP TABLE IF EXISTS app_areas_of_knowledges_competencelevels;

CREATE TABLE app_areas_of_knowledges_competencelevels (
    id             INTEGER            NOT NULL
                                      PRIMARY KEY AUTOINCREMENT,
    name           VARCHAR (150)      NOT NULL,
    name_en        VARCHAR (150),
    name_uk        VARCHAR (150),
    level          [INTEGER UNSIGNED] NOT NULL
                                      CHECK ("level" >= 0),
    description    TEXT,
    description_en TEXT,
    description_uk TEXT
);

INSERT INTO app_areas_of_knowledges_competencelevels (
                                                         id,
                                                         name,
                                                         name_en,
                                                         name_uk,
                                                         level,
                                                         description,
                                                         description_en,
                                                         description_uk
                                                     )
                                                     VALUES (
                                                         1,
                                                         'Zero',
                                                         'Zero',
                                                         '��������',
                                                         1,
                                                         NULL,
                                                         NULL,
                                                         NULL
                                                     );

INSERT INTO app_areas_of_knowledges_competencelevels (
                                                         id,
                                                         name,
                                                         name_en,
                                                         name_uk,
                                                         level,
                                                         description,
                                                         description_en,
                                                         description_uk
                                                     )
                                                     VALUES (
                                                         2,
                                                         'Intermediate',
                                                         'Intermediate',
                                                         '��������',
                                                         3,
                                                         NULL,
                                                         NULL,
                                                         NULL
                                                     );

INSERT INTO app_areas_of_knowledges_competencelevels (
                                                         id,
                                                         name,
                                                         name_en,
                                                         name_uk,
                                                         level,
                                                         description,
                                                         description_en,
                                                         description_uk
                                                     )
                                                     VALUES (
                                                         3,
                                                         'Begginer',
                                                         'Begginer',
                                                         '����������',
                                                         2,
                                                         NULL,
                                                         NULL,
                                                         NULL
                                                     );

INSERT INTO app_areas_of_knowledges_competencelevels (
                                                         id,
                                                         name,
                                                         name_en,
                                                         name_uk,
                                                         level,
                                                         description,
                                                         description_en,
                                                         description_uk
                                                     )
                                                     VALUES (
                                                         4,
                                                         'Advanced',
                                                         'Advanced',
                                                         '����������',
                                                         4,
                                                         'Advanced mastery of the subject.',
                                                         'Advanced mastery of the subject.',
                                                         '��������� �������� ���������.'
                                                     );


-- ������: app_areas_of_knowledges_categoriesandareas_name_parent_id_a6a47628_uniq
DROP INDEX IF EXISTS app_areas_of_knowledges_categoriesandareas_name_parent_id_a6a47628_uniq;

CREATE UNIQUE INDEX app_areas_of_knowledges_categoriesandareas_name_parent_id_a6a47628_uniq ON app_areas_of_knowledges_categoriesandareas (
    "name",
    "parent_id"
);


-- ������: app_areas_of_knowledges_categoriesandareas_parent_id_507bcff6
DROP INDEX IF EXISTS app_areas_of_knowledges_categoriesandareas_parent_id_507bcff6;

CREATE INDEX app_areas_of_knowledges_categoriesandareas_parent_id_507bcff6 ON app_areas_of_knowledges_categoriesandareas (
    "parent_id"
);


-- ������: app_areas_of_knowledges_categoriesandareas_tree_id_8fade808
DROP INDEX IF EXISTS app_areas_of_knowledges_categoriesandareas_tree_id_8fade808;

CREATE INDEX app_areas_of_knowledges_categoriesandareas_tree_id_8fade808 ON app_areas_of_knowledges_categoriesandareas (
    "tree_id"
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;