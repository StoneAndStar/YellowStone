/*Fallout 13 Legion Faction armor.

I don't care who touches this, keep this in mind: ANY changes you make are to be balanced to the faction. Giving one faction a notable 'edge' over the other.
Any changes without this is not only a horrid decision. Any and all changes should go through balance and showing to gerneral coders to avoid bias.

Also, an example - NCR Trooper armor should not be 'better' inherantly than any other equal faction armor. A Prime and Trooper /can/ sport different values, but they need the same amount of
dedicated points or less slowdown to compensate for this. Do this for all classes; all classes should have a counter equivilent.

Trooper -> Prime
Ranger -> Veteran
LT -> Centurion



- BOS get no light armors but they get less slots. Such is the faction's flavor. Do NOT give them armor with low slowdown for balance reasons.
*/

//'Suit' Armors / Light Armor

//Scribe robes; equal to that of an armor kit but with surgical apron properties.
/obj/item/clothing/suit/storage/scribe
	name = "scribe robes"
	desc = "These robes don't offer much in the way of protection but they do prove ones intelligence in the Brotherhood of Steel! Commonly worn by the smartest of Scribes and schizophrenics."
	icon_state = "robes"
	item_state = "robes"
	blood_overlay_type = "armor"
	spawn_blacklisted = TRUE
	extra_allowed = list(
		/obj/item/tool/bonesetter,
		/obj/item/tool/cautery,
		/obj/item/tool/saw/circular,
		/obj/item/tool/hemostat,
		/obj/item/tool/retractor,
		/obj/item/tool/scalpel,
		/obj/item/tool/surgicaldrill,
		/obj/item/stack/medical/advanced/bruise_pack
	)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor = list(
		melee = 20,
		bullet = 15,
		energy = 10,
		bomb = 5,
		bio = 0,
		rad = 0
	)

//Field Scribe coat; equal to that of combat leather jacket but with surgical apron style pockets.
/obj/item/clothing/suit/storage/scribe
	name = "scribe robes"
	desc = "These robes don't offer much in the way of protection but they do prove ones intelligence in the Brotherhood of Steel! Commonly worn by the smartest of Scribes and schizophrenics."
	icon_state = "robes"
	item_state = "robes"
	blood_overlay_type = "armor"
	spawn_blacklisted = TRUE
	extra_allowed = list(
		/obj/item/tool/bonesetter,
		/obj/item/tool/cautery,
		/obj/item/tool/saw/circular,
		/obj/item/tool/hemostat,
		/obj/item/tool/retractor,
		/obj/item/tool/scalpel,
		/obj/item/tool/surgicaldrill,
		/obj/item/stack/medical/advanced/bruise_pack
	)
	slowdown = 0.05
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	armor = list(
		melee = 25,
		bullet = 20,
		energy = 15,
		bomb = 10,
		bio = 0,
		rad = 0
	)


//Medium Armors

//Initiate armor; equal to that of metal armor.
/obj/item/clothing/suit/armor/f13/bos/initiate
	name = "initiate combat armor kit"
	desc = "While this set of armor looks like combat armor you can tell it's.. not fully combat armor. Pieces appear to be ripped from metal armor and other kits and held together by leather and welding. \
			It provides decent protection but even the aged combat armor that's been painted over with Brotherhood colors doesn't look like it'd last much longer than regular metal."
	icon_state = "initiate"
	item_state = "initiate"
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

//Knight armor; equal to that of combat armor.
/obj/item/clothing/suit/armor/f13/bos/knight
	name = "Brotherhood combat armor"
	desc = "Usually given to knights, this armor is prestine pre-war military grade armor. Luckily the Brotherhood has a stockpile of these rare-ish pre-war armors to issue to their Knights."
	icon_state = "knight"
	item_state = "knight"
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

//Knight Captain armor; equal to that of combat armor Mk2.
/obj/item/clothing/suit/armor/f13/combat/mk2
	name = "reinforced Brotherhood combat armor"
	desc = "A reinforced set of combat armor given to the Knight Captain's of the Brotherhood of Steel. This armor has extra plating shoved to it and insignia depicting ones authority. Comepensation much..?"
	icon_state = "combat_armor_mk2"
	item_state = "combat_armor_mk2"
	equip_delay = 1 SECONDS
	slowdown = 0.2
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 30,
		bullet = 50,
		energy = 35,
		bomb = 20,
		bio = 0,
		rad = 10
	)

