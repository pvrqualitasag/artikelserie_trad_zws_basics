-- Jongleur
select * from animal where animarquemetallique = 120027093693;
-- 990891259

select count(*) 
from   animal
where  idpere = 990891259
and    anisex = 'F';
-- 10652

-- Index
select * 
from   t_zwindex
where  ZWRI_ANIMAL_ID = 990891259
order  by zwri_zwpar_id desc;

select * 
from   t_zwindex
where  ZWRI_ANIMAL_ID = 990891259
and    zwri_zwpar_id  in (select max(zwri_zwpar_id) from t_zwindex where zwri_animal_id = 990891259);

select *
from   t_zwparameter;

select max(zwpar_id)
from   t_zwparameter
where zwpar_publschweiz_id = 495;


select max(tzwi.zwri_zwpar_id) 
from   t_zwindex     tzwi
join   t_zwparameter tzwp
on     tzwi.zwri_zwpar_id   =  tzwp.zwpar_id 
where  tzwi.zwri_animal_id  =  990891259
and    tzwp.zwpar_publschweiz_id = 495;

select * 
from   t_zwindex
where  ZWRI_ANIMAL_ID = 990891259
and    zwri_zwpar_id  in (select max(tzwi.zwri_zwpar_id) 
from   t_zwindex     tzwi
join   t_zwparameter tzwp
on     tzwi.zwri_zwpar_id   =  tzwp.zwpar_id 
where  tzwi.zwri_animal_id  =  990891259
and    tzwp.zwpar_publschweiz_id = 495);

