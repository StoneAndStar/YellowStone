/obj/item/gun/energy/pulserifle
	name = "\"YK42B\" pulse rifle"
	desc = "The \"YK42B\" pulse rifle was a state of the art rifle designed in disabling electronics and vehicles alike. Made infamous in stories about its usage by wasters on power-armored users to even the playing field."
	icon = 'icons/obj/guns/energy/pulse.dmi'
	icon_state = "pulse"
	item_state = "pulse"
	item_charge_meter = TRUE
	fire_sound = 'sound/weapons/Laser.ogg'
	origin_tech = list(TECH_COMBAT = 2, TECH_MAGNET = 4)
	w_class = ITEM_SIZE_HUGE
	force = WEAPON_FORCE_PAINFUL
	flags = CONDUCT
	slot_flags = SLOT_BACK
	charge_cost = 200
	matter = list(MATERIAL_PLASTEEL = 24, MATERIAL_METAL = 8, MATERIAL_SILVER = 10, MATERIAL_URANIUM = 8)
	price_tag = 1800
	projectile_type = /obj/item/projectile/ion
	suitable_cell = /obj/item/cell/medium/weapon/ecp
	one_hand_penalty = 5
	twohanded = TRUE

/obj/item/gun/energy/pulserifle/emp_act(severity)
	..(max(severity, 2)) //so it doesn't EMP itself, I guess

/obj/item/gun/energy/pulserifle/on_update_icon(ignore_inhands)
	..(TRUE)
	if(!cell || cell.charge < charge_cost)
		set_item_state("-empty", hands = TRUE)
	else
		set_item_state(null, hands = TRUE)
	//Update here instead of parent proc because we override hands icon
	if(!ignore_inhands)
		update_wear_icon()