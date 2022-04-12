/obj/item/gun/projectile/m1911
	name = ".45 Colt \"M1911\""
	desc = "The Colt M1911 is a pistol with a long history. Old people before the Great War considered it the 'best pistol ever made' and, well, it seemed the American public may have agreed. \
			Cheap in design, a round that packs more of a bunch than 9mm and a decent capacity. Though.. most would prefer a newer 10mm if they could afford it."
	icon = 'icons/obj/guns/projectile/colt.dmi'
	icon_state = "colt"
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_WOOD = 6)
	price_tag = 550
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	can_dual = TRUE
	caliber = CAL_45ACP
	load_method = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	magazine_type = /obj/item/ammo_magazine/pistol_45
	damage_multiplier = 1.5
	recoil_buildup = 4.5
	spawn_tags = SPAWN_TAG_FS_PROJECTILE


/obj/item/gun/projectile/m1911/on_update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring

	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		iconstring += "_slide"

	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/gun/projectile/m1911/Initialize()
	. = ..()
	update_icon()
