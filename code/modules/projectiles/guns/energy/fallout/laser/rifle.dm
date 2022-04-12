/obj/item/gun/energy/aer9
	name = "\"AER-9\" laser rifle"
	icon = 'icons/obj/guns/energy/aer.dmi'
	icon_state = "aer9"
	item_state = "aer9"
	desc = "An AER-9 laser rifle, a prestine and new laser weapon that saw action right before the Great War. These military firearms found themselves deployed far and wide across the elites of the United States."
	fire_sound = 'sound/weapons/Laser.ogg'
	slot_flags = SLOT_BACK|SLOT_BELT
	item_charge_meter = FALSE
	w_class = ITEM_SIZE_NORMAL
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_PLASTIC = 15, MATERIAL_GLASS = 5, MATERIAL_GOLD = 3)
	projectile_type = /obj/item/projectile/beam
	suitable_cell = /obj/item/cell/medium/weapon/mfc
	fire_delay = 6
	zoom_factor = 0
	damage_multiplier = 1.2
	penetration_multiplier = 1.2
	charge_cost = 100
	price_tag = 750
	init_firemodes = list(
		WEAPON_NORMAL
	)
	twohanded = TRUE

/obj/item/gun/energy/aer14
	name = "\"AER-14\" laser rifle"
	icon = 'icons/obj/guns/energy/aer.dmi'
	icon_state = "aer14"
	item_state = "aer14"
	desc = "This weapon was state of the art prior to the Great War, a rare find among the wastes. This weapon did not see the extensive service of the AER-9, but its focused lens and improvements put it leaps above it."
	force = WEAPON_FORCE_PAINFUL
	item_charge_meter = FALSE
	fire_sound = 'sound/weapons/Laser.ogg'
	slot_flags = SLOT_BACK|SLOT_BELT
	w_class = ITEM_SIZE_NORMAL
	projectile_type = /obj/item/projectile/beam/midlaser
	suitable_cell = /obj/item/cell/medium/weapon/mfc
	zoom_factor = 0
	damage_multiplier = 1.2
	charge_cost = 125
	price_tag = 1200
	init_firemodes = list(
		WEAPON_NORMAL
	)
	twohanded = TRUE

/obj/item/gun/energy/wattz2k
	name = "\"Wattz-2000\" laser rifle"
	icon = 'icons/obj/guns/energy/wattz2k.dmi'
	icon_state = "wattz"
	item_state = "wattz"
	desc = "A rare military weapon found at firing ranges of the United States Army. The Wattz-2000, a competator design of the AER-9, found itself in service before the Great War as a laser alternative of a marksman weapon."
	force = WEAPON_FORCE_PAINFUL
	item_charge_meter = FALSE
	zoom_factor = 0.6
	slot_flags = SLOT_BACK
	w_class = ITEM_SIZE_BULKY
	projectile_type = /obj/item/projectile/beam
	suitable_cell = /obj/item/cell/medium/weapon/mfc
	fire_delay = 10
	charge_cost = 125
	damage_multiplier = 1.2
	penetration_multiplier = 1.2
	extra_damage_mult_scoped = 0.2
	extra_damage_mult_scoped = 0.2
	price_tag = 1000
	init_firemodes = list(
		WEAPON_NORMAL,
		WEAPON_CHARGE
	)

/obj/item/gun/energy/recharger
	name = "\"MFC Breeder\" recharging laser rifle"
	icon = 'icons/obj/guns/energy/recharger.dmi'
	icon_state = "recharger"
	item_state = "recharger"
	desc = "The \"MFC Breeder\" appears to be a rare prototype weapon that was seeing US Army testing prior to the war. The MFC breeder houses an internal MFC cell, slowly recharging itself with its unique chemical compounds. \
			Somehow after 200 years those chemicals inside the cell mount are still chugging, allowing the gun to continue recharging ever after all this time!"
	w_class = ITEM_SIZE_BULKY
	slot_flags = SLOT_BACK
	item_charge_meter = FALSE
	projectile_type = /obj/item/projectile/beam
	zoom_factor = 0.2
	fire_delay = 10
	damage_multiplier = 1
	self_recharge = TRUE
	price_tag = 1200
	charge_cost = 125
	init_firemodes = list(
		WEAPON_NORMAL,
		WEAPON_CHARGE
	)