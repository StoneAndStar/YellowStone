/obj/item/gun/projectile/rangemaster
	name = "Colt .308 \"Rangemaster\""
	desc = "The Colt .308 \"Rangemaster\" has been a staple in American hunting groups for a near century prior to the war. \
			This specific rifle has been rechambered to 7.62."
	icon = 'icons/obj/guns/projectile/rangemaster.dmi'
	icon_state = "rangemaster"
	item_state = "rangemaster"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_LRIFLE
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_COVERT = 4)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	magazine_type = /obj/item/ammo_magazine/lrifle
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_WOOD = 10)
	zoom_factor = 0.2
	price_tag = 600
	fire_sound = 'sound/weapons/guns/fire/ltrifle_fire.ogg'
	unload_sound = 'sound/weapons/guns/interact/ltrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/ltrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/ltrifle_cock.ogg'
	recoil_buildup = 1.8
	damage_multiplier = 1.2
	penetration_multiplier = 1.4
	one_hand_penalty = 15 //default rifle
	fire_delay = 5


/obj/item/gun/projectile/rangemaster/m14
	name = "M14 Battle Rifle"
	desc = "The M14 Battle Rifle is an ancient staple of the United States Army back during the begining of the Red Scare three centuries back. \
			Chambered in 7.62 this rifle packs a punch and sports burst fire capability. While feeling great to hold the thing really does kick back badly.."
	icon = 'icons/obj/guns/projectile/rangemaster.dmi'
	icon_state = "m14"
	item_state = "m14"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_LRIFLE
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_COVERT = 4)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	magazine_type = /obj/item/ammo_magazine/lrifle
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_WOOD = 10)
	zoom_factor = 0.2
	price_tag = 700
	fire_sound = 'sound/weapons/guns/fire/ltrifle_fire.ogg'
	unload_sound = 'sound/weapons/guns/interact/ltrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/ltrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/ltrifle_cock.ogg'
	recoil_buildup = 2
	damage_multiplier = 1
	penetration_multiplier = 1.2
	one_hand_penalty = 15 //default rifle

	gun_tags = list(GUN_SILENCABLE)

	init_firemodes = list(
		SEMI_AUTO_NODELAY,
		BURST_2_ROUND,
		)