//As a general rule, all origin backrounds must have summ of +5 of stat values

/datum/category_group/setup_option_category/background/origin
	name = "Origin"
	category_item_type = /datum/category_item/setup_option/background/origin

/datum/category_item/setup_option/background/origin

/////////////////
//Human Origins//
////////////////

/datum/category_item/setup_option/background/origin/newcali
	name = "New California"
	desc = "New California, the place where civilization has been considered ‘reborn’. \
			Home to Brahmin barons, the NCR, and most of the notable post-war historic events that have been recorded by wandering historians."

	stat_modifiers = list(
		STAT_ROB = -10,
		STAT_TGH = -5,
		STAT_BIO = 0,
		STAT_MEC = 10,
		STAT_VIG = 10,
		STAT_COG = 0
	)
	restricted_depts = LEGION
	restricted_to_species = list(SPECIES_HUMAN)

/datum/category_item/setup_option/background/origin/arizona
	name = "Greater Arizona"
	desc = "The land of Flagstaff, Caesar and the Bull. \
			The region of Greater Arizona covers much of Arizona, New Mexico and the beginnings of Colorado before one hits Dog City and the more recent conquests of the Legion. \
			Life is tough in these parts; but the strongest always come out on top."

	stat_modifiers = list(
		STAT_ROB = 15,
		STAT_TGH = 10,
		STAT_BIO = -10,
		STAT_MEC = -5,
		STAT_VIG = 5,
		STAT_COG = -10
	)
	restricted_depts = NCR
	restricted_to_species = list(SPECIES_HUMAN)

/datum/category_item/setup_option/background/origin/midwest
	name = "Mid-West"
	desc = "The region of the mid-west is a hard one to pin, but wasters consider it from the region of Denver / Dog City all the way to the Mid-Western chapter of the Brotherhood in Chicago. \
			Life in this region requires a hand rested on a holster at all times and the ability to weather great tragedies."

	stat_modifiers = list(
		STAT_ROB = 5,
		STAT_TGH = 15,
		STAT_BIO = -5,
		STAT_MEC = -5,
		STAT_VIG = 5,
		STAT_COG = -10
	)
	restricted_to_species = list(SPECIES_HUMAN)

/datum/category_item/setup_option/background/origin/vaultie
	name = "Bunker / Vault Born"
	desc = "The region of the mid-west is a hard one to pin, but wasters consider it from the region of Denver / Dog City all the way to the Mid-Western chapter of the Brotherhood in Chicago. \
			Life in this region requires a hand rested on a holster at all times and the ability to weather great tragedies."

	stat_modifiers = list(
		STAT_ROB = -10,
		STAT_TGH = -10,
		STAT_BIO = 10,
		STAT_MEC = 5,
		STAT_VIG = 0,
		STAT_COG = 10
	)
	restricted_to_species = list(SPECIES_HUMAN)

/datum/category_item/setup_option/background/origin/sonoran
	name = "Sonoran Native"
	desc = "Your home is right on the border regions between the United States and Mexico, most often than not south of the border. \
			A scavengers paradise of untouched potential, banditos, cowboys or vaqueros, and the wide open desert frontier. \
			Some say that the lifestyle of Happy go-lucky freedom rots your brain, but you call it home. As free as a man can be."

	stat_modifiers = list(
		STAT_ROB = 0,
		STAT_TGH = 5,
		STAT_BIO = -10,
		STAT_MEC = 10,
		STAT_VIG = 5,
		STAT_COG = -10
	)
	restricted_to_species = list(SPECIES_HUMAN)

/datum/category_item/setup_option/background/origin/sonoran/apply(mob/living/carbon/human/character)
	..()
	character.add_language(LANGUAGE_SPANISH)

/datum/category_item/setup_option/background/origin/farlander
	name = "Farlander"
	desc = "No one is quite sure where you hail from. Maybe it’s from Washington State, maybe it’s Mexico City, hell - maybe it’s from the lost part of the Eastern Seaboard. \
			All one can gather is you must have traveled far to get here. That or your whole life is just an elaborate lie; but the former seems more likely."

	stat_modifiers = list(
		STAT_ROB = 10,
		STAT_TGH = 5,
		STAT_BIO = -5,
		STAT_MEC = -10,
		STAT_VIG = 10,
		STAT_COG = -5
	)
	restricted_to_species = list(SPECIES_HUMAN)

