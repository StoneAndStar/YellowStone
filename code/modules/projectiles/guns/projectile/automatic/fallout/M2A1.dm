/obj/item/gun/projectile/automatic/m2a1
	name = "\"Moses\" Browning M2A1 HMG"
	desc = "This gun can instill fear into any living soul that sees a man holding it. And for good reason. \
			This gun can lay down surppressive fire down range like no other. .50 MG, a decent rate of fire and the ability to tear a man in two. \
			No wonder why it's nickname is the almighty \"John Moses Browning\"."
	icon = 'icons/obj/guns/projectile/m2a1.dmi'
	var/icon_base = "m2a1"
	icon_state = "m2a1closed-empty"
	item_state = "m2a1closedmag"
	w_class = ITEM_SIZE_HUGE
	force = WEAPON_FORCE_PAINFUL
	slot_flags = 0
	caliber = CAL_ANTIM
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_BOX
	magazine_type = /obj/item/ammo_magazine/bmg
	tac_reloads = FALSE
	matter = list(MATERIAL_PLASTEEL = 40, MATERIAL_PLASTIC = 15, MATERIAL_WOOD = 5)
	price_tag = 2000
	unload_sound = 'sound/weapons/guns/interact/lmg_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/lmg_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/lmg_cock.ogg'
	fire_sound = 'sound/weapons/guns/fire/lmg_fire.ogg'
	recoil_buildup = 2.4
	one_hand_penalty = 30 //you're not Stallone. LMG level.

	init_firemodes = list(
		FULL_AUTO_400,
		BURST_3_ROUND
		)

	var/cover_open = 0

/obj/item/gun/projectile/automatic/lmg/special_check(mob/user)
	if(cover_open)
		to_chat(user, SPAN_WARNING("[src]'s cover is open! Close it before firing!"))
		return 0
	return ..()

/obj/item/gun/projectile/automatic/m2a1/proc/toggle_cover(mob/user)
	cover_open = !cover_open
	to_chat(user, SPAN_NOTICE("You [cover_open ? "open" : "close"] [src]'s cover."))
	update_icon()

/obj/item/gun/projectile/automatic/m2a1/attack_self(mob/user as mob)
	if(cover_open)
		toggle_cover(user) //close the cover
		playsound(src.loc, 'sound/weapons/guns/interact/lmg_close.ogg', 100, 1)
	else
		return ..() //once closed, behave like normal

/obj/item/gun/projectile/automatic/m2a1/attack_hand(mob/user as mob)
	if(!cover_open && user.get_inactive_hand() == src)
		toggle_cover(user) //open the cover
		playsound(src.loc, 'sound/weapons/guns/interact/lmg_open.ogg', 100, 1)
	else
		return ..() //once open, behave like normal

/obj/item/gun/projectile/automatic/m2a1/equipped(var/mob/user, var/slot)
	.=..()
	update_icon()

/obj/item/gun/projectile/automatic/m2a1/on_update_icon()
	icon_state = "[icon_base][cover_open ? "open" : "closed"][ammo_magazine ? round(ammo_magazine.stored_ammo.len, 25) : "-empty"]"
	set_item_state("-[cover_open ? "open" : null][ammo_magazine ?"mag":"nomag"]", hands = TRUE)
	set_item_state("-[ammo_magazine ?"mag":"nomag"]", back = TRUE, onsuit = TRUE)
	update_wear_icon()

/obj/item/gun/projectile/automatic/m2a1/load_ammo(var/obj/item/A, mob/user)
	if(!cover_open)
		to_chat(user, SPAN_WARNING("You need to open the cover to load [src]."))
		return
	..()

/obj/item/gun/projectile/automatic/m2a1/unload_ammo(mob/user, var/allow_dump=1)
	if(!cover_open)
		to_chat(user, SPAN_WARNING("You need to open the cover to unload [src]."))
		return
	..()