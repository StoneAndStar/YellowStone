/*
Trooper - PFC
*/
/datum/job/trooper
	title = "Trooper" 
	flag = TROOPER
	department = DEPARTMENT_NCR
	department_flag = NCR
	selection_color = "#d1a806"
	faction = "CEV Eris"
	total_positions = 4
	spawn_positions = 4
	description = "You are considered the backbone and workforce strength of the NCR Army. You answer to everyone above you in the chain of command, taking orders from your Sergeant directly and obeying all commands given by the Lieutenant."
	supervisors = "Corporals and above"
	loyalties = "Med-x, warcrimes, drugs, crimes and democracy in that order."

/obj/landmark/join/start/trooper
	name = "Trooper"
	icon_state = "player-grey"
	join_tag = /datum/job/trooper

/*
Recruit - Renamed to private because by god why do we have 2 recruit roles for opposite factions
*/
/datum/job/private
	title = "Private"
	flag = PRIVATE
	department = DEPARTMENT_NCR
	department_flag = NCR
	selection_color = "#d1a806"
	faction = "CEV Eris"
	total_positions = 4
	spawn_positions = 4
	description = "You are a detachment of partially trained troops sent to bolster the Yuma Garrison. You have the same duties as a Trooper but act as a reserve force. Follow are legal and valid orders from everyone that outranks you."
	supervisors = "Troopers and above"
	loyalties = "Med-x, warcrimes, drugs, crimes and democracy in that order."

/obj/landmark/join/start/trooper
	name = "Private"
	icon_state = "player-grey"
	join_tag = /datum/job/private