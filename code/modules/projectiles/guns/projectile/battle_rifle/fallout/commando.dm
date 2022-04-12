/obj/item/gun/projectile/boltgun/commando
	name = ".45 De Lisle \"Commando\" Carbine"
	desc = "A strange amalgimation of a hunting Lee Enfield rifle and a silenced specialist rifle. Weirdly though, it still works, and even takes a magazine instead of being clip-fed! \
			Who came up with these things is not known but they can easily be found used by the Legion and advanced scrappers who rely off older, poor firearms and easily avalible calibers."
	icon = 'icons/obj/guns/projectile/commando.dmi'
	icon_state = "commando"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	armor_penetration = ARMOR_PEN_DEEP
	slot_flags = SLOT_BACK
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	caliber = CAL_45ACP
	load_method = MAGAZINE
	mag_well = MAG_WELL_PISTOL|MAG_WELL_H_PISTOL
	magazine_type = /obj/item/ammo_magazine/pistol_45
	handle_casings = HOLD_CASINGS
	zoom_factor = 0.2
	max_shells = 14
	fire_delay = 12 // double the standart
	damage_multiplier = 1.2
	penetration_multiplier = 1.5
	extra_damage_mult_scoped = 0.2
	recoil_buildup = 1.6 // reduced from the AK's/Takeshi's buildup of 1.7/1.8 because >lol boltgun
	fire_sound = 'sound/weapons/guns/fire/sniper_fire.ogg'
	reload_sound = 'sound/weapons/guns/interact/rifle_load.ogg'
	matter = list(MATERIAL_STEEL = 20, MATERIAL_WOOD = 10)
	price_tag = 750
	one_hand_penalty = 20 //full sized rifle is hard to keep on target
	attack_verb = list("bashed", "thwamped", "beat", "butted") // Considering attached bayonet
	sharp = FALSE
	gun_parts = list(/obj/item/stack/material/steel = 16)
	saw_off = FALSE
	silenced = TRUE