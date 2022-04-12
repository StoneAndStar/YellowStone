/*Fallout 13 Legion Faction helmets.

I don't care who touches this, keep this in mind: ANY changes you make are to be balanced to the faction. Giving one faction a notable 'edge' over the other.
Any changes without this is not only a horrid decision. Any and all changes should go through balance and showing to gerneral coders to avoid bias.

Also, an example - NCR Trooper helmets should not be 'better' inherantly than any other equal faction armor. A Prime and Trooper /can/ sport different values, but they need the same amount of
dedicated points to compensate for this. Do this for all classes; all classes should have a counter equivilent.

Trooper -> Prime
Ranger -> Veteran
LT -> Centurion



- Legion helmets should sport high melee protection but 'meh' bullet and laser. Hard to hit the head with them anyway, but moreso melee protection reasons from mobs, etc.
*/

//Recruit helmet; akin to a firehelmet.
/obj/item/clothing/head/armor/f13/legion/recruit
	name = "Legion recruit helmet"
	desc = "A helmet made of leather such as from rugbe caps, dog or brahmin hide and parts of a football helmet."
	body_parts_covered = HEAD|EARS
	flags_inv = BLOCKHEADHAIR|HIDEEARS
	icon_state = "recruit"
	armor = list(
		melee = 25,
		bullet = 10,
		energy = 10,
		bomb = 15,
		bio = 0,
		rad = 0
	)

//Prime helmet; equal to that of a motorcycle helmet.
/obj/item/clothing/head/armor/f13/legion/prime
	name = "Legion prime helmet"
	desc = "An old pre-war football helmet with some reinforced plating. Perfect to protect one's head from impacts at high speeds."
	body_parts_covered = HEAD|EARS
	flags_inv = BLOCKHEADHAIR|HIDEEARS
	icon_state = "prime"
	armor = list(
		melee = 35,
		bullet = 20,
		energy = 15,
		bomb = 20,
		bio = 10,
		rad = 5
	)

//Decanus helmet; equal to that of a metal helmet.
/obj/item/clothing/head/armor/f13/legion/decanus
	name = "Legion decanus helmet"
	desc = "A crudely constructed helmet made from a football helmet, reinforced with metal and a headdress added to it for that extra 'umph'."
	body_parts_covered = HEAD|EARS
	flags_inv = BLOCKHEADHAIR|HIDEEARS
	icon_state = "decanus"
	armor = list(
		melee = 30,
		bullet = 35,
		energy = 20,
		bomb = 25,
		bio = 5,
		rad = 5
	)

//Veteran Legion helmet; equal to that of a reinforced metal helmet.
/obj/item/clothing/head/armor/f13/legion/veteran
	name = "veteran Legionary helmet"
	desc = "A cruedly constructed helmet made out of various metals from car parts to dustbins. This one appears to sport extra plates on the side of it, attempting to protect the wearer better."
	body_parts_covered = HEAD
	flags_inv = BLOCKHEADHAIR|HIDEEARS
	icon_state = "metalhelmet_r"
	armor = list(
		melee = 35,
		bullet = 40,
		energy = 25,
		bomb = 25,
		bio = 5,
		rad = 5
	)

//Veteran Decanus helmet; equal to that of a combat helmet.
/obj/item/clothing/head/armor/faceshield/f13/legion/decanus
	name = "reinforced Legion decanus helmet"
	desc = "A crudely constructed helmet made from a football helmet, reinforced with metal and a headdress added to it for that extra 'umph'. This one even contains a face-shield!"
	body_parts_covered = HEAD
	flags_inv = BLOCKHEADHAIR|HIDEEARS
	flash_protection = FLASH_PROTECTION_MAJOR
	icon_state = "metalhelmet_r"
	armor = list(
		melee = 50,
		bullet = 40,
		energy = 30,
		bomb = 30,
		bio = 10,
		rad = 0
	)

//Vexalarius helmet; equal to that of a combat helmet mk2.
/obj/item/clothing/head/armor/faceshield/f13/legion/vex
	name = "Legion vexalarius helmet"
	desc = "An advanced pre-war helmet that has been brutalized and modified into a helmet used by the Legion; mostly by slapping hides and trophies atop of it. Scary.."
	icon_state = "vex"
	body_parts_covered = HEAD | EARS | EYES | FACE
	flash_protection = FLASH_PROTECTION_MAJOR
	armor = list(
		melee = 50,
		bullet = 40,
		energy = 30,
		bomb = 30,
		bio = 10,
		rad = 0
	)

//Centurion helmet; equal to that of a raider combat helmet mk2.
/obj/item/clothing/head/armor/f13/legion/centurion
	name = "Legion Centurion helmet"
	desc = "A helmet made of scrap of fallen warriors. This helmet is made of multiple trophies taken from dead peoples, allowing for near full-face covering."
	icon_state = "combat_helmet_raider"
	body_parts_covered = HEAD | EARS | EYES
	action_button_name = "Toggle Headlamp"
	flash_protection = FLASH_PROTECTION_MAJOR
	brightness_on = 4
	armor = list(
		melee = 50,
		bullet = 40,
		energy = 30,
		bomb = 35,
		bio = 0,
		rad = 0
	)