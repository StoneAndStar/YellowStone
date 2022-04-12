/obj/item/gun/projectile/automatic/ak112
	name = "AK 112"
	desc = "A pre-war ancient weapon made nearly a hundred years even prior to the Great War! \
		 These guns could be found all over national guard armories as well as in the hands of private citizens prior to the war. \
		 Cheap to make, easy to produce, reliable and using the 5mm round made this gun once prefered by the U.S Military as an axuilary firearm and among foreign militaries."
	icon = 'icons/obj/guns/projectile/ak112.dmi'
	icon_state = "ak112"
	item_state = "ak112"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_MINI
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_COVERT = 4)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	magazine_type = /obj/item/ammo_magazine/rifle_5mm
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_WOOD = 10)
	price_tag = 600
	fire_sound = 'sound/weapons/guns/fire/ltrifle_fire.ogg'
	unload_sound = 'sound/weapons/guns/interact/ltrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/ltrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/ltrifle_cock.ogg'
	recoil_buildup = 1.8
	one_hand_penalty = 15 //automatic rifle level

	init_firemodes = list(
		FULL_AUTO_400,
		BURST_3_ROUND,
		SEMI_AUTO_NODELAY,
		)

/obj/item/gun/projectile/automatic/ak112/on_update_icon()
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


/obj/item/weapon/gun/projectile/automatic/ak112/Initialize()
	. = ..()
	update_icon()
