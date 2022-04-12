/obj/item/gun/projectile/beretta
	name = "9mm \"M9FS\" Beretta"
	desc = "Created in the 1970s by Fabbrica d'Armi Pietro Beretta, the United States military adopted the pistol in the 1980s all the way to the Great War due to its cheap caliber and select-fire capability."
	icon = 'icons/obj/guns/projectile/beretta.dmi'
	icon_state = "beretta"
	item_state = "pistol"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3)
	can_dual = TRUE
	caliber = CAL_PISTOL
	load_method = MAGAZINE
	mag_well = MAG_WELL_PISTOL|MAG_WELL_H_PISTOL
	magazine_type = /obj/item/ammo_magazine/pistol
	matter = list(MATERIAL_PLASTEEL = 12, MATERIAL_WOOD = 6)
	price_tag = 600
	damage_multiplier = 1.2
	penetration_multiplier = 1.2
	recoil_buildup = 2
	init_firemodes = list(
		list(mode_name="semiauto", mode_desc="Fire almost as fast as you can pull the trigger", burst=1, fire_delay=1.2, move_delay=null, 				icon="semi"),
		list(mode_name="2-round bursts", mode_desc="Not quite the Mozambique method", burst=2, fire_delay=0.2, move_delay=4,    	icon="burst"),
		)

	spawn_tags = SPAWN_TAG_FS_PROJECTILE

/obj/item/gun/projectile/beretta/on_update_icon()
	..()
	if(ammo_magazine && ammo_magazine.stored_ammo.len)
		icon_state = "beretta"
	else
		icon_state = "beretta_empty"
