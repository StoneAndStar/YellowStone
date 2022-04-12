
///////////
//FALLOUT//
///////////

/area/f13/pahrump
	ship_area = FALSE
	icon_state = "erisyellow"

//Underground

/area/f13/underground
	name = "Underground"
	icon_state = "caves"
	forced_ambience = list('sound/ambience/ambisin1.ogg', 'sound/ambience/ambisin2.ogg', 'sound/ambience/ambisin3.ogg', 'sound/ambience/ambisin4.ogg')
	dynamic_lighting = TRUE

/area/f13/underground/cave
	name = "Cave"
	icon_state = "caves"

/area/f13/tunnel
	name = "Tunnel"
	icon_state = "tunnel"

/area/f13/sewer
	name = "Sewer"
	icon_state = "sewer"

/area/f13/subway
	name = "Subway"
	icon_state = "subway"

/area/f13/tcoms
	name = "Telecoms"
	icon_state = "tcomsatcham"
	flags = AREA_FLAG_CRITICAL

//Surface

/area/f13/wasteland
	name = "Outside"
	ship_area = TRUE
	icon_state = "wasteland"
	area_light_color = COLOR_LIGHTING_DEFAULT_BRIGHT
	dynamic_lighting = FALSE

/area/f13/wasteland/forest
	name = "Forest"
	icon_state = "forest"

/area/f13/wasteland/ruins
	name = "Ruins"
	icon_state = "ruins"

/area/f13/wasteland/radiation
	name = "Radiation"
	icon_state = "radiation"

//Buildings

/area/f13/building
	name = "Building"
	icon_state = "building"

/area/f13/building/bar
	name = "Bar"
	icon_state = "bar"

/area/f13/building/clinic
	name = "Clinic"
	icon_state = "medbay"

/area/f13/building/village
	name = "Village"
	icon_state = "village"

/area/f13/builidng/city
	name = "City"
	icon_state = "city"

/area/f13/building/chapel
	name = "Chapel"
	icon_state = "chapel"

/area/f13/building/store
	name = "Store"
	icon_state = "store"

//Bunkers

/area/f13/bunker

//Factions

/area/f13/ncr
	name = "New California Republic"
	icon_state = "ncr"
	requires_power = 0

/area/f13/legion
	name = "Little Ceasars"
	icon_state ="legion"

/area/f13/khans
	name = "Great Khans"
	icon_state = "error"

/area/f13/underground/bos
	name = "Brotherhood of Steel"
	icon_state = "brotherhood"
	sound_env = SMALL_SOFTFLOOR
	area_light_color = COLOR_LIGHTING_CREW_SOFT