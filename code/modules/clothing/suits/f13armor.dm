/*Fallout 13 armors. These are divided into 3 sections.

There are three armor sub-catagories here. These will be arranged by their armor-class.


Light armor - Light armor should have low amounts of protection over-all besides possibly some extra melee protection over medium armor. These should have no slowdown or close to none.

Medium armor - Medium armor should be 'faction standard' for combatants that are not scouts. These are the mid-grade armor for protection with a bit of slowdown.

Heavy armor - Heavy armor should be limited to special finds or specialist classes in factions; such as a heavy trooper. These should have a higher amount of slowdown.

- This is SPECIFICALLY for loot and non-factions/outlaws. Factions should have their own files. For example, suits/f13bos.dm, suits/f13ncr.dm, etc.
*/


//Light Armors

/obj/item/clothing/suit/armor/leatherjacket
	name = "leather jacket"
	desc = "A leather jacket made of either brahmin or lizard skin. Or.. well, you hope that it's brahmin or lizard skin."
	icon_state = "leather_jacket"
	item_state = "leather_jacket"
	blood_overlay_type = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	armor = list(
		melee = 20,
		bullet = 15,
		energy = 10,
		bomb = 5,
		bio = 0,
		rad = 0
	)
	matter = list(
		MATERIAL_LEATHER = 10,
		MTERIAL_CLOTH = 20
	)

/obj/item/clothing/suit/armor/armorkit
	name = "armor kit"
	desc = "Separate armor parts you can wear over the clothing to get the most basic protection from the dangers of wasteland.<br>It is unable to reflect laser beams and probably won't shield you from a random bullet, but it sure is better than going into the battle without any armor at all."
	icon_state = "armorkit"
	item_state = "armorkit"
	blood_overlay_type = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor = list(
		melee = 20,
		bullet = 10,
		energy = 15,
		bomb = 5,
		bio = 0,
		rad = 0
	)

/obj/item/clothing/suit/armor/leathercombat
	name = "combat leather jacket"
	desc = "This leather jacket appears to sport heavier padding and possibly some reinforced sections as well as metal studs. Making a fashion statement while ready to break some skulls."
	icon_state = "combat_jacket"
	item_state = "combat_jacket"
	blood_overlay_type = "armor"
	slowdown = 0.1
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	armor = list(
		melee = 25,
		bullet = 20,
		energy = 10,
		bomb = 10,
		bio = 0,
		rad = 0
	)
	matter = list(
		MATERIAL_LEATHER = 10,
		MATERIAL_METAL = 10,
		MTERIAL_CLOTH = 20
	)

/obj/item/clothing/suit/armor/leatherarmor
	name = "leather armor"
	desc = "Your basic all leather apparel. Finely crafted from tanned and hardened brahmin hide."
	icon_state = "leather_armor"
	item_state = "leather_armor"
	slowdown = 0.1
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 20,
		bullet = 20,
		energy = 15,
		bomb = 10,
		bio = 0,
		rad = 0
	)



//Medium Armors

/obj/item/clothing/suit/armor/leatherarmor/reinforced
	name = "reinforced leather armor"
	icon_state = "leather_armor_2"
	item_state = "leather_armor_2"
	slowdown = 0.1
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 25,
		bullet = 25,
		energy = 20,
		bomb = 15,
		bio = 0,
		rad = 0
	)

/obj/item/clothing/suit/armor/f13/metalarmor
	name = "metal armor"
	desc = "A set of plates formed together to form a crude chestplate."
	icon_state = "metal_armor"
	item_state = "metal_armor"
	equip_delay = 1 SECONDS
	slowdown = 0.15
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 25,
		bullet = 30,
		energy = 20,
		bomb = 10,
		bio = 0,
		rad = 0
	)

/obj/item/clothing/suit/armor/f13/metalarmor/reinforced
	name = "reinforced metal armor"
	desc = "A set of polished plates formed together to provide effective protection."
	icon_state = "metal_chestplate2"
	item_state = "metal_chestplate2"
	equip_delay = 1 SECONDS
	slowdown = 0.15
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 30,
		bullet = 35,
		energy = 25,
		bomb = 10,
		bio = 0,
		rad = 0
	)

