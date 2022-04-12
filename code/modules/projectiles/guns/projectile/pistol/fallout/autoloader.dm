/obj/item/gun/projectile/autoloader
	name = ".45 \"Autoloader\" Pistol"
	desc = "The .45 \"Autoloader\" pistol comes from unkown origins. A incredibly rare find it appeares as if this weapon was found among elite teams of police and the United States Marines. \
			This weapon was possibly a replacement for the M1911 - and it shows! It can take higher capacity mags and managaes to compensate for the guns recoil better than the dated M1911."
	icon = 'icons/obj/guns/projectile/m1911.dmi'
	icon_state = "autoloader"
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	matter = list(MATERIAL_PLASTEEL = 12, MATERIAL_PLASTIC = 6)
	price_tag = 700
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	can_dual = TRUE
	caliber = CAL_45ACP
	load_method = MAGAZINE
	mag_well = MAG_WELL_PISTOL|MAG_WELL_H_PISTOL
	magazine_type = /obj/item/ammo_magazine/pistol_45
	damage_multiplier = 1.5
	recoil_buildup = 4
	spawn_tags = SPAWN_TAG_FS_PROJECTILE


/obj/item/gun/projectile/autoloader/on_update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring

	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		iconstring += "_slide"

	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/gun/projectile/autoloader/Initialize()
	. = ..()
	update_icon()
