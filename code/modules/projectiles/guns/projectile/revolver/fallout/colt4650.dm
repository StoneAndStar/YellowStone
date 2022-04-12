/obj/item/gun/projectile/revolver/deckard
	name = "10mm \"Colt-4650\" Revolver"
	desc = "The Colt-4650 was an early version of the N99 in revolver form created by Colt. Cheaper than its auto-loading counterpart but suffers a few drawbacks such as capacity."
	icon = 'icons/obj/guns/projectile/colt4650.dmi'
	icon_state = "colt4650"
	caliber = CAL_HPISTOL
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3)
	max_shells = 12
	ammo_type = /obj/item/ammo_casing/hpistol
	matter = list(MATERIAL_PLASTEEL = 12, MATERIAL_WOOD = 6)
	price_tag = 400
	damage_multiplier = 1.2
	penetration_multiplier = 1.4
	recoil_buildup = 6
	spawn_tags = SPAWN_TAG_FS_PROJECTILE