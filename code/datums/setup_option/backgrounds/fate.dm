/datum/category_group/setup_option_category/background/fate
	name = "Upbringing"
	category_item_type = /datum/category_item/setup_option/background/fate

/datum/category_item/setup_option/background/fate

/datum/category_item/setup_option/background/fate/refugee
	name = "Homeless Refugee"
	desc = "War.. War never changes. With the fighting at home you were forced to flee all those years back. \
			From where no longer matters, what matters is you got out alive. What you missed out on education wise has come to you in street-smarts at least."

	stat_modifiers = list(
		STAT_TGH = 10,
		STAT_MEC = 5,
		STAT_COG = -5
	)
	restricted_to_species = list(SPECIES_HUMAN)

/datum/category_item/setup_option/background/fate/caravaneer
	name = "Caravaneer Tagalong"
	desc = "The road has been your home for quite some time. You've seen almost everything there is to see. \
			From gunslinging sheriffs to ruthless bandits and mutant raiders. You learned quick to toughten up and keep your hand on your holster at all times."

	stat_modifiers = list(
		STAT_TGH = 5,
		STAT_VGL = 5
	)
	restricted_to_species = list(SPECIES_HUMAN)

/datum/category_item/setup_option/background/fate/inventor
	name = "Homemade Inventor"
	desc = "A homemade genius! Turning tin-cans and copper wires into coductors, burnt-out vacuum cleaners into nail canons, the whole nine-yard! \
			You're skilled in inventing new uses with both trash and treasure alike!"

	stat_modifiers = list(
		STAT_MEC = 5,
		STAT_COG = 5
	)
	restricted_to_species = list(SPECIES_HUMAN)

/datum/category_item/setup_option/background/fate/moralist
	name = "Religious Upbringing"
	desc = "While some would say that moralists are weak you beg to defer. Your faith brings out the best in you, pushing you to care for others. \
			Sometimes a little too much though, for while you love to see God’s work on earth - you loath man's suffering."

	stat_modifiers = list(STAT_VIG = 5)
	perks = list(PERK_MORALIST)

/datum/category_item/setup_option/background/fate/rat
	name = "Sewer Rat"
	desc = "Maybe it was safe living. Maybe it was due to the weather. Maybe it was your upbringing. Or, hell, maybe you really are just a sicko who loves the smell of sewage. \
			While your eyes may not be sharp due to the darkness you have learned to be resourceful and live in the shadows, just like the rats who lived around you."

	perks = list(PERK_RAT)
	stat_modifiers = list(
		STAT_MEC = 10,
		STAT_VIG = -10
	)
	restricted_to_species = list(SPECIES_HUMAN, SPECIES_GHOUL)

/datum/category_item/setup_option/background/fate/noble
	name = "Sheltered Life"
	desc = "You lived a sheltered life as a child, sheltered from what the earth had become around you. \
			Maybe it was in a vault or maybe your parents did a good job at hiding the mutants lurking under your bed. \
			Either way, you can’t stand the stress of the world easily. Though you find solace in the heirloom your family left you."

	stat_modifiers = list(
		STAT_COG = 5,
		STAT_TGH = -10
	)
	perks = list(PERK_NOBLE)
	restricted_to_species = list(SPECIES_HUMAN)

/datum/category_item/setup_option/background/fate/drug_addict
	name = "Chem Addict"
	desc = "For reasons you cannot remember, you decided to resort to major chem usage. You have lost the battle, and now you suffer the consequences. \
			Now it is all you that drives you forward. All you have left to fight the cruel reality, or escape from it for some time."

	perks = list(PERK_DRUG_ADDICT)
	restricted_to_species = list(SPECIES_HUMAN)
	restricted_depts = LEGION | NCR | BOS

/datum/category_item/setup_option/background/fate/nihilist
	name = "Godless Cynic"
	desc = "Some would call you an annoying nihilist, a careless moron, or a godless cynic and, well, you are. \
			But it has its upsides, or so you think at least! You manage to see the worst in people, so sometimes you can better cope with their loss. \
			After all, maybe the deserved it! You can learn from their mistakes,, god, you actually are insufferable."

	stat_modifiers = list(STAT_COG = 5)
	perks = list(PERK_NIHILIST)
	restricted_to_species = list(SPECIES_HUMAN)

