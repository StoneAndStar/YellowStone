//FO13 Chemicals

/* Healing */

//Healing Powder
/datum/reagent/medicine/powder
	name = "Healing Powder"
	id = "healpowder"
	description = "A concotion from xander root and broc flower capable of restoring minor wounds, however it is known for clouding the mind of their user."
	taste_description = "bitterness and hallucinations"
	reagent_state = LIQUID
	color = "#fc783a"
	overdose = 30
	metabolism = 0.2
	scannable = 1
	nerve_system_accumulations = 15
	addiction_chance = 20
	withdrawal_threshold = 9

/datum/reagent/medicine/powder/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.heal_organ_damage(0.2 * effect_multiplier, 0, 5 * effect_multiplier)
	M.adjustOxyLoss(-0.1 * effect_multiplier)
	M.adjust_hallucination(0.5 * effect_multiplier)
	M.add_chemical_effect(CE_BLOODCLOT, 0.05)
	M.stats.addTempStat(STAT_VIG, -STAT_LEVEL_BASIC, STIMPAK_TIME, "healpowder")

/datum/reagent/medicine/powder/withdrawal_act(mob/living/carbon/M)
	M.stats.addTempStat(STAT_VIG, -STAT_LEVEL_BASIC, STIMPAK_TIME, "healpowder_w")
	M.heal_organ_damage(0.2, 0.2)

/datum/reagent/medicine/powder/overdose(mob/living/carbon/M, alien)
	M.adjustToxLoss(6)

//Stimpak
/datum/reagent/medicine/stimpak_fluid
	name = "Stimpak Fluid"
	id = "stimpak"
	description = "Powerful pre-war stimulant meant to be applied directly to the patients heart. It stabilizes but has a knack for preventing blood from clotting."
	taste_description = "bitterness and capitalism"
	reagent_state = LIQUID
	color = "#d62d27"
	overdose = 20
	metabolism = 0.4
	scannable = 1
	nerve_system_accumulations = 15
	addiction_chance = 20
	withdrawal_threshold = 9

/datum/reagent/medicine/stimpak_fluid/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.heal_organ_damage(0.4 * effect_multiplier, 0.4 * effect_multiplier)
	M.add_chemical_effect(CE_PULSE, 1)
	M.add_chemical_effect(CE_OXYGENATED, 1)
	M.add_chemical_effect(CE_BLOODCLOT, -0.05)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		var/obj/item/organ/internal/heart/L = H.random_organ_by_process(OP_HEART)
		if(istype(L))
			L.take_damage(0.2, 0)

/datum/reagent/medicine/stimpak_fluid/withdrawal_act(mob/living/carbon/M)
	M.stats.addTempStat(STAT_ROB, -STAT_LEVEL_BASIC, STIMPAK_TIME, "stimpak_w")
	M.stats.addTempStat(STAT_VIG, -STAT_LEVEL_BASIC, STIMPAK_TIME, "stimpak_w")
	M.heal_organ_damage(0.2, 0.2)

/datum/reagent/medicine/stimpak_fluid/overdose(mob/living/carbon/M, alien)
	M.adjustToxLoss(6)

//Super Stimpak
/datum/reagent/medicine/super_stimpak_fluid
	name = "Super Stimpak Fluid"
	id = "superstimpak"
	description = "Powerful pre-war stimulant meant to be applied directly to the patients heart. It stabilizes but causes internal bleeding."
	taste_description = "bitterness and capitalism"
	reagent_state = LIQUID
	color = "#d62d27"
	overdose = 15
	metabolism = 0.5
	scannable = 1
	nerve_system_accumulations = 30
	addiction_chance = 45
	withdrawal_threshold = 9

/datum/reagent/medicine/super_stimpak_fluid/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.heal_organ_damage(0.8 * effect_multiplier, 0.8 * effect_multiplier)
	M.add_chemical_effect(CE_PULSE, 1.5)
	M.add_chemical_effect(CE_OXYGENATED, 1)
	M.add_chemical_effect(CE_BLOODCLOT, -0.20)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		var/obj/item/organ/internal/heart/L = H.random_organ_by_process(OP_HEART)
		if(istype(L))
			L.take_damage(0.6, 0)