/obj/item/clothing/suit/armor/f13/combat
	name = "combat armor"
	desc = "An old military grade pre war combat armor."
	icon_state = "combat_armor"
	item_state = "combat_armor"
	equip_delay = 1 SECONDS
	slowdown = 0.2
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 30,
		bullet = 40,
		energy = 25,
		bomb = 15,
		bio = 0,
		rad = 5
	)

/obj/item/clothing/suit/armor/f13/combat/raider
	name = "raider combat armor"
	desc = "An old set of military grade combat armor that has been upgraded with spikes and extra torso plating to protect against bladed weapons.."
	icon_state = "combat_armor"
	item_state = "combat_armor"
	equip_delay = 1 SECONDS
	slowdown = 0.2
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 35,
		bullet = 30,
		energy = 25,
		bomb = 20,
		bio = 0,
		rad = 5
	)

/obj/item/clothing/suit/armor/f13/combat/mk2
	name = "reinforced combat armor"
	desc = "A reinforced set of bracers, greaves, and torso plating of prewar design. This one is kitted with additional plates."
	icon_state = "combat_armor_mk2"
	item_state = "combat_armor_mk2"
	equip_delay = 1 SECONDS
	slowdown = 0.2
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 30,
		bullet = 40,
		energy = 35,
		bomb = 20,
		bio = 0,
		rad = 10
	)

/obj/item/clothing/suit/armor/f13/combat/mk2/raider
	name = "reinforced raider armor"
	desc = "A reinforced set of bracers, greaves, and torso plating of prewar design. This one is kitted with additional plates."
	icon_state = "combat_armor_raider"
	item_state = "combat_armor_raider"
	equip_delay = 1 SECONDS
	slowdown = 0.2
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 40,
		bullet = 35,
		energy = 30,
		bomb = 25,
		bio = 0,
		rad = 10
	)


//Heavy Armors

/obj/item/clothing/suit/armor/heavy/f13/juggernaut
	name = "juggernaut heavy armor"
	desc = "A set of pre-war salvage turned into a suit akin to what riot police or bomb squads used before the war."
	icon_state = "juggernaut"
	item_state = "juggernaut"
	slowdown = 0.6
	equip_delay = 2 SECONDS
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	armor = list(
		melee = 35,
		bullet = 45,
		energy = 25,
		bomb = 45,
		bio = 40,
		rad = 20
	)

/obj/item/clothing/suit/armor/heavy/f13/marine
	name = "marine combat armor"
	desc = "An excellent suit of pre-war U.S.M.C. armor found in rare and limited quantities in the wasteland. Surpassed only by newer suits of power armor."
	icon_state = "marinearmor"
	item_state = "marinearmor"
	slowdown = 0.8
	equip_delay = 2 SECONDS
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	armor = list(
		melee = 40,
		bullet = 50,
		energy = 30,
		bomb = 35,
		bio = 80,
		rad = 50
	)

/obj/item/clothing/suit/armor/heavy/f13/t45b
	name = "salvaged T-45 power armor"
	desc = "It's a set of early-model T-45 power armor with a custom air conditioning module and stripped out servomotors. Bulky and slow, but almost as good as the real thing."
	icon_state = "t45bpowerarmor"
	item_state = "t45bpowerarmor"
	slowdown = 1
	equip_delay = 3 SECONDS
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	armor = list(
		melee = 50,
		bullet = 60,
		energy = 55,
		bomb = 45,
		bio = 80,
		rad = 80
	)

/obj/item/clothing/suit/armor/heavy/f13/t45b/raider
	name = "raider T-45b power armor"
	desc = "It's a set of T-45b power armor with some of its plating heavily reconditioned. This set has seen better days, metal scrap has been spot welded to the chassis "
	icon_state = "raiderpa"
	item_state = "raiderpa"
	armor = list(
		melee = 60,
		bullet = 55,
		energy = 45,
		bomb = 40,
		bio = 80,
		rad = 80
	)