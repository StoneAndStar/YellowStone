/obj/item/gun/projectile/boltgun/cowboy
	name = "\"Cowboy\" repeating rifle"
	desc = "A classic .357 repeating rifle. The rifle looks like it belongs in a classic cowboy movie! Wonder if that's how it got its nickname.."
	icon = 'icons/obj/guns/projectile/lever.dmi'
	icon_state = "cowboy"
	item_state = "cowboy"
	slot_flags = SLOT_BACK
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_357
	max_shells = 7
	price_tag = 450
	recoil_buildup = 10
	damage_multiplier = 0.9
	penetration_multiplier  = 1.1
	extra_damage_mult_scoped = 0.2 //scoping this should be rewarded its not that good
	matter = list(MATERIAL_STEEL = 15, MATERIAL_WOOD = 10, MATERIAL_PLASTEEL = 5)
	saw_off = FALSE

/obj/item/gun/projectile/boltgun/cowboy/trail
	name = "\"Trail\" repeater carbine"
	desc = "A repeating rifle chambered in .44 Magnum, perfect for hunting both regular and larger sized game."
	icon_state = "trail"
	item_state = "trail"
	caliber = CAL_MAGNUM
	max_shells = 8
	price_tag = 650
	recoil_buildup = 15
	matter = list(MATERIAL_STEEL = 25, MATERIAL_WOOD = 10, MATERIAL_PLASTEEL = 5)

/obj/item/gun/projectile/boltgun/cowboy/brush
	name = "\"Brush Gun\" repeating rifle"
	desc = "A repeating rifle chambered in .45-70, perfect for hunting the biggest of game! Cougers, bears - or even people! Well.. likely the last since it would make most game inedible."
	icon_state = "brush"
	item_state = "brush"
	caliber = CAL_4570
	max_shells = 6
	price_tag = 900
	recoil_buildup = 20
	matter = list(MATERIAL_STEEL = 20, MATERIAL_WOOD = 10, MATERIAL_PLASTEEL = 15)