/datum/reagent/medicine/super_stimpak_fluid/withdrawal_act(mob/living/carbon/M)
	M.stats.addTempStat(STAT_ROB, -STAT_LEVEL_BASIC, STIMPAK_TIME, "superstimpak_w")
	M.stats.addTempStat(STAT_VIG, -STAT_LEVEL_BASIC, STIMPAK_TIME, "ssuperstimpak_w")
	M.heal_organ_damage(0.4, 0.4)

/datum/reagent/medicine/super_stimpak_fluid/overdose(mob/living/carbon/M, alien)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(H.stat != 1)
			if(H.losebreath >= 10)
				H.losebreath = max(10, H.losebreath - 10)
			H.adjustOxyLoss(2)
			H.Weaken(10)
		M.add_chemical_effect(CE_NOPULSE, 1)

//Ultra Stimpak
/datum/reagent/medicine/ultra_stimpak_fluid
	name = "Ultra Stimpak Fluid"
	id = "ultrastimpak"
	description = "Powerful pre-war stimulant meant to be applied directly to the patients heart. It stabilizes but causes internal bleeding."
	taste_description = "bitterness and capitalism"
	reagent_state = LIQUID
	color = "#d62d27"
	overdose = 11
	metabolism = 0.6
	scannable = 1
	nerve_system_accumulations = 50
	addiction_chance = 100
	withdrawal_threshold = 9

/datum/reagent/medicine/ultra_stimpak_fluid/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.heal_organ_damage(1 * effect_multiplier, 1 * effect_multiplier)
	M.add_chemical_effect(CE_PULSE, 2)
	M.add_chemical_effect(CE_OXYGENATED, 1)
	M.add_chemical_effect(CE_BLOODCLOT, -0.40)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		var/obj/item/organ/internal/heart/L = H.random_organ_by_process(OP_HEART)
		if(istype(L))
			L.take_damage(0.8, 0)

/datum/reagent/medicine/super_stimpak_fluid/withdrawal_act(mob/living/carbon/M)
	M.stats.addTempStat(STAT_ROB, -STAT_LEVEL_ADEPT, STIMPAK_TIME, "ultrastimpak_w")
	M.stats.addTempStat(STAT_VIG, -STAT_LEVEL_ADEPT, STIMPAK_TIME, "ultrastimpak_w")
	M.heal_organ_damage(0.5, 0.5)

/datum/reagent/medicine/ultra_stimpak_fluid/overdose(mob/living/carbon/M, alien)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(H.stat != 1)
			if(H.losebreath >= 10)
				H.losebreath = max(10, H.losebreath - 10)
			H.adjustOxyLoss(2)
			H.Weaken(10)
		M.add_chemical_effect(CE_NOPULSE, 1)

 /* Drugs */

 //Med-X
/datum/reagent/medicine/morphine
	name = "Med-X"
	id = "morphine"
	description = "An effective painkiller often called by it's actual name, morphine. Used by medics to soothe and sedate hurt troopers in the field. It's users often require more leading to torrents of blood via vomiting."
	taste_description = "sourness"
	reagent_state = LIQUID
	color = "#C773D1"
	overdose = 20
	scannable = 1
	metabolism = 0.4
	nerve_system_accumulations = 35
	addiction_chance = 65
	withdrawal_threshold = 15	

/datum/reagent/medicine/morphine/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.add_chemical_effect(CE_PAINKILLER, 60)

/datum/reagent/medicine/morphine/withdrawal_act(mob/living/carbon/M)
	M.stats.addTempStat(STAT_TGH, -STAT_LEVEL_BASIC, STIMPAK_TIME, "morphine_w")
	if(prob(20))
		M.vomit()

/datum/reagent/medicine/morphine/overdose(mob/living/carbon/M, alien)
	..()
	M.hallucination(120, 30)
	M.slurring = max(M.slurring, 30)
	M.add_chemical_effect(CE_SPEEDBOOST, -1)
	if(prob(3 - (2 * M.stats.getMult(STAT_TGH))))
		M.Stun(3)

//Jet
/datum/reagent/drug/jet
	name = "Jet"
	id = "jet"
	description = "A refined vapour from brahmin excrement capable of bringing euphoria to it's user at moments notice. Extremely addictive."
	taste_description = "excrement and happiness"
	reagent_state = GAS
	color = "#A03320"
	overdose = 17
	scannable = 1
	metabolism = 0.4
	nerve_system_accumulations = 60
	sanity_gain = 5
	addiction_chance = 80
	withdrawal_threshold = 9

