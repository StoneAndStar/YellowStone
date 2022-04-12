/datum/job/elder
	title = "Elder"
	flag = ELDER
	department = DEPARTMENT_BOS
	department_flag = BOS
	selection_color = "#161313"
	head_position = 1
	total_positions = 1
	spawn_positions = 0
	req_admin_notify = 1
	supervisors = "your heart and wisdom"
	wage = WAGE_NONE
	perks = list(/datum/perk/sommelier)
	also_known_languages = list(LANGUAGE_LATIN = 20)
	ideal_character_age = 65

	description = "You are a elder of the Brotherhood of Steel. <br>\
	One of the main leaders of the Brotherhood of Steel's local chapters, and an esteemed member of it at that..<br>\

	You are the ultimate authority within the local chapter of the Brotherhood, your word is viewed as law by many of the subordinates.<br>\
	Cast out from the West or fleeing from the East your chapter is all that is left to this word; for no longer is the Brotherhood unified - you MUST keep your chapter together at nearly any cost.<br>\
	Remember that all your subordinates, all the paladins, knight and scribes under you look up to you. They are your brothers, your little brothers. They are family in all but direct blood. And even then - some are.."

	loyalties = "Your first loyalty is to the Brotherhood, its goals and its Codex. Without these the world is lost to darkness yet again.."

	stat_modifiers = list(
		STAT_ROB = 15,
		STAT_TGH = 15,
		STAT_BIO = 15,
		STAT_MEC = 15,
		STAT_VIG = 25,
		STAT_COG = 15
	)

/obj/landmark/join/start/elder
	name = "Elder"
	icon_state = "player-gold-officer"
	join_tag = /datum/job/elder

/datum/job/headpaladin
	title = "Head Paladin"
	flag = HEADPALADIN
	department = DEPARTMENT_BOS
	department_flag = BOS
	faction = "CEV Eris"
	selection_color = "#161313"	
	head_position = 1
	total_positions = 1
	spawn_positions = 1
	supervisors = "the elder and the codex"
	wage = WAGE_NONE
	ideal_character_age = 35
	stat_modifiers = list(
		STAT_ROB = 40,
		STAT_TGH = 30,
		STAT_VIG = 40,
	)
	description = "You are a Head Paladin of the Brotherhood of Steel, the elite of the elite. <br>\
	You oversee the Paladin and Knight castes. You should deligate power to your Senior Paladin and Knight Captain though, acting as guidence of fill-ins for your subordinates."

	loyalties = "Your first loyalty is to the Brotherhood, its goals and its Codex. Without these the world is lost to darkness yet again.."

/obj/landmark/join/start/headpaladin
	name = "Head Paladin"
	icon_state = "player-gold-officer"
	join_tag = /datum/job/headpaladin

/datum/job/headscribe
	title = "Head Scribe"
	flag = HEADSCRIBE
	department = DEPARTMENT_BOS
	department_flag = BOS
	faction = "CEV Eris"
	selection_color = "#161313"	
	head_position = 1
	total_positions = 1
	spawn_positions = 1
	supervisors = "the elder and the codex"
	wage = WAGE_NONE
	ideal_character_age = 35
	stat_modifiers = list(
		STAT_BIO = 40,
		STAT_MEC = 10,
		STAT_COG = 30
	)
	description = "You are a Head Scribe of the Brotherhood of Steel, one of the brightest minds of the chapter. <br>\
	You oversee the Scribe caste. You should deligate power to your Senior Scribes and ensure the morals of the Codex are being followed by not only them but the whole chapter."

	loyalties = "Your first loyalty is to the Brotherhood, its goals and its Codex. Without these the world is lost to darkness yet again.."

/obj/landmark/join/start/headscribe
	name = "Head Scribe"
	icon_state = "player-gold-officer"
	join_tag = /datum/job/headscribe

