/obj/structure/bed/chair	//YES, chairs are a type of bed, which are a type of stool. This works, believe me.	-Pete
	name = "chair"
	desc = "You sit in this. Either by will or force."
	icon = 'icons/obj/furniture/chairs_and_beds.dmi'
	icon_state = "chair_preview"
	color = "#666666"
	base_icon = "chair"
	buckle_dir = 0
	buckle_lying = 0 //force people to sit up in chairs when buckled
	var/propelled = 0 // Check for fire-extinguisher-driven chairs

/obj/structure/bed/chair/New()
	..()
	update_layer()

/obj/structure/bed/chair/attackby(obj/item/W as obj, mob/user as mob)
	..()
	if(!padding_material && istype(W, /obj/item/assembly/shock_kit))
		var/obj/item/assembly/shock_kit/SK = W
		if(!SK.status)
			to_chat(user, SPAN_NOTICE("\The [SK] is not ready to be attached!"))
			return
		user.drop_item()
		var/obj/structure/bed/chair/e_chair/E = new (src.loc, material.name)
		playsound(src.loc, 'sound/items/Deconstruct.ogg', 50, 1)
		E.set_dir(dir)
		E.part = SK
		SK.loc = E
		SK.master = E
		qdel(src)

	else if(istype(W, /obj/item/device/spy_bug))
		user.drop_item()
		W.loc = get_turf(src)

/obj/structure/bed/chair/attack_tk(mob/user as mob)
	if(buckled_mob)
		..()
	else
		rotate()
	return

/obj/structure/bed/chair/post_buckle_mob()
	update_icon()

/obj/structure/bed/chair/on_update_icon()
	..()


	var/cache_key = "[base_icon]-[material.name]-over"
	if(isnull(stool_cache[cache_key]))
		var/image/I = image('icons/obj/furniture/chairs_and_beds.dmi', "[base_icon]_over")
		I.color = material.icon_colour
		I.layer = FLY_LAYER
		stool_cache[cache_key] = I
	associate_with_overlays(stool_cache[cache_key])

/*	// Padding overlay.
	if(padding_material)
		var/padding_cache_key = "[base_icon]-padding-[padding_material.name]-over"
		if(isnull(stool_cache[padding_cache_key]))
			var/image/I =  image(icon, "[base_icon]_padding_over")
			I.color = padding_material.icon_colour
			I.layer = FLY_LAYER
			stool_cache[padding_cache_key] = I
		associate_with_overlays(stool_cache[padding_cache_key])

	if(buckled_mob && padding_material)
		var/cache_key = "[base_icon]-armrest-[padding_material.name]"
		if(isnull(stool_cache[cache_key]))
			var/image/I = image(icon, "[base_icon]_armrest")
			I.layer = ABOVE_MOB_LAYER
			I.color = padding_material.icon_colour
			stool_cache[cache_key] = I
		associate_with_overlays(stool_cache[cache_key])
*/
/obj/structure/bed/chair/proc/update_layer()
	if(src.dir == NORTH)
		layer = ABOVE_MOB_LAYER
	else
		layer = OBJ_LAYER

/obj/structure/bed/chair/set_dir()
	..()
	update_layer()
	if(buckled_mob)
		buckled_mob.set_dir(dir)

/obj/structure/bed/chair/verb/rotate()
	set name = "Rotate Chair"
	set category = "Object"
	set src in oview(1)

	if(config.ghost_interaction)
		src.set_dir(turn(src.dir, 90))

		return

	else
		if(ismouse(usr))
			return
		if(!usr || !isturf(usr.loc))
			return
		if(usr.stat || usr.restrained())
			return

		src.set_dir(turn(src.dir, 90))
		playsound(src,'sound/effects/CREAK_Wood_Tree_Creak_10_Bright_Very_Subtle_mono.ogg',100,1)
		return

/obj/structure/bed/chair/shuttle
	name = "chair"
	desc = "You sit in this. Either by will or force."
	icon_state = "shuttle_chair"
	color = null
	base_icon = "shuttle_chair"
	applies_material_colour = 0

