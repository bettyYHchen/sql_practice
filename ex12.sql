/* Select all the cats */
SELECT * FROM pet WHERE pet.breed = "cat";
/* Update all cats to set adopted to False */
UPDATE pet SET adopted = 0
WHERE name = "cat";
/* Select all the pets belonging to a specific person */
SELECT pet.id, pet.name, pet.age, pet.adopted
FROM pet, person_pet, person
WHERE
pet.id = person_pet.pet_id AND
person_pet.person_id = person.id AND
person.first_name = "Betty";
/* Update all the cats belonging to a specific person to set adopted to True. */
UPDATE pet SET adopted = 1
WHERE id IN (
SELECT pet.id
FROM pet, person_pet, person
WHERE
pet.id = person_pet.pet_id AND
person_pet.person_id = person.id AND
person.first_name="Betty"
) AND
breed = "cat";
