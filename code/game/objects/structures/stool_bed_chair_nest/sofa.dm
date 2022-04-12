/obj/structure/bed/sofa
	name = "sofa"
	desc = "For relaxing and resting."
	icon = 'icons/obj/furniture/sofas_and_benches.dmi'
	icon_state = "sofamiddle"
	base_icon = "sofamiddle"
	buckle_dir = 0
	buckle_lying = 0 //force people to sit up in chairs when buckled
	applies_material_colour = 0
	var/propelled = 0 // Check for fire-extinguisher-driven chairs
/*
/obj/structure/bed/sofa/New()
	..()
	update_layer()
*/
/obj/structure/bed/sofa/attackby(obj/item/W as obj, mob/user as mob)
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

// Point is to make the icon be behind mob when walking around but look proper when sitting
/obj/structure/bed/sofa/post_buckle_mob()
	update_icon()

/obj/structure/bed/sofa/on_update_icon()
	..()
	var/image/I = image(icon, "[icon_state]_over")
	I.layer = FLY_LAYER
	add_overlays(I) //from
/*
/obj/structure/bed/sofa/proc/update_layer()
	if(src.dir == NORTH)
		layer = ABOVE_MOB_LAYER
	else
		layer = OBJ_LAYER

/obj/structure/bed/sofa/office/New()
	..()
*/


// Sofas
/obj/structure/bed/sofa/end_left
	icon_state = "sofaend_left"

/obj/structure/bed/sofa/end_right
	icon_state = "sofaend_right"

/obj/structure/bed/sofa/corner
	icon_state = "sofa_corner"

//Pew
/obj/structure/bed/sofa/pew
	name = "pews"
	desc = "For religious services."
	icon_state = "pewmiddle"
	base_icon = "pewmiddle"

/obj/structure/bed/sofa/pew/left
	icon_state = "pewend_left"

/obj/structure/bed/sofa/pew/right
	icon_state = "pewend_right"

//Luxury
/obj/structure/bed/sofa/luxury
	name = "luxury sofa"
	desc = "Rare synthetic materials."
	icon_state = "corp_sofamiddle"
	base_icon = "corp_sofamiddle"

/obj/structure/bed/sofa/luxury/left
	icon_state = "corp_sofaend_left"

/obj/structure/bed/sofa/luxury/right
	icon_state = "corp_sofaend_right"

/obj/structure/bed/sofa/luxury/corner
	icon_state = "corp_sofa_corner"

//Booth
/obj/structure/bed/sofa/booth
	name = "booth"
	desc = "Comfy."
	icon_state = "booth_middle"
	base_icon = "booth_middle"

/obj/structure/bed/sofa/booth/right
	icon_state = "booth_rightend"

/obj/structure/bed/sofa/booth/left
	icon_state = "booth_leftend"

/obj/structure/bed/sofa/booth/single
	icon_state = "booth_single"

//Padded bench
/obj/structure/bed/sofa/bench_padded
	name = "padded bench"
	desc = "Comfy."
	icon_state = "bench_centre"
	base_icon = "bench_centre"

/obj/structure/bed/sofa/bench_padded/end
	icon_state = "bench"

//Wooden bench
/obj/structure/bed/sofa/bench
	name = "wooden bench"
	desc = "Hard."
	icon_state = "church"
	base_icon = "church"
