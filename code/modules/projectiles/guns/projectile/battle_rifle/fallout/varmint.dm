/obj/item/gun/projectile/boltgun/varmint
	name = "5.56 \"Varmint\" Rifle"
	desc = "The varmint rifle is the taple hunting rifle across the entire west coast. Used typically by small game hunters this rifle has seen usage for centuries now."
	icon_state = "varmint"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	slot_flags = SLOT_BACK
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	caliber = CAL_SRIFLE
	magazine_type = /obj/item/ammo_magazine/lrifle
	max_shells = 12
	fire_delay = 8
	damage_multiplier = 1.2
	penetration_multiplier = 1.3
	recoil_buildup = 1.4
	zoom_factor = 0.2
	fire_sound = 'sound/weapons/guns/fire/sniper_fire.ogg'
	reload_sound = 'sound/weapons/guns/interact/rifle_load.ogg'
	matter = list(MATERIAL_STEEL = 16, MATERIAL_WOOD = 8)
	price_tag = 300
	one_hand_penalty = 15 //standard rifle
	attack_verb = list("bashed", "thwamped", "beat", "butted")
	sharp = FALSE
	gun_parts = list(/obj/item/stack/material/steel = 12)
	saw_off = FALSE

/obj/item/gun/projectile/boltgun/varmint/small
	name = ".22 LR \"Varmint\" Rifle"
	desc = "The varmint rifle is the taple hunting rifle across the entire west coast. Someone bought this one for either hunting vermint, birds or for practice."
	caliber = CAL_22
	max_shells = 18
	fire_delay = 6
	damage_multiplier = 1.5
	penetration_multiplier = 1.5