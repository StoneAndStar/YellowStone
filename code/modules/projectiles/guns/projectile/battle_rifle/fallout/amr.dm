/obj/item/gun/projectile/boltgun/amr
	name = "Anti-Materiel Rifle"
	desc = "A large .50 caliber anti-material rifle, meant to punch "
	icon = 'icons/obj/guns/projectile/amr.dmi'
	icon_state = "amr"
	item_state = "amr"
	w_class = ITEM_SIZE_HUGE
	force = WEAPON_FORCE_PAINFUL
	slot_flags = SLOT_BACK
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2, TECH_ILLEGAL = 2)
	caliber = CAL_ANTIM
	recoil_buildup = 60
	handle_casings = HOLD_CASINGS
	load_method = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	max_shells = 10
	ammo_type = /obj/item/ammo_casing/antim
	fire_sound = 'sound/weapons/guns/fire/sniper_fire.ogg'
	reload_sound 	= 'sound/weapons/guns/interact/rifle_load.ogg'
	matter = list(MATERIAL_PLASTEEL = 40, MATERIAL_PLASTIC = 20, MATERIAL_DIAMOND = 3, MATERIAL_OSMIUM = 5, MATERIAL_URANIUM = 2)
	price_tag = 2000
	one_hand_penalty = 80 //fuck you don't one arm this, you maniac
	zoom_factor = 1.0 //longest in the game; only AMR and Gauss should have this range
	twohanded = TRUE
	sharp = FALSE
	saw_off = FALSE
	bolt_training = FALSE
	see_invisible_gun = SEE_INVISIBLE_NOLIGHTING