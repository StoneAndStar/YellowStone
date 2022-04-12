/area/fallout/outdoors
	name = "Wasteland"
	ship_area = TRUE
	icon = 'maps/Sonora/areas.dmi'
	icon_state = "wasteland"
	sound_env = PLAIN

/area/fallout/indoors
	name = "Wasteland"
	ship_area = TRUE
	icon = 'maps/Sonora/areas.dmi'
	icon_state = "building"
	sound_env = STANDARD_STATION
	flags = AREA_FLAG_RAD_SHIELDED

/area/fallout/indoors/tribals
	name = "Tribals"
	icon_state = "tribals"
	sound_env = FOREST

/area/fallout/indoors/raiders
	name = "Raiders"
	icon_state = "raiders_indoors"
	sound_env = LARGE_ENCLOSED

/area/fallout/indoors/town
	name = "Town"
	icon_state = "town"
	sound_env = MEDIUM_SOFTFLOOR

/area/fallout/indoors/legion
	name = "Legion"
	icon_state = "legion"
	sound_env = STANDARD_STATION

/* Eris stuff not sorted yet
//Maintenance
	is_maintenance = TRUE
	sound_env = TUNNEL_ENCLOSED
	turf_initializer = new /datum/turf_initializer/maintenance()
	forced_ambience = list('sound/ambience/maintambience1.ogg','sound/ambience/maintambience2.ogg','sound/ambience/maintambience3.ogg','sound/ambience/maintambience4.ogg','sound/ambience/maintambience5.ogg','sound/ambience/maintambience6.ogg')
	area_light_color = COLOR_LIGHTING_MAINT_DARK

	ambience = list()
	forced_ambience = list('sound/ambience/maintambience.ogg')

	holomap_color = HOLOMAP_AREACOLOR_ENGINEERING
	holomap_color = HOLOMAP_AREACOLOR_HALLWAYS
	holomap_color = HOLOMAP_AREACOLOR_ESCAPE
	holomap_color = HOLOMAP_AREACOLOR_COMMAND
	holomap_color = HOLOMAP_AREACOLOR_MEDICAL
	holomap_color = HOLOMAP_AREACOLOR_SECURITY
	holomap_color = HOLOMAP_AREACOLOR_SCIENCE
	holomap_color = HOLOMAP_AREACOLOR_DORMS

	sound_env = LARGE_ENCLOSED
	sound_env = SMALL_ENCLOSED
	sound_env = LARGE_SOFTFLOOR
	sound_env = MEDIUM_SOFTFLOOR
	sound_env = SMALL_SOFTFLOOR
	sound_env = STANDARD_STATION

	area_light_color = COLOR_LIGHTING_SCI_BRIGHT
	area_light_color = COLOR_LIGHTING_CREW_SOFT

	flags = AREA_FLAG_CRITICAL
	flags = AREA_FLAG_CRITICAL | AREA_FLAG_RAD_SHIELDED

	ambience = list('sound/ambience/ambisin2.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/ambigen10.ogg')
	ambience = list('sound/ambience/ambicha1.ogg','sound/ambience/ambicha2.ogg','sound/ambience/ambicha3.ogg','sound/ambience/ambicha4.ogg')


/area/eris/neotheology/chapel
	name = "\improper Chapel"
	icon_state = "chapel"

//Engineering
/area/eris/engineering
	ambience = list('sound/ambience/technoambient1.ogg','sound/ambience/technoambient2.ogg','sound/ambience/technoambient3.ogg','sound/ambience/technoambient4.ogg','sound/ambience/technoambient5.ogg','sound/ambience/technoambient6.ogg')
	ambience = list('sound/ambience/technoengineambient.ogg')

/area/eris/engineering/storage
	name = "\improper Engineering Storage"
	icon_state = "engineering_storage"
	area_light_color = COLOR_LIGHTING_SCI_DARK

	ambience = list('sound/ambience/signal.ogg')

//Medbay is a large area, these additional areas help level out APC load.
/area/eris/medical/psych
	name = "\improper Psych Room"
	icon_state = "medbay3"
	ambience = list('sound/ambience/signal.ogg')
	area_light_color = COLOR_LIGHTING_CREW_SOFT


/area/eris/security/brig/prison_break()
	for(var/obj/structure/closet/secure_closet/brig/temp_closet in src)
		temp_closet.set_locked(FALSE)
	for(var/obj/machinery/door_timer/temp_timer in src)
		temp_timer.releasetime = 1
	..()

/area/eris/security/prison
	name = "\improper Security - Prison Wing"
	icon_state = "sec_prison"

/area/eris/security/prison/prison_break()
	for(var/obj/structure/closet/secure_closet/brig/temp_closet in src)
		temp_closet.set_locked(FALSE)
	for(var/obj/machinery/door_timer/temp_timer in src)
		temp_timer.releasetime = 1
	..()


	is_maintenance = TRUE

/area/eris/security/evidencestorage
	name = "Evidence Storage"
	icon_state = "hammerred"
	area_light_color = COLOR_LIGHTING_SCI_DARK

/area/eris/security/maintpost
	name = "Maintenance Post"

	icon_state = "hammerred"
	is_maintenance = TRUE

	holomap_color = HOLOMAP_AREACOLOR_CARGO
//Research and Development
/area/eris/rnd
	area_light_color = COLOR_LIGHTING_SCI_BRIGHT
	holomap_color = HOLOMAP_AREACOLOR_SCIENCE
	ambience = list('sound/ambience/researchambient1.ogg','sound/ambience/researchambient2.ogg','sound/ambience/researchambient3.ogg','sound/ambience/researchambient4.ogg','sound/ambience/researchambient5.ogg','sound/ambience/researchambient6.ogg','sound/ambience/researchambient7.ogg','sound/ambience/researchambient8.ogg','sound/ambience/researchambient9.ogg')
*/
