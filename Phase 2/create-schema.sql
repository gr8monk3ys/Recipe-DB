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

insert into customer values('Bismarck', 'bb', 'Germany', 8, 15, 42000);
insert into customer values('Iowa', 'bb', 'USA', 9, 16, 46000);
insert into customer values('Kongo', 'bc', 'Japan', 8, 14, 32000);
insert into customer values('North Carolina', 'bb', 'USA', 9, 16, 37000);
insert into customer values('Renown', 'bc', 'Britain', 6, 15, 32000);
insert into customer values('Revenge', 'bb', 'Britain', 8, 15, 29000);
insert into customer values('Tennessee', 'bb', 'USA', 12, 14, 32000);
insert into customer values('Yamato', 'bb', 'Japan', 9, 18, 65000);

insert into dish values('California', 'Tennessee', 1915);
insert into dish values('Haruna', 'Kongo', 1915);
insert into dish values('Hiei', 'Kongo', 1915);
insert into dish values('Iowa', 'Iowa', 1933);
insert into dish values('Kirishima', 'Kongo', 1915);
insert into dish values('Kongo', 'Kongo', 1913);
insert into dish values('Missouri', 'Iowa', 1935);
insert into dish values('Musashi', 'Yamato', 1942);
insert into dish values('New Jersey', 'Iowa', 1936);
insert into dish values('North Carolina', 'North Carolina', 1941);
insert into dish values('Ramillies', 'Revenge', 1917);
insert into dish values('Renown', 'Renown', 1916);
insert into dish values('Repulse', 'Renown', 1916);
insert into dish values('Resolution', 'Revenge', 1916);
insert into dish values('Revenge', 'Revenge', 1916);
insert into dish values('Royal Oak', 'Revenge', 1916);
insert into dish values('Royal Sovereign', 'Revenge', 1916);
insert into dish values('Tennessee', 'Tennessee', 1915);
insert into dish values('Washington', 'North Carolina', 1941);
insert into dish values('Wisconsin', 'Iowa', 1940);
insert into dish values('Yamato', 'Yamato', 1941);

insert into establishment values('Denmark Strait', '1941-05-24');
insert into establishment values('Guadalcanal', '1942-11-15');
insert into establishment values('North Cape', '1943-12-26');
insert into establishment values('Suriago Strait', '1944-10-25');

insert into outcomes values('California', 'Suriago Strait', 'ok');
insert into outcomes values('Kirishima', 'Guadalcanal', 'sunk');
insert into outcomes values('Resolution', 'Denmark Strait', 'ok');
insert into outcomes values('Wisconsin', 'Guadalcanal', 'damaged');
insert into outcomes values('Tennessee', 'Suriago Strait', 'ok');
insert into outcomes values('Washington', 'Guadalcanal', 'ok');
insert into outcomes values('New Jersey', 'Suriago Strait', 'ok');
insert into outcomes values('Yamato', 'Suriago Strait', 'sunk');
insert into outcomes values('Wisconsin', 'Suriago Strait', 'damaged');