/datum/reagent/drug/jet/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.druggy = max(M.druggy, 15 * effect_multiplier)
	if(prob(10 * effect_multiplier) && isturf(M.loc) && !istype(M.loc, /turf/space) && M.canmove && !M.restrained())
		step(M, pick(cardinal))
	if(prob(7 * effect_multiplier))
		M.emote(pick("twitch", "drool", "moan", "giggle"))
	M.add_chemical_effect(CE_PULSE, -1.5)
	..()

/datum/reagent/drug/jet/withdrawal_act(mob/living/carbon/M)
	M.slurring = max(M.slurring, 30)
	if(prob(10))
		M.emote(pick("twitch", "drool"))

/datum/reagent/drug/jet/overdose(mob/living/carbon/M, alien)
	..()
	M.hallucination(120, 30)
	M.slurring = max(M.slurring, 30)
	if(prob(3 - (2 * M.stats.getMult(STAT_TGH))))
		M.Stun(3)

//Turbo
/datum/reagent/stim/turbo
	name = "Turbo"
	id = "speed"
	description = "A pre-war combat stimulant meant for soldiers to make them unstoppable in combat, but due to extreme side effects it was quickly put out of use."
	taste_description = "speed"
	reagent_state = LIQUID
	color = "#A03320"
	overdose = 14
	scannable = 1
	metabolism = 0.3
	nerve_system_accumulations = 90
	addiction_chance = 80
	withdrawal_threshold = 6
	sanity_gain = -1

/datum/reagent/stim/turbo/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	..()
	M.make_jittery(10)
	if(prob(10))
		M.emote(pick("twitch", "blink_r", "shiver"))
	M.add_chemical_effect(CE_PAINKILLER, 30)
	M.add_chemical_effect(CE_SPEEDBOOST, 0.6)
	M.add_chemical_effect(CE_PULSE, 2)

/datum/reagent/stim/turbo/withdrawal_act(mob/living/carbon/M)
	M.add_chemical_effect(CE_SPEEDBOOST, -1)
	M.add_chemical_effect(CE_PULSE, 1)

/datum/reagent/stim/turbo/overdose(mob/living/carbon/M, alien)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(H.stat != 1)
			if(H.losebreath >= 10)
				H.losebreath = max(10, H.losebreath - 10)
			H.adjustOxyLoss(2)
			H.Weaken(10)
		M.add_chemical_effect(CE_NOPULSE, 1)

//Psycho
/datum/reagent/stim/psycho
	name = "Psycho"
	id = "psycho"
	description = "A dangerous substanance utilized primarily by fiends and raiders. It is unparalleled in it's ability to make it's user into a killing machine, however that is often at cost of their sanity."
	taste_description = "psychosis"
	reagent_state = LIQUID
	color = "#4d05d3"
	overdose = 12
	scannable = 1
	metabolism = 0.3
	nerve_system_accumulations = 95
	sanity_gain = -4

/datum/reagent/stim/psycho/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.stats.addTempStat(STAT_COG, -STAT_LEVEL_PROF * effect_multiplier, STIMPAK_TIME, "psycho")
	M.stats.addTempStat(STAT_MEC, -STAT_LEVEL_PROF * effect_multiplier, STIMPAK_TIME, "psycho")
	M.stats.addTempStat(STAT_BIO, -STAT_LEVEL_PROF * effect_multiplier, STIMPAK_TIME, "psycho")
	M.stats.addTempStat(STAT_ROB, STAT_LEVEL_ADEPT * effect_multiplier, STIMPAK_TIME, "psycho")
	M.stats.addTempStat(STAT_TGH, STAT_LEVEL_ADEPT * effect_multiplier, STIMPAK_TIME, "psycho")
	M.stats.addTempStat(STAT_VIG, STAT_LEVEL_ADEPT * effect_multiplier, STIMPAK_TIME, "psycho")
	M.add_chemical_effect(CE_PAINKILLER, 40)
	M.add_chemical_effect(CE_SPEEDBOOST, 0.3)

