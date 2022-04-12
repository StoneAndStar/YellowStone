/*Fallout 13 Legion Faction armor.

I don't care who touches this, keep this in mind: ANY changes you make are to be balanced to the faction. Giving one faction a notable 'edge' over the other.
Any changes without this is not only a horrid decision. Any and all changes should go through balance and showing to gerneral coders to avoid bias.

Also, an example - NCR Trooper armor should not be 'better' inherantly than any other equal faction armor. A Prime and Trooper /can/ sport different values, but they need the same amount of
dedicated points or less slowdown to compensate for this. Do this for all classes; all classes should have a counter equivilent.

Trooper -> Prime
Ranger -> Veteran
LT -> Centurion



- Khan armor should be similar to Legion; relatively weak in terms of armor protection but thus lower slowdown. Khans are technically a 'minor' factions but should be balanced akin to Outlaws.
Though with less gear to make up for the fact they have 'faction protection' and organization.
*/

//Light Armor

//Scout armor; equal to that of leather armor.
/obj/item/clothing/suit/armor/f13/khan/scout
	name = "Khan scout jacket"
	desc = "A leather jacket complete with Khan isnignia and symbols. While providing little protection it at least doesn't hinder ones movement!"
	icon_state = "scout"
	item_state = "scout"
	slowdown = 0.1
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	armor = list(
		melee = 25,
		bullet = 25,
		energy = 20,
		bomb = 10,
		bio = 0,
		rad = 0
	)
	matter = list(
		MATERIAL_LEATHER = 10,
		MATERIAL_METAL = 10,
		MTERIAL_CLOTH = 20
	)

//Pusher armor; equal to that of reinforced leather armor.
/obj/item/clothing/suit/armor/f13/khan/pusher
	name = "Khan leather jacket"
	desc = "A jacket that reminds you of either Greasers from old-style billboards or some biker dealing meth. Or both. Based on the Khan logo that is on the shoulder - you can guess the latter is likely."
	icon_state = "pusher"
	item_state = "pusher"
	slowdown = 0.1
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 30,
		bullet = 30,
		energy = 25,
		bomb = 15,
		bio = 0,
		rad = 0
	)


//Medium Armor

//Runner armor; equal to that of metal armor.
/obj/item/clothing/suit/armor/f13/khan/runner
	name = "reinforced runner coat"
	desc = "A leather jacket with a pre-war scrap acting as reinforcement under it. A Khan symbol adornes its shoulder, showing their colors proudly."
	icon_state = "runner"
	item_state = "runner"
	equip_delay = 1 SECONDS
	slowdown = 0.15
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 25,
		bullet = 35,
		energy = 25,
		bomb = 10,
		bio = 0,
		rad = 0
	)

//Lead Runner armor; equal to that of reinforced metal armor.
/obj/item/clothing/suit/armor/f13/khan/leadrunner
	name = "reinforced lead runner jacket"
	desc = "A leather jacket with a metal reinforced chest plate under it. A Khan symbol adornes its shoulder, showing their colors proudly."
	icon_state = "leadrunner"
	item_state = "leadrunner"
	equip_delay = 1 SECONDS
	slowdown = 0.15
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 30,
		bullet = 40,
		energy = 25,
		bomb = 10,
		bio = 0,
		rad = 0
	)

//Great Khan armor; equal to that of combat armor.
/obj/item/clothing/suit/armor/f13/khan/greatkhan
	name = "\"Great Khan\" armored coat"
	desc = "Worn only by the greatest of Khans this armored coat sports not only Khan colors but hides a set of armor akin to that of pre-war military armor under it. Bless whoever stitched this mess together!"
	icon_state = "greatkhan"
	item_state = "greatkhan"
	equip_delay = 1 SECONDS
	slowdown = 0.15
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 30,
		bullet = 45,
		energy = 30,
		bomb = 15,
		bio = 0,
		rad = 5
	)


//Heavy Armor

//Juggernaut Khan armor; crafted, not really made to start with.
/obj/item/clothing/suit/armor/heavy/f13/khan/juggernaut
	name = "Khan juggernaut heavy armor"
	desc = "What was a bomb-squad suit has turned into a drug lords dream armor to be used in some 'last-stand'. While you may be slow, you wear your colors proudly. \
			Perfect for either a bank heist, a final stand of ones drug empire or a strange LARPer who wants to feel important."
	icon_state = "juggernaut"
	item_state = "juggernaut"
	slowdown = 0.3
	equip_delay = 2 SECONDS
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	armor = list(
		melee = 35,
		bullet = 55,
		energy = 25,
		bomb = 45,
		bio = 40,
		rad = 20
	)