/datum/job/knightcaptain
	title = "Knight Captain"
	flag = KNIGHTCAPTAIN
	department = DEPARTMENT_BOS
	department_flag = BOS
	faction = "CEV Eris"
	selection_color = "#161313"	
	head_position = 1
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head paladin and the codex"
	wage = WAGE_NONE
	ideal_character_age = 30
	stat_modifiers = list(
		STAT_ROB = 25,
		STAT_TGH = 25,
		STAT_VIG = 25,
	)
	description = "You are a Knight Captain of the Brotherhood of Steel, the head of bunker security. <br>\
	You oversee the Knight castes. You should manage your subordinates in-line with the Codex and work alongside the Paladin caste.<br>\
	At times you may be asked by the Head Paladin, your superior, to aid in Paladin activites. You should balance knight priorities with aiding the Paladin caste with a supply of Knights ready to aid in fighting."

	loyalties = "Your first loyalty is to the Brotherhood, its goals and its Codex. Without these the world is lost to darkness yet again.."

/obj/landmark/join/start/knightcaptain
	name = "Knight Captain"
	icon_state = "player-gold-officer"
	join_tag = /datum/job/knightcaptain

/datum/job/seniorpaladin
	title = "Senior Paladin"
	flag = SENIORPALADIN
	department = DEPARTMENT_BOS
	department_flag = BOS
	faction = "CEV Eris"
	selection_color = "#161313"	
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head paladin"
	wage = WAGE_NONE
	ideal_character_age = 30
	stat_modifiers = list(
		STAT_ROB = 25,
		STAT_TGH = 25,
		STAT_VIG = 25,
	)
	description = "You are a Senior Paladin of the Brotherhood of Steel, an elite squad leader. <br>\
	You oversee the Paladins of the chapter. You should deligate power when able and seek extra manpower from the Knight caste if required."

	loyalties = "Your first loyalty is to the Brotherhood, its goals and its coedex. Without these the world is lost to darkness yet again.."

/obj/landmark/join/start/seniorpaladin
	name = "Senior Paladin"
	icon_state = "player-gold"
	join_tag = /datum/job/seniorpaladin

/datum/job/seniorscribe
	title = "Senior Scribe"
	flag = SENIORSCRIBE
	department = DEPARTMENT_BOS
	department_flag = BOS
	faction = "CEV Eris"
	selection_color = "#161313"	
	total_positions = 2
	spawn_positions = 2
	supervisors = "the head scribe"
	wage = WAGE_NONE
	ideal_character_age = 25
	stat_modifiers = list(
		STAT_COG = 10,
		STAT_MEC = 10,
		STAT_BIO = 30
	)
	description = "You are a Senior Scribe of the Brotherhood of Steel, a bright mind with an eye for leadership. <br>\
	You oversee the Scribes of the chapter. You should deligate power when able and seek to maintain and uphold the codex."

	loyalties = "Your first loyalty is to the Brotherhood, its goals and its Codex. Without these the world is lost to darkness yet again.."

/obj/landmark/join/start/seniorscribe
	name = "Senior Scribe"
	icon_state = "player-gold"
	join_tag = /datum/job/seniorscribe

/datum/job/seniorknight
	title = "Senior Knight"
	flag = SENIORKNIGHT
	department = DEPARTMENT_BOS
	department_flag = BOS
	faction = "CEV Eris"
	selection_color = "#161313"	
	total_positions = 2
	spawn_positions = 2
	supervisors = "the head knight and, depending on the situation, the paladin caste"
	wage = WAGE_NONE
	ideal_character_age = 25
	stat_modifiers = list(
		STAT_ROB = 25,
		STAT_TGH = 20,
		STAT_VIG = 25,
	)
	description = "You are a Senior Knight of the Brotherhood of Steel, one of the most trusted bunker members in terms of internal security. <br>\
	You oversee the Knights of the chapter. You should deligate power when able and work with the Paladins when needed. Bunker security is your most important priority."

	loyalties = "Your first loyalty is to the Brotherhood, its goals and its Codex. Without these the world is lost to darkness yet again.."

/obj/landmark/join/start/seniorknight
	name = "Senior Knight"
	icon_state = "player-gold"
	join_tag = /datum/job/seniorknight

