/datum/perk/fate/freelancer
	name = "Jack of All Trades"
	icon_state = "wanted"
	desc = "Whatever job needs doing, you can probably do it! You're a jack of all trades, after all. But.. you're also a master at none. \
			This perk checks your highest stat, lowers it by 10 and improves all others by 4."

/datum/perk/fate/freelancer/assign(mob/living/carbon/human/H)
	..()
	var/maxstat = -INFINITY
	var/maxstatname
	spawn(1)
		for(var/name in ALL_STATS)
			if(holder.stats.getStat(name, TRUE) > maxstat)
				maxstat = holder.stats.getStat(name, TRUE)
				maxstatname = name
		for(var/name in ALL_STATS)
			if(name != maxstatname)
				holder.stats.changeStat(name, 4)
			else
				holder.stats.changeStat(name, -10)

/datum/perk/fate/nihilist
	name = "Nihilist"
	desc = 	"You simply ran out of fucks to give at some point in your life. \
			This increases chance of positive breakdowns by 10% and negative breakdowns by 20%. Seeing someone die has a random effect on you: \
			sometimes you won’t take any sanity loss and you can even gain back sanity, or get a boost to your cognition."
	icon_state = "eye" //https://game-icons.net/1x1/lorc/tear-tracks.html

/datum/perk/fate/nihilist/assign(mob/living/carbon/human/H)
	..()
	if(holder)
		holder.sanity.positive_prob += 10
		holder.sanity.negative_prob += 20

/datum/perk/fate/nihilist/remove()
	if(holder)
		holder.sanity.positive_prob -= 10
		holder.sanity.negative_prob -= 20
		holder.stats.removeTempStat(STAT_COG, "Fate Nihilist")
	..()

/datum/perk/fate/moralist
	name = "Moralist"
	icon_state = "moralist" //https://game-icons.net/
	desc = "A day may come when the courage of men fails, when we forsake our friends and break all bonds of fellowship. \
			But it is not this day. This day you fight! \
			Your Insight gain is faster when you are around sane people and they will recover sanity when around you. \
			When you are around people that are low on health or sanity, you will take sanity damage."

/datum/perk/fate/drug_addict
	name = "Drug Addict"
	icon_state = "medicine" //https://game-icons.net/1x1/delapouite/medicines.html
	desc = "For reasons you cannot remember, you decided to resort to major drug use. You have lost the battle, and now you suffer the consequences. \
			You start with an addiction to a random drug, as well as a bottle of pills containing the drug."

/datum/perk/fate/drug_addict/assign(mob/living/carbon/human/H)
	..()
	spawn(1)
		var/turf/T = get_turf(holder)
		var/drugtype = pick(subtypesof(/datum/reagent/drug))
		if(!(drugtype in holder.metabolism_effects.addiction_list))
			var/datum/reagent/drug = new drugtype
			holder.metabolism_effects.addiction_list.Add(drug)
			for(var/j= 1 to 2)
				var/obj/item/storage/pill_bottle/PB = new /obj/item/storage/pill_bottle(T)
				PB.name = "bottle of happiness"
				for(var/i=1 to 7)
					var/obj/item/reagent_containers/pill/pill = new /obj/item/reagent_containers/pill(T)
					pill.reagents.add_reagent(drug.id, pill.volume)
					pill.name = "happy pill"
					PB.handle_item_insertion(pill)
				holder.equip_to_storage_or_drop(PB)

/datum/perk/fate/alcoholic
	name = "Alcoholic"
	icon_state = "beer" //https://game-icons.net/1x1/delapouite/beer-bottle.html
	desc = "You imagined the egress from all your trouble and pain at the bottom of the bottle, but the way only led to a labyrinth. \
			You have an alcohol addiction, which gives you a boost to robustness while under the influence and lowers your cognition permanently."

/datum/perk/fate/alcoholic/assign(mob/living/carbon/human/H)
	..()
	var/ethanoltype = pick(subtypesof(/datum/reagent/ethanol))
	if(!(ethanoltype in holder.metabolism_effects.addiction_list))
		var/datum/reagent/alcohol = new ethanoltype
		holder.metabolism_effects.addiction_list.Add(alcohol)

/datum/perk/fate/alcoholic_active
	name = "Alcoholic (active)"
	icon_state = "drinking" //https://game-icons.net/1x1/delapouite/drinking.html

/datum/perk/fate/alcoholic_active/assign(mob/living/carbon/human/H)
	..()
	if(holder)
		holder.stats.addTempStat(STAT_ROB, 10, INFINITY, "Fate Alcoholic")
		holder.stats.addTempStat(STAT_TGH, 10, INFINITY, "Fate Alcoholic")
		holder.stats.addTempStat(STAT_VIG, 10, INFINITY, "Fate Alcoholic")

/datum/perk/fate/alcoholic_active/remove()
	if(holder)
		holder.stats.removeTempStat(STAT_ROB, "Fate Alcoholic")
		holder.stats.removeTempStat(STAT_TGH, "Fate Alcoholic")
		holder.stats.removeTempStat(STAT_VIG, "Fate Alcoholic")
	..()

