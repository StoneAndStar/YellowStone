/obj/item/gun/projectile/revolver/casull
	name = ".45 \"Casull\" Revolver"
	desc = "The .45 Casull revolver was originally chambered in 454 Casull, but for the cheaper civilian market it appears to have been recalibered into .45 at some point. \
			These guns are oddly rare finds along the west coast and south, many finding their home in the hands of travelers from the mid-west or Caesar's Legion as war trophies."
	icon = 'icons/obj/guns/projectile/mateba.dmi'
	icon_state = "mateba"
	caliber = CAL_45ACP
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3)
	max_shells = 6
	ammo_type = /obj/item/ammo_casing/pistol45
	matter = list(MATERIAL_PLASTEEL = 12, MATERIAL_WOOD = 6)
	price_tag = 500
	damage_multiplier = 1.5
	penetration_multiplier = 1.2
	recoil_buildup = 7
	spawn_tags = SPAWN_TAG_FS_PROJECTILE