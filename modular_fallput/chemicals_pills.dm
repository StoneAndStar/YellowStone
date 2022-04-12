////////////////
/* FO13 Pills */
////////////////

/*Pills */

//Rad-X
/obj/item/reagent_containers/pill/radx
	name = "rad-x pill"
	desc = "A potent anti-radiation medicine that was commercially sold as rad-x."
	icon_state = "pillradx"
	preloaded_reagents = list("radx" = 15)

//Buffout

/obj/item/reagent_containers/pill/buffout
	name = "buffout pill"
	desc = "A potent steroid sold to peak athletes capable of pushing wimps into gods with just a single one. Any deaths resulting from this product are not our fault."
	icon_state = "pillbuffout"
	preloaded_reagents = list("buffout" = 10)

//Cateye

/obj/item/reagent_containers/pill/cateye
	name = "cateye pill"
	desc = "A potent medicine for eyes smelling of carrots and paint. Blindness not guaranteed!"
	icon_state = "pillcateye"
	preloaded_reagents = list("cateye" = 10)

//Mentats

/obj/item/reagent_containers/pill/mentat
	name = "mentat pill"
	desc = "A common pre-war relaxation pill, often used by intellectuals nowadays and drug addicts to counteract their abuse."
	icon_state = "pillmentat"
	preloaded_reagents = list("mentat" = 10)

//Fixer

/obj/item/reagent_containers/pill/fixer
	name = "fixer pill"
	desc = "A very common solution for all your needs in your drug related issues. Vomiting is part of the cleansing."
	icon_state = "pillfixer"
	preloaded_reagents = list("fixer" = 10)

/*Pill Bottles */

//Rad-X Bottle
/obj/item/storage/pill_bottle/radx
	name = "rad-x bottle"
	desc = "An airtight red-tinted glass container featuring a radiation symbol at the front with a label rad-x above it."
	icon_state = "pill_canister_radx"
	can_hold = list(/obj/item/reagent_containers/pill)
	pill_type = /obj/item/reagent_containers/pill/radx

/obj/item/storage/pill_bottle/radx/populate_contents()
	for(var/i in 1 to initial_amt)
		new pill_type(src)

//Buffout Bottle
/obj/item/storage/pill_bottle/buffout
	name = "buffout bottle"
	desc = "An airtight red-tinted glass container with a barbell and a warning label 'continious use might lead to cardiac arrest'."
	icon_state = "pill_canister_buffout"
	can_hold = list(/obj/item/reagent_containers/pill)
	pill_type = /obj/item/reagent_containers/pill/buffout

/obj/item/storage/pill_bottle/buffout/populate_contents()
	for(var/i in 1 to initial_amt)
		new pill_type(src)

//Cateye Bottle
/obj/item/storage/pill_bottle/cateye
	name = "cateye bottle"
	desc = "An airtight orange-tinted glass container with an eye at the front. Features a label '100% natural'."
	icon_state = "pill_canister_cateye"
	can_hold = list(/obj/item/reagent_containers/pill)
	pill_type = /obj/item/reagent_containers/pill/cateye

/obj/item/storage/pill_bottle/buffout/populate_contents()
	for(var/i in 1 to initial_amt)
		new pill_type(src)

//Mentat Package
/obj/item/storage/pill_bottle/mentat
	name = "mentat package"
	desc = "An old tin package of mentats from med-tek, their faded logo still visible on top part of it and it's color closer to green than it's original yellow."
	icon_state = "pill_canister_mentat"
	can_hold = list(/obj/item/reagent_containers/pill)
	pill_type = /obj/item/reagent_containers/pill/mentat

/obj/item/storage/pill_bottle/mentat/populate_contents()
	for(var/i in 1 to initial_amt)
		new pill_type(src)

//Fixer Package
/obj/item/storage/pill_bottle/fixer
	name = "fixer package"
	desc = "An old blue tin package of fixer from med-tek, their faded logo still visible on top part of it."
	icon_state = "pill_canister_fixer"
	can_hold = list(/obj/item/reagent_containers/pill)
	pill_type = /obj/item/reagent_containers/pill/fixer

/obj/item/storage/pill_bottle/fixer/populate_contents()
	for(var/i in 1 to initial_amt)
		new pill_type(src)      