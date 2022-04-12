/obj/item/gun/projectile/revolver/magnum
	name = ".44 Magnum Revolver"
	desc = "A standard picture-esc revolver carried by cowboys across the pre-war west. Packing a huge punch and kicking like a bull. Exactly what one expects a cowboy to pack on his hip."
	icon = 'icons/obj/guns/projectile/magnum.dmi'
	icon_state = "magnum"
	caliber = CAL_MAGNUM
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3)
	max_shells = 6
	ammo_type = /obj/item/ammo_casing/magnum
	matter = list(MATERIAL_PLASTEEL = 12, MATERIAL_WOOD = 6)
	price_tag = 650
	damage_multiplier = 1.4
	penetration_multiplier = 1.2
	recoil_buildup = 6
	spawn_tags = SPAWN_TAG_FS_PROJECTILE

/obj/item/gun/projectile/revolver/magnum/snub
	name = ".44 Snubnose Magnum Revolver"
	desc = "Someone took this .44 magnum and sawed down the barrel quite noticably and changed the receiver. It appears to have went from a big-iron one ones hip to a gamblers best friend. \
			Though.. someone made the cylinder smaller as well to make this fit more comfortably into a pocket."
	recoil_buildup = 6.5
	max_shells = 5