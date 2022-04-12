///////////////////////////
/* FO13 Injectors/Sprays */
///////////////////////////

/obj/item/reagent_containers/hypospray/autoinjector/f13
	name = "autoinjector (f13)"
	desc = "A testing autoinjector that is double the size but also you cannot manipulate with the reagents inside of it. If you see this ingame yell at a developer."
	volume = 10
	amount_per_transfer_from_this = 10
	matter = list(MATERIAL_STEEL = 1, MATERIAL_PLASTIC = 1)
	reagent_flags = AMOUNT_VISIBLE

///////////
//Healing//
///////////

//Healing Powder
/obj/item/reagent_containers/hypospray/autoinjector/f13/healpowder
	name = "healing powder"
	desc = "A leather pouch filled with grinded xander and broc used to treat minor wounds. It is known to cause hallucinations in it's users and clouding their vision."
	icon = 'icons/fallput/obj/medical.dmi'
	icon_state = "healpowder"
	preloaded_reagents = list("healpowder" = 10)

/obj/item/reagent_containers/hypospray/autoinjector/f13/healpowder/on_update_icon()
	cut_overlays()
	if(reagents && reagents.total_volume > 0)
		icon_state = initial(icon_state)
		var/image/filling_overlay = mutable_appearance('icons/obj/reagentfillings.dmi', "powder")
		filling_overlay.color = reagents.get_color()
		add_overlay(filling_overlay)
	else
		icon_state = "[initial(icon_state)]0"

//Stimpak
/obj/item/reagent_containers/hypospray/autoinjector/f13/stimpak
	name = "stimpak"
	desc = "A syringe filled with shining red stimulants, it looks like it is just about long enough to fit between your ribs. Very effective at helping with your everyday scratches and bruises but your heart might not like it in the long run."
	icon_state = "stimpak"
	preloaded_reagents = list("stimpak" = 10)

/obj/item/reagent_containers/hypospray/autoinjector/f13/stimpak/on_update_icon()
	cut_overlays()
	if(reagents && reagents.total_volume > 0)
		icon_state = initial(icon_state)
		var/image/filling_overlay = mutable_appearance('icons/obj/reagentfillings.dmi', "stim")
		filling_overlay.color = reagents.get_color()
		add_overlay(filling_overlay)
	else
		icon_state = "[initial(icon_state)]0"

//Super Stimpak
/obj/item/reagent_containers/hypospray/autoinjector/f13/stimpak/super
	name = "super stimpak"
	desc = "A pre-war syringe filled with stimulants finished with a leather strap at the end for easier application. More effective for wounds but cause much greater internal bleeding than it's regular counterpart."
	icon_state = "superstimpak"
	preloaded_reagents = list("superstimpak" = 10)

//Ultra Stimpak
/obj/item/reagent_containers/hypospray/autoinjector/f13/stimpak/ultra
	name = "ultra stimpak"
	desc = "A jury rigged pair of super stimpaks taped together with duct tape and featuring all new pump on the side. This feel like it can kill you just by looking at it."
	icon_state = "ultrastimpak"
	preloaded_reagents = list("ultrastimpak" = 10)

/obj/item/reagent_containers/hypospray/autoinjector/f13/stimpak/ultra/on_update_icon()
	cut_overlays()
	if(reagents && reagents.total_volume > 0)
		icon_state = initial(icon_state)
		var/image/filling_overlay = mutable_appearance('icons/obj/reagentfillings.dmi', "ultra")
		filling_overlay.color = reagents.get_color()
		add_overlay(filling_overlay)
	else
		icon_state = "[initial(icon_state)]0"

//Hydra
/obj/item/reagent_containers/hypospray/autoinjector/f13/hydra
	name = "hydra"
	desc = "A drug originating from antivenom, thanks to Caesar's Legion expertise evolved into an effective painkiller capable of regrowing bones of it's user. It is often used by personel out of the legion for it's effectivness."
	icon_state = "hydra"
	preloaded_reagents = list("hydra" = 10)

/obj/item/reagent_containers/hypospray/autoinjector/f13/hydra/on_update_icon()
	cut_overlays()
	if(reagents && reagents.total_volume > 0)
		icon_state = initial(icon_state)
		var/image/filling_overlay = mutable_appearance('icons/obj/reagentfillings.dmi', "hydra")
		filling_overlay.color = reagents.get_color()
		add_overlay(filling_overlay)
	else
		icon_state = "[initial(icon_state)]0"

