/*Fallout 13 Brotherhood Faction helmets.

I don't care who touches this, keep this in mind: ANY changes you make are to be balanced to the faction. Giving one faction a notable 'edge' over the other.
Any changes without this is not only a horrid decision. Any and all changes should go through balance and showing to gerneral coders to avoid bias.

Also, an example - NCR Trooper helmets should not be 'better' inherantly than any other equal faction armor. A Prime and Trooper /can/ sport different values, but they need the same amount of
dedicated points to compensate for this. Do this for all classes; all classes should have a counter equivilent.

Trooper -> Prime
Ranger -> Veteran
LT -> Centurion



- BOS get good helmets because muh combat armor hehe hoho - if this is an issue just make them metal helmets, I don't fucking know.
*/

//Non-Armor Helmets

/obj/item/clothing/head/armor/f13/bos/beret
	name = "Brotherhood beret"
	desc = "A beret showing off one's service to the Brotherhood of Steel. It looks - very.. blue."
	icon_state = "bos_beret"
	armor = list(
		melee = 15,
		bullet = 5,
		energy = 5,
		bomb = 5,
		bio = 0,
		rad = 0
	)

//Helmets

//Initiate helmet; akin to a metal helmet.
/obj/item/clothing/head/armor/f13/bos/initiate
	name = "Brotherhood intiate helmet"
	desc = "A once servicable combat helmet that has seen.. clearly better days. It looks fine at first glance, like a proper helmet, but upon inspection on the inside once can see multiple patched holes. \
			Probably not much better than a metal helmet.."
	body_parts_covered = HEAD
	flags_inv = BLOCKHEADHAIR|HIDEEARS
	icon_state = "initiate"
	armor = list(
		melee = 30,
		bullet = 35,
		energy = 20,
		bomb = 25,
		bio = 5,
		rad = 5
	)

//Knight helmet; equal to a combat helmet.
/obj/item/clothing/head/armor/f13/bos/knight
	name = "Brotherhood combat helmet"
	desc = "An advanced pre-war military helmet, complete with cushioning and advanced protection. This one has a nice new coating of paint and a nice Brotherhood icon on its front!"
	icon_state = "knight"
	body_parts_covered = HEAD | EARS | EYES
	flags_inv = BLOCKHEADHAIR|HIDEEARS
	armor = list(
		melee = 30,
		bullet = 45,
		energy = 30,
		bomb = 30,
		bio = 0,
		rad = 0
	)

//Senior Knight helmet; equal to that of a combat helmet with a face shield.
/obj/item/clothing/head/armor/faceshield/f13/bos/knight
	name = "advanced Brotherhood combat helmet"
	desc = "An advanced pre-war military helmet, complete with cushioning and advanced protection. This one has a nice new coating of paint, a rank insignia, and visor to protect from flashes!"
	icon_state = "senior"
	body_parts_covered = HEAD | EARS | EYES
	flags_inv = BLOCKHEADHAIR|HIDEEARS
	flash_protection = FLASH_PROTECTION_MAJOR
	armor = list(
		melee = 30,
		bullet = 45,
		energy = 30,
		bomb = 30,
		bio = 0,
		rad = 0
	)

//Knight Captain helmet; equal to that of a combat helmet mk2 with a face shield.
/obj/item/clothing/head/armor/faceshield/f13/bos/captain
	name = "Brotherhood mk2 combat helmet"
	desc = "An advanced pre-war military helmet, complete with cushioning, advanced protection, reinforced plating - and - this model appears to sport a visor and Brotherhood colors!"
	icon_state = "captain"
	body_parts_covered = HEAD | EARS | EYES
	flags_inv = BLOCKHEADHAIR|HIDEEARS
	flash_protection = FLASH_PROTECTION_MAJOR
	armor = list(
		melee = 50,
		bullet = 40,
		energy = 30,
		bomb = 30,
		bio = 10,
		rad = 0
	)