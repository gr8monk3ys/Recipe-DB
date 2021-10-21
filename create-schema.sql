CREATE DATABASE FOOD;

CREATE TABLE customer (
    c_custkey     decimal(9,0) not null,
    c_name        varchar(25) not null,
    c_username     varchar(40) not null,
    c_email       char(15) not null,
    c_password     varchar(117) not null
);
CREATE TABLE restaurant (
    r_restkey     decimal(8,0) not null,
    r_name        char(25) not null,
    r_address     varchar(40) not null,
    r_rating      decimal(8,0) not null,
    r_phone       char(15) not null,
);
CREATE TABLE dish (
    d_dishkey       decimal(8,0) not null,
    d_name          char(25) not null,
    d_restkey       decimal(8,0) not null,
    d_recipekey     decimal(8,0) not null,
);
CREATE TABLE recipe (
    r_id         decimal(2,0) not null,
    r_name       char(25) not null,
    r_ingredkey  decimal(8,0) not null,
    r_comment    varchar(152)
);
CREATE TABLE ingredients (
    i_id         decimal(3,0) not null,
    i_name       char(25) not null,
    i_ingredkey  decimal(8,0) not null,
    i_comment    varchar(152)
    
);
CREATE TABLE allergies (
    a_id         decimal(3,0) not null,
    a_name       char(25) not null,
    a_comment    varchar(152)
);
CREATE TABLE rating (
    r_id         decimal(3,0) not null,
    r_name       char(25) not null,
    r_comment    varchar(152)
);