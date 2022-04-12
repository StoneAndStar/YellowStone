/obj/item/gun/projectile/automatic/r91
	name = "R91 Assault Rifle"
	desc = "Manufactured by Stent Security Solutions, the R91 found itself as the offical main armament of the National Guard before the Great War. \
			Though these relics have aged over the last 200 years the dust, dirt and grime doesn't seem to be able to stop the rifle's bolt from chugging along!"
	icon = 'icons/obj/guns/projectile/r91/default.dmi'
	icon_state = "r91"
	item_state = "r91"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_SRIFLE
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_COVERT = 4)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	magazine_type = /obj/item/ammo_magazine/srifle
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 10)
	price_tag = 350
	fire_sound = 'sound/weapons/guns/fire/ltrifle_fire.ogg'
	unload_sound = 'sound/weapons/guns/interact/ltrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/ltrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/ltrifle_cock.ogg'
	recoil_buildup = 1.5
	one_hand_penalty = 15 //automatic rifle level
	var/folded = FALSE

	gun_tags = list(GUN_SILENCABLE)

	init_firemodes = list(
		FULL_AUTO_400,
		SEMI_AUTO_NODELAY,
		)

/obj/item/gun/projectile/automatic/r91/on_update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (ammo_magazine)
		iconstring += "[ammo_magazine? "_mag[ammo_magazine.max_ammo]": ""]"

	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		iconstring += "_slide"

	if(wielded)
		itemstring += "_doble"

	if(folded)
		iconstring += "_f"
		itemstring += "_f"

	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/gun/projectile/automatic/r91/Initialize()
	. = ..()
	update_icon()

/obj/item/gun/projectile/automatic/r91/folding
	name = "R91 Assault Rifle"
	desc = "Manufactured by Stent Security Solutions, the R91 found itself as the offical main armament of the National Guard before the Great War. \
			Though these relics have aged over the last 200 years the dust, dirt and grime doesn't seem to be able to stop the rifle's bolt from chugging along! \
			This one appears to have a folding stock; allowing it to become compact on a moments notice."
	icon = 'icons/obj/guns/projectile/r91/folding.dmi'
	icon_state = "r91"
	item_state = "r91"
	recoil_buildup = 1.8
	damage_multiplier = 0.9 //Better control, worse damage
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 10)
	price_tag = 500

/obj/item/gun/projectile/automatic/r91/folding/CtrlShiftClick()
	. = ..()

	if((!ishuman(usr) && (src.loc != usr)) || usr.stat || usr.restrained())
		return

	fold()


/obj/item/gun/projectile/automatic/r91/folding/verb/quick_fold()
	set name = "Fold or Unfold Stock"
	set category = "Object"
	set src in view(1)

	if((!ishuman(usr) && (src.loc != usr)) || usr.stat || usr.restrained())
		return
	fold()

/obj/item/gun/projectile/automatic/r91/folding/proc/fold()

	if(folded)
		to_chat(usr, SPAN_NOTICE("You unfold the stock on the [src]."))
		recoil_buildup = 1.5
		w_class = ITEM_SIZE_BULKY
		folded = FALSE
	else
		to_chat(usr, SPAN_NOTICE("You fold the stock on the [src]."))
		recoil_buildup = 1.8
		w_class = ITEM_SIZE_NORMAL
		folded = TRUE

	playsound(src.loc, 'sound/weapons/guns/interact/selector.ogg', 100, 1)
	update_icon()

/obj/item/gun/projectile/automatic/r91/infiltrator
	name = "R91 Assault Rifle"
	desc = "Manufactured by Stent Security Solutions, the R91 found itself as the offical main armament of the National Guard before the Great War. \
			Though these relics have aged over the last 200 years the dust, dirt and grime doesn't seem to be able to stop the rifle's bolt from chugging along! \
			This one appears to have a folding stock; allowing it to become compact on a moments notice."
	icon = 'icons/obj/guns/projectile/r91/folding.dmi'
	icon_state = "infl"
	item_state = "infl"
	recoil_buildup = 1.5
	damage_multiplier = 1.1
	penetration_multiplier = 1.2
	zoom_factor = 0.8
	silenced = TRUE
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 10)
	price_tag = 800

/obj/item/gun/projectile/automatic/r91/infiltrator/CtrlShiftClick()
	. = ..()

	if((!ishuman(usr) && (src.loc != usr)) || usr.stat || usr.restrained())
		return

	fold()


/obj/item/gun/projectile/automatic/r91/infiltrator/verb/quick_fold()
	set name = "Fold or Unfold Stock"
	set category = "Object"
	set src in view(1)

	if((!ishuman(usr) && (src.loc != usr)) || usr.stat || usr.restrained())
		return
	fold()

/obj/item/gun/projectile/automatic/r91/infiltrator/proc/fold()

	if(folded)
		to_chat(usr, SPAN_NOTICE("You unfold the stock on the [src]."))
		recoil_buildup = 1.3
		w_class = ITEM_SIZE_BULKY
		folded = FALSE
	else
		to_chat(usr, SPAN_NOTICE("You fold the stock on the [src]."))
		recoil_buildup = 1.5
		w_class = ITEM_SIZE_NORMAL
		folded = TRUE