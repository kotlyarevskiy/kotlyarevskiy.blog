--
-- Файл сгенерирован с помощью SQLiteStudio v3.3.3 в Ср май 25 11:54:05 2022
--
-- Использованная кодировка текста: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Таблица: app_api_credentials_apicredentials
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


-- Таблица: app_areas_of_knowledges_categoriesandareas
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
                                                           'Програмне забезпечення',
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
                                                           'Веб Сервери',
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
                                                           'Програмування',
                                                           1,
                                                           1,
                                                           42,
                                                           4,
                                                           0,
                                                           'Programming',
                                                           'Програмування',
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
                                                           'Мови програмування',
                                                           1,
                                                           20,
                                                           29,
                                                           4,
                                                           1,
                                                           'Programming languages',
                                                           'Мови програмування',
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
                                                           'Мови розмітки',
                                                           1,
                                                           30,
                                                           37,
                                                           4,
                                                           1,
                                                           'Markup languages',
                                                           'Мови розмітки',
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
                                                           'Мови форматування',
                                                           1,
                                                           38,
                                                           41,
                                                           4,
                                                           1,
                                                           'Formatting languages',
                                                           'Мови форматування',
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
                                                           'Мови запитів',
                                                           1,
                                                           2,
                                                           19,
                                                           4,
                                                           1,
                                                           'Query languages',
                                                           'Мови запитів',
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
                                                           'Бібліотеки',
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
                                                           'Фреймворки',
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


-- Таблица: app_areas_of_knowledges_competencelevels
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
                                                         'Нульовий',
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
                                                         'Середній',
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
                                                         'Початковий',
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
                                                         'Експертний',
                                                         4,
                                                         'Advanced mastery of the subject.',
                                                         'Advanced mastery of the subject.',
                                                         'Просунуте володіння предметом.'
                                                     );


-- Таблица: app_projects_projects
DROP TABLE IF EXISTS app_projects_projects;

CREATE TABLE app_projects_projects (
    id             INTEGER            NOT NULL
                                      PRIMARY KEY AUTOINCREMENT,
    name           VARCHAR (150)      NOT NULL,
    name_en        VARCHAR (150),
    name_uk        VARCHAR (150),
    description    TEXT,
    description_en TEXT,
    description_uk TEXT,
    status         VARCHAR (25)       NOT NULL,
    level          [INTEGER UNSIGNED] NOT NULL
                                      CHECK ("level" >= 0),
    definition     VARCHAR (255),
    definition_en  VARCHAR (255),
    definition_uk  VARCHAR (255) 
);

INSERT INTO app_projects_projects (
                                      id,
                                      name,
                                      name_en,
                                      name_uk,
                                      description,
                                      description_en,
                                      description_uk,
                                      status,
                                      level,
                                      definition,
                                      definition_en,
                                      definition_uk
                                  )
                                  VALUES (
                                      1,
                                      'тест1',
                                      'test1',
                                      'тест1',
                                      '<p><em>ыыыыыыыыыыыыыыыыыыыы1</em></p>

<p>erhtfhtfhfthtfht yre&nbsp; <strong>teter</strong> tet ewtew tewt wet</p>

<p>&nbsp;</p>

<p>&nbsp;</p>',
                                      '<p><span style="background-color:#2980b9">ttttttttttttttttttttttttttt1</span></p>',
                                      '<p><em>ыыыыыыыыыыыыыыыыыыыы1</em></p>

<p>erhtfhtfhfthtfht yre&nbsp; <strong>teter</strong> tet ewtew tewt wet</p>

<p>&nbsp;</p>

<p>&nbsp;</p>',
                                      'planning',
                                      1,
                                      'fffffffffffffffffffffffffff',
                                      'fffffffffffffffffff',
                                      'fffffffffffffffffffffffffff'
                                  );

INSERT INTO app_projects_projects (
                                      id,
                                      name,
                                      name_en,
                                      name_uk,
                                      description,
                                      description_en,
                                      description_uk,
                                      status,
                                      level,
                                      definition,
                                      definition_en,
                                      definition_uk
                                  )
                                  VALUES (
                                      2,
                                      'тест2',
                                      'test2',
                                      'тест2',
                                      '<p>еееееееееееееееееееееее</p>',
                                      '<p><strong>ttttttttttttttttttttttttttttttttttttt2</strong></p>',
                                      '<p>еееееееееееееееееееееее</p>',
                                      'planning',
                                      2,
                                      NULL,
                                      NULL,
                                      NULL
                                  );

