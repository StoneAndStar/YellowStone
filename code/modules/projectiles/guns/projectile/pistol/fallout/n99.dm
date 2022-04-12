/obj/item/gun/projectile/n99
	name = "Colt \"N99\" 10mm Pistol"
	desc = "The Colt N99 pistol was standard issue to all Vault Tech personnel before the Great War. The N99 originally was intended to replace Colt .45s across the U.S, but for some reason, the project failed."
	icon = 'icons/obj/guns/projectile/n99.dmi'
	icon_state = "n99"
	item_state = "pistol"
	fire_sound = 'sound/weapons/guns/fire/hpistol_fire.ogg'
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 4)
	can_dual = TRUE
	caliber = CAL_HPISTOL
	load_method = MAGAZINE
	mag_well = MAG_WELL_PISTOL|MAG_WELL_H_PISTOL
	magazine_type = /obj/item/ammo_magazine/pistol_10mm
	matter = list(MATERIAL_PLASTEEL = 15, MATERIAL_METAL = 8)
	price_tag = 500
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	unload_sound = 'sound/weapons/guns/interact/hpistol_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/hpistol_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/hpistol_cock.ogg'
	damage_multiplier = 1.4
	penetration_multiplier = 1.2
	recoil_buildup = 3

/obj/item/gun/projectile/n99/on_update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (ammo_magazine)
		iconstring += "_mag"

	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		iconstring += "_slide"

	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/gun/projectile/n99/Initialize()
	. = ..()
	update_icon()