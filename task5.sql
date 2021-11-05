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

select * from Visitors
WHERE date_out = null and date_inn <= CURRENT_DATE;

select room_number, places from numbers
where places = bronered_place;

select room_number, gender, places - bronered_place as free_places
from Numbers
left JOIN  Visitors on Numbers.room_number = Visitors.room
where places > bronered_place;


SELECT vis_name, date_inn, date_out, price, (date_inn - date_out) * price AS cost
from visitors, numbers, prices 
where pass_num = 'asds' and 
visitors.room = numbers.room_number and
 numbers.klass = prices.klass; 