// Leaving this in for the sake of compilation.
/obj/structure/bed/chair/comfy
	desc = "It's a chair. It looks comfy."
	icon_state = "comfychair_preview"

/obj/structure/bed/chair/comfy/brown/New(var/newloc,var/newmaterial)
	..(newloc,MATERIAL_STEEL, MATERIAL_LEATHER)

/obj/structure/bed/chair/comfy/red/New(var/newloc,var/newmaterial)
	..(newloc,MATERIAL_STEEL, MATERIAL_CARPET)

/obj/structure/bed/chair/comfy/teal/New(var/newloc,var/newmaterial)
	..(newloc,MATERIAL_STEEL,"teal")

/obj/structure/bed/chair/comfy/black/New(var/newloc,var/newmaterial)
	..(newloc,MATERIAL_STEEL,"black")

/obj/structure/bed/chair/comfy/green/New(var/newloc,var/newmaterial)
	..(newloc,MATERIAL_STEEL,"green")

/obj/structure/bed/chair/comfy/purp/New(var/newloc,var/newmaterial)
	..(newloc,MATERIAL_STEEL,"purple")

/obj/structure/bed/chair/comfy/blue/New(var/newloc,var/newmaterial)
	..(newloc,MATERIAL_STEEL,"blue")

/obj/structure/bed/chair/comfy/beige/New(var/newloc,var/newmaterial)
	..(newloc,MATERIAL_STEEL,"beige")

/obj/structure/bed/chair/comfy/lime/New(var/newloc,var/newmaterial)
	..(newloc,MATERIAL_STEEL,"lime")

/obj/structure/bed/chair/office
	anchored = FALSE
	buckle_movable = 1

/obj/structure/bed/chair/office/on_update_icon()
	return

/obj/structure/bed/chair/office/attackby(obj/item/W as obj, mob/user as mob)
	if(istype(W,/obj/item/stack) || istype(W, /obj/item/tool/wirecutters))
		return
	..()

/obj/structure/bed/chair/office/Move(NewLoc, Dir = 0, step_x = 0, step_y = 0, var/glide_size_override = 0)
	. = ..()
	if(buckled_mob)
		var/mob/living/occupant = buckled_mob
		occupant.buckled = null
		occupant.Move(src.loc, glide_size_override=glide_size)
		occupant.buckled = src
		if (occupant && (src.loc != occupant.loc))
			if (propelled)
				for (var/mob/O in src.loc)
					if (O != occupant)
						Bump(O)
			else
				unbuckle_mob()

/obj/structure/bed/chair/office/Bump(atom/A)
	..()
	if(!buckled_mob)	return

	if(propelled)

		var/mob/living/occupant = unbuckle_mob()
		var/def_zone = ran_zone()

		occupant.throw_at(A, 3, propelled)
		occupant.apply_effect(6, STUN, occupant.getarmor(def_zone, ARMOR_MELEE))
		occupant.apply_effect(6, WEAKEN, occupant.getarmor(def_zone, ARMOR_MELEE))
		occupant.apply_effect(6, STUTTER, occupant.getarmor(def_zone, ARMOR_MELEE))
		occupant.damage_through_armor(6, BRUTE, def_zone, ARMOR_MELEE)

		playsound(src.loc, 'sound/weapons/punch1.ogg', 50, 1, -1)

		if(isliving(A))

			var/mob/living/victim = A
			def_zone = ran_zone()

			victim.apply_effect(6, STUN, victim.getarmor(def_zone, ARMOR_MELEE))
			victim.apply_effect(6, WEAKEN, victim.getarmor(def_zone, ARMOR_MELEE))
			victim.apply_effect(6, STUTTER, victim.getarmor(def_zone, ARMOR_MELEE))
			victim.damage_through_armor(6, BRUTE, def_zone, ARMOR_MELEE)

		occupant.visible_message(SPAN_DANGER("[occupant] crashed into \the [A]!"))

/obj/structure/bed/chair/custom/office
	icon_state = "officechair_white"

/obj/structure/bed/chair/custom/office
	icon_state = "officechair_dark"