/datum/category_item/setup_option/background/fate/freelancer
	name = "Jack of All Trades"
	desc = "You know the saying, jack of all trades, master of none. That’s you. \
			Sure, you’re decent at nearly everything, but - that’s about it. You’re just ‘average’. What a boring existence."

	perks = list(PERK_FREELACER)
	restricted_to_species = list(SPECIES_HUMAN, SPECIES_GHOUL)

/datum/category_item/setup_option/background/fate/glasscanon
	name = "Glass Canon"
	desc = "Sure, you can hit hard, move fast, and spin on a dime but you go down with just a few hits. \
			Maybe you can knock someone out with a few good punches but you have such a low threshold for beatings you seem to go down even quicker."

	stat_modifiers = list(
		STAT_ROB = 10,
		STAT_VIG = 5,
		STAT_TGH = -15
	)
	restricted_to_species = list(SPECIES_HUMAN)

/datum/category_item/setup_option/background/fate/poindexter
	name = "Poindexter"
	desc = "Some called you the smartest man around, others called you a dork or a poindexter.. and you very well might be! \
			You've put your swollen cranium and superior intellect to good work through the years, learning all you can to be the best at what you do. \
			You're a nerd, and you embrace it! Just like how your tighty-whities used to embrace you after a wedgie when your bully demanded your lunch money, dweeb."

	stat_modifiers = list(
		STAT_MEC = 5,
		STAT_COG = 10,
		STAT_BIO = 5,
		STAT_ROB = -10,
		STAT_TGH = -10
	)
	restricted_to_species = list(SPECIES_HUMAN)

/datum/category_item/setup_option/background/fate/alcoholic
	name = "Alcoholic"
	desc = "It may have not been a good idea to use empty beer-bottles as baby bottles.. \
			Be it an issue of genetics, taught habits or just outright bad life choices you've found yourself only finding joy out of the bottom of the bottle. \
			It's the only time you feel right anymore.."

	stat_modifiers = list(STAT_COG = -10)
	perks = list(PERK_ALCOHOLIC)
	restricted_to_species = list(SPECIES_HUMAN)
	restricted_depts = LEGION

//Originally called Oborin Syndrome; now used as a possible New Plauge reference.
/datum/category_item/setup_option/background/fate/sickly_upbringing
	name = "Sickly Upbringing"
	desc = "You were struck down by a mysterious illneess in your early years. \
			It's not clear what caused it but it had a permanent effect on your vision and taste. The loss of color to the world and your taste buds..\
			You're lucky to be alive, but the outcome has had a blessing in a way. You are able to be content in life while others commonly cannot."

	perks = list(PERK_SICKLY_UPBRINGING)
	restricted_to_species = list(SPECIES_HUMAN)
	stat_modifiers = list(
		STAT_VIG = 5
	)

////////////////
//Ghoul Fates//
///////////////

/datum/category_item/setup_option/background/fate/nationalguard
	name = "National Guard Veteran"
	desc = "You were damn-lucky you didn't get deployed overseas when the Great War started. \
			Hell, sure, maybe your luck wasn't great based on the ghoulification, but you aren't as squishy as other ghouls! \
			You kept that military training and can-do attitude just fine, even over the last 200 years."

	restricted_to_species = list(SPECIES_GHOUL)
	stat_modifiers = list(
		STAT_VIG = 5,
		STAT_TGH = 5
	)

/datum/category_item/setup_option/background/fate/crook
	name = "Pre-War Crook"
	desc = "The good ol' days before the war. Crime families and syndicates, organized crime once booming.. but you're almost happy the bombs fell. \
			Living in the run wasn't so fun anymore. But hell, now that the prisons aren't so well maintained and the cops disappeared hundreds of years ago, you might find new partners! \
			At least these wasteland cretins are too stupid to check their pockets for skinny, boney little rotting fingers going into them."

	perks = list(PERK_FAST_FINGERS)
	restricted_to_species = list(SPECIES_GHOUL)
	stat_modifiers = list(
		STAT_COG = 5,
	)

