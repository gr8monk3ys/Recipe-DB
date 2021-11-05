select '1----------';
.headers on
;
.headers off

select '2----------';
.headers on
;
.headers off

-- Correct
.headers on
select c_country, count(*) from ships
inner join classes on c_class is s_class
where s_launched between 1930 and 1940
group by c_country;
;
.headers off

select '4----------';
-- Correct
.headers on
insert into outcomes (o_ship, o_battle, o_result) 
select distinct s_name, 'Denmark Strait', 'damaged' from Outcomes, Ships 
where s_launched <= 1920 and s_name not in(select o_ship from Outcomes 
where o_battle = 'Denmark Strait');
;
.headers off

select '5----------';
-- Correct
.headers on
select c_country, count(*) from ships
inner join outcomes on o_ship is s_name
inner join classes on c_class is s_class
where o_result is 'damaged'
group by c_country;
;
.headers off

select '6----------';
-- Correct
.headers on
select c_country, min(tot) from 
(select c_country, count(o_result) as tot from outcomes
inner join ships on s_name is o_ship
inner join classes on c_class is s_class
where o_result is 'damaged'
group by c_country
order by tot);

;
.headers off

select '7----------';
-- Correct
.headers on
delete from outcomes
where o_battle is 'Denmark Strait' and o_ship in (
select o_ship from outcomes
inner join classes on c_class is s_class 
inner join ships on s_name is o_ship 
where c_country is 'Japan');
;
.headers off

select '8----------';
-- Correct
.headers on
select o_ship from outcomes
group by o_ship having count(*) >= 2;
;
.headers off

select '9----------';
-- Correct
.headers on
select c1.c_country, count( c1.c_type is 'bb'), count( c2.c_type is 'bc') from classes as c1, classes as c2, ships
where c1.c_type is 'bb' and c2.c_type is 'bc'
and c2.c_class is s_class 
and c1.c_country is c2.c_country
group by c1.c_country, c2.c_country;
;
.headers off

select '10---------';
-- Correct
.headers on
select distinct c_class, c_numGuns * 2 from ships
inner join classes on c_class is s_class
where s_launched >= '1940'
group by s_class;
;
.headers off

select '11---------';
-- Correct
.headers on
select s_class from ships
group by s_class having count(*) is 2;
;
.headers off

select '12---------';
-- Correct
.headers on
select s_class from ships
where s_name not in (select o_ship from outcomes
inner join ships on s_name is o_ship
where o_result is 'sunk')
group by s_class having count(*) is 2;  
;
.headers off

select '13---------';
-- Correct
.headers on
delete from ships
where s_name in (select s_name from ships
inner join outcomes on o_ship is s_name
where o_result is 'sunk');
;
.headers off

select '14---------';
-- Correct
.headers on
select c_country, sum(c_numGuns) from classes
inner join ships on s_class is c_class
group by c_country;
;
.headers off

select '15---------';
-- Correct
.headers on
select a.c_country, a.sum - ifnull(b.sum, 0) from
(select c_country, sum(c_numGuns) as sum from classes
inner join ships on s_class is c_class
group by c_country) as a

left join(select c_country, count(*) as sum from classes
inner join outcomes on o_ship is s_name
inner join ships on s_class is c_class
group by c_country) as b on a.c_country is b.c_country;
;
.headers off

select '16---------';
-- Correct
.headers on
insert into ships (s_name, s_class, s_launched)
select c_class, c_class, min(s_launched) from classes, ships
where s_class not in (select c_class from classes
where s_launched in (select min(s_launched) from ships)); 
;
.headers off

select '17---------';
.headers on

;
.headers off