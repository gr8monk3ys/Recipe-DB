CREATE DATABASE FOOD;

CREATE TABLE recipe (
    r_id         decimal(2,0) not null,
    r_name       char(25) not null,
    r_comment    varchar(152)
);
CREATE TABLE ingredients (
    i_id         decimal(3,0) not null,
    i_name       char(25) not null,
    i_comment    varchar(152)
);

CREATE TABLE allergies(
    a_id         decimal(3,0) not null,
    a_name       char(25) not null,
    a_comment    varchar(152)
);

CREATE TABLE vegan(
    v_id         decimal(3,0) not null,
    v_name       char(25) not null,
    v_comment    varchar(152)
};

CREATE TABLE rating(
    r_id         decimal(3,0) not null,
    r_name       char(25) not null,
    r_comment    varchar(152)
);

CREATE TABLE flavor(
    f_id         decimal(3,0) not null,
    f_name       char(25) not null,
    f_comment    varchar(152)
);