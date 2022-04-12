/datum/perk/survivor
	name = "Survivor"
	desc = "After seeing the death of many acquaintances and friends, witnessing death doesn't shock you as much as before. \
			Halves sanity loss from seeing people die."
	icon_state = "survivor" // https://game-icons.net/1x1/lorc/one-eyed.html

/datum/perk/survivor/assign(mob/living/carbon/human/H)
	..()
	if(holder)
		holder.sanity.death_view_multiplier *= 0.5

/datum/perk/survivor/remove()
	if(holder)
		holder.sanity.death_view_multiplier *= 2
	..()

/datum/perk/job/artist
	name = "Artist"
	desc = "You have a lot of expertise in making works of art. You gain 150% insight from all sources but can only level \
			up by creating works of art."
	icon_state = "paintbrush" // https://game-icons.net/1x1/delapouite/paint-brush.html
	var/old_max_insight = INFINITY
	var/old_max_resting = INFINITY
	var/old_insight_rest_gain_multiplier = 1

/datum/perk/job/artist/assign(mob/living/carbon/human/H)
	..()
	old_max_insight = holder.sanity.max_insight
	old_max_resting = holder.sanity.max_resting
	old_insight_rest_gain_multiplier = holder.sanity.insight_rest_gain_multiplier
	holder.sanity.max_insight = 100
	holder.sanity.insight_gain_multiplier *= 1.5
	holder.sanity.max_resting = 1
	holder.sanity.insight_rest_gain_multiplier = 0

/datum/perk/job/artist/remove()
	holder.sanity.max_insight += old_max_insight - 100
	holder.sanity.insight_gain_multiplier /= 1.5
	holder.sanity.max_resting += old_max_resting - 1
	holder.sanity.insight_rest_gain_multiplier += old_insight_rest_gain_multiplier
	..()

/datum/perk/advanced_medical
	name = "Advanced Surgical Techniques"
	desc = "Your surgical training and experience have tempered your special techniques for treating patients, enabling you to make more effective and efficient use of your resources when reconstituting their bodies."

/datum/perk/selfmedicated
	name = "Self-medicated"
	desc = "You have very shoddy handwriting. This lets you write prescriptions to yourself! \
			Your total NSA is increased and chance to gain an addiction decreased."
	icon_state = "selfmedicated" // https://game-icons.net/1x1/lorc/overdose.html

/datum/perk/selfmedicated/assign(mob/living/carbon/human/H)
	..()
	if(holder)
		holder.metabolism_effects.addiction_chance_multiplier = 0.5
		holder.metabolism_effects.nsa_threshold_base += 10

/datum/perk/selfmedicated/remove()
	if(holder)
		holder.metabolism_effects.addiction_chance_multiplier = 1
		holder.metabolism_effects.nsa_threshold_base -= 10
	..()

/datum/perk/selfmedicated/chemist
	name = "Chemical-junkie"
	desc = "You know what the atoms around you react to and in what way they do. You are used to making organic substitutes and pumping them into yourself in the name of science! \
			You get 10 more NSA points and a quarter more NSA ontop than a normal person. Your chance of getting addicted is also reduced to half and you can also see all reagents in beakers."
	perk_shared_ability = PERK_SHARED_SEE_REAGENTS

/datum/perk/selfmedicated/chemist/assign(mob/living/carbon/human/H)
	..()
	if(holder)
		holder.metabolism_effects.nsa_threshold_base *= 1.25

// Added on top , removed first
/datum/perk/selfmedicated/chemist/remove()
	if(holder)
		holder.metabolism_effects.nsa_threshold_base /= 1.25
	..()

/datum/perk/vagabond
	name = "Vagabond"
	desc = "You're used to see the worst sight the world has to offer. Your mind feels more resistant. \
			This perk reduces the total sanity damage you can take from what is happening around you."
	icon_state = "vagabond" // https://game-icons.net/1x1/lorc/eye-shield.html

/datum/perk/vagabond/assign(mob/living/carbon/human/H)
	..()
	if(holder)
		holder.sanity.view_damage_threshold += 20

/datum/perk/vagabond/remove()
	if(holder)
		holder.sanity.view_damage_threshold -= 20
	..()

/datum/perk/market_prof
	name = "Market Professional"
	desc = "Just by looking at the item you can know how much it cost."
	icon_state = "market_prof"

