create table customer (
    c_custkey     decimal(9,0) not null,
    c_name        varchar(25) not null,
    c_username     varchar(40) not null,
    c_email       char(15) not null,
    c_password     varchar(117) not null
);
create table establishment (
    e_restkey     decimal(8,0) not null,
    e_name        char(25) not null,
    e_address     varchar(40) not null,
    e_rating      decimal(8,0) not null,
    e_phone       char(15) not null
);
create table rating (
    r2_id         decimal(3,0) not null,
    r2_name       char(25) not null,
    r2_comment    varchar(152)
);
create table dish (
    d_dishkey       decimal(8,0) not null,
    d_name          char(25) not null,
    d_restkey       decimal(8,0) not null,
    d_recipekey     decimal(8,0) not null
);
create table recipe (
    r1_id         decimal(2,0) not null,
    r1_name       char(25) not null,
    r1_ingredkey  decimal(8,0) not null,
    r1_comment    varchar(152)
);
create table ingredients (
    i_id         decimal(3,0) not null,
    i_name       char(25) not null,
    i_ingredkey  decimal(8,0) not null,
    i_comment    varchar(152)
    
);

insert into customer values(1, 'Joe', 'joeNuts', 'joeNuts@gmail.com', 'joe');
insert into customer values(2, 'John', 'hehe', 'hehe@gmail.com', 'john');
insert into customer values(3, 'Bill', 'billybob', 'billybob@gmail.com', 'bill');
insert into customer values(4, 'Jason', 'jaysun', 'jaysun@gmail.com', 'jason');

insert into establishment values(1, 'Hells Kitchen', '631 Jenner Dr.',5,'530-655-3245');
insert into establishment values(2, 'Cordon Bleu', '221 Rodeo Dr.',5,'530-653-3221');
insert into establishment values(3, 'Applebees', '633 Apple Rd.',2,'530-655-3245');

insert into rating values(1, 'Hells Kitchen', 'N/A')
insert into rating values(2, 'Cordon Bleu', 'Steak was amazing')
insert into rating values(3, 'Applebees', 'The food sucked')

insert into dish values(1, 'Ceasar Salad', 1, 1);
insert into dish values(2, 'Ceasar Salad', 2, 2);
insert into dish values(3, 'Ceasar Salad', 3, 3);
insert into dish values(4, 'Ceasar Salad', 4, 4);

insert into recipe values(1, )
insert into recipe values(1, )
insert into recipe values(1, )
insert into recipe values(1, )

insert into ingredients values()
insert into ingredients values()
insert into ingredients values()
insert into ingredients values()