/obj/structure/bed/chair/office/New()
	..()
	var/image/I = image(icon, "[icon_state]_over")
	I.layer = FLY_LAYER
	add_overlays(I)

// Chair types
/obj/structure/bed/chair/custom
	applies_material_colour = 0

/obj/structure/bed/chair/custom/on_update_icon()
	return

/obj/structure/bed/chair/custom/attackby(obj/item/W as obj, mob/user as mob)
	if(istype(W,/obj/item/stack) || istype(W, /obj/item/tool/wirecutters))
		return
	..()

/obj/structure/bed/chair/custom/New(var/newloc)
	. = ..()
	var/image/I = image(icon, "[icon_state]_over")
	I.layer = FLY_LAYER
	add_overlays(I)

//metal
/obj/structure/bed/chair/custom/simple
	name = "chair"
	desc = "Comfortable furniture"
	icon_state = "chair"

/obj/structure/bed/chair/custom/folding
	name = "folding chair"
	desc = "Comfortable furniture"
	icon_state = "folding_chair"

//wooden
/obj/structure/bed/chair/custom/wood
	name = "wooden chair"
	desc = "Comfortable furniture"
	icon_state = "wooden_chair"

/obj/structure/bed/chair/custom/wood/New(var/newloc)
	..(newloc, MATERIAL_WOOD)

/obj/structure/bed/chair/custom/wood/settler
	name = "rough wooden chair"
	desc = "Crudely made chair."
	icon_state = "wooden_chair_settler"

/obj/structure/bed/chair/custom/wood/fine
	name = "fine wooden chair"
	desc = "Polished wood furniture"
	icon_state = "wooden_chair_fine"

/obj/structure/bed/chair/custom/wood/fancy
	name = "fancy wooden chair"
	desc = "Polished wood furniture"
	icon_state = "wooden_chair_fancy"

//bar
/obj/structure/bed/chair/custom/barstool
	name = "barstool"
	desc = "Modern design and soft pad. Served up with the drink and great company."
	icon_state = "bar"

/obj/structure/bed/chair/custom/barstool/black
	name = "barstool"
	desc = "Modern design and soft pad. Served up with the drink and great company."
	icon_state = "bar_black"

/obj/structure/bed/chair/custom/barstool/tan
	name = "barstool"
	desc = "Modern design and soft pad. Served up with the drink and great company."
	icon_state = "bar_tan"

/obj/structure/bed/chair/custom/barstool/backed
	name = "barstool"
	desc = "Modern design and soft pad. Served up with the drink and great company."
	icon_state = "bar_backed"

/obj/structure/bed/chair/custom/barstool/ancient
	name = "old barstool"
	desc = "Ancent design and soft pad. Served up with the drink and great company."
	icon_state = "bar_old"

/obj/structure/bed/chair/custom/barstool/stool
	name = "stool"
	desc = "Ancent design and soft pad."
	icon_state = "stool_old"

//office chair
/obj/structure/bed/chair/custom/office
	name = "office chair"
	desc = "Suitable for cubicles."
	icon_state = "office_chair"

/obj/structure/bed/chair/custom/office/light
	name = "office chair"
	desc = "Suitable for cubicles."
	icon_state = "office_chair_white"

/obj/structure/bed/chair/custom/office/dark
	name = "office chair"
	desc = "Suitable for cubicles."
	icon_state = "office_chair_dark"

//comfy chairs
/obj/structure/bed/chair/custom/plywood
	name = "plywood chair"
	desc = "Soft and comfy."
	icon_state = "plywood_chair"

/obj/structure/bed/chair/custom/ceo
	name = "CEO chair"
	desc = "Soft and comfy."
	icon_state = "shuttle_chair"

/obj/structure/bed/chair/custom/ceo
	name = "synthetic chair"
	desc = "Futuristic and comfy."
	icon_state = "synthetic_chair"


//tribal throne
/obj/structure/bed/chair/custom/throne
	name = "tribal throne"
	desc = "A massive chair from various animal parts and wood."
	icon = 'icons/obj/furniture/throne.dmi'
	icon_state = "throne"