/datum/perk/fate/noble
	name = "Sheltered Life"
	icon_state = "family" //https://game-icons.net
	desc = "You lived a sheltered life as a child, sheltered from what the earth had become around you. A rarity considering these trying times and lack of long-lasting families. \
			Start with an heirloom weapon and a removed sanity cap. Stay clear of filth and danger."

/datum/perk/fate/noble/assign(mob/living/carbon/human/H)
	..()
	if(!holder)
		return
	holder.sanity.environment_cap_coeff -= 1
	if(!holder.last_name)
		holder.stats.removePerk(src.type)
		return
	var/turf/T = get_turf(holder)
	var/obj/item/W = pickweight(list(
				/obj/item/tool/knife/ritual = 0.5,
				/obj/item/tool/sword = 0.2,
				/obj/item/tool/sword/katana = 0.2,
				/obj/item/tool/knife/dagger/ceremonial = 0.8,
				/obj/item/gun/projectile/revolver = 0.4))
	holder.sanity.valid_inspirations += W
	W = new W(T)
	W.desc += " It has been inscribed with the \"[holder.last_name]\" family name."
	var/oddities = rand(2,4)
	var/list/stats = ALL_STATS
	var/list/final_oddity = list()
	for(var/i = 0 to oddities)
		var/stat = pick(stats)
		stats.Remove(stat)
		final_oddity += stat
		final_oddity[stat] = rand(1,7)
	W.AddComponent(/datum/component/inspiration, final_oddity, get_oddity_perk())
	W.AddComponent(/datum/component/atom_sanity, 1, "") //sanity gain by area
	W.sanity_damage -= 1 //damage by view
	spawn(1)
		holder.equip_to_storage_or_drop(W)

/datum/perk/fate/noble/remove()
	if(holder)
		holder.sanity.environment_cap_coeff += 1
	..()

/datum/perk/fate/rat
	name = "Sewer Rat"
	desc = "You've spent the majority of your life living in a literal sewer or drainage ditch. Some areas safe from the harsh elements and out of the eyes of others. \
			You start with a +10 to Mechanical stat and -10 to Vigilance. You will have a -10 to overall sanity health, meaning you will incur a breakdown faster than most. \
			Additionally you have more quiet footsteps and a chance to not trigger traps on the ground. Just like the real sewer rat you are."
	icon_state = "rat" //https://game-icons.net/

/datum/perk/fate/rat/assign(mob/living/carbon/human/H)
	..()
	if(holder)
		holder.sanity.max_level -= 10

/datum/perk/fate/rat/remove()
	if(holder)
		holder.sanity.max_level += 10
	..()

/datum/perk/fate/sickly_upbringing
	name = "Sickly Upbringing"
	icon_state = "prism" //https://game-icons.net/1x1/delapouite/prism.html
	desc = "You were struck down by a mysterious illneess in your early years. \
			It's not clear what caused it but it had a permanent effect on your vision and taste. The loss of color to the world and your taste buds..\
			You're lucky to be alive, but the outcome has had a blessing in a way. You are able to be content in life while others commonly cannot."

/datum/perk/fate/sickly_upbringing/assign(mob/living/carbon/human/H)
	..()
	if(holder)
		holder.sanity.max_level += 20
		spawn(1)
			holder.update_client_colour() //Handle the activation of the colourblindness on the mob.

/datum/perk/fate/sickly_upbringing/remove()
	if(holder)
		holder.sanity.max_level -= 20
	..()

/datum/perk/fate/klutz
	name = "Klutz"
	desc = "You find a lot of tasks a little beyond your ability to perform, but being accident prone has at least made you used to getting hurt."
	icon_state = "klutz" // https://game-icons.net

/datum/perk/klutz/assign(mob/living/carbon/human/H)
	..()
	holder.mutations.Add(CLUMSY)

/datum/perk/klutz/remove()
	holder.mutations.Remove(CLUMSY)
	..()

/datum/perk/fate/toxic_revenger
	name = "Glowing One"
	desc = "A heart of gold does not matter when blood is toxic. Those who breathe your air, share your fate. \
			People around you receive toxin damage."
	icon_state = "Hazmat" // https://game-icons.net
	var/cooldown = 1 MINUTES
	var/initial_time

/datum/perk/oddity/toxic_revenger/assign(mob/living/carbon/human/H)
	..()
	initial_time = world.time

/datum/perk/oddity/toxic_revenger/on_process()
	if(!..())
		return
	if(holder.species.flags & NO_BREATHE || holder.internal)
		return
	if(world.time < initial_time + cooldown)
		return
	initial_time = world.time
	for(var/mob/living/L in viewers(holder, 5))
		if(!L)
			continue
		if(ishuman(L))
			var/mob/living/carbon/human/H = L
			if(H.stat == DEAD || H.internal || H.stats.getPerk(PERK_TOXIC_REVENGER) || (H.species.flags & NO_BREATHE))
				continue
		L.reagents?.add_reagent("toxin", 5)
		L.emote("cough")
		to_chat(L, SPAN_WARNING("[holder] emits a strange smell."))