/obj/item/gun/projectile/automatic/assaultcarbine
	name = "\"Colt\" Assault Carbine"
	desc = "The Assault Carbine was made by the Colt company prior to the war and distributed mostly among US Airforce bases and to US Army Special Forces units. \
			One may recognize its design from some civilian market models; though sporting a notable difference - a 5mm magazine. Lightweight, fast firing and packs a damn-good punch."
	icon = 'icons/obj/guns/projectile/assaultcarbine.dmi'
	icon_state = "assault"
	item_state = "assault"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_MINI
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_COVERT = 4)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	magazine_type = /obj/item/ammo_magazine/rifle_5mm
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 10)
	price_tag = 1000
	fire_sound = 'sound/weapons/guns/fire/ltrifle_fire.ogg'
	unload_sound = 'sound/weapons/guns/interact/ltrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/ltrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/ltrifle_cock.ogg'
	recoil_buildup = 1.6
	damage_multiplier = 1.1
	penetration_multiplier = 1.2
	one_hand_penalty = 15 //default rifle

	gun_tags = list(GUN_SILENCABLE)

	init_firemodes = list(
		FULL_AUTO_600,
		BURST_5_ROUND,
		SEMI_AUTO_NODELAY,
		)

/obj/item/gun/projectile/automatic/assaultcarbine/on_update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (ammo_magazine)
		iconstring += "[ammo_magazine? "_mag[ammo_magazine.max_ammo]": ""]"
		itemstring += "_full"

	if(wielded)
		itemstring += "_doble"

	icon_state = iconstring
	set_item_state(itemstring)


/obj/item/weapon/gun/projectile/automatic/assaultcarbine/Initialize()
	. = ..()
	update_icon()

/obj/item/gun/projectile/automatic/assaultcarbine/marksman
	name = "\"Colt\" Marksman Rifle"
	desc = "The Colt Marksman Rifle, also branded as the \"All American\" Rifle, is a modified civilian version of the Colt Assault Carbine made for home defense, hunting and self defense. \
			This staple rifle was known as one of the best civilian grade weapons ever made prior to the Great War. It's 5.56 magazines allow it a manageable recoil atop of its high accuracy. \
			Though.. it lacks any automatic firemodes. Damn U.S Government tax stamps.. At least it has a built-in scope though!"
	icon = 'icons/obj/guns/projectile/marksman.dmi'
	icon_state = "marksman"
	item_state = "marksman"
	caliber = CAL_SRIFLE
	magazine_type = /obj/item/ammo_magazine/srifle
	price_tag = 900
	zoom_factor = 0.4
	damage_multiplier = 1.4
	penetration_multiplier = 1.2

	init_firemodes = list(
		SEMI_AUTO_NODELAY,
		)

/obj/item/gun/projectile/automatic/assaultcarbine/maxson
	name = "\"Maxson\" Rifle"
	desc = "With the Brotherhood isignia built into this gun's handguard it's not hard to guess who made this strange amalgimation of old salvaged and new precision machine parts. \
			The gun is hard to describe. 'Generic', apart from his unique handguard and polymer would be the easiest way to describe it. \
			It appears to have copied parts of both the Assault Carbine and Service Rifle. Including its caliber being a 5mm yet.. also including its lack of select-fire capacility."
	icon_state = "maxson"
	item_state = "maxson"
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_WOOD = 10)
	recoil_buildup = 1.6
	damage_multiplier = 1.2
	penetration_multiplier = 1.0

	init_firemodes = list(
		SEMI_AUTO_NODELAY,
		)