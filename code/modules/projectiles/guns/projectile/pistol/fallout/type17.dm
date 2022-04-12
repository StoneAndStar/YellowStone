/obj/item/gun/projectile/type17
	name = "10mm \"Shanxi\" Type-19"
	desc = "The Type-17, also known as the \"Shanxi\" due to its region of production, was the standard issue pistol of the People's Liberation Army prior to the Great War. \
			These pistols are rather rare finds and based on ancient designs that predate the PRC itself."
	icon = 'icons/obj/guns/projectile/type17.dmi'
	icon_state = "sig"
	item_state = "pistol"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3)
	can_dual = TRUE
	caliber = CAL_PISTOL
	load_method = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	magazine_type = /obj/item/ammo_magazine/pistol
	matter = list(MATERIAL_PLASTEEL = 12, MATERIAL_WOOD = 6)
	price_tag = 550
	damage_multiplier = 1.4
	penetration_multiplier = 1.4
	recoil_buildup = 5

/obj/item/gun/projectile/type17/on_update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		iconstring += "_slide"

	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/gun/projectile/type17/Initialize()
	. = ..()
	update_icon()