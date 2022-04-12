/obj/item/stack/material/animalhide
	bad_type = /obj/item/stack/material/animalhide

/obj/item/stack/material/animalhide/cattle
	name = "animal hide"
	desc = "hide from an animal."
	singular_name = "animal hide piece"
	icon_state = "sheet-hide"

/obj/item/stack/material/animalhide/human
	name = "human skin"
	desc = "The by-product of human farming."
	singular_name = "human skin piece"
	icon_state = "sheet-humhide"

/obj/item/stack/material/animalhide/gecko
	name = "gecko hide"
	desc = "Skin of a lizard."
	singular_name = "gecko hide piece"
	icon_state = "sheet-geckohide"

/obj/item/stack/material/animalhide/gecko
	name = "molerat hide"
	desc = "Skin of a molerat."
	singular_name = "molerat hide piece"
	icon_state = "sheet-molerathide"

/obj/item/stack/material/animalhide/dog
	name = "dog skin"
	desc = "Skin of a dog."
	singular_name = "dog skin piece"
	icon_state = "sheet-doghide"

/obj/item/stack/material/animalhide/deathclaw
	name = "deathclaw hide"
	desc = "Skin of a deathclaw."
	singular_name = "deathclaw hide piece"
	icon_state = "sheet-deathclaw"

/obj/item/stack/material/hairlesshide
	name = "hairless hide"
	desc = "This hide was stripped of it's hair, but still needs tanning."
	singular_name = "hairless hide piece"
	icon_state = "sheet-hairlesshide"

/obj/item/stack/material/wetleather
	name = "wet leather"
	desc = "This leather has been cleaned but still needs to be dried."
	singular_name = "wet leather piece"
	icon_state = "sheet-wetleather"
	var/wetness = 30 //Reduced when exposed to high temperautres
	var/drying_threshold_temperature = 500 //Kelvin to start drying

//Step one - dehairing.
/obj/item/stack/material/animalhide/attackby(obj/item/I, mob/user)
	if(QUALITY_CUTTING in I.tool_qualities)
		usr.visible_message(SPAN_NOTICE("\The [usr] starts cutting hair off \the [src]"), SPAN_NOTICE("You start cutting the hair off \the [src]"), "You hear the sound of a knife rubbing against flesh")
		if(I.use_tool(user, src, WORKTIME_FAST, QUALITY_CUTTING, FAILCHANCE_EASY, required_stat = STAT_COG))
			to_chat(usr, SPAN_NOTICE("You cut the hair from this [src.singular_name]"))
			//Try locating an exisitng stack on the tile and add to there if possible
			for(var/obj/item/stack/material/hairlesshide/HS in usr.loc)
				if(HS.amount < 50)
					HS.amount++
					src.use(1)
					break
			//If it gets to here it means it did not find a suitable stack on the tile.
			var/obj/item/stack/material/hairlesshide/HS = new(usr.loc)
			HS.amount = 1
			src.use(1)
	else
		..()


//Step two - washing..... it's actually in washing machine code.

//Step three - drying
/obj/item/stack/material/wetleather/fire_act(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	..()
	if(exposed_temperature >= drying_threshold_temperature)
		wetness--
		if(wetness == 0)
			//Try locating an exisitng stack on the tile and add to there if possible
			for(var/obj/item/stack/material/leather/HS in src.loc)
				if(HS.amount < 50)
					HS.amount++
					src.use(1)
					wetness = initial(wetness)
					break
			//If it gets to here it means it did not find a suitable stack on the tile.
			var/obj/item/stack/material/leather/HS = new(src.loc)
			HS.amount = 1
			wetness = initial(wetness)
			src.use(1)
