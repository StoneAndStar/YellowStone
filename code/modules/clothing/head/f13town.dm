/*Fallout 13 Khan Faction helmets.

I don't care who touches this, keep this in mind: ANY changes you make are to be balanced to the faction. Giving one faction a notable 'edge' over the other.
Any changes without this is not only a horrid decision. Any and all changes should go through balance and showing to gerneral coders to avoid bias.

Also, an example - NCR Trooper helmets should not be 'better' inherantly than any other equal faction armor. A Prime and Trooper /can/ sport different values, but they need the same amount of
dedicated points to compensate for this. Do this for all classes; all classes should have a counter equivilent.

Trooper -> Prime
Ranger -> Veteran
LT -> Centurion



- I don't fucking know. Fuck down. I'm only giving security helmets and some like misc shit like a town beret.
*/

//Hats

/obj/item/clothing/head/armor/f13/town/beret
	name = "Hometown beret"
	desc = "A beret made for the people of Hometown; a stylish headpiece! Thouh.. it gives close to no protection."
	icon_state = "town_beret"
	armor = list(
		melee = 15,
		bullet = 5,
		energy = 5,
		bomb = 5,
		bio = 0,
		rad = 0
	)

//Armored Helmets

//Marshal helmet; equal to that of combat armor with a visor.
/obj/item/clothing/head/armor/faceshield/f13/town/marshal
	name = "marshal riot helmet"
	desc = "An advanced pre-war military helmet, complete with cushioning, advanced protection, reinforced plating - and - this model appears to sport a visor! This one has a new paintjob and symbol on it!"
	icon_state = "marshal"
	body_parts_covered = HEAD | EARS | EYES
	flash_protection = FLASH_PROTECTION_MAJOR
	armor = list(
		melee = 30,
		bullet = 45,
		energy = 30,
		bomb = 30,
		bio = 0,
		rad = 0
	)

//Special MK2 with a visor. Needs the Ironhammer faceshield helmet piece. Also minor flash protection.
/obj/item/clothing/head/armor/faceshield/f13/town/provost
	name = "reinforced marshal riot helmet"
	desc = "An advanced pre-war military helmet, complete with cushioning, advanced protection, reinforced plating - and - this model appears to sport a visor! This one has a kick-ass blue paintjob!"
	icon_state = "provost"
	body_parts_covered = HEAD | EARS | EYES
	flash_protection = FLASH_PROTECTION_MAJOR
	armor = list(
		melee = 50,
		bullet = 40,
		energy = 30,
		bomb = 30,
		bio = 10,
		rad = 0
	)