/datum/category_item/setup_option/background/fate/rottingmechanic
	name = "Rotting Mechanical Maniac"
	desc = "Oh no! Your jaw rotted off! Oh well, you’ve jury rigged plenty before. In fact, you jury rigged your jaw back on! \
			All it took was a few screws, metal reinforcements and a lot of crying. Good work! Now if only that could fix other things.."

	restricted_to_species = list(SPECIES_GHOUL)
	stat_modifiers = list (
		STAT_COG = 5,
		STAT_MEC = 5
	)

/datum/category_item/setup_option/background/fate/halfthere
	name = "Only Half There"
	desc = "You used to have a great memory, years of happy thoughts. Though now.. things seem muddled. \
			You’ve been told that you zone out sometimes, acting feral, or have memories of the past come forward and mistake them for the present. \
			But hell, who can say? You sure don’t remember!"

	restricted_to_species = list(SPECIES_GHOUL)
	stat_modifiers = list (
		STAT_TGH = 10,
		STAT_ROB = 5,
		STAT_COG =5
	)

/datum/category_item/setup_option/background/fate/glowing
	name = "Glowing One"
	desc = "Sometimes you just - glow! Hell, you do a lot sometimes, actually! Your ghoul friends don’t seem to care any but.. the ‘normals’? \
			They don’t look too good after being around you for too long."

	perks = list(PERK_TOXIC_REVENGER)
	restricted_to_species = list(SPECIES_GHOUL)

/datum/category_item/setup_option/background/fate/rottingdoctor
	name = "Rotting Doctor"
	desc = "You really do believe it, Ghouls might just be the next phase of human evolution! Well.. if you can figure out some issues. \
			Like why babies are born human. Or why ghouls suffer biological and genetic issues.. but you’re sure you’ll figure it out! \
			The nice Ghouls talking about the Reservation told you so!"

	restricted_to_species = list(SPECIES_GHOUL)
	stat_modifiers = list (
		STAT_BIO = 10,
		STAT_COG = 5,
		STAT_VIG = -5
	)

////////////////
//Mutant Fates//
////////////////

/datum/category_item/setup_option/background/fate/mastersarmy
	name = "Masters Army Remnant"
	desc = "Sometimes you miss serving in the masters army.. that guiding voice. That simplicity. Unity. You miss it. \
			 It’s the past but maybe you’ve moved past it. Or maybe, just maybe, Unity isn’t lost. Not yet."

	restricted_to_species = list(SPECIES_MUTANT)
	stat_modifiers = list (
		STAT_ROB = 10,
		STAT_TGH = 5,
		STAT_VIG = -5
	)

/datum/category_item/setup_option/background/fate/amnesiac
	name = "Amnesiac in Remission"
	desc = "Oddly you’ve forgotten a lot of your time as a Mutant. Which generation are you from? When were you even dipped? \
			You barely even remember anymore; but.. you remember your previous life. Somewhat. When you were still human.."

	restricted_to_species = list(SPECIES_MUTANT)
	stat_modifiers = list (
		STAT_ROB = 10,
		STAT_TGH = 5,
		STAT_VIG = -5
	)

/datum/category_item/setup_option/background/fate/gentlegiant
	name = "Gentle Giant"
	desc = "Sure, you might be dumb but you’re not as dumb as the others! Hell, you’ve learned some! \
			You feel the only way to make right in the world is to help fellow Mutants and maybe humans in any way you can."

	restricted_to_species = list(SPECIES_MUTANT)
	stat_modifiers = list (
		STAT_COG = 10,
		STAT_BIO = 5,
		STAT_TGH = -5
	)

/datum/category_item/setup_option/background/fate/dumbdumb
	name = "Prime Dumb-Dumb"
	desc = "Sure, you might be dumb but you’re not as dumb as the others! Hell, you’ve learned some! \
			You feel the only way to make right in the world is to help fellow Mutants and maybe humans in any way you can."

	restricted_to_species = list(SPECIES_MUTANT)
	perks = list(PERK_KLUTZ)
	stat_modifiers = list (
		STAT_TGH = 15,
		STAT_ROB = 10
	)