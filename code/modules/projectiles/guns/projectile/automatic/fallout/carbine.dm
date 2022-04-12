/obj/item/gun/projectile/automatic/m1
	name = "M1-NG Carbine"
	desc = "Common among military police prior to the Great War, the M1-NG Carbine is a 10mm conversion of the 7.62 M1 Carbine produced over a century before the war itself. \
			This ancient design has maintained its prevelence due to the quanitity of these guns that can be found. \
			It's 10mm conversion has suited it well due to the quanity of surplus 10mm found in the wastes."
	icon = 'icons/obj/guns/projectile/carbine.dmi'
	icon_state = "carbine"
	item_state = "carbine"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_HPISTOL
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_COVERT = 4)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_H_PISTOL
	magazine_type = /obj/item/ammo_magazine/hpistol_10mm
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 10)
	price_tag = 350
	fire_sound = 'sound/weapons/guns/fire/ltrifle_fire.ogg'
	unload_sound = 'sound/weapons/guns/interact/ltrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/ltrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/ltrifle_cock.ogg'
	recoil_buildup = 1.4
	damage_multiplier = 1.1
	penetration_multiplier = 1.2
	one_hand_penalty = 15 //default rifle

	gun_tags = list(GUN_SILENCABLE)

	init_firemodes = list(
		SEMI_AUTO_NODELAY
		)

/obj/item/gun/projectile/automatic/m1/m1a3
	name = "M1A3 Carbine"
	desc = "A rare find, typically from musuems or the occasion National Guard stockpile, the M1A3 Carbine is a sight to behold. \
			This anicent rifle appears to be chambered in 7.62, allowing it to blow away its competition with its round caliber and its compact size. \
			But god.. does thing thing kick.."
	icon_state = "foldcarb"
	caliber = CAL_HPISTOL
	mag_well = MAG_WELL_H_PISTOL
	magazine_type = /obj/item/ammo_magazine/hpistol_10mm
	price_tag = 500
	recoil_buildup = 1.8
	damage_multiplier = 1
	penetration_multiplier = 1.2


/obj/item/gun/projectile/automatic/m1/ruger
	name = "Ruger \"AC556F\""
	desc = "The Ruger AC556F is a development of the Ruger Mini 14, a 5.56 mm assault rifle originally used only in police forces. \
			This gun found its popularity among open civilian markets. A full-auto firemode makes this weapon a real crowd pleaser!"
	icon_state = "ruger"
	caliber = CAL_SRIFLE
	mag_well = MAG_WELL_RIFLE
	magazine_type = /obj/item/ammo_magazine/srifle/short
	price_tag = 750
	recoil_buildup = 1.6
	damage_multiplier = 1.2
	penetration_multiplier = 1.4

	init_firemodes = list(
		SEMI_AUTO_NODELAY,
		FULL_AUTO_400
		)

/obj/item/gun/projectile/automatic/m1/on_update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (ammo_magazine)
		iconstring += "[ammo_magazine? "_mag[ammo_magazine.max_ammo]": ""]"

	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		iconstring += "_slide"

	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/gun/projectile/automatic/sts35/Initialize()
	. = ..()
	update_icon()


/obj/item/weapon/gun/projectile/automatic/m1/Initialize()
	. = ..()
	update_icon()