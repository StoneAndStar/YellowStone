/obj/item/gun/projectile/browning
	name = "M&A 9mm Pistol"
	desc = "A cheap and relatively common pistol chambered in 9mm. This pistol has become the staple of the NCR due to its common usage in pre-war police departments along the West Coast."
	icon = 'icons/obj/guns/projectile/browning.dmi'
	icon_state = "m&a"
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	matter = list(MATERIAL_PLASTEEL = 8, MATERIAL_WOOD = 4)
	price_tag = 150
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	can_dual = TRUE
	caliber = CAL_PISTOL
	load_method = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	magazine_type = /obj/item/ammo_magazine/pistol
	damage_multiplier = 1.2
	recoil_buildup = 4
	spawn_tags = SPAWN_TAG_FS_PROJECTILE

/obj/item/gun/projectile/browning/on_update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		iconstring += "_slide"

	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/gun/projectile/browning/Initialize()
	. = ..()
	update_icon()