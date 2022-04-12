/obj/item/gun/projectile/automatic/dks
	name = "\"DKS-501\" Sniper Rifle"
	desc = "The DKS-501 Sniper Rifle is a staple sniper rifle designed for the U.S Military prior to the Great War. \
			This 7.62 sniper sports a state of the art scope, a superior polymer stock and a robust design in its ported barrel. \
			It's only downside is its small magazine capacity."
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_LRIFLE
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_COVERT = 4)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	magazine_type = /obj/item/ammo_magazine/lrifle
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 10)
	price_tag = 1200
	fire_sound = 'sound/weapons/guns/fire/ltrifle_fire.ogg'
	unload_sound = 'sound/weapons/guns/interact/ltrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/ltrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/ltrifle_cock.ogg'
	zoom_factor = 0.6
	recoil_buildup = 2
	damage_multiplier = 1.0
	penetration_multiplier = 1.4
	extra_damage_mult_scoped = 0.2
	one_hand_penalty = 25 //do not one arm this if you have a brain
	fire_delay = 6
	extra_damage_mult_scoped = 0.2

/obj/item/gun/projectile/dks/on_update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (ammo_magazine)
		iconstring += "[ammo_magazine? "_mag": ""]"

	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		iconstring += "_slide"

	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/gun/projectile/dks/Initialize()
	. = ..()
	update_icon()