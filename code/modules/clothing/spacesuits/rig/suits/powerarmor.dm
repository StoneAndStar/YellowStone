/*
Fallout 13 Power Armor code.

Basically hardsuits with way larger protection and some unique paths to it. Should take fusion cores instead of batteries.
*/

/obj/item/clothing/head/space/rig/f13/powerarmor
	light_overlay = "helmet_light_dual_green"
	spawn_tags = null

/obj/item/rig/f13/powerarmor
	name = "power armor control module"
	desc = "A pre-war power armor control module fit into the back of a set of power armor."
	icon_state = "t45d"
	suit_type = "t45d"
	armor = list(
		melee = 55,
		bullet = 60,
		energy = 55,
		bomb = 45,
		bio = 80,
		rad = 80
	)
	slowdown = 1
	drain = 4
	offline_slowdown = 3
	offline_vision_restriction = 1
	rarity_value = 20
	helm_type = /obj/item/clothing/head/space/rig/f13/powerarmor

/obj/item/rig/f13/powerarmor/equipped
	initial_modules = list(
		/obj/item/rig_module/storage
		)