/datum/category_item/setup_option/background/origin/deadhorse
	name = "Zion Native"
	desc = "Far from the lands of Sonora is a tale of raw natural beauty. The mention of where you hail from may turn heads, many confused as to where you're talking about. \
			As if you mentioned a fantasy tale. But some caravaneers know exactly where you mean. The place of the Grand Canyon. The place of various, waring tribes and Mormon missionaries. \
			While living in Zion has left you rather isolated from the post-war world you did keep one thing - your mother tongue. And you thank your god or gods for it ever day."

	stat_modifiers = list(
		STAT_ROB = 10,
		STAT_TGH = 5,
		STAT_BIO = -10,
		STAT_MEC = -5,
		STAT_VIG = 10,
		STAT_COG = -10
	)
	restricted_to_species = list(SPECIES_HUMAN)

/datum/category_item/setup_option/background/origin/deadhorse/apply(mob/living/carbon/human/character)
	..()
	character.add_language(LANGUAGE_DEADHORSE)


/datum/category_item/setup_option/background/origin/deadhorse
	name = "Whiteleg Tribesman"
	desc = "No matter where you go in the nearby wasteland, most people have heard of your rather infamous tribe. The Whitlegs. \
			Allies of Ceasar, burners of New Caanan, friends of Ulysses. As savage as savage can get, a literal salt upon the wounds of the injured. \
			Your upbringing was likely rough. Through hardships, war, famine and the various tribal conflicts that embroiled your home. But you've been molded by it. You are not someone to fuck with."

	stat_modifiers = list(
		STAT_ROB = 15,
		STAT_TGH = 10,
		STAT_BIO = -10,
		STAT_MEC = -5,
		STAT_VIG = 5,
		STAT_COG = -15
	)
	restricted_to_species = list(SPECIES_HUMAN)

/datum/category_item/setup_option/background/origin/whiteleg/apply(mob/living/carbon/human/character)
	..()
	character.add_language(LANGUAGE_WHITELEG)

/datum/category_item/setup_option/background/origin/shi
	name = "San-Fran Shi Resident"
	desc = "You hail from the West Coast, either a surviving pre-war Chinese expat family or a Chinese remnant from that very submarine. Or maybe your family just seeked protection in Shi terrirotires years back. \
			The Shi offered a very unique upbringing. One so rarely seen. Hope, medicine and science. To the Shi, knowledge is power. And this mindset has left you rather knowledageble. \
			Luckily you've kept up with the language the Shi speak. A rare find to find someone who speaks this hybrid of Chinese and English influences, but it usually shows someone with an equally cultured intellect."

	stat_modifiers = list(
		STAT_ROB = -15,
		STAT_TGH = -10,
		STAT_BIO = 10,
		STAT_MEC = 5,
		STAT_VIG = 0,
		STAT_COG = 10
	)
	restricted_to_species = list(SPECIES_HUMAN)

/datum/category_item/setup_option/background/origin/shi/apply(mob/living/carbon/human/character)
	..()
	character.add_language(LANGUAGE_NEOHONGO)


/////////////////
//Ghoul Origins//
/////////////////

/datum/category_item/setup_option/background/origin/prewar
	name = "Pre-War Ghoul"
	desc = "You were alive when the bombs fell. You remember the flash of light wherever you were, the flash of the old world becoming the new hellscape you're all too familair with. \
			You've likely wandered miles upon miles over the last 200 years. Places change but.. war, war never seems to change."

	stat_modifiers = list(
		STAT_ROB = -5,
		STAT_TGH = -5,
		STAT_BIO = 10,
		STAT_MEC = 0,
		STAT_VIG = -5,
		STAT_COG = 10
	)
	restricted_to_species = list(SPECIES_GHOUL)

/datum/category_item/setup_option/background/origin/necropolis
	name = "Necropolis Refugee"
	desc = "Ahhh, you remember Necropolis. Good ol’ Set making wasters take dirt-naps for stepping in his shadow. That strange dweller fucking everything up over a stupid water chip. \
			The horrid mutants and what they did to the community you and others strived to build.. you remember it all too well. You're a survivor though, and you know when to toughen up."

	stat_modifiers = list(
		STAT_ROB = 5,
		STAT_TGH = 10,
		STAT_BIO = -5,
		STAT_MEC = -5,
		STAT_VIG = 5,
		STAT_COG = -5
	)
	restricted_to_species = list(SPECIES_GHOUL)

