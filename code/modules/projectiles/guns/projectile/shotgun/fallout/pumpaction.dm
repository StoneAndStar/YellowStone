/obj/item/gun/projectile/shotgun/pump/hunting
	name = "hunting shotgun"
	desc = "When an old Remington design meets modern materials, this is the result. A favourite weapon of militia forces throughout many worlds."
	icon = 'icons/obj/guns/projectile/pumpaction.dmi'
	icon_state = "hunting"
	item_state = "hunting"
	max_shells = 4
	w_class = ITEM_SIZE_HUGE
	force = WEAPON_FORCE_PAINFUL
	flags = CONDUCT
	slot_flags = SLOT_BACK
	caliber = CAL_SHOTGUN
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 2)
	load_method = SINGLE_CASING
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag
	handle_casings = HOLD_CASINGS
	fire_sound = 'sound/weapons/guns/fire/shotgunp_fire.ogg'
	bulletinsert_sound = 'sound/weapons/guns/interact/shotgun_insert.ogg'
	matter = list(MATERIAL_PLASTEEL = 8, MATERIAL_WOOD = 6)
	price_tag = 350
	recoil_buildup = 10
	one_hand_penalty = 15 //full sized shotgun level

/obj/item/gun/projectile/shotgun/pump/lever
	name = "lever shotgun"
	desc = "When an old Remington design meets modern materials, this is the result. A favourite weapon of militia forces throughout many worlds."
	icon_state = "lever"
	item_state = "lever"
	max_shells = 5
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	flags = CONDUCT
	slot_flags = SLOT_BACK
	caliber = CAL_SHOTGUN
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 2)
	load_method = SINGLE_CASING
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag
	handle_casings = HOLD_CASINGS
	fire_sound = 'sound/weapons/guns/fire/shotgunp_fire.ogg'
	bulletinsert_sound = 'sound/weapons/guns/interact/shotgun_insert.ogg'
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_WOOD = 4)
	price_tag = 450
	recoil_buildup = 12
	one_hand_penalty = 10

