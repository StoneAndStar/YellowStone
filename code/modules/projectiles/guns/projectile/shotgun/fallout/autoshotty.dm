/obj/item/gun/projectile/automatic/shotgun
	name = "Browning \"Auto-5\""
	desc = "A rather old automatic hunting shotgun from centuries back now. This shotgun was top of the line at the end of the 'Wild West'.  \
		 This gun has survived somehow over all that time. Probably due to its semi-complex design yet easy production model."
	icon = 'icons/obj/guns/projectile/shotgun.dmi'
	icon_state = "auto"
	item_state = "auto"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_SHOTGUN
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1)
	slot_flags = SLOT_BACK
	handle_casings = HOLD_CASINGS
	load_method = SINGLE_CASING
	max_shells = 5
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_WOOD = 10)
	price_tag = 600
	fire_sound = 'sound/weapons/guns/fire/ltrifle_fire.ogg'
	unload_sound = 'sound/weapons/guns/interact/ltrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/ltrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/ltrifle_cock.ogg'
	recoil_buildup = 10
	one_hand_penalty = 15 //automatic rifle level

	init_firemodes = list(
		SEMI_AUTO_NODELAY,
		)

/obj/item/gun/projectile/automatic/shotgun/citykiller
	name = "Winchester \"City Killer\" shotgun"
	desc = "The Winchester \"City Killer\" shotgun was a relatively expensive and sought-after shotgun prior to the Great War. \
			This shotgun's high capacity, fast fire rate and easy to control recoil due to its recoil compensating stock."
	icon_state = "citykiller"
	item_state = "citykiller"
	max_shells = 11
	price_tag = 2000
	recoil_buildup = 6
	one_hand_penalty = 25

	init_firemodes = list(
		SEMI_AUTO_NODELAY,
		FULL_AUTO_400,
		)

/obj/item/gun/projectile/automatic/riot
	name = "riot shotgun"
	desc = "A pre-war automatic shotgun loaded from a large capacity drum magazine including a firemode selector. \
			While fast firing this gun's flimsy stock really makes it hard to control.."
	icon_state = "riot"
	item_state = "riot"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1)
	load_method = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	price_tag = 1400
	recoil_buildup = 14
	magazine_type = /obj/item/ammo_magazine/m12
	init_firemodes = list(
		FULL_AUTO_400,
		SEMI_AUTO_NODELAY,
		)
