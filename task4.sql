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