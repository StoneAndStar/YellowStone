/obj/item/gun/projectile/sig127
	name = "12.7mm Sig Sauer Pistol"
	desc = "The 12.7 Sig Sauer auto pistol is based off the 14mm Sig design but with even more quality of life improvements made to it. \
			This pistol is an incredibly rare find, usually considered a pocket-canon by most people who use it. It's more compact than its 14mm counterpart; fitting into holsters comfortably."
	icon = 'icons/obj/guns/projectile/127mm.dmi'
	icon_state = "127mm"
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	matter = list(MATERIAL_PLASTEEL = 16, MATERIAL_WOOD = 4)
	price_tag = 1000
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	can_dual = FALSE
	caliber = CAL_127
	load_method = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	magazine_type = /obj/item/ammo_magazine/pistol_127
	damage_multiplier = 1.5
	recoil_buildup = 6
	spawn_tags = SPAWN_TAG_FS_PROJECTILE


/obj/item/gun/projectile/sig127/on_update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring

	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		iconstring += "_slide"

	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/gun/projectile/sig127/Initialize()
	. = ..()
	update_icon()