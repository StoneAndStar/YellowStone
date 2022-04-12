// .22 LR SMG

/obj/item/gun/projectile/automatic/smg
	name = ".22 SMG \"American-180\""
	desc = "A gun that looks like it is fresh out of one of those mobster movie holotapes! While it's relatively bulky for its caliber it makes the gun incredibly sturdy and comfortable to fire. \
			Its fast fire rate, ability to lay down rounds in mass and accuracy made it a favorite pre-war among organized crime groups. Seems to be the case post-war too!"
	icon = 'icons/obj/guns/projectile/smg22.dmi'
	icon_state = "uzi"
	item_state = "uzi"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_22
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT|SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_PAN
	magazine_type = /obj/item/ammo_magazine/cssmg
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_STEEL = 4, MATERIAL_PLASTIC = 6)
	price_tag = 200
	unload_sound = 'sound/weapons/guns/interact/sfrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/sfrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/sfrifle_cock.ogg'
	damage_multiplier = 0.7
	penetration_multiplier = 1.2
	recoil_buildup = 1
	one_hand_penalty = 15 //Bulky gun, big n' bulky.
	silenced = TRUE
	init_firemodes = list(
		FULL_AUTO_600,
		BURST_5_ROUND,
		)

/obj/item/gun/projectile/automatic/smg/on_update_icon()
	cut_overlays()
	icon_state = "[initial(icon_state)][silenced ? "_s" : ""]"
	if(ammo_magazine)
		add_overlays("mag[silenced ? "_s" : ""][ammo_magazine.ammo_color]")
	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		add_overlays("slide[silenced ? "_s" : ""]")

/obj/item/gun/projectile/automatic/smg/Initialize()
	. = ..()
	update_icon()

//9mm SMGs

/obj/item/gun/projectile/automatic/smg/uzi
	name = "Uzi SMG"
	desc = "The Uzi is a relatively famous - or infamous firearm, depending on how one looks at it. \
			It was known for its ability to be fired automatic with ease, gangsters back in the day even doing so one-handed! Reliable, quick firing - but inaccurate."
	icon = 'icons/obj/guns/projectile/uzi.dmi'
	icon_state = "uzi"
	item_state = "uzi"
	w_class = ITEM_SIZE_NORMAL
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_PISTOL
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT|SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_SMG
	magazine_type = /obj/item/ammo_magazine/smg
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_STEEL = 4, MATERIAL_PLASTIC = 6)
	price_tag = 250
	unload_sound = 'sound/weapons/guns/interact/sfrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/sfrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/sfrifle_cock.ogg'
	damage_multiplier = 1
	penetration_multiplier = 1.2
	recoil_buildup = 1.2
	one_hand_penalty = 5 //smg level


	init_firemodes = list(
		FULL_AUTO_600,
		SEMI_AUTO_NODELAY,
		)

/obj/item/gun/projectile/automatic/smg/mp5
	name = "H&K \"MP5A\""
	desc = "Before the Great War this gun was state of the art for many special forces units and police forces across the country. Its rarity is likely due to its price back in the day but it earns its keep. \
			The sturdy collpasing stock allows for the weapon to go between a sub-machinegun to a near carbine, laying down low caliber but accurate fire. It may not put rounds quick down range like an Uzi but it's nothing to sneeze at."
	icon_state = "mp5"
	item_state = "mp5"
	icon = 'icons/obj/guns/projectile/mp5.dmi'
	w_class = ITEM_SIZE_NORMAL
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_PISTOL
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT|SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_SMG
	magazine_type = /obj/item/ammo_magazine/smg
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_STEEL = 4, MATERIAL_PLASTIC = 6)
	price_tag = 500
	unload_sound = 'sound/weapons/guns/interact/sfrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/sfrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/sfrifle_cock.ogg'
	damage_multiplier = 1
	penetration_multiplier = 1
	recoil_buildup = 1.6
	one_hand_penalty = 5 //smg level

	init_firemodes = list(
		FULL_AUTO_400,
		BURST_3_ROUND,
		SEMI_AUTO_NODELAY,
		)


