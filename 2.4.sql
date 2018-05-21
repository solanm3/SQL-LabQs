select concat(first_name, ' ', last_name) AS Name, email, phone
From customer c, address a
Where c.address_id = a.address_id
ORDER BY name;