-- Ensure the 'patient' table exists
CREATE TABLE IF NOT EXISTS patient
(
    id              UUID PRIMARY KEY,
    name            VARCHAR(255)        NOT NULL,
    email           VARCHAR(255) UNIQUE NOT NULL,
    address         VARCHAR(255)        NOT NULL,
    date_of_birth   DATE                NOT NULL,
    registered_date DATE                NOT NULL
    );

-- Insert well-known UUIDs for specific patients
INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174000',
       'Tony Stark',
       'tony.stark@starkindustries.com',
       '10880 Malibu Point, Malibu, CA',
       '1970-05-29',
       '2008-05-02'
    WHERE NOT EXISTS (SELECT 1
                  FROM patient
                  WHERE id = '123e4567-e89b-12d3-a456-426614174000');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174001',
       'Bruce Wayne',
       'bruce.wayne@wayneenterprises.com',
       '1007 Mountain Drive, Gotham City',
       '1972-02-19',
       '2005-06-15'
    WHERE NOT EXISTS (SELECT 1
                  FROM patient
                  WHERE id = '123e4567-e89b-12d3-a456-426614174001');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174002',
       'Clark Kent',
       'clark.kent@dailyplanet.com',
       '344 Clinton Street, Metropolis',
       '1938-06-18',
       '1978-12-15'
    WHERE NOT EXISTS (SELECT 1
                  FROM patient
                  WHERE id = '123e4567-e89b-12d3-a456-426614174002');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174003',
       'Diana Prince',
       'diana.prince@themyscira.gov',
       'Themyscira Island, Greece',
       '3000-03-22',
       '2017-06-02'
    WHERE NOT EXISTS (SELECT 1
                  FROM patient
                  WHERE id = '123e4567-e89b-12d3-a456-426614174003');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174004',
       'Peter Parker',
       'peter.parker@dailybugle.net',
       '20 Ingram Street, Forest Hills, NY',
       '2001-08-10',
       '2017-07-07'
    WHERE NOT EXISTS (SELECT 1
                  FROM patient
                  WHERE id = '123e4567-e89b-12d3-a456-426614174004');

-- Insert well-known UUIDs for specific patients
INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174005',
       'Natasha Romanoff',
       'natasha.romanoff@shield.gov',
       'Unknown, Russia',
       '1984-11-22',
       '2010-05-07'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174005');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174006',
       'Steve Rogers',
       'steve.rogers@avengers.org',
       '569 Leaman Place, Brooklyn, NY',
       '1918-07-04',
       '2011-07-22'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174006');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174007',
       'Harry Potter',
       'harry.potter@hogwarts.edu',
       '4 Privet Drive, Little Whinging, Surrey',
       '1980-07-31',
       '2001-11-16'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174007');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174008',
       'Hermione Granger',
       'hermione.granger@hogwarts.edu',
       'Hampstead Garden Suburb, London',
       '1979-09-19',
       '2001-11-16'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174008');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174009',
       'Frodo Baggins',
       'frodo.baggins@shire.me',
       'Bag End, Hobbiton, The Shire',
       '2968-09-22',
       '2001-12-19'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174009');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174010',
       'Luke Skywalker',
       'luke.skywalker@rebellion.org',
       'Tatooine, Outer Rim Territories',
       '19-05-24',
       '1977-05-25'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174010');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174011',
       'Leia Organa',
       'leia.organa@alderaan.gov',
       'Alderaan Royal Palace, Alderaan',
       '19-05-24',
       '1977-05-25'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174011');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174012',
       'Walter White',
       'walter.white@jpwinterschool.edu',
       '308 Negra Arroyo Lane, Albuquerque, NM',
       '1959-09-07',
       '2008-1-20'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174012');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174013',
       'Sherlock Holmes',
       'sherlock.holmes@bakerstreet.co.uk',
       '221B Baker Street, London',
       '1854-1-06',
       '2010-07-25'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174013');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174014',
       'James Bond',
       'james.bond@mi6.uk',
       'Universal Exports HQ, London',
       '1968-04-13',
       '2006-11-17'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174014');