/datum/job/paladin
	title = "Paladin"
	flag = PALADIN
	department = DEPARTMENT_BOS
	department_flag = BOS
	faction = "CEV Eris"
	selection_color = "#161313"	
	total_positions = 2
	spawn_positions = 2
	supervisors = "the senior paladin and head paladin"
	wage = WAGE_NONE
	ideal_character_age = 25
	stat_modifiers = list(
		STAT_ROB = 25,
		STAT_TGH = 20,
		STAT_VIG = 25,
	)
	description = "You are a Paladin of the Brotherhood of Steel, an elite and a starting squad leader. <br>\
	You oversee external operations of the chapter under the supervision of the seniors of the Paladin caste. You are the main face of the chapter in terms of diplomacy and combat."

	loyalties = "Your first loyalty is to the Brotherhood, its goals and its Codex. Without these the world is lost to darkness yet again.."

/obj/landmark/join/start/paladin
	name = "Paladin"
	icon_state = "player-grey"
	join_tag = /datum/job/paladin

/datum/job/scribe
	title = "Scribe"
	flag = SCRIBE
	department = DEPARTMENT_BOS
	department_flag = BOS
	faction = "CEV Eris"
	selection_color = "#161313"	
	total_positions = 4
	spawn_positions = 4
	supervisors = "senior scribes and head scribes"
	wage = WAGE_NONE
	stat_modifiers = list(
		STAT_COG = 5,
		STAT_MEC = 5,
		STAT_BIO = 20
	)
	description = "You are a Scribe of the Brotherhood of Steel, a dork to most but a valubale asset to the chapter. <br>\
	You oversee research, development and medical work within the bunker - depending on your order. You should see to these responsibilities under the guise of your seniors."

	loyalties = "Your first loyalty is to the Brotherhood, its goals and its Codex. Without these the world is lost to darkness yet again.."

/obj/landmark/join/start/scribe
	name = "Paladin"
	icon_state = "player-grey"
	join_tag = /datum/job/scribe

/datum/job/knight
	title = "Knight"
	flag = KNIGHT
	department = DEPARTMENT_BOS
	department_flag = BOS
	faction = "CEV Eris"
	selection_color = "#161313"	
	total_positions = 4
	spawn_positions = 4
	supervisors = "senior knights, head knights and, depending on the situation, the paladin caste"
	wage = WAGE_NONE
	stat_modifiers = list(
		STAT_ROB = 20,
		STAT_TGH = 15,
		STAT_VIG = 20,
	)
	description = "You are a Knight of the Brotherhood of Steel, a grunt in all but name. <br>\
	You oversee the internal security of the bunker and the readiness of the chapter's armory. You should see to these responsibilities under the guise of your seniors and aid the Paladin caste when able."

	loyalties = "Your first loyalty is to the Brotherhood, its goals and its Codex. Without these the world is lost to darkness yet again.."

/obj/landmark/join/start/knight
	name = "Knight"
	icon_state = "player-grey"
	join_tag = /datum/job/knight

/datum/job/initiate
	title = "Initiate"
	flag = INITIATE
	department = DEPARTMENT_BOS
	department_flag = BOS
	faction = "CEV Eris"
	selection_color = "#161313"	
	total_positions = 4
	spawn_positions = 4
	supervisors = "anyone within your aspiring caste"
	wage = WAGE_NONE
	stat_modifiers = list(
		STAT_VIG = 5,
		STAT_ROB = 5,
		STAT_COG = 5,
		STAT_BIO = 10
	)
	description = "You are an initiate of the Brotherhood of Steel, meerly begining your journey up the chain. <br>\
	You are looking for your place in the chapter; be it as a Knight or a Scribe. Your goals are to learn and prove yourself to be worthy of the caste you decide to deciate yourself to."

	loyalties = "Your first loyalty is to the Brotherhood, its goals and its coedex. Without these the world is lost to darkness yet again.."

/obj/landmark/join/start/initiate
	name = "Initiate"
	icon_state = "player-grey"
	join_tag = /datum/job/initiate