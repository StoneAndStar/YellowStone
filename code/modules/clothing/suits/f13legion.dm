/*Fallout 13 Legion Faction armor.

I don't care who touches this, keep this in mind: ANY changes you make are to be balanced to the faction. Giving one faction a notable 'edge' over the other.
Any changes without this is not only a horrid decision. Any and all changes should go through balance and showing to gerneral coders to avoid bias.

Also, an example - NCR Trooper armor should not be 'better' inherantly than any other equal faction armor. A Prime and Trooper /can/ sport different values, but they need the same amount of
dedicated points or less slowdown to compensate for this. Do this for all classes; all classes should have a counter equivilent.

Trooper -> Prime
Ranger -> Veteran
LT -> Centurion



- Legion aims for mobility over armor so some armors, like explorer or recruits, will lack in armor compared to their NCR counterpart. However they have more speed.
*/

//Light Armors

//Recruit armor; equal to that of an armored
/obj/item/clothing/suit/armor/f13/legion/recruit
	name = "Legion recruit armor kit"
	desc = "A tanned brahmin leather light armor coated with NCR isignia and colors to be identifiable. Given to the expendable conscripts of the NCR."
	icon_state = "recruit"
	item_state = "recruit"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor = list(
		melee = 25,
		bullet = 10,
		energy = 10,
		bomb = 5,
		bio = 0,
		rad = 0
	)
	matter = list(
		MATERIAL_LEATHER = 10,
		MTERIAL_CLOTH = 20
	)

//Explorer armor; equal to that of regular leather armor.
/obj/item/clothing/suit/armor/f13/legion/explorer
	name = "Legion explorer armor"
	desc = "A tanned brahmin leather light armor coated with NCR isignia and colors to be identifiable. Given to the expendable conscripts of the NCR."
	icon_state = "explorer"
	item_state = "explorer"
	slowdown = 0.1
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 25,
		bullet = 25,
		energy = 20,
		bomb = 10,
		bio = 0,
		rad = 0
	)

//Medium Armors

//Prime armor; as good as metal armor.
/obj/item/clothing/suit/armor/f13/legion/prime
	name = "Legion prime armor"
	desc = "Armor made from post-war materials mixed with pre-war scrap. This metal armor is custom crafted, forged and kitted to the Legion's front line soldiers.."
	icon_state = "prime"
	item_state = "prime"
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

//Decanus armor; as good as reinforced metal armor.
/obj/item/clothing/suit/armor/f13/legion/decanus
	name = "Legion decanus armor"
	desc = "Reinforced armor made from post-war materials mixed with pre-war scrap. This metal armor is custom crafted, forged and kitted to the Legion's Decani."
	icon_state = "decanus"
	item_state = "decanus"
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

//Legion Veteran armor; as good as combat armor.
/obj/item/clothing/suit/armor/f13/legion/veteran
	name = "Legion veteran armor"
	desc = "A set of reinforced armor equiped to the Legion's veteran fighters. Full of dents and dings, this armor looks as if it has seen countless years of combat already."
	icon_state = "veteran"
	item_state = "veteran"
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

//Legion Vex armor; as good as combat armor Mk2.
/obj/item/clothing/suit/armor/f13/legion/vexillarius
	name = "Legion vexillarius armor"
	desc = "A set of Legion armor complete with a banner standard on it, projecting not only a look of extravigance but authority as it shimmers in the bright desert sun. \
			Not only armor a battle-hardened elite, but also one of a field commander."
	icon_state = "vex"
	item_state = "vex"
	equip_delay = 1 SECONDS
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	slowdown = 0.2
	armor = list(
		melee = 30,
		bullet = 50,
		energy = 35,
		bomb = 20,
		bio = 0,
		rad = 10
	)

//Centurion armor; as good as combat armor Mk2.
/obj/item/clothing/suit/armor/f13/legion/centurion
	name = "Legion centurion armor"
	desc = "A set of armor crafted through a mix of pre-war scrap, expert foraging and battle trophies strapped to it. Parts of Ranger gear, parts of Paladin gear - proof one is not only experienced, but deadly."
	icon_state = "lt"
	item_state = "lt"
	equip_delay = 1 SECONDS
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	slowdown = 0.2
	armor = list(
		melee = 30,
		bullet = 50,
		energy = 35,
		bomb = 20,
		bio = 0,
		rad = 10
	)


//Heavy Armor

//Libator Armor; as good as salvaged PA. No cells required.
/obj/item/clothing/suit/armor/heavy/f13/t45b/legion
	name = "Libator salvaged power armor"
	desc = "It's a set of early-model T-45 power armor with a custom air conditioning module and stripped out servomotors. Bulky and slow, but almost as good as the real thing. \
			This one is complete with Legion markings and multiple extra pieces of strapped armor to it to make up for the rusted steel."
	icon_state = "libator"
	item_state = "libator"
	slowdown = 0.5
	armor = list(
		melee = 55,
		bullet = 60,
		energy = 55,
		bomb = 45,
		bio = 80,
		rad = 80
	)