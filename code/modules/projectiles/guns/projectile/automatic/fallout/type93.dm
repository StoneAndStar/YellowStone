/obj/item/gun/projectile/automatic/type93
	name = "Type 93 Assault Rifle"
	desc = "A gun with the letters \"型-93\" on its receiver next to the selector, sporting a few options on this cheap yet well-crafted rifle. \
		 	These rifles are rare finds, likely used by Chinese infiltrators prior to the Great War. Though they're well worth the work put into finding them, these can go for years without maintence!"
	icon = 'icons/obj/guns/projectile/type93.dmi'
	icon_state = "type93"
	item_state = "type93"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_SRIFLE
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_COVERT = 4)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	magazine_type = /obj/item/ammo_magazine/srifle
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

/obj/item/gun/projectile/automatic/type93/on_update_icon()
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

/obj/item/weapon/gun/projectile/automatic/type93/Initialize()
	. = ..()
	update_icon()