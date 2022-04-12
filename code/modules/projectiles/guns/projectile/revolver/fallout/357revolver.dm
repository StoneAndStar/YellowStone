/obj/item/gun/projectile/revolver/police
	name = ".357 \"Magnum\" Revolver"
	desc = "The .357 magnum is an alternative to the .44 magnum revolvers on the market. Its serial numbers and brand appear to be washed with time - hell, it very well might be from the old westerns!"
	icon = 'icons/obj/guns/projectile/357colt.dmi'
	icon_state = "magnum"
	caliber = CAL_357
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3)
	max_shells = 6
	ammo_type = /obj/item/ammo_casing/revolver
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_WOOD = 6)
	price_tag = 600
	damage_multiplier = 1.3
	penetration_multiplier = 1.3
	recoil_buildup = 5
	spawn_tags = SPAWN_TAG_FS_PROJECTILE

/obj/item/gun/projectile/revolver/police
	name = ".357 Colt \"Police\" Revolver"
	desc = "The .357 Colt, simply nicknamed the \"Police\", was commonly used among underfunded police forces prior to the Great War. Masterly crafted and cheap; a good combination."
	icon = 'icons/obj/guns/projectile/357colt.dmi'
	icon_state = "colt"
	caliber = CAL_357
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3)
	max_shells = 6
	ammo_type = /obj/item/ammo_casing/revolver
	matter = list(MATERIAL_PLASTEEL = 8, MATERIAL_WOOD = 4)
	price_tag = 500
	damage_multiplier = 1.4
	penetration_multiplier = 1.4
	recoil_buildup = 5.5
	spawn_tags = SPAWN_TAG_FS_PROJECTILE