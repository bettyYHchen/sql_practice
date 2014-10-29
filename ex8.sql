DELETE FROM pet WHERE id IN (
SELECT pet.id
FROM pet, person_pet, person
WHERE
pet.id = person_pet.pet_id AND
person_pet.person_id = person.id AND
person.first_name = "Zed"
);

SELECT * FROM pet;
SELECT * FROM person_pet;

DELETE FROM person_pet
	WHERE pet_id NOT IN (
	    SELECT id FROM pet
	);
SELECT * FROM person_pet;