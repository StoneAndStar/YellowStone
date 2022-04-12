/*Fallout 13 NCR Faction armor.

I don't care who touches this, keep this in mind: ANY changes you make are to be balanced to the faction. Giving one faction a notable 'edge' over the other.
Any changes without this is not only a horrid decision. Any and all changes should go through balance and showing to gerneral coders to avoid bias.

Also, an example - NCR Trooper armor should not be 'better' inherantly than any other equal faction armor. A Prime and Trooper /can/ sport different values, but they need the same amount of
dedicated points or less slowdown to compensate for this. Do this for all classes; all classes should have a counter equivilent.

Trooper -> Prime
Ranger -> Veteran
LT -> Centurion



- NCR do not get a lot of light armors besides the patrol ranger, conscripts and perhaps the scout (If the loadout is balanced). All other armors are medium; with the exemption of salvaged PA.
*/

//Light Armors

//Conscript armor; equal to that of regular leather armor.
/obj/item/clothing/suit/armor/f13/ncr/conscript
	name = "conscript armor kit"
	desc = "A tanned brahmin leather light armor coated with NCR isignia and colors to be identifiable. Given to the expendable conscripts of the NCR."
	icon_state = "conscript"
	item_state = "conscript"
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
	matter = list(
		MATERIAL_LEATHER = 10,
		MTERIAL_CLOTH = 20
	)

//Patrol Ranger armor; as good as reinforced leather.
/obj/item/colthing/suit/armor/f13/ncr/patrolranger
	name = "NCR trail ranger jacket"
	desc = "A tanned brahmin leather jacket made by locals of the Mojave and Arizona for the Ranger core. While serving little in the way of protection this armor allows for decent protection. \
			At least it looks stylish!"
	icon_state = "trail"
	item_state = "trail"
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

//Medium Armors

//Trooper armor; as good as metal armor.
/obj/item/clothing/suit/armor/f13/ncr/trooper
	name = "NCR trooper mantle"
	desc = "A lightly armored mantle given to troopers in the NCR. While it doesn't offer much in the way of protection it at least can stop a bullet! Ahhh, thank god the Republic cares.. hopefully."
	icon_state = "trooper"
	item_state = "trooper"
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

//Corporal/Sergeant armor; as good as reinforced metal armor.
/obj/item/clothing/suit/armor/f13/ncr/nco
	name = "NCR NCO mantle"
	desc = "A lightly armored with some reinforced padding added to it for NCR NCOs. While it doesn't offer much in the way of protection, it's at least better than the troopers!"
	icon_state = "nco"
	item_state = "nco"
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

//First Sergeant armor; as good as combat armor.
/obj/item/clothing/suit/armor/f13/ncr/firstsarge
	name = "NCR reinforced mantle"
	desc = "An armored mantle and gear outfited to the Republic's valuable NCOs. Sure, it's easy to replace a trooper - but a First Sergeant? Not so easy!"
	icon_state = "sarge"
	item_state = "sarge"
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

//Leuitenant armor; as good as combat armor.
/obj/item/clothing/suit/armor/f13/ncr/leutenant
	name = "NCR LT mantle"
	desc = "A well protected armored vest outfitted with reinforced padding for the Republic's LTs."
	icon_state = "lt"
	item_state = "lt"
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

//Ranger armor; as good as combat armor.
/obj/item/clothing/suit/armor/f13/ncr/ranger
	name = "NCR ranger coat"
	desc = "A well armored coat that looks as if it's been to hell and back. The faded brahmin hide shouldn't be underestimated though as under it lays a well reinforced coat and strips of armor."
	icon_state = "sarge"
	item_state = "sarge"
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

//Ranger armor; as good as combat armor.
/obj/item/clothing/suit/armor/f13/ncr/vetranger
	name = "NCR veteran ranger coat"
	desc = "Before the war this suit was used by riot police. Now - it's used by the Republic's finest. The faded look to the coat hides behind its legacy - a legacy of police beatings, raider decimation and Legion capping."
	icon_state = "sarge"
	item_state = "sarge"
	equip_delay = 1 SECONDS
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

//Heavy Trooper PA; equal to that of salvage PA. No fusion cells required.
/obj/item/clothing/suit/armor/heavy/f13/t45b/ncr
	name = "NCR salvaged power armor"
	desc = "It's a set of early-model T-45 power armor with a custom air conditioning module and stripped out servomotors. Bulky and slow, but almost as good as the real thing. Plus, it rocks a new NCR paintjob!"
	icon_state = "heavytrooper"
	item_state = "heavytrooper"
	slowdown = 0.5
	armor = list(
		melee = 55,
		bullet = 60,
		energy = 55,
		bomb = 45,
		bio = 80,
		rad = 80
	)