/datum/reagent/stim/psycho/withdrawal_act(mob/living/carbon/M)
	M.stats.addTempStat(STAT_COG, -STAT_LEVEL_BASIC, STIMPAK_TIME, "psycho_w")
	M.stats.addTempStat(STAT_MEC, -STAT_LEVEL_BASIC, STIMPAK_TIME, "psycho_w")
	M.stats.addTempStat(STAT_BIO, -STAT_LEVEL_BASIC, STIMPAK_TIME, "psycho_w")
	M.stats.addTempStat(STAT_ROB, -STAT_LEVEL_BASIC, STIMPAK_TIME, "psycho_w")
	M.stats.addTempStat(STAT_TGH, -STAT_LEVEL_BASIC, STIMPAK_TIME, "psycho_w")
	M.stats.addTempStat(STAT_VIG, -STAT_LEVEL_BASIC, STIMPAK_TIME, "psycho_w")
	M.add_chemical_effect(CE_SPEEDBOOST, -0.4)

/datum/reagent/stim/psycho/overdose(mob/living/carbon/M, alien)
	..()
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(H.stat != 1)
			if(H.losebreath >= 10)
				H.losebreath = max(10, H.losebreath - 10)
			H.adjustOxyLoss(2)
			H.Weaken(10)
	M.hallucination(200, 30)
	M.slurring = max(M.slurring, 30)
	if(prob(5 - (2 * M.stats.getMult(STAT_TGH))))
		M.Stun(10)

//Buffout
/datum/reagent/stim/buffout
	name = "Buffout"
	id = "buffout"
	description = "A pre-war steroid in use by athletes that often lead to their early demise via cardiac arrest."
	taste_description = "steroids"
	reagent_state = LIQUID
	color = "#275c1c"
	overdose = 19
	scannable = 1
	metabolism = 0.3
	nerve_system_accumulations = 45

/datum/reagent/stim/buffout/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.stats.addTempStat(STAT_ROB, STAT_LEVEL_ADEPT * effect_multiplier, STIMPAK_TIME, "buffout")
	M.stats.addTempStat(STAT_TGH, STAT_LEVEL_ADEPT * effect_multiplier, STIMPAK_TIME, "buffout")
	M.stats.addTempStat(STAT_VIG, -STAT_LEVEL_ADEPT * effect_multiplier, STIMPAK_TIME, "buffout")

/datum/reagent/stim/buffout/withdrawal_act(mob/living/carbon/M)
	M.stats.addTempStat(STAT_ROB, -STAT_LEVEL_BASIC, STIMPAK_TIME, "buffout_w")
	M.stats.addTempStat(STAT_TGH, -STAT_LEVEL_BASIC, STIMPAK_TIME, "buffout_w")
	M.stats.addTempStat(STAT_VIG, -STAT_LEVEL_BASIC, STIMPAK_TIME, "buffout_w")
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		var/obj/item/organ/internal/heart/L = H.random_organ_by_process(OP_HEART)
		if(istype(L))
			L.take_damage(0.2, 0)

/datum/reagent/stim/buffout/overdose(mob/living/carbon/M, alien)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(H.stat != 1)
			if(H.losebreath >= 10)
				H.losebreath = max(10, H.losebreath - 10)
			H.adjustOxyLoss(2)
			H.Weaken(10)
		M.add_chemical_effect(CE_NOPULSE, 1)

/* Mentants - Intend to make more subtypes so giving it snowflake category for that */

//Mentats
/datum/reagent/medicine/mentat
	name = "Mentat"
	id = "mentat"
	description = "A pre-war drug used to stimulate brain and the mind of it's user. It is capable of restoring minor brain tissue damage."
	taste_description = "massive brain energy"
	reagent_state = LIQUID
	color = "#0f6613"
	overdose = REAGENTS_OVERDOSE
	scannable = 1
	metabolism = 0.3
	nerve_system_accumulations = 45
	sanity_gain = 1.5

/datum/reagent/medicine/mentat/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.stats.addTempStat(STAT_COG, STAT_LEVEL_ADEPT * effect_multiplier, STIMPAK_TIME, "mentat")
	M.stats.addTempStat(STAT_MEC, STAT_LEVEL_BASIC * effect_multiplier, STIMPAK_TIME, "mentat")
	M.stats.addTempStat(STAT_BIO, STAT_LEVEL_BASIC * effect_multiplier, STIMPAK_TIME, "mentat")
	M.adjustBrainLoss(-(2 + (M.getBrainLoss() * 0.05)) * effect_multiplier)

/datum/reagent/medicine/mentat/withdrawal_act(mob/living/carbon/M)
	M.stats.addTempStat(STAT_COG, -STAT_LEVEL_BASIC, STIMPAK_TIME, "mentat_w")
	M.stats.addTempStat(STAT_MEC, -STAT_LEVEL_BASIC, STIMPAK_TIME, "mentat_w")
	M.stats.addTempStat(STAT_BIO, -STAT_LEVEL_BASIC, STIMPAK_TIME, "mentat_w")

