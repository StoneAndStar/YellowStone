/*
Legate
*/
/datum/job/legate
	title = "Legate"
	flag = LEGATE
	department = DEPARTMENT_LEGION
	department_flag = LEGION	
	head_position = 1
	total_positions = 0
	spawn_positions = 0
	req_admin_notify = 1
	supervisors = "your heart and wisdom"
	perks = list(/datum/perk/sommelier)
	also_known_languages = list(LANGUAGE_LATIN = 20)
	ideal_character_age = 65

	description = "Why the fuck are you reading this ?"
	loyalties = "Caesar, who else"

	stat_modifiers = list(
		STAT_ROB = 15,
		STAT_TGH = 15,
		STAT_BIO = 15,
		STAT_MEC = 15,
		STAT_VIG = 25,
		STAT_COG = 15
	)

/obj/landmark/join/start/legate
	name = "Legate"
	icon_state = "player-gold-officer"
	join_tag = /datum/job/legate

/*
Orator
*/

/datum/job/orator
	title = "Orator"
	flag = ORATOR
	department = DEPARTMENT_LEGION
	department_flag = LEGION	
	head_position = 1
	total_positions = 0
	spawn_positions = 0
	req_admin_notify = 1
	wage = WAGE_NONE

	description = "You are the the resonator of Caesar's better wills; a Legionnaire who has, perhaps through injury or advanced age, proven himself unable to fight effectively any longer. Instead of facing \"retirement\" in the Legion, one of your superiors took note of your studies and way with words, and you have been made the face and voice of the Conturbernae."
	loyalties = "Caesar, who else"

	stat_modifiers = list(
		STAT_ROB = 15,
		STAT_TGH = 15,
		STAT_BIO = 15,
		STAT_MEC = 15,
		STAT_VIG = 25,
		STAT_COG = 15
	)

/obj/landmark/join/start/orator
	name = "Orator"
	icon_state = "player-gold-officer"
	join_tag = /datum/job/orator

/*
Centurion
*/
/datum/job/centurion
	title = "Centurion"
	flag = CENTURION
	department = DEPARTMENT_LEGION
	department_flag = LEGION
	faction = "CEV Eris"
	outfit_type = /decl/hierarchy/outfit/job/assistant
	selection_color = "#ff0101"
	total_positions = 1
	spawn_positions = 1

	description = "You are the commander of the Centuria and the direct superior to the Decanii, working with them and your soldiers to establish a strong foothold within the region for Caesar's glory. You oversee all Legion operations in the area, and lead the charge against Caesar's foes."
	supervisors = "the Legate"

	stat_modifiers = list(
		STAT_ROB = 15,
		STAT_TGH = 15,
		STAT_BIO = 15,
		STAT_MEC = 15,
		STAT_VIG = 25,
		STAT_COG = 15
	)

/obj/landmark/join/start/centurion
	name = "Centurion"
	icon_state = "player-gold-officer"
	join_tag = /datum/job/centurion

/datum/job/vetleg
	title = "Veteran Legionary"
	flag = VETERANLEGION
	department = DEPARTMENT_LEGION
	department_flag = LEGION
	faction = "CEV Eris"
	selection_color = "#700000"	
	total_positions = 3
	spawn_positions = 3
	description = "You answer to the Decani and the Centurion. Acting as a loyal soldier of the Centuria, you have the great honour of serving under Caesar in his quest to unite the scattered tribes of The Sonora. You are a hardened warrior, and have been waging war with the Legion for many years."
	supervisors = "the Decani and Centurion"
	outfit_type = /decl/hierarchy/outfit/job/assistant

/obj/landmark/join/start/vetleg
	name = "Veteran Legionary"
	icon_state = "player-gold-officer"
	join_tag = /datum/job/vetleg