//Addictol
/obj/item/reagent_containers/hypospray/autoinjector/f13/addictol
	name = "addictol"
	desc = "A powerful anti-addiction drug, Addictol is an effective pre-War medicine that works both physically and psychologically to remove both the symptoms of drug abuse and the craving. However, it does not prevent relapse, especially in cases of long-term drug abuse."
	icon_state = "jet"
	preloaded_reagents = list("addictol" = 10)

/obj/item/reagent_containers/hypospray/autoinjector/f13/addictol/on_update_icon()
	cut_overlays()
	if(reagents && reagents.total_volume > 0)
		icon_state = initial(icon_state)
		var/image/filling_overlay = mutable_appearance('icons/obj/reagentfillings.dmi', "jet")
		filling_overlay.color = reagents.get_color()
		add_overlay(filling_overlay)
	else
		icon_state = "[initial(icon_state)]0"

//////////////////////////
//Nacrotics/Combat Drugs//
//////////////////////////

//Med-x
/obj/item/reagent_containers/hypospray/autoinjector/f13/medx
	name = "med-x"
	desc = "A morphine filled syringe that was sold as med-x for civilians.  It is potent as a painkiller as it is addictive"
	icon_state = "med-x"
	preloaded_reagents = list("morphine" = 10)

/obj/item/reagent_containers/hypospray/autoinjector/f13/medx/on_update_icon()
	cut_overlays()
	if(reagents && reagents.total_volume > 0)
		icon_state = initial(icon_state)
		var/image/filling_overlay = mutable_appearance('icons/obj/reagentfillings.dmi', "stim")
		filling_overlay.color = reagents.get_color()
		add_overlay(filling_overlay)
	else
		icon_state = "[initial(icon_state)]0"

//Jet
/obj/item/reagent_containers/hypospray/autoinjector/f13/jet
	name = "jet"
	desc = "A brainchild of Myron, this highly addictive substance made out of brahmin excrement is capable of striking euphoria in anyone that inhales it. This one has scratched off label on where it was manufactured."
	icon_state = "jet"
	preloaded_reagents = list("jet" = 10)

/obj/item/reagent_containers/hypospray/autoinjector/f13/jet/on_update_icon()
	cut_overlays()
	if(reagents && reagents.total_volume > 0)
		icon_state = initial(icon_state)
		var/image/filling_overlay = mutable_appearance('icons/obj/reagentfillings.dmi', "jet")
		filling_overlay.color = reagents.get_color()
		add_overlay(filling_overlay)
	else
		icon_state = "[initial(icon_state)]0"

//Turbo
/obj/item/reagent_containers/hypospray/autoinjector/f13/turbo
	name = "turbo"
	desc = "A jet inhaler strapped to a can of hairspray filled with cazador poison and turpentine, what do you expect other than a very bad trip. Invokes feelings of speed in it's users."
	icon_state = "turbo"
	preloaded_reagents = list("speed" = 10)

/obj/item/reagent_containers/hypospray/autoinjector/f13/turbo/on_update_icon()
	cut_overlays()
	if(reagents && reagents.total_volume > 0)
		icon_state = initial(icon_state)
		var/image/filling_overlay = mutable_appearance('icons/obj/reagentfillings.dmi', "turbo")
		filling_overlay.color = reagents.get_color()
		add_overlay(filling_overlay)
	else
		icon_state = "[initial(icon_state)]0"

//Psycho
/obj/item/reagent_containers/hypospray/autoinjector/f13/psycho
	name = "psycho"
	desc = "A syringe of a military-grade psychosis-inducing amphetamine, it is provided in a unique delivery system that mixes strange chemicals of military origin immediately prior to injection. Psycho greatly increases combat ability of it's user at the cost of their higher brain function."
	icon_state = "psycho"
	preloaded_reagents = list("psycho" = 10)

/obj/item/reagent_containers/hypospray/autoinjector/f13/psycho/on_update_icon()
	cut_overlays()
	if(reagents && reagents.total_volume > 0)
		icon_state = initial(icon_state)
		var/image/filling_overlay = mutable_appearance('icons/obj/reagentfillings.dmi', "stim")
		filling_overlay.color = reagents.get_color()
		add_overlay(filling_overlay)
	else
		icon_state = "[initial(icon_state)]0"

//