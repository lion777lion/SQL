-------------------------------------------------------------------------------------------
select * from apartments where rooms = 3 
and flor != b_flors 
and flor > 1
and add_date >= date_trunc('month', CURRENT_DATE);
-------------------------------------------------------------------------------------------
select * from apartments where rooms = 3 
and f_square <= 80
and price < 150000
-------------------------------------------------------------------------------------------
select o.owner_id, o.owner_phone, apartments_id, adress from owners as o
left join apartments on o.owner_id = apartments.owner_id 
order by o.owner_id ASC
-------------------------------------------------------------------------------------------