CREATE DATABASE FOOD;

CREATE TABLE customer (
    c_custkey     decimal(9,0) not null,
    c_name        varchar(25) not null,
    c_username     varchar(40) not null,
    c_email       char(15) not null,
    c_password     varchar(117) not null
);
CREATE TABLE establishment (
    e_restkey     decimal(8,0) not null,
    e_name        char(25) not null,
    e_address     varchar(40) not null,
    e_rating      decimal(8,0) not null,
    e_phone       char(15) not null
);
CREATE TABLE rating (
    r2_id         decimal(3,0) not null,
    r2_name       char(25) not null,
    r2_comment    varchar(152)
);
CREATE TABLE dish (
    d_dishkey       decimal(8,0) not null,
    d_name          char(25) not null,
    d_restkey       decimal(8,0) not null,
    d_recipekey     decimal(8,0) not null
);
CREATE TABLE recipe (
    r1_id         decimal(2,0) not null,
    r1_name       char(25) not null,
    r1_ingredkey  decimal(8,0) not null,
    r1_comment    varchar(152)
);
CREATE TABLE ingredients (
    i_id         decimal(3,0) not null,
    i_name       char(25) not null,
    i_ingredkey  decimal(8,0) not null,
    i_comment    varchar(152)
    
);