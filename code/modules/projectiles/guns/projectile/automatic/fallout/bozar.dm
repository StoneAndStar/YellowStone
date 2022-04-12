/obj/item/gun/projectile/automatic/bozar
	name = "Bozar Assault Rifle"
	desc = "Commonly refered to as the \"Ultimate refinement of the sniper's art\" the Bozar is an amazingly accurate select-fire rifle perfect for long range engagements. \
			It's only downside is its maintence requirment. This gun needs constant maintence to fix its jamming issues, dust and sand are not well received by this piece of art.."
	icon = 'icons/obj/guns/projectile/bozar.dmi'
	icon_state = "bozar"
	item_state = "bozar"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_SRIFLE
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_COVERT = 4)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	magazine_type = /obj/item/ammo_magazine/srifle
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 10)
	price_tag = 1000
	fire_sound = 'sound/weapons/guns/fire/ltrifle_fire.ogg'
	unload_sound = 'sound/weapons/guns/interact/ltrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/ltrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/ltrifle_cock.ogg'
	zoom_factor = 0.6
	recoil_buildup = 1.6
	damage_multiplier = 1.3
	penetration_multiplier = 1.2
	one_hand_penalty = 25 //do not one arm this if you have a brain

	gun_tags = list(GUN_SILENCABLE)

	init_firemodes = list(
		FULL_AUTO_600,
		SEMI_AUTO_NODELAY,
		)

/obj/item/gun/projectile/automatic/bozar/on_update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (ammo_magazine)
		iconstring += "[ammo_magazine? "_mag[ammo_magazine.max_ammo]": ""]"
		itemstring += "_full"

	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		iconstring += "_slide"

	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/weapon/gun/projectile/automatic/bozar/Initialize()
	. = ..()
	update_icon()