INSERT INTO app_projects_projects (
                                      id,
                                      name,
                                      name_en,
                                      name_uk,
                                      description,
                                      description_en,
                                      description_uk,
                                      status,
                                      level,
                                      definition,
                                      definition_en,
                                      definition_uk
                                  )
                                  VALUES (
                                      11,
                                      's',
                                      's',
                                      'd',
                                      '',
                                      '',
                                      '',
                                      'planning',
                                      0,
                                      NULL,
                                      NULL,
                                      NULL
                                  );

INSERT INTO app_projects_projects (
                                      id,
                                      name,
                                      name_en,
                                      name_uk,
                                      description,
                                      description_en,
                                      description_uk,
                                      status,
                                      level,
                                      definition,
                                      definition_en,
                                      definition_uk
                                  )
                                  VALUES (
                                      12,
                                      'dvdf',
                                      'dvdf',
                                      'fdefs',
                                      '',
                                      '',
                                      '',
                                      'planning',
                                      0,
                                      'dfbv',
                                      'dfbv',
                                      'df'
                                  );


-- Таблица: auth_group
DROP TABLE IF EXISTS auth_group;

CREATE TABLE auth_group (
    id   INTEGER       NOT NULL
                       PRIMARY KEY AUTOINCREMENT,
    name VARCHAR (150) NOT NULL
                       UNIQUE
);

INSERT INTO auth_group (
                           id,
                           name
                       )
                       VALUES (
                           1,
                           'projects_full_access'
                       );


-- Таблица: auth_group_permissions
DROP TABLE IF EXISTS auth_group_permissions;

CREATE TABLE auth_group_permissions (
    id            INTEGER NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    group_id      INTEGER NOT NULL
                          REFERENCES auth_group (id) DEFERRABLE INITIALLY DEFERRED,
    permission_id INTEGER NOT NULL
                          REFERENCES auth_permission (id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       1,
                                       1,
                                       57
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       2,
                                       1,
                                       58
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       3,
                                       1,
                                       59
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       4,
                                       1,
                                       60
                                   );


-- Таблица: auth_permission
DROP TABLE IF EXISTS auth_permission;

CREATE TABLE auth_permission (
    id              INTEGER       NOT NULL
                                  PRIMARY KEY AUTOINCREMENT,
    content_type_id INTEGER       NOT NULL
                                  REFERENCES django_content_type (id) DEFERRABLE INITIALLY DEFERRED,
    codename        VARCHAR (100) NOT NULL,
    name            VARCHAR (255) NOT NULL
);

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                1,
                                1,
                                'add_logentry',
                                'Can add log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                2,
                                1,
                                'change_logentry',
                                'Can change log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                3,
                                1,
                                'delete_logentry',
                                'Can delete log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                4,
                                1,
                                'view_logentry',
                                'Can view log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                5,
                                2,
                                'add_permission',
                                'Can add permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                6,
                                2,
                                'change_permission',
                                'Can change permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                7,
                                2,
                                'delete_permission',
                                'Can delete permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                8,
                                2,
                                'view_permission',
                                'Can view permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                9,
                                3,
                                'add_group',
                                'Can add group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                10,
                                3,
                                'change_group',
                                'Can change group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                11,
                                3,
                                'delete_group',
                                'Can delete group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                12,
                                3,
                                'view_group',
                                'Can view group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                13,
                                4,
                                'add_user',
                                'Can add user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                14,
                                4,
                                'change_user',
                                'Can change user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                15,
                                4,
                                'delete_user',
                                'Can delete user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                16,
                                4,
                                'view_user',
                                'Can view user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                17,
                                5,
                                'add_contenttype',
                                'Can add content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                18,
                                5,
                                'change_contenttype',
                                'Can change content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                19,
                                5,
                                'delete_contenttype',
                                'Can delete content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                20,
                                5,
                                'view_contenttype',
                                'Can view content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                21,
                                6,
                                'add_session',
                                'Can add session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                22,
                                6,
                                'change_session',
                                'Can change session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                23,
                                6,
                                'delete_session',
                                'Can delete session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                24,
                                6,
                                'view_session',
                                'Can view session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                25,
                                7,
                                'add_apicredentials',
                                'Can add api credentials'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                26,
                                7,
                                'change_apicredentials',
                                'Can change api credentials'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                27,
                                7,
                                'delete_apicredentials',
                                'Can delete api credentials'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                28,
                                7,
                                'view_apicredentials',
                                'Can view api credentials'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                29,
                                8,
                                'add_categoriesandarea',
                                'Can add categories and area'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                30,
                                8,
                                'change_categoriesandarea',
                                'Can change categories and area'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                31,
                                8,
                                'delete_categoriesandarea',
                                'Can delete categories and area'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                32,
                                8,
                                'view_categoriesandarea',
                                'Can view categories and area'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                33,
                                9,
                                'add_categoriesandareas',
                                'Can add categories and areas'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                34,
                                9,
                                'change_categoriesandareas',
                                'Can change categories and areas'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                35,
                                9,
                                'delete_categoriesandareas',
                                'Can delete categories and areas'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                36,
                                9,
                                'view_categoriesandareas',
                                'Can view categories and areas'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                37,
                                10,
                                'add_competencelevels',
                                'Can add Levels of competence'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                38,
                                10,
                                'change_competencelevels',
                                'Can change Levels of competence'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                39,
                                10,
                                'delete_competencelevels',
                                'Can delete Levels of competence'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                40,
                                10,
                                'view_competencelevels',
                                'Can view Levels of competence'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                41,
                                11,
                                'add_roadmaps',
                                'Can add Road maps'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                42,
                                11,
                                'change_roadmaps',
                                'Can change Road maps'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                43,
                                11,
                                'delete_roadmaps',
                                'Can delete Road maps'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                44,
                                11,
                                'view_roadmaps',
                                'Can view Road maps'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                45,
                                12,
                                'add_roadmapstructure',
                                'Can add Road map structure'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                46,
                                12,
                                'change_roadmapstructure',
                                'Can change Road map structure'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                47,
                                12,
                                'delete_roadmapstructure',
                                'Can delete Road map structure'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                48,
                                12,
                                'view_roadmapstructure',
                                'Can view Road map structure'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                49,
                                13,
                                'add_usersettings',
                                'Can add User settings'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                50,
                                13,
                                'change_usersettings',
                                'Can change User settings'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                51,
                                13,
                                'delete_usersettings',
                                'Can delete User settings'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                52,
                                13,
                                'view_usersettings',
                                'Can view User settings'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                53,
                                14,
                                'add_userprofile',
                                'Can add User profile data'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                54,
                                14,
                                'change_userprofile',
                                'Can change User profile data'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                55,
                                14,
                                'delete_userprofile',
                                'Can delete User profile data'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                56,
                                14,
                                'view_userprofile',
                                'Can view User profile data'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                57,
                                15,
                                'add_projects',
                                'Can add Projects'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                58,
                                15,
                                'change_projects',
                                'Can change Projects'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                59,
                                15,
                                'delete_projects',
                                'Can delete Projects'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                60,
                                15,
                                'view_projects',
                                'Can view Projects'
                            );


