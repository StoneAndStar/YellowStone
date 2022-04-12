/*Fallout 13 Khan Faction helmets.

I don't care who touches this, keep this in mind: ANY changes you make are to be balanced to the faction. Giving one faction a notable 'edge' over the other.
Any changes without this is not only a horrid decision. Any and all changes should go through balance and showing to gerneral coders to avoid bias.

Also, an example - NCR Trooper helmets should not be 'better' inherantly than any other equal faction armor. A Prime and Trooper /can/ sport different values, but they need the same amount of
dedicated points to compensate for this. Do this for all classes; all classes should have a counter equivilent.

Trooper -> Prime
Ranger -> Veteran
LT -> Centurion



- Khans don't.. get many helmets. Because they don't need many.
*/

//Scout helmet; basically a firehelmet.
/obj/item/clothing/head/armor/f13/khan/scout
	name = "Khan scout helmet"
	desc = "Mostly made of leather and some hardened materials this skull-cap looks.. a bit strange. But, hell, it fits a Khan!"
	body_parts_covered = HEAD
	flags_inv = BLOCKHEADHAIR|HIDEEARS
	icon_state = "scouthelm"
	armor = list(
		melee = 25,
		bullet = 10,
		energy = 10,
		bomb = 15,
		bio = 0,
		rad = 0
	)

//Khan helmet; equal to that of a metal helmet.
/obj/item/clothing/head/armor/f13/khan/helmet
	name = "Khan skull cap"
	desc = "A crudely constructed helmet made mostly of compressed scrap metals together into a helmet with small horns. Comedic, but Khan-like!"
	body_parts_covered = HEAD
	flags_inv = BLOCKHEADHAIR|HIDEEARS
	icon_state = "khanhelm"
	armor = list(
		melee = 30,
		bullet = 35,
		energy = 20,
		bomb = 25,
		bio = 5,
		rad = 5
	)

//Lead Runner helmet; equal to that of a combat helmet with a visor.
/obj/item/clothing/head/armor/faceshield/f13/khan/helmet
	name = "riot Khan-bat helmet"
	desc = "An advanced pre-war military helmet, complete with cushioning, advanced protection, reinforced plating - and - this model appears to sport a visor! This one has a new paintjob and symbol on it!"
	icon_state = "advkhan"
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

//Great Khan helmet; equal to that of a combat helmet.
	name = "Great Khan helmet"
	desc = "An advanced pre-war military helmet, complete with extra reinforcement and what looks to be a near 'booze cap' from a pre-war baseball stadium. A strange yet amazing looking reinforced helmet!"
	icon_state = "advkhan"
	body_parts_covered = HEAD | EARS | EYES | FACE
	flash_protection = FLASH_PROTECTION_MAJOR
	armor = list(
		melee = 30,
		bullet = 45,
		energy = 30,
		bomb = 30,
		bio = 0,
		rad = 0
	)