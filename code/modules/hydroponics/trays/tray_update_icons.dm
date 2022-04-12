//Refreshes the icon and sets the luminosity
/obj/machinery/portable_atmospherics/hydroponics/on_update_icon()
	// Update name.
	if(seed)
		if(mechanical)
			name = "[base_name] (#[seed.uid])"
		else
			name = "[seed.seed_name]"
	else
		name = initial(name)

	if(labelled)
		name += " ([labelled])"

	cut_overlays()
	update_overlays()

// Updates the plant overlay.
/obj/machinery/portable_atmospherics/hydroponics/update_overlays()
	.=..()
	var/list/new_overlays = .
	for(var/overlay in new_overlays)
		add_overlays(overlay)
	if(!isnull(seed))
		if(mechanical && health <= (seed.get_trait(TRAIT_ENDURANCE) / 2))
			add_overlays("over_lowhealth3")
		if(dead)
			var/ikey = "[seed.get_trait(TRAIT_PLANT_ICON)]-dead"
			var/image/dead_overlay = plant_controller.plant_icon_cache["[ikey]"]
			if(!dead_overlay)
				dead_overlay = image('icons/obj/flora/hydroponics_growing.dmi', "[ikey]")
				dead_overlay.color = DEAD_PLANT_COLOUR
			associate_with_overlays(dead_overlay)
		else
			if(!seed.growth_stages)
				seed.update_growth_stages()
			if(!seed.growth_stages)
				to_chat(world, SPAN_DANGER("Seed type [seed.get_trait(TRAIT_PLANT_ICON)] cannot find a growth stage value."))
				return
			var/overlay_stage = 1
			if(age >= seed.get_trait(TRAIT_MATURATION))
				overlay_stage = seed.growth_stages
			else
				var/maturation = seed.get_trait(TRAIT_MATURATION)/seed.growth_stages
				if(maturation < 1)
					maturation = 1
				overlay_stage = maturation ? max(1,round(age/maturation)) : 1
			var/ikey = "[seed.get_trait(TRAIT_PLANT_ICON)]-[overlay_stage]"
			var/image/plant_overlay = plant_controller.plant_icon_cache["[ikey]-[seed.get_trait(TRAIT_PLANT_COLOUR)]"]
			if(!plant_overlay)
				plant_overlay = image('icons/obj/flora/hydroponics_growing.dmi', "[ikey]")
				plant_overlay.color = seed.get_trait(TRAIT_PLANT_COLOUR)
				plant_controller.plant_icon_cache["[ikey]-[seed.get_trait(TRAIT_PLANT_COLOUR)]"] = plant_overlay
			associate_with_overlays(plant_overlay)
			if(harvest && overlay_stage == seed.growth_stages)
				ikey = "[seed.get_trait(TRAIT_PRODUCT_ICON)]"
				var/image/harvest_overlay = plant_controller.plant_icon_cache["product-[ikey]-[seed.get_trait(TRAIT_PLANT_COLOUR)]"]
				if(!harvest_overlay)
					harvest_overlay = image('icons/obj/flora/hydroponics_products.dmi', "[ikey]")
					harvest_overlay.color = seed.get_trait(TRAIT_PRODUCT_COLOUR)
					plant_controller.plant_icon_cache["product-[ikey]-[seed.get_trait(TRAIT_PRODUCT_COLOUR)]"] = harvest_overlay
				associate_with_overlays(harvest_overlay)
	//Draw the cover.
	if(closed_system)
		add_overlays("hydrocover")
	//Updated the various alert icons.
	if(mechanical)
		if(waterlevel <= 10)
			add_overlays("over_lowwater3")
		if(nutrilevel <= 2)
			add_overlays("over_lownutri3")
		if(weedlevel >= 5 || pestlevel >= 5 || toxins >= 40)
			add_overlays("over_alert3")
		if(harvest)
			add_overlays("over_harvest3")

	if((!density || !opacity) && seed && seed.get_trait(TRAIT_LARGE))
		if(!mechanical)
			set_density(1)
		set_opacity(1)
	else
		if(!mechanical)
			set_density(0)
		set_opacity(0)


	// Update bioluminescence.
	if(seed)
		if(seed.get_trait(TRAIT_BIOLUM))
			var/clr
			if(seed.get_trait(TRAIT_BIOLUM_COLOUR))
				clr = seed.get_trait(TRAIT_BIOLUM_COLOUR)
			set_light(round(seed.get_trait(TRAIT_POTENCY)/10), l_color = clr)
			return
	set_light(0)
	return