/obj/item/gun/projectile/automatic/smg/ppsh
	name = "PPSH \"Shpagin\""
	desc = "A rare yet relatively well-known firearm from well before the Great War. The PPSH, also known as the 'Shpagin' based off of its name, served in the Soviet military for decades during its height. \
			This firearm must have been pulled from a musuem at some point due to how well it has withstood the last 200 years, but that doesn't slow its rate of fire! There's no stopping this thing!"
	icon = 'icons/obj/guns/projectile/ppsh.dmi'
	icon_state = "ppsh"
	item_state = "thompson"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_PISTOL
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT|SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_DRUM
	magazine_type = /obj/item/ammo_magazine/drum
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_STEEL = 4, MATERIAL_PLASTIC = 6)
	price_tag = 400
	unload_sound = 'sound/weapons/guns/interact/sfrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/sfrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/sfrifle_cock.ogg'
	damage_multiplier = 1
	penetration_multiplier = 1
	recoil_buildup = 1.6
	one_hand_penalty = 15 //Rifle level - because fuck one-arming this thing.

	init_firemodes = list(
		FULL_AUTO_800,
		BURST_5_ROUND,
		)

//10mm SMG

/obj/item/gun/projectile/automatic/smg/smg_10mm
	name = "10mm SMG \"H&K MP9\""
	desc = "Commonly just called the 10mm SMG, the H&K MP9 10mm SMG is a state of the art compact and hard-hitting SMG. Before the Great War these were widespread, sporting more stopping power than its predisessor. \
			These sold like hotcakes prior to the war and still do. Careful holding it one-handed though, thing can blow your wrist apart!"
	icon = 'icons/obj/guns/projectile/smg10mm.dmi'
	icon_state = "smg10mm"
	item_state = "smg10mm"
	w_class = ITEM_SIZE_NORMAL
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_HPISTOL
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT|SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_H_PISTOL
	magazine_type = /obj/item/ammo_magazine/hpistol_10mm
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_STEEL = 4, MATERIAL_PLASTIC = 6)
	price_tag = 550
	unload_sound = 'sound/weapons/guns/interact/sfrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/sfrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/sfrifle_cock.ogg'
	damage_multiplier = 1.2
	penetration_multiplier = 1.1
	recoil_buildup = 1.6
	one_hand_penalty = 10 //Bigger round than a 9mm so extra penalty.

	init_firemodes = list(
		FULL_AUTO_400,
		SEMI_AUTO_NODELAY,
		)

//.45 ACP SMGs

/obj/item/gun/projectile/automatic/smg/greasegun
	name = "M3 \"Grease-Gun\""
	desc = "An amazing piece of engineering, the open-bolt firing M3 Grease-Gun is a simple gun from centuries back made simply of stamped metal and simple firing mechanisms. \
			This thing, for an overglorified assembly of cheap metal, packs a punch to it! However it suffers inaccuracy and recoil issues, as well ast the fact the cocking mechanism.. requires you to use your finger to the bolt."
	icon = 'icons/obj/guns/projectile/greasegun.dmi'
	icon_state = "greasegun"
	item_state = "greasegun"
	w_class = ITEM_SIZE_NORMAL
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_45ACP
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT|SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_SMG
	magazine_type = /obj/item/ammo_magazine/msmg
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_STEEL = 4, MATERIAL_PLASTIC = 6)
	price_tag = 500
	unload_sound = 'sound/weapons/guns/interact/sfrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/sfrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/sfrifle_cock.ogg'
	damage_multiplier = 1.2
	penetration_multiplier = 1
	recoil_buildup = 1.6
	one_hand_penalty = 10 //Bigger round than a 9mm so extra penalty.

	init_firemodes = list(
		FULL_AUTO_300,
		SEMI_AUTO_NODELAY,
		)

/obj/item/gun/projectile/automatic/smg/thompson
	name = "Thompson SMG"
	desc = "The Thompson goes by many names. The \"Chicago Typewriter\", the \"Trench Broom\" or simply the \"Tommy Gun\". None of these nicknames come from nothing as this gun is infamous in American history. \
			It's heavy, it kicks like a bitch and it feels odd to carry.. but the damage it can deal in sustained fire is unmatched. Despite being centuries out of date this gun still manages to out preform even its new competators."
	icon = 'icons/obj/guns/projectile/thompson.dmi'
	icon_state = "tommygun"
	item_state = "tommygun"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_45ACP
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT|SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_DRUM
	magazine_type = /obj/item/ammo_magazine/drum_45
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_STEEL = 4, MATERIAL_PLASTIC = 6)
	price_tag = 700
	unload_sound = 'sound/weapons/guns/interact/sfrifle_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/sfrifle_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/sfrifle_cock.ogg'
	damage_multiplier = 1.2
	penetration_multiplier = 1
	recoil_buildup = 1.6
	one_hand_penalty = 10 //Bigger round than a 9mm so extra penalty.

	init_firemodes = list(
		FULL_AUTO_600,
		SEMI_AUTO_NODELAY,
		)