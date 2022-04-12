/obj/item/gun/projectile/automatic/service
	name = "Service Rifle"
	desc = "The Service Rifle is a staple rifle of the NCR and West Coaster's alike. Reliable, cheap, affordable and sporting a stock and handguard made of wood furnishing. \
			Despite its post-war history as a reliable rifle it seems its origins have been lost to time. What can be certain is this has become a new American classic rifle. \
			A downside, however, is upon inspection this rifle appears to be unable to take magazines exceeding 20 rounds. Acursed gun manufacturers.."
	icon = 'icons/obj/guns/projectile/servicerifle.dmi'
	icon_state = "service"
	item_state = "service"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_SRIFLE
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_COVERT = 4)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	magazine_type = /obj/item/ammo_magazine/srifle/short
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_WOOD = 10)
	price_tag = 400
	fire_sound = 'sound/weapons/guns/fire/ltrifle_fire.ogg'
	unload_sound = 'sound/weapons/guns/interact/ltrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/ltrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/ltrifle_cock.ogg'
	recoil_buildup = 1.8
	damage_multiplier = 1
	penetration_multiplier = 1.2
	one_hand_penalty = 15 //default rifle

	gun_tags = list(GUN_SILENCABLE)

	init_firemodes = list(
		SEMI_AUTO_NODELAY,
		)

/obj/item/gun/projectile/automatic/service/on_update_icon()
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

/obj/item/weapon/gun/projectile/automatic/service/Initialize()
	. = ..()
	update_icon()

/obj/item/gun/projectile/automatic/service/carbine
	name = "Scout Carbine"
	desc = "A sawn down barrled version of the NCR's Service Rifle but with a scope. Whoever did this really wanted to make a compact rifle and a scope to accompany it. \
			Why you'd do that? No one knows, but the NCR thought this would be a good and cheap marksman rifle. And, for its price, it's not half bad."
	icon = 'icons/obj/guns/projectile/scoutcarbine.dmi'
	icon_state = "scout"
	item_state = "scout"
	w_class = ITEM_SIZE_NORMAL
	price_tag = 450
	zoom_factor = 0.4
	damage_multiplier = 1
	penetration_multiplier = 1