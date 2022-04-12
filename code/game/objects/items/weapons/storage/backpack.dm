
/*
 * Backpack
 */

/obj/item/storage/backpack
	name = "wanderers backpack"
	desc = "You wear this on your back and put items into it."
	icon = 'icons/obj/storage/backpack.dmi'
	icon_state = "backpack_wanderer"
	contained_sprite = TRUE
	w_class = ITEM_SIZE_HUGE
	slot_flags = SLOT_BACK
	max_w_class = ITEM_SIZE_BULKY
	max_storage_space = DEFAULT_HUGE_STORAGE
	spawn_tags = SPAWN_TAG_BACKPACK
	matter = list(MATERIAL_BIOMATTER = 10, MATERIAL_PLASTIC = 2)
	var/worn_access = FALSE // If the object may be accessed while equipped in a storage slot.
	var/equip_access = TRUE // If the object may be accessed while equipped anywhere on a charcter, including hands.

/obj/item/storage/backpack/Initialize()
	. = ..()
	if (!item_state)
		item_state = icon_state

/obj/item/storage/backpack/attackby(obj/item/W, mob/user)
	if (!worn_check())
		return
	..()

/obj/item/storage/backpack/attack_hand(mob/user)
	if (!worn_check(no_message = TRUE))
		if(src.loc != user || user.incapacitated())
			return
		if (!user.unEquip(src))
			return
		user.put_in_active_hand(src)
		return
	..()

/obj/item/storage/backpack/equipped(mob/user, slot)
	..(user, slot)
	if (use_sound)
		playsound(loc, use_sound, 50, 1, -5)
	if(!worn_access && is_worn()) //currently looking into the backpack
		close(user)


/obj/item/storage/backpack/open(mob/user)
	if (!worn_check())
		return
	..()


/obj/item/storage/backpack/proc/worn_check(no_message = FALSE)
	if(!equip_access && is_equipped())
		var/mob/living/L = loc
		if (istype(L))
			if(!no_message)
				to_chat(L, "<span class='warning'>The [src] is too cumbersome to handle with one hand, you're going to have to set it down somewhere!</span>")
		if (!no_message && use_sound)
			playsound(loc, use_sound, 50, 1, -5)
		return FALSE

	else if(!worn_access && is_worn())
		var/mob/living/L = loc
		if (istype(L))
			if(!no_message)
				to_chat(L, "<span class='warning'>Oh no! Your arms are not long enough to open [src] while it is on your back!</span>")
		if (!no_message && use_sound)
			playsound(loc, use_sound, 50, 1, -5)
		return FALSE

	return TRUE


/*
 * Backpack Types
 */
/obj/item/storage/backpack/wasteland
	name = "wasteland backpack"
	desc = "It's a tough backpack for the daily grind."
	icon_state = "backpack_wasteland"
	rarity_value = 8.33

/obj/item/storage/backpack/old
	name = "old backpack"
	desc = "Old leather bag thats a bit stiff and cracked, but still usable, if a little small."
	icon_state = "backpack_old"
	rarity_value = 8.33
	max_storage_space = DEFAULT_HUGE_STORAGE * 0.9

/obj/item/storage/backpack/trekker
	name = "trekker backpack"
	desc = "It's a tough backpack for the daily grind."
	icon_state = "backpack_trekker"
	rarity_value = 8.33

/obj/item/storage/backpack/canvas
	name = "canvas backpack"
	desc = "Simple backpack."
	icon_state = "backpack_canvas"
	rarity_value = 8.33

/obj/item/storage/backpack/military
	name = "military pack"
	desc = "Big old army backpack, holds a lot of equipment."
	icon_state = "backpack_military"
	max_storage_space = DEFAULT_HUGE_STORAGE * 1.3
	rarity_value = 8.33

/obj/item/storage/backpack/dark
	name = "cloth backpack"
	desc = "Slightly damp resistant large backpack."
	icon_state = "backpack_dark"
	rarity_value = 8.33
	max_storage_space = DEFAULT_HUGE_STORAGE * 1.1

