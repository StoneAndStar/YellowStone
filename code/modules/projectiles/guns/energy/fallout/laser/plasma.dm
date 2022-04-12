/obj/item/gun/energy/plasma/rifle
	name = "\"REPCONN\" plasma rifle"
	desc = "The plasma rifle was a pre-war design made by REPCONN to compete with Winchester's attempt at harnessing plasma technology. These weapons fit a niche of punching through armored targets, tanks and power armor users!"
	icon = 'icons/obj/guns/energy/plasmarifle.dmi'
	icon_state = "plasma"
	item_state = null	//so the human update icon uses the icon_state instead.
	w_class = ITEM_SIZE_BULKY
	slot_flags = SLOT_BACK
	force = WEAPON_FORCE_PAINFUL
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_WOOD = 8, MATERIAL_SILVER = 7, MATERIAL_URANIUM = 8)
	price_tag = 1200
	fire_sound = 'sound/weapons/Laser.ogg'
	suitable_cell = /obj/item/cell/medium/weapon/mfc
	sel_mode = 2
	charge_cost = 100 //10 shots per cell on light, 8 shots per cell on armor-pen
	recoil_buildup = 1 //plasma weapons have recoil since they act like ballistics.
	one_hand_penalty = 10
	twohanded = TRUE

	init_firemodes = list(
		list(mode_name="Burn", mode_desc="A relatively light plasma round that meerly singes the surface", projectile_type=/obj/item/projectile/plasma/light, fire_sound='sound/weapons/Taser.ogg', fire_delay=8, charge_cost=100, icon="stun", projectile_color = "#0000FF"),
		list(mode_name="Melt", mode_desc="A much more potent plasma round for breaching tough opponents' hides", projectile_type=/obj/item/projectile/plasma, fire_sound='sound/weapons/Laser.ogg', fire_delay=12, charge_cost=125, icon="kill", projectile_color = "#FF0000"),
	)

/obj/item/gun/energy/plasma/rifle/on_update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (cell)
		iconstring += "_mag"
		itemstring += "_mag"

/obj/item/gun/energy/plasma/rifle/p94
	name = "\"Winchester P-94\" plasma rifle"
	desc = "The P-94 plasma rifle made by Winchester was one of the first plasma weapons developed for the US Army. While technically older than the REPCONN plasma rifle this rifle packs a punch. \
			Its more complex design was never fit for mass production, but its internals allowed a powerful plast to compete with the P-94 plasma caster heavy weapon - but in a more compact form!"
	icon = 'icons/obj/guns/energy/p94.dmi'
	icon_state = "p94"
	suitable_cell = /obj/item/cell/medium/weapon/ecp
	price_tag = 1400
	init_firemodes = list(
		list(mode_name="Burn", mode_desc="A relatively light plasma round that meerly singes the surface", projectile_type=/obj/item/projectile/plasma/light, fire_sound='sound/weapons/Taser.ogg', fire_delay=8, charge_cost=100, icon="stun", projectile_color = "#0000FF"),
		list(mode_name="Melt", mode_desc="A much more potent plasma round for breaching tough opponents' hides", projectile_type=/obj/item/projectile/plasma, fire_sound='sound/weapons/Laser.ogg', fire_delay=12, charge_cost=125, icon="kill", projectile_color = "#FF0000"),
		list(mode_name="EVISCERATE", mode_desc="An armor-stripping plasma round", projectile_type=/obj/item/projectile/plasma/heavy, fire_sound='sound/weapons/pulse.ogg', fire_delay=14, charge_cost=150, icon="destroy", projectile_color = "#FFFFFF")
	)
/*
/obj/item/gun/energy/plasma/rifle/caster
	name = "\"P-94 Caster\" plasma rifle"
	desc = "The big-brother of the P-94 \"Winchester\" rifle. This massive beast of a rifle uses a larger capacity cell but suffers reliability issues in return. \
			Even before the Great War this gun was slightly out of date. However its simple and non-compact design has allowed wasteland jockies to keep these in service for years now."
	icon = 'icons/obj/guns/energy/plasmacaster.dmi'
	icon_state = "caster"
	price_tag = 1400
	suitable_cell = /obj/item/cell/medium/weapon/mfc
	w_class = ITEM_SIZE_HUGE
	init_firemodes = list(
		list(mode_name="Burn", mode_desc="A relatively light plasma round that meerly singes the surface", projectile_type=/obj/item/projectile/plasma/light, fire_sound='sound/weapons/Taser.ogg', fire_delay=8, charge_cost=100, icon="stun", projectile_color = "#0000FF"),
		list(mode_name="Melt", mode_desc="A much more potent plasma round for breaching tough opponents' hides", projectile_type=/obj/item/projectile/plasma, fire_sound='sound/weapons/Laser.ogg', fire_delay=12, charge_cost=125, icon="kill", projectile_color = "#FF0000"),
		list(mode_name="EVISCERATE", mode_desc="An armor-stripping plasma round", projectile_type=/obj/item/projectile/plasma/heavy, fire_sound='sound/weapons/pulse.ogg', fire_delay=14, charge_cost=150, icon="destroy", projectile_color = "#FFFFFF")
	)
*/
/obj/item/gun/energy/plasma/pistol
	name = "\"REPCONN\" plasma pistol"
	desc = "A compact version of the plasma rifle that was designed to take electronic charge packs instead of MFC cells. Small and compact, this gun still packs a punch but lacks the charge of its original design."
	icon = 'icons/obj/guns/energy/plasmapistol.dmi'
	icon_state = "plasma"
	w_class = ITEM_SIZE_SMALL
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_METAL = 6, MATERIAL_SILVER = 4, MATERIAL_URANIUM = 4)
	price_tag = 650
	fire_sound = 'sound/weapons/Laser.ogg'
	suitable_cell = /obj/item/cell/medium/weapon/ec
	charge_cost = 100
	sel_mode = 2
	recoil_buildup = 1.2
	one_hand_penalty = 10
	twohanded = FALSE

	init_firemodes = list(
		list(mode_name="Burn", mode_desc="A relatively light plasma round that meerly singes the surface", projectile_type=/obj/item/projectile/plasma/light, fire_sound='sound/weapons/Taser.ogg', fire_delay=8, charge_cost=100, icon="stun", projectile_color = "#0000FF"),
		list(mode_name="Melt", mode_desc="A much more potent plasma round for breaching tough opponents' hides", projectile_type=/obj/item/projectile/plasma, fire_sound='sound/weapons/Laser.ogg', fire_delay=12, charge_cost=125, icon="kill", projectile_color = "#FF0000"),
	)

/obj/item/gun/energy/plasma/pistol/glock
	name = "\"Glock 86\" plasma pistol"
	desc = "A compact plasma weapon designed as competition to the REPCONN model plasma pistol. Originally designed by a Austrian manufacturer this weapon became a officer's special, finding very sparse usage due to its reliance on overseas material."
	icon_state = "glock"
	zoom_factor = 0.2
	penetration_multiplier = 1.2
	extra_damage_mult_scoped = 0.2
	price_tag = 750