/datum/perk/sanityboost
	name = "Cult of Mars"
	desc = "When near a banner, you feel your mind at ease. Your sanity regeneration is boosted."
	icon_state = "legion" // https://game-icons.net/1x1/lorc/templar-eye.html

/datum/perk/active_sanityboost
	name = "Cult of Mars (Active)"
	icon_state = "legion" // https://game-icons.net/1x1/lorc/templar-eye.html

/datum/perk/active_sanityboost/assign(mob/living/carbon/human/H)
	..()
	if(holder)
		holder.sanity.sanity_passive_gain_multiplier *= 1.5

/datum/perk/active_sanityboost/remove()
	if(holder)
		holder.sanity.sanity_passive_gain_multiplier /= 1.5
	..()

/// Basically a marker perk. If the user has this perk, another will be given in certain conditions.
/datum/perk/inspiration
	name = "Exotic Inspiration"
	desc = "Boosts your Cognition and Mechanical stats any time you imbibe any alcohol."
	icon_state = "drinking" // https://game-icons.net/1x1/delapouite/drinking.html

/datum/perk/active_inspiration
	name = "Exotic Inspiration (Active)"
	icon_state = "drinking" // https://game-icons.net/1x1/lorc/enlightenment.html

/datum/perk/active_inspiration/assign(mob/living/carbon/human/H)
	..()
	if(holder)
		holder.stats.addTempStat(STAT_COG, 5, INFINITY, "Exotic Inspiration")
		holder.stats.addTempStat(STAT_MEC, 10, INFINITY, "Exotic Inspiration")

/datum/perk/active_inspiration/remove()
	if(holder)
		holder.stats.removeTempStat(STAT_COG, "Exotic Inspiration")
		holder.stats.removeTempStat(STAT_MEC, "Exotic Inspiration")
	..()

/datum/perk/sommelier
	name = "Sommelier"
	desc = "You know how to handle even strongest alcohol in the universe."
	icon_state = "celebration" // https://game-icons.net/1x1/delapouite/glass-celebration.html

/datum/perk/greenthumb
	name = "Green Thumb"
	desc = "After growing plants for years you have become a botanical expert. You can get all information about plants, from stats \
	        to harvest reagents, by examining them. Gathering plants relaxes you and thus restores sanity."
	icon_state = "greenthumb" // https://game-icons.net/1x1/delapouite/farmer.html

	var/obj/item/device/scanner/plant/virtual_scanner = new

/datum/perk/greenthumb/assign(mob/living/carbon/human/H)
	..()
	virtual_scanner.is_virtual = TRUE

/datum/perk/job/rally
	name = "Rallying the Troops"
	desc = "Your presence instills confidence, order and, most importantly, sanity to your underlings. People near you recover sanity."
	icon_state = "rally"

/datum/perk/job/rally/assign(mob/living/carbon/human/H)
	..()
	if(holder)
		holder.sanity_damage -= 2

/datum/perk/job/rally/remove()
	if(holder)
		holder.sanity_damage += 2
	..()

/datum/perk/bolttraining
	name = "Bolt Action Rifle Training"
	desc = "You likely grew up either on the frontiers of civilization hunting food for survive, rustling brahmin from barons for a living or dealing with sub-par weaponry all your life. \
			But hey, you've learned how to keep the bolt on your rifle greased, fire fast and fire accurately. Who said bolt-actions are the way of the past!?"
	icon_state = "bolt_action"

/datum/perk/rezsickness
	name = "Revival Sickness"
	desc = "You've recently died and have been brought back to life, the experience leaving you weakened and thus unfit for fighting for a while. You better find a bed or chair to rest into until you've fully recuperated."
	gain_text = "Your body aches from the pain of returning from death, you better find a chair or bed to rest in so you can heal properly."
	lose_text = "You finally feel like you recovered from the ravages of your body."
	var/initial_time

/datum/perk/rezsickness/activate()
	var/mob/living/carbon/human/user = usr
	if(!istype(user))
		return ..()
	if(world.time < cooldown_time)
		to_chat(usr, SPAN_NOTICE("Your chemical injector is still refilling, you'll need to wait longer."))
		return FALSE
	cooldown_time = world.time + 15 MINUTES
	user.visible_message("[user] begins twitching and breathing much quicker!", "You feel your heart rate increasing rapidly as everything seems to speed up!", "You hear someone breathing rapidly...")
	log_and_message_admins("used their [src] perk.")
	user.reagents.add_reagent("hyperzine", 5)
	return ..()

