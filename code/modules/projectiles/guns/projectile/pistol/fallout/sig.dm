/obj/item/gun/projectile/sig
	name = "9mm \"P220\" Sig Sauer"
	desc = "The P220 Sig Sauer is a Swiss designed pistol, benifiting from its compact and lightweight construction. Pricey, but a perfect concealed carry weapon."
	icon = 'icons/obj/guns/projectile/beretta.dmi'
	icon_state = "sig"
	item_state = "pistol"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3)
	can_dual = TRUE
	caliber = CAL_PISTOL
	load_method = MAGAZINE
	mag_well = MAG_WELL_PISTOL|MAG_WELL_H_PISTOL
	magazine_type = /obj/item/ammo_magazine/pistol
	matter = list(MATERIAL_PLASTEEL = 12, MATERIAL_METAL = 6)
	price_tag = 450
	damage_multiplier = 1.4
	recoil_buildup = 5