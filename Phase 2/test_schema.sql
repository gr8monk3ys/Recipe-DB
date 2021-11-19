select '1----------';
select r2_name from rating
where r2_name = 'Hells Kitchen' or r2_id = 1;

select '2----------';
update establishment set e_restkey = 4 where e_restkey = 1;

select '3----------';
delete from establishment
where pt_slot1 <> 'None' and e_restkey = 1;

select '4----------';
insert into establishment values(4, 'McDonalds', '123 Bellview Ln.',5,'909-653-3235');

select '5----------';
select e_name from establishment
inner join rating on r2_name = e_name 
where r2_id > 1;

select '6----------';
select pk_name,
       mx_hp,
       mx_atk,
       mx_def,
       mx_satk,
       mx_sdef,
       mx_spd,
       mx_mxst
from Customer, Max
 where pk_pkid = mx_pkid and (pk_type1 = 'Flying' or pk_type2 = 'Flying') and mx_spd > 250
 group by pk_name;

select '7----------';
select pk_name,
       mn_pkid
  from Min,
       Pokemon
 where mn_atk >= 100 and 
       mn_hp >= 220 and 
       pk_pkid = mn_pkid;

select '8----------';
insert into Pokemon values(21, 2, 'Normal', 'Flying', 'Spearow');

select '9----------';
delete from Pokemon
where pk_pkid = 21;

select '10----------';
select pk_name from Stat
inner join Pokemon on pk_pkid = s_pkid
where pk_pkid = s_pkid and s_def > 60 and s_sdef > 60;

select '11----------';
11. update Type
   set t_name = 'Elec'
 where t_typeid = 13;

select '12----------';
12. insert into Party (pt_slot2)
values ('20');

select '13----------';
13. select pk_name, pt_slot1, pt_ptid
from pokemon, Party
 where pt_slot1 = pk_pkid and pk_type1 = 'Grass'
 group by pt_ptid;

select '14----------';
delete from Party
where pt_slot1 > 0;

select '15----------';

select '16---------';
insert into ships (s_name, s_class, s_launched)
select c_class, c_class, min(s_launched) from classes, ships
where s_class not in (select c_class from classes
where s_launched in (select min(s_launched) from ships));

select '17---------';

select '18---------';

select '19---------';

select '20---------';