/datum/reagent/medicine/mentat/overdose(mob/living/carbon/M, alien)
	M.adjustToxLoss(5)

/* Radiation Treatment */

//Rad-x
/datum/reagent/medicine/radx
	name = "Rad-x"
	id = "radx"
	description = "A pre-war pottasium iodine pill wrapped in a grey pill and sold commercially by med-tek. Not as effective as it's IV drip counterpart but it is good in a pinch."
	taste_description = "bitterness and bananas"
	reagent_state = LIQUID
	color = "#a0a0a1"
	overdose = REAGENTS_OVERDOSE
	scannable = 1
	metabolism = 0.3
	nerve_system_accumulations = 10

/datum/reagent/medicine/radx/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.radiation = max(M.radiation - (2 * effect_multiplier), 0)

/datum/reagent/medicine/radx/overdose(mob/living/carbon/M, alien)
	M.adjustToxLoss(5)

/* Niche */

//Fixer
/datum/reagent/medicine/fixer
	name = "Fixer"
	id = "fixer"
	description = "A rare blue pill containing potent purging chemicals focusing on supressing effects of drugs. It can cause violent vomiting for most of it's users."
	taste_description = "ash and acid"
	reagent_state = LIQUID
	color = "#3795e2"
	overdose = REAGENTS_OVERDOSE
	scannable = 1
	metabolism = 0.3
	nerve_system_accumulations = 15

/datum/reagent/medicine/fixer/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.add_chemical_effect(CE_PURGER, 1)
	if(prob(20 * effect_multiplier))
		M.vomit()

/datum/reagent/medicine/fixer/overdose(mob/living/carbon/M, alien)
	M.adjustToxLoss(7)

//Addictol is in code\modules\reagents\reagents\medicine.dm
//It shares a name with a drug already in fallout 4 so just going to leave it there instead of putting it here

//Hydra
/datum/reagent/medicine/hydra
	name = "Hydra"
	id = "hydra"
	description = "A post-war medicine utilized by various factions but mainly legion due to their beliefs. It serves as a very potent painkiller and is able to mend broken limbs in matter of hours."
	taste_description = "liquid pain"
	reagent_state = LIQUID
	color = "#6fd434"
	overdose = REAGENTS_OVERDOSE
	scannable = 1
	metabolism = 0.3
	nerve_system_accumulations = 15

/datum/reagent/medicine/hydra/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.apply_damage(25, HALLOSS)
	M.add_chemical_effect(CE_PAINKILLER, 40)
	M.add_chemical_effect(CE_BLOODCLOT, 0.1)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		var/list/brokenBP = list()
		for(var/obj/item/organ/external/E in H.organs)
			if(E.is_broken())
				brokenBP += E
		if(brokenBP.len)
			var/obj/item/organ/external/E = pick(brokenBP)
			E.mend_fracture()
			M.pain(E.name, 60, TRUE)
			dose -= min(dose, metabolism)

/datum/reagent/medicine/ossisine/overdose(mob/living/carbon/M, alien)
	M.adjustCloneLoss(2)

//Cateye
/datum/reagent/medicine/cateye
	name = "Cateye"
	id = "cateye"
	description = "A pre-war drug mainly in use by shaft miners and firefighters. Helps restores eye condition to normal."
	taste_description = "carrot"
	reagent_state = LIQUID
	color = "#94b406"
	overdose = REAGENTS_OVERDOSE
	scannable = 1
	metabolism = 0.3
	nerve_system_accumulations = 15

/datum/reagent/medicine/cateye/affect_blood(mob/living/carbon/M, alien, effect_multiplier)
	M.eye_blurry = max(M.eye_blurry - (2.5 * effect_multiplier), 0)
	M.eye_blind = max(M.eye_blind - (2.5 * effect_multiplier), 0)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		var/obj/item/organ/internal/eyes/E = H.random_organ_by_process(OP_EYES)
		if(E && istype(E))
			if(E.damage > 0)
				E.damage = max(E.damage - (0.5 * effect_multiplier), 0)

/datum/reagent/medicine/cateye/overdose(mob/living/carbon/M, alien)
	M.adjustToxLoss(7)