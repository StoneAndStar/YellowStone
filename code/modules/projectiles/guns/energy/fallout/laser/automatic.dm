/obj/item/gun/energy/lasersmg
	name = "\"RCW\" laser SMG"
	desc = "The RCW is a very strange weapon. Based possibly off a Thompson submachine gun. The drum appears to be replaced with an overcharge pack, allowing the cell to be overclocked.\
			This weapon creates small 'micro-explosions' in its firing, allowing a normally semi-automatic laser weapon to become automatic. While this is charge effective it limits accuracy."
	icon = 'icons/obj/guns/energy/rcw.dmi'
	icon_state = "rcw"
	item_state = "rcw"
	w_class = ITEM_SIZE_BULKY
	fire_sound = 'sound/weapons/Laser.ogg'
	suitable_cell = /obj/item/cell/medium/weapon/ecp
	projectile_type = /obj/item/projectile/beam
	charge_meter = FALSE //TODO: Rework overlays, check assets storage for charge states.
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BACK
	matter = list(MATERIAL_PLASTEEL = 11, MATERIAL_STEEL = 13, MATERIAL_PLASTIC = 2, MATERIAL_SILVER = 1, MATERIAL_GLASS = 2)
	price_tag = 1250
	damage_multiplier = 0.8
	recoil_buildup = 3
	init_offset = 7 // bad accuracy even on the first shot
	charge_cost = 50 // ~4 bursts with a 800m cell

	init_firemodes = list(
		BURST_3_ROUND,
		FULL_AUTO_400
		)