/datum/category_item/setup_option/background/origin/brokenhills
	name = "Broken Hills Resident"
	desc = "Broken Hills was an.. amazing home. Humans, mutants and ghouls alike all living together. It was one of the best lives a ghoul could ask for back in the day. \
			It wasn’t the nicest looking town, and usually had the worst looking residents, but it was a great high-spirited home. Even with it gone - it helped you never give up hope."

	stat_modifiers = list(
		STAT_ROB = -10,
		STAT_TGH = -5,
		STAT_BIO = 5,
		STAT_MEC = -5,
		STAT_VIG = 15,
		STAT_COG = 5
	)
	restricted_to_species = list(SPECIES_GHOUL)

/datum/category_item/setup_option/background/origin/wanderer
	name = "Far Off Wanderer"
	desc = "You’ve wandered far and wide with your extended lifespan. Some ghouls hail from the south, some from the north, and some even hail from the Eastern lands. \
			But you? No ones sure where you hail from. All people know, as Typhon said, there’s no young ghouls. Only old ones."

	stat_modifiers = list(
		STAT_ROB = -5,
		STAT_TGH = 5,
		STAT_BIO = -5,
		STAT_MEC = 5,
		STAT_VIG = 5,
		STAT_COG = 0
	)
	restricted_to_species = list(SPECIES_GHOUL)

/datum/category_item/setup_option/background/origin/mexicoghoul
	name = "El maldito"
	desc = "Ahhh, the good old country! México! Or.. well, at least your family was from there, you might be too! That or from maybe even further south. Your kind are called ghouls down there too, or 'Los maldito', the cursed ones. \
			South of the border has become a very strange land since the war. The deserts in Mexico are known for their untouched salvage and gunslingers, you've had to pick up a bit on that."

	stat_modifiers = list(
		STAT_ROB = -5,
		STAT_TGH = 5,
		STAT_BIO = -10,
		STAT_MEC = 10,
		STAT_VIG = 5,
		STAT_COG = -5
	)
	restricted_to_species = list(SPECIES_GHOUL)

/datum/category_item/setup_option/background/origin/mexicoghoul/apply(mob/living/carbon/human/character)
	..()
	character.add_language(LANGUAGE_SPANISH)

//////////////////
//Mutant Origins//
/////////////////

//Mutants will get extra bonuses in skillpoints since they're locked out of many jobs, have a larger hitbox realistically and will have WAY more drastic hits to their bio/cog.
//Basically 30-35 positive skillpoints, minus 25-30 skillpoints

/datum/category_item/setup_option/background/origin/gen1mutant
	name = "Generation 1 Mutant"
	desc = "You remember the Masters Army and all the mutants that used to roam about. You feel smarter than the other super mutants. And.. Well, you likely are. \
			The first generation of mutants had some ‘dumb-dumbs’ in it but it also house some of the brightest minds that the Master had created."

	stat_modifiers = list(
		STAT_ROB = 10,
		STAT_TGH = 10,
		STAT_BIO = -15,
		STAT_MEC = -5,
		STAT_VIG = 10,
		STAT_COG = -5
	)
	restricted_to_species = list(SPECIES_MUTANT)

/datum/category_item/setup_option/background/origin/gen2mutant
	name = "Generation 2 Mutant"
	desc = "Those bug-eyed assholes.. complete and ultimate savages. Forcing you and your friends to mine away at those ruins of Mariposa. It changed you, in every way. \
			You felt the horrid tearing as you transformed slowly into the mutant you are now. It taught you how to kill and rip men in power armor apart, but it also scared you for life.."

	stat_modifiers = list(
		STAT_ROB = 15,
		STAT_TGH = 10,
		STAT_BIO = -15,
		STAT_MEC = 0,
		STAT_VIG = 5,
		STAT_COG = -10
	)
	restricted_to_species = list(SPECIES_MUTANT)

/datum/category_item/setup_option/background/origin/gen3mutant
	name = "Generation 3 Mutant"
	desc = "You are of the current generation of mutants. Found throughout the Mid-West, the East and rare find in the West you are true an.. abomination. \
			An irradiated soul dipped into FEV.. it’s a miracle you didn’t just turn into a Centaur. You’re just a big, strong, dumb simpleton."

	stat_modifiers = list(
		STAT_ROB = 10,
		STAT_TGH = 15,
		STAT_BIO = -15,
		STAT_MEC = 5,
		STAT_VIG = 0,
		STAT_COG = -15
	)
	restricted_to_species = list(SPECIES_MUTANT)