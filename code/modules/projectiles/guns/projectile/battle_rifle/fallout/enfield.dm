//This gun is just a copy of the normal boltgun for now till I can make it more unique.
/obj/item/gun/projectile/boltgun/enfield
	name = "7.62 Lee Enfield Rifle"
	desc = "The Mk III Lee Enfield is a historic rifle dating back to the previous World Wars. \
			This 10-round internal loading rifle is a historical wonder, reproduced and saught after by pre-Great War collectors."
	icon = 'icons/obj/guns/projectile/enfield.dmi'
	icon_state = "commando"
	damage_multiplier = 1.2
	penetration_multiplier = 1.2
	recoil_buildup = 1.6
	zoom_factor = 0.2
	matter = list(MATERIAL_STEEL = 18, MATERIAL_WOOD = 10)
	wielded_item_state = "_doble_wood"
	sharp = FALSE
	gun_parts = list(/obj/item/stack/material/steel = 16)
	saw_off = FALSE
	silenced = TRUE