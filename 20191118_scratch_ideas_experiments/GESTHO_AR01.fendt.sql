select *
from   t_zwparameter
order  by zwpar_id desc;

select max(tzwi.zwri_zwpar_id) 
from   t_zwindex     tzwi
join   t_zwparameter tzwp
on     tzwi.zwri_zwpar_id   =  tzwp.zwpar_id 
where  tzwi.zwri_animal_id  =  990891259
and    tzwp.zwpar_publschweiz_id = 495;

select max(tzwi.zwri_zwpar_id) 
from   t_zwindex     tzwi
join   t_zwparameter tzwp
on     tzwi.zwri_zwpar_id   =  tzwp.zwpar_id 
where  tzwi.zwri_animal_id  =  990891259
and    tzwp.zwpar_publitb_id = 495;

select * 
from   t_zwindex
where  ZWRI_ANIMAL_ID = 990891259
and    zwri_zwpar_id  in (select max(tzwi.zwri_zwpar_id) 
from   t_zwindex     tzwi
join   t_zwparameter tzwp
on     tzwi.zwri_zwpar_id   =  tzwp.zwpar_id 
where  tzwi.zwri_animal_id  =  990891259
and    tzwp.zwpar_publschweiz_id = 495);