-- Индекс: app_areas_of_knowledges_categoriesandareas_name_parent_id_a6a47628_uniq
DROP INDEX IF EXISTS app_areas_of_knowledges_categoriesandareas_name_parent_id_a6a47628_uniq;

CREATE UNIQUE INDEX app_areas_of_knowledges_categoriesandareas_name_parent_id_a6a47628_uniq ON app_areas_of_knowledges_categoriesandareas (
    "name",
    "parent_id"
);


-- Индекс: app_areas_of_knowledges_categoriesandareas_parent_id_507bcff6
DROP INDEX IF EXISTS app_areas_of_knowledges_categoriesandareas_parent_id_507bcff6;

CREATE INDEX app_areas_of_knowledges_categoriesandareas_parent_id_507bcff6 ON app_areas_of_knowledges_categoriesandareas (
    "parent_id"
);


-- Индекс: app_areas_of_knowledges_categoriesandareas_tree_id_8fade808
DROP INDEX IF EXISTS app_areas_of_knowledges_categoriesandareas_tree_id_8fade808;

CREATE INDEX app_areas_of_knowledges_categoriesandareas_tree_id_8fade808 ON app_areas_of_knowledges_categoriesandareas (
    "tree_id"
);


-- Индекс: auth_group_permissions_group_id_b120cbf9
DROP INDEX IF EXISTS auth_group_permissions_group_id_b120cbf9;

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions (
    "group_id"
);


-- Индекс: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
DROP INDEX IF EXISTS auth_group_permissions_group_id_permission_id_0cd325b0_uniq;

CREATE UNIQUE INDEX auth_group_permissions_group_id_permission_id_0cd325b0_uniq ON auth_group_permissions (
    "group_id",
    "permission_id"
);


-- Индекс: auth_group_permissions_permission_id_84c5c92e
DROP INDEX IF EXISTS auth_group_permissions_permission_id_84c5c92e;

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions (
    "permission_id"
);


-- Индекс: auth_permission_content_type_id_2f476e4b
DROP INDEX IF EXISTS auth_permission_content_type_id_2f476e4b;

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission (
    "content_type_id"
);


-- Индекс: auth_permission_content_type_id_codename_01ab375a_uniq
DROP INDEX IF EXISTS auth_permission_content_type_id_codename_01ab375a_uniq;

CREATE UNIQUE INDEX auth_permission_content_type_id_codename_01ab375a_uniq ON auth_permission (
    "content_type_id",
    "codename"
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
