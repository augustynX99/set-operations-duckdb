SELECT * from 
plants p 
left join plant_care pc 
on p.plant_id = pc.plant_id;

-- cross join, joins everything row in plants with every row in plant_care
SELECT
    p.plant_id,
    p.plant_name,
    pc.water_schedule,
    pc.sunlight
FROM
    plants p
    CROSS JOIN plant_care pc;