/obj/item/storage/backpack/vault
	name = "vault-tec backpack"
	desc = "Blue synthetic backpack, smaller size for more comfortable use."
	icon_state = "backpack_vault"
	max_storage_space = DEFAULT_HUGE_STORAGE * 0.9

/obj/item/storage/backpack/grey
	name = "grey sport backpack"
	desc = "A light backpack made from synthetic materials."
	icon_state = "backpack_grey"

/*
 * Satchel Types
 */
/obj/item/storage/backpack/satchel
	name = "satchel"
	desc = "A practical satchel."
	icon_state = "satchel"
	max_storage_space = DEFAULT_HUGE_STORAGE * 0.7
	worn_access = TRUE

/obj/item/storage/backpack/satchel/canvas
	name = "canvas satchel"
	desc = "A practical satchel."
	icon_state = "satchel_canvas"

/obj/item/storage/backpack/satchel/wasteland
	name = "wasteland satchel"
	icon_state = "satchel_wasteland"

/obj/item/storage/backpack/satchel/old
	name = "old satchel"
	desc = "Old leather bag thats a bit stiff and cracked, but still usable."
	icon_state = "satchel_old"

/obj/item/storage/backpack/satchel/trekker
	name = "trekker satchel"
	icon_state = "satchel_trekker"

/obj/item/storage/backpack/satchel/medical
	name = "medical satchel"
	desc = "A sterile satchel used in medical departments."
	icon_state = "satchel_medical"
	rarity_value = 8.33

/obj/item/storage/backpack/satchel/leather
	name = "leather satchel"
	desc = "It's a very fancy satchel made with fine leather."
	icon_state = "satchel_leather"

/obj/item/storage/backpack/satchel/leather/withwallet
	rarity_value = 4.16

/obj/item/storage/backpack/satchel/leather/withwallet/populate_contents()
	new /obj/item/storage/wallet/random(src)

/*
 * Duffelbag Types
 */
/obj/item/storage/backpack/duffelbag
	name = "duffel bag"
	desc = "You wear this on your back and put items into it."
	icon_state = "duffel"
	max_storage_space = DEFAULT_HUGE_STORAGE * 1.5
	matter = list(MATERIAL_BIOMATTER = 15, MATERIAL_PLASTIC = 2)
	equip_access = FALSE
	rarity_value = 5

/obj/item/storage/backpack/duffelbag/loot
	name = "lootbag"
	icon_state = "lootbag"
	matter = list(MATERIAL_BIOMATTER = 20, MATERIAL_PLASTIC = 3)
	rarity_value = 7.5

//Silly, silly stuff

/obj/item/storage/backpack/clown
	name = "Giggles von Honkerton"
	desc = "It's a backpack intended to make you happy. Start laughing now."
	icon = 'icons/obj/storage/silly.dmi'
	icon_state = "backpack_clown"
	rarity_value = 12.5

/*
 * Bag of Holding
 */
/obj/item/storage/backpack/holding
	name = "bag of holding"
	desc = "A backpack that opens into a localized pocket of bluespace."
	origin_tech = list(TECH_BLUESPACE = 4)
	icon = 'icons/obj/storage/silly.dmi'
	icon_state = "holdingpack"
	max_w_class = ITEM_SIZE_BULKY
	max_storage_space = DEFAULT_HUGE_STORAGE * 2
	matter = list(MATERIAL_STEEL = 10, MATERIAL_GOLD = 10, MATERIAL_DIAMOND = 5, MATERIAL_URANIUM = 5)

/obj/item/storage/backpack/holding/New()
	..()
	bluespace_entropy(6, get_turf(src))

/obj/item/storage/backpack/holding/attackby(obj/item/W, mob/user)
	if(istype(W, /obj/item/storage/backpack/holding))
		to_chat(user, SPAN_WARNING("The Bluespace interfaces of the two devices conflict and malfunction."))
		qdel(W)
		return
	..()

	//Please don't clutter the parent storage item with stupid hacks.
/obj/item/storage/backpack/holding/can_be_inserted(obj/item/W, stop_messages = 0)
	if(istype(W, /obj/item/storage/backpack/holding))
		return TRUE
	return ..()
