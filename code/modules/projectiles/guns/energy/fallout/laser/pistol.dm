/obj/item/gun/energy/gun/aep7
	name = "\"AEP-7\" energy pistol"
	desc = "The \"AEP-7\" designed by REPCONN was a military grade laser pistol designed to replace the outdated AEP-5 that had been in service prior. With its improved battery it blasted away its competition!"
	icon = 'icons/obj/guns/energy/aep.dmi'
	icon_state = "aep7"
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	w_class = ITEM_SIZE_SMALL
	item_state = null	//so the human update icon uses the icon_state instead.
	item_charge_meter = FALSE
	can_dual = TRUE
	fire_sound = 'sound/weapons/Laser.ogg'
	charge_cost = 100
	matter = list(MATERIAL_PLASTEEL = 13, MATERIAL_PLASTIC = 6, MATERIAL_GOLD = 3)
	price_tag = 350
	penetration_multiplier = 1.2
	projectile_type = /obj/item/projectile/beam
	suitable_cell = /obj/item/cell/medium/weapon/ec
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 2)
	init_firemodes = list(
		LETHAL
		)

/obj/item/gun/energy/wattz
	name = "\"Wattz-1000\" energy pistol"
	desc = "The \"Wattz-1000\" brand laser pistol, one of the very few civilian market laser weapons prior to the Great War."
	icon = 'icons/obj/guns/energy/wattz1k.dmi'
	icon_state = "wattz"
	item_state = "wattz"
	item_charge_meter = TRUE
	fire_sound = 'sound/weapons/Laser.ogg'
	origin_tech = list(TECH_COMBAT = 2, TECH_MAGNET = 1)
	w_class = ITEM_SIZE_SMALL
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	projectile_type = /obj/item/projectile/beam
	suitable_cell = /obj/item/cell/medium/weapon/ec
	charge_cost = 50
	can_dual = TRUE
	matter = list(MATERIAL_PLASTEEL = 4, MATERIAL_METAL = 4, MATERIAL_GOLD = 2)
	damage_multiplier = 0.8
	price_tag = 150
	init_firemodes = list(
		LETHAL
	)
	twohanded = FALSE
	suitable_cell = /obj/item/cell/small
	cell_type = /obj/item/cell/small

/obj/item/gun/enegy/wattz/upgraded
	name = "\"Wattz-1000 - Magneto\" energy pistol"
	desc = "The \"Wattz-1000\" brand laser pistol, a civilian market laser pistol pre-war. Howevery someone appears to have overclocked its proceseses!"
	icon_state = "magneto"
	item_state = "magneto"
	price_tag = 250
	init_firemodes = list(
		LETHAL,
 		WEAPON_CHARGE
	)
	damage_multiplier = 1.0