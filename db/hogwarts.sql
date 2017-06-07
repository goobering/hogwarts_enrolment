DROP TABLE students;
DROP TABLE houses;

CREATE TABLE students (
  id SERIAL8 primary key,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house VARCHAR(255),
  age INT8
);

CREATE TABLE houses (
  id SERIAL8 primary key,
  name VARCHAR(255),
  logo_url VARCHAR(255)
);