
select o.owner_id, o.owner_phone, apartments_id, adress from owners as o
left join apartments on o.owner_id = apartments.owner_id 
order by o.owner_id ASC;

select * from apartments where rooms = 3 
and flor < b_flors 
and flor > 1
and add_date /*> CURRENT_DATE-interval'1' month;*/ >= date_trunc('month', CURRENT_DATE);

select * from apartments where rooms = 3 
and f_square <= 80
and price < 150000;

SELECT k_square, l_square, f_square from apartments 
where (k_square + l_square) <= f_square;

UPDATE apartments 
SET add_date = TO_DATE('2010-10-01', 'yyyy-mm-dd')
WHERE apartments_id = 10;

SELECT * from apartments
where apartments_id = 10;

create VIEW View1 AS 
SELECT Owners.owner_id,
Count(apartments.apartmens_id) as count_app,
sum(apartments.f_square) as sum_square,
from owners, apartments
WHERE owners.owner_id = apartments.apartments_id
GROUP BY Owneners.owner_id;

CREATE VIEW View2 as 
SELECT * from apartments
WHERE apartments.rooms = 2;

CREATE VIEW View3 as 
SELECT owner_id, owner_phone, f_square
from apartments as appart, owners as own
WHERE appart.rooms = 1
GROUP BY owner_id;


CREATE TABLE Prices (
    klass int not NULL PRIMARY key UNIQUE ,
    price DECIMAL  NOT NULL
);

CREATE TABLE Numbers( 
    room_number int NOT NULL PRIMARY key UNIQUE ,
    klass int NOT NULL REFERENCES Prices(klass),
    places int not null,
    bronered_place int
);

CREATE TABLE Visitors( 
    pass_num CHAR not null PRIMARY KEY UNIQUE ,
    room int not null REFERENCES Numbers(room_number),
    vis_name char not null,
    gender int DEFAULT 1 not null,
    organization char,
    date_inn DATE not null,
    date_out date 
);

select room_number, gender, places - bronered_place
from Numbers, visitors
where places > bronered_place
GROUP by room_number;

select room_number, places from numbers
where places = bronered_place;

select * from Visitors
WHERE date_out = null and date_inn <= CURRENT_DATE;

select room_number, gender, places - bronered_place as free_places
from Numbers
left JOIN  Visitors on Numbers.room_number = Visitors.room
where places > bronered_place;

SELECT vis_name, date_inn, date_out, price, (date_inn - date_out) * price AS cost
from visitors, numbers, prices 
where pass_num = 'asds' and 
visitors.room = numbers.room_number and
 numbers.klass = prices.klass; 