/datum/perk/rezsickness/assign(mob/living/carbon/human/H)
	..()
	initial_time = world.time
	cooldown_time = world.time + 30 MINUTES
	holder.brute_mod_perk += 0.10
	holder.burn_mod_perk += 0.10
	holder.oxy_mod_perk += 0.10
	holder.toxin_mod_perk += 0.10
	holder.stats.changeStat(STAT_ROB, -10)
	holder.stats.changeStat(STAT_TGH, -10)
	holder.stats.changeStat(STAT_VIG, -10)

/datum/perk/rezsickness/remove()
	holder.brute_mod_perk -= 0.10
	holder.burn_mod_perk -= 0.10
	holder.oxy_mod_perk -= 0.10
	holder.toxin_mod_perk -= 0.10
	holder.stats.changeStat(STAT_ROB, 10)
	holder.stats.changeStat(STAT_TGH, 10)
	holder.stats.changeStat(STAT_VIG, 10)
	..()

/datum/perk/rezsickness/severe
	name = "Severe Revival Sickness"
	desc = "You've recently died and have been brought back to life. Your body cannot handle this traumatic experience very well, to the point where you struggle to complete even basic tasks. You better rest in a bed until it subsides before going back to work."

/datum/perk/rezsickness/severe/assign(mob/living/carbon/human/H)
	..()
	holder.brute_mod_perk += 0.15
	holder.burn_mod_perk += 0.15
	holder.oxy_mod_perk += 0.15
	holder.toxin_mod_perk += 0.15
	holder.stats.changeStat(STAT_COG, -15)
	holder.stats.changeStat(STAT_MEC, -15)
	holder.stats.changeStat(STAT_BIO, -15)

/datum/perk/rezsickness/severe/remove()
	holder.brute_mod_perk -= 0.15
	holder.burn_mod_perk -= 0.15
	holder.oxy_mod_perk -= 0.15
	holder.toxin_mod_perk -= 0.15
	holder.stats.changeStat(STAT_COG, 15)
	holder.stats.changeStat(STAT_MEC, 15)
	holder.stats.changeStat(STAT_BIO, 15)
	..()

/datum/perk/rezsickness/severe/fatal
	name = "Fatal Revival Sickness"
	desc = "You've recently died and have been brought back to life. Your frail constitution can barely handle the process, leaving you utterly physically and mentally wrecked. You better stay in bed for now and rest, or you risk dying even easier than before."

/datum/perk/rezsickness/severe/fatal/assign(mob/living/carbon/human/H)
	..()
	holder.brute_mod_perk += 0.25
	holder.burn_mod_perk += 0.25
	holder.oxy_mod_perk += 0.25
	holder.toxin_mod_perk += 0.25
	holder.stats.changeStat(STAT_ROB, -20)
	holder.stats.changeStat(STAT_TGH, -20)
	holder.stats.changeStat(STAT_VIG, -20)
	holder.stats.changeStat(STAT_COG, -20)
	holder.stats.changeStat(STAT_MEC, -20)
	holder.stats.changeStat(STAT_BIO, -20)

/datum/perk/rezsickness/severe/fatal/remove()
	holder.brute_mod_perk -= 0.25
	holder.burn_mod_perk -= 0.25
	holder.oxy_mod_perk -= 0.25
	holder.toxin_mod_perk -= 0.25
	holder.stats.changeStat(STAT_ROB, 20)
	holder.stats.changeStat(STAT_TGH, 20)
	holder.stats.changeStat(STAT_VIG, 20)
	holder.stats.changeStat(STAT_COG, 20)
	holder.stats.changeStat(STAT_MEC, 20)
	holder.stats.changeStat(STAT_BIO, 20)
	..()

/datum/perk/rezsickness/on_process()
	if(cooldown_time <= world.time)
		holder.stats.removePerk(type)
		to_chat(holder, SPAN_NOTICE("[lose_text]"))
		return
	if(holder.buckled)
		cooldown_time -= 2 SECONDS


//Da Graveyard
//Basically stuff that should be either used at some point or removed. Not my focus to do so, so I'm leaving it here. - Rebel0

