/obj/item/gun/projectile/revolver/judge
	name = "12 Gauge \"Judge\" Revolver"
	desc = "An odd looking revolver chambered in 12 gauge shells. The cylinder barely looks as if it can hold the four shells loaded into it. A true scrappers creation of mangled revolver parts."
	icon = 'icons/obj/guns/projectile/judge.dmi'
	icon_state = "judge"
	caliber = CAL_SHOTGUN
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3)
	max_shells = 4
	ammo_type = /obj/item/ammo_casing/shotgun
	matter = list(MATERIAL_PLASTEEL = 12, MATERIAL_WOOD = 6)
	price_tag = 800
	damage_multiplier = 1.2
	penetration_multiplier = 1.2
	recoil_buildup = 7
	spawn_tags = SPAWN_TAG_FS_PROJECTILE