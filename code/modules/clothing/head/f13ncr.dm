/*Fallout 13 NCR Faction helmets.

I don't care who touches this, keep this in mind: ANY changes you make are to be balanced to the faction. Giving one faction a notable 'edge' over the other.
Any changes without this is not only a horrid decision. Any and all changes should go through balance and showing to gerneral coders to avoid bias.

Also, an example - NCR Trooper helmets should not be 'better' inherantly than any other equal faction armor. A Prime and Trooper /can/ sport different values, but they need the same amount of
dedicated points to compensate for this. Do this for all classes; all classes should have a counter equivilent.

Trooper -> Prime
Ranger -> Veteran
LT -> Centurion



- NCR helmets are based off the ones in New Vegas; slightly armored, ultimately weak-ish. Boolets don't hit heads well at all so - you know. Suffer with your LARP pith helmets, wannabe anglos.
*/

//Non-Armor

//Trooper beret
/obj/item/clothing/head/armor/f13/ncr/beret
	name = "NCR beret"
	desc = "A beret showing off one's service to the NCR. Typically worn in formal events, by veterans or by scouts trying to compensate."
	icon_state = "trooper_beret"
	armor = list(
		melee = 15,
		bullet = 5,
		energy = 5,
		bomb = 5,
		bio = 0,
		rad = 0
	)

//NCO beret
/obj/item/clothing/head/armor/f13/ncr/beret/nco
	name = "NCR NCO beret"
	desc = "A beret showing off one's service to the NCR. This one denotes ones NCO rank."
	icon_state = "nco_beret"

//LT beret
/obj/item/clothing/head/armor/f13/ncr/beret/lt
	name = "NCR LT beret"
	desc = "A beret showing off one's service to the NCR. This one denotes ones LT rank. This one appears slighly reinforced since.. well, LTs head protection is hard to comeby."
	icon_state = "lt_beret"
	armor = list(
		melee = 25,
		bullet = 10,
		energy = 10,
		bomb = 15,
		bio = 0,
		rad = 0
	)

//Ranger beret
/obj/item/clothing/head/armor/f13/ncr/beret/ranger
	name = "Ranger beret"
	desc = "A red beret showing one's service in the Ranger core. For those who wish to either get thanks for their service or trying to pick up chem junkies on the strip."
	icon_state = "ranger_beret"
	armor = list(
		melee = 25,
		bullet = 10,
		energy = 10,
		bomb = 15,
		bio = 0,
		rad = 0
	)

//Ranger campaign hat
/obj/item/clothing/head/armor/f13/ncr/ranger
	name = "Ranger campaign hat"
	desc = "A campaign hat akin to what sheriff departments, deputieis, highway patrolsmen and drill sergeants wore pre-war. This one has some reinforced metal in its brim."
	armor = list(
		melee = 25,
		bullet = 10,
		energy = 10,
		bomb = 15,
		bio = 0,
		rad = 0
	)

//Helmets

//Trooper helmet; equal to that of metal helmets. Intended to be given to troopers all the way to NCOs.
/obj/item/clothing/head/armor/f13/ncr/trooper
	name = "NCR trooper helmet"
	desc = "A helmet made of pre-war scrap and compressed into a pith-helmet like design. Almost makes you wish for a nuclear winter.."
	body_parts_covered = HEAD
	icon_state = "trooper"
	armor = list(
		melee = 30,
		bullet = 35,
		energy = 20,
		bomb = 25,
		bio = 5,
		rad = 5
	)

//First Sergeant helmet; equal to that of combat helmet.
/obj/item/clothing/head/armor/f13/ncr/sarge
	name = "NCR reinforced helmet"
	desc = "A helmet of pre-war design intended to be used by combat troops at the front. This one has received a repaint into the NCR's colors!"
	icon_state = "sarge"
	body_parts_covered = HEAD | EARS | EYES | FACE
	armor = list(
		melee = 30,
		bullet = 45,
		energy = 30,
		bomb = 30,
		bio = 0,
		rad = 0
	)

//Veteran Ranger helmet; equal to that of combat helmet Mk2.
/obj/item/clothing/head/armor/f13/ncr/vetranger
	name = "elite Ranger helmet"
	desc = "A piece of pre-war riot gear outfited for use by the NCR. These rare-find helmets typically sport nightvision!"
	icon_state = "ranger_broken"
	body_parts_covered = HEAD | EARS | EYES | FACE
	flags_inv = BLOCKHEADHAIR|HIDEEARS|HIDEEYES|HIDEFACE
	flash_protection = FLASH_PROTECTION_MAJOR
	item_flags = THICKMATERIAL | COVER_PREVENT_MANIPULATION
	action_button_name = "Toggle Night Vision"
	var/obj/item/clothing/glasses/bullet_proof_ironhammer/hud
	armor = list(
		melee = 60,
		bullet = 55,
		energy = 50,
		bomb = 50,
		bio = 50,
		rad = 50
	)