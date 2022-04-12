/obj/item/gun/projectile/automatic/r84
	name = "R84 LMG"
	desc = "The R84 LMG is a staple automatic weapon of the NCR. This 5.56 chambered light machine gun can put rounds down range like no other! \
			A sister design of the Bozar, the R84 acts as the counter to the Bozar. Less accuracy but ten times the rounds put down range!"
	icon = 'icons/obj/guns/projectile/r84.dmi'
	icon_state = "r84"
	item_state = "r84"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_SRIFLE
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_COVERT = 4)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_BOX
	magazine_type = /obj/item/ammo_magazine/srifle
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_WOOD = 10)
	price_tag = 750
	fire_sound = 'sound/weapons/guns/fire/ltrifle_fire.ogg'
	unload_sound = 'sound/weapons/guns/interact/ltrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/ltrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/ltrifle_cock.ogg'
	recoil_buildup = 2
	damage_multiplier = 1
	penetration_multiplier = 1
	one_hand_penalty = 15 //default rifle

	gun_tags = list(GUN_SILENCABLE)

	init_firemodes = list(
		FULL_AUTO_600,
		BURST_8_ROUND,
		SEMI_AUTO_NODELAY,
		)

/obj/item/gun/projectile/automatic/r84/update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (ammo_magazine)
		iconstring += "[ammo_magazine? "_mag[ammo_magazine.max_ammo]": ""]"

	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		iconstring += "_slide"

	if(wielded)
		itemstring += "_doble"

	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/weapon/gun/projectile/automatic/r84/Initialize()
	. = ..()
	update_icon()

/obj/item/gun/projectile/automatic/r84/lsw
	name = "Light Support Weapon"
	desc = "The Light Support Weapon, also known simply as the \"LSW\", is a weapon of unkown origings. This bullpup LMG looks design wise amazing - yet also incredibly impracticle. \
			The best way one could describe this is a Bozar-level insperation but shoved into an LMG. Sporting a scope and clearly meant for range but also a high rate of fire yet with lower capacity."
	icon = 'icons/obj/guns/projectile/r84.dmi'
	icon_state = "lsw"
	item_state = "lsw"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_SRIFLE
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_COVERT = 4)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	magazine_type = /obj/item/ammo_magazine/srifle
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_WOOD = 10)
	price_tag = 900
	fire_sound = 'sound/weapons/guns/fire/ltrifle_fire.ogg'
	unload_sound = 'sound/weapons/guns/interact/ltrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/ltrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/ltrifle_cock.ogg'
	recoil_buildup = 1.8
	damage_multiplier = 1.2
	penetration_multiplier = 1
	one_hand_penalty = 15 //default rifle

	gun_tags = list(GUN_SILENCABLE)

	init_firemodes = list(
		FULL_AUTO_600,
		SEMI_AUTO_NODELAY,
		)

/obj/item/gun/projectile/automatic/r84/bar
	name = "Browning Automatic Rifle"
	desc = "The Browning Automatic Rifle, also known simply as the \"BAR 1918\", is a weapon that has been around for over 300 years; rusting away in National Guard stockpiles for decades before the war. \
			This beast of a weapon puts 7.62 rounds down range in high quanities. Though it is held back by its limited mag capacity and recoil it allows versetile use as both an LMG or a regular serviceman rifle."
	icon = 'icons/obj/guns/projectile/r84.dmi'
	icon_state = "lsw"
	item_state = "lsw"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_LRIFLE
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_COVERT = 4)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	magazine_type = /obj/item/ammo_magazine/lrifle
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_WOOD = 10)
	price_tag = 1000
	fire_sound = 'sound/weapons/guns/fire/ltrifle_fire.ogg'
	unload_sound = 'sound/weapons/guns/interact/ltrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/ltrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/ltrifle_cock.ogg'
	recoil_buildup = 2
	damage_multiplier = 1.3
	penetration_multiplier = 1
	one_hand_penalty = 15 //default rifle

	gun_tags = list(GUN_SILENCABLE)

	init_firemodes = list(
		FULL_AUTO_400,
		SEMI_AUTO_NODELAY,
		)