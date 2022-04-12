/obj/item/tool/shovel
	name = "shovel"
	desc = "A large tool for digging and moving dirt and rock."
	icon_state = "shovel"
	item_state = "shovel"
	flags = CONDUCT
	slot_flags = SLOT_BELT
	force = WEAPON_FORCE_NORMAL
	throwforce = WEAPON_FORCE_WEAK
	w_class = ITEM_SIZE_NORMAL
	origin_tech = list(TECH_MATERIAL = 1, TECH_ENGINEERING = 1)
	matter = list(MATERIAL_STEEL = 5)
	attack_verb = list("bashed", "bludgeoned", "thrashed", "whacked")
	sharp = FALSE
	edge = TRUE
	tool_qualities = list(QUALITY_SHOVELING = 30, QUALITY_DIGGING = 30, QUALITY_EXCAVATION = 10, QUALITY_HAMMERING = 10)
	rarity_value = 9.6

/obj/item/tool/shovel/improvised
	name = "junk shovel"
	desc = "A large but fragile tool for moving dirt and rock, made by hand. Has more than enough space for tool mods to make it better."
	icon_state = "crude_shovel"
	tool_qualities = list(QUALITY_SHOVELING = 25, QUALITY_DIGGING = 25, QUALITY_EXCAVATION = 10, QUALITY_HAMMERING = 10)
	degradation = 1.5
	max_upgrades = 5 //all makeshift tools get more mods to make them actually viable for mid-late game
	rarity_value = 5
	spawn_tags = SPAWN_TAG_JUNKTOOL

/obj/item/tool/shovel/spade
	name = "spade"
	desc = "A small tool ofter used for simple gardening task such as digging soil and moving dirt."
	icon_state = "spade"
	item_state = "spade"
	force = WEAPON_FORCE_WEAK
	throwforce = WEAPON_FORCE_HARMLESS
	w_class = ITEM_SIZE_SMALL
	matter = list(MATERIAL_STEEL = 3, MATERIAL_PLASTIC = 1)
	tool_qualities = list(QUALITY_SHOVELING = 20, QUALITY_DIGGING = 20, QUALITY_EXCAVATION = 10,QUALITY_HAMMERING = 10)
	max_upgrades = 2
	rarity_value = 19.2

/obj/item/tool/shovel/entrenching
	name = "p81 entrenching tool"
	desc = "The 'Pattern 2281' Entrenching Tool is a new innovation by the Californians, a tough shovel with one sharp edges for use as an axe in hand-to-hand combat."
	icon_state = "entrenchingtool"
	item_state = "shovel"
	force = WEAPON_FORCE_PAINFUL
	throwforce = WEAPON_FORCE_WEAK
	w_class = ITEM_SIZE_NORMAL
	matter = list(MATERIAL_PLASTEEL = 6)
	tool_qualities = list(QUALITY_SHOVELING = 25, QUALITY_DIGGING = 25, QUALITY_EXCAVATION = 10, QUALITY_HAMMERING = 10, QUALITY_CUTTING = 10)
	max_upgrades = 2
	attack_verb = list("chopped", "bludgeoned", "cut")
	sharp = TRUE
	rarity_value = 24
