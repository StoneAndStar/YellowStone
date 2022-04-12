/obj/item/gun/projectile/automatic/m1garand
	name = "M1 Garand"
	desc = "The service rifle of the American military during the second World War. Despite its age this rifle has somehow ended up in the hands of collectors, hunters and the National Guard. \
			Amazingly this rifle has found itself rechambered into 7.62 instead of its original .30-06; likely for use alongside the M14."
	icon = 'icons/obj/guns/projectile/m1garand.dmi'
	icon_state = "garand"
	item_state = "garand"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_LRIFLE
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_COVERT = 4)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	magazine_type = /obj/item/ammo_magazine/enblock

	auto_eject_sound = 'sound/weapons/garand_ping.ogg'
	auto_eject = 1

	zoom_factor = 0.2
	recoil_buildup = 2
	damage_multiplier = 1.0
	penetration_multiplier = 1.2
	extra_damage_mult_scoped = 0.2
	one_hand_penalty = 25 //do not one arm this if you have a brain
	fire_delay = 3

	init_firemodes = list(
		SEMI_AUTO_NODELAY
		)

/obj/item/gun/projectile/automatic/m1garand/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "[initial(icon_state)]-full"
	else
		icon_state = initial(icon_state)
	return