/datum/perk/channeling
	name = "Channeling"
	desc = "You know how to channel spiritual energy during rituals. You gain additional skill points \
			during group rituals and have an increased regeneration of cruciform energy."
	icon_state = "channeling"

/datum/perk/neat
	name = "Neat"
	desc = "You're used to see blood and filth in all its forms. Your motto: a clean ship is the first step to enlightenment. \
			This perk reduces the total sanity damage you can take from what is happening around you. \
			You can regain sanity by cleaning."
	icon_state = "neat" // https://game-icons.net/1x1/delapouite/broom.html

/datum/perk/neat/assign(mob/living/carbon/human/H)
	..()
	if(holder)
		holder.sanity.view_damage_threshold += 20

/datum/perk/neat/remove()
	if(holder)
		holder.sanity.view_damage_threshold -= 20
	..()

/datum/perk/merchant
	name = "Merchant"
	desc = "Money is what matters for you, and it's so powerful it lets you improve your skills. \
			This perk lets you use money for leveling up. The credits need to be in your backpack."
	icon_state = "merchant" // https://game-icons.net/1x1/lorc/cash.html and https://game-icons.net/1x1/delapouite/graduate-cap.html slapped on https://game-icons.net/1x1/lorc/trade.html

/datum/perk/merchant/assign(mob/living/carbon/human/H)
	..()
	if(holder)
		holder.sanity.valid_inspirations += /obj/item/spacecash/bundle

/datum/perk/merchant/remove()
	if(holder)
		holder.sanity.valid_inspirations -= /obj/item/spacecash/bundle
	..()

/datum/perk/codespeak
	name = "Codespeak"
	desc = "You know Ironhammer PMC's code language, adapted to use aboard of CEV Eris."
	icon_state = "codespeak" // https://game-icons.net/1x1/delapouite/police-officer-head.html
	var/list/codespeak_procs = list(
		/mob/living/carbon/human/proc/codespeak_help,
		/mob/living/carbon/human/proc/codespeak_backup,
		/mob/living/carbon/human/proc/codespeak_clear,
		/mob/living/carbon/human/proc/codespeak_romch,
		/mob/living/carbon/human/proc/codespeak_bigromch,
		/mob/living/carbon/human/proc/codespeak_murderhobo,
		/mob/living/carbon/human/proc/codespeak_serb,
		/mob/living/carbon/human/proc/codespeak_commie,
		/mob/living/carbon/human/proc/codespeak_carrion,
		/mob/living/carbon/human/proc/codespeak_mutant,
		/mob/living/carbon/human/proc/codespeak_dead_crew,
		/mob/living/carbon/human/proc/codespeak_wounded_crew,
		/mob/living/carbon/human/proc/codespeak_dead_oper,
		/mob/living/carbon/human/proc/codespeak_wounded_oper,
		/mob/living/carbon/human/proc/codespeak_ban,
		/mob/living/carbon/human/proc/codespeak_criminal,
		/mob/living/carbon/human/proc/codespeak_status,
		/mob/living/carbon/human/proc/codespeak_shutup,
		/mob/living/carbon/human/proc/codespeak_understood,
		/mob/living/carbon/human/proc/codespeak_yes,
		/mob/living/carbon/human/proc/codespeak_no,
		/mob/living/carbon/human/proc/codespeak_what,
		/mob/living/carbon/human/proc/codespeak_busted,
		/mob/living/carbon/human/proc/codespeak_jailbreak,
		/mob/living/carbon/human/proc/codespeak_understood_local,
		/mob/living/carbon/human/proc/codespeak_yes_local,
		/mob/living/carbon/human/proc/codespeak_no_local,
		/mob/living/carbon/human/proc/codespeak_engage_local,
		/mob/living/carbon/human/proc/codespeak_hold_local,
		/mob/living/carbon/human/proc/codespeak_go_local,
		/mob/living/carbon/human/proc/codespeak_stop_local,
		/mob/living/carbon/human/proc/codespeak_idiot_local,
		/mob/living/carbon/human/proc/codespeak_warcrime_yes_local,
		/mob/living/carbon/human/proc/codespeak_warcrime_no_local,
		/mob/living/carbon/human/proc/codespeak_run_local
		)

/datum/perk/codespeak/assign(mob/living/carbon/human/H)
	..()
	if(holder)
		holder.verbs += codespeak_procs


/datum/perk/codespeak/remove()
	if(holder)
		holder.verbs -= codespeak_procs
	..()

