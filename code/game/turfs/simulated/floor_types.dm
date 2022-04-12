//Fallout Certified by Pebbles

// Wasteland desert - Use directions to utilize all the many sand sprites
/turf/simulated/floor/wasteland
	name = "wasteland"
	icon = 'icons/turf/wasteland.dmi'
	icon_state = "desertsmooth"
	initial_flooring = /decl/flooring/wasteland

/turf/simulated/floor/wasteland/coarse
	name = "wasteland"
	icon_state = "desertcoarse"
	initial_flooring = /decl/flooring/wasteland/coarse

/turf/simulated/floor/wasteland/coarse2
	name = "wasteland"
	icon_state = "desertcoarse2"
	initial_flooring = /decl/flooring/wasteland/coarse2

/turf/simulated/floor/wasteland/rough
	name = "wasteland"
	icon_state = "desertrough"
	initial_flooring = /decl/flooring/wasteland/rough

/turf/simulated/floor/wasteland/cracked
	name = "wasteland"
	icon_state = "desertcracked"
	initial_flooring = /decl/flooring/wasteland/cracked

//Gravel
/turf/simulated/floor/gravel
	name = "gravel"
	icon = 'icons/turf/gravel.dmi'
	icon_state = "gravel"
	initial_flooring = /decl/flooring/gravel

/turf/simulated/floor/gravel/alt
	name = "gravel"
	icon_state = "gravel_alt"
	initial_flooring = /decl/flooring/gravel/alt

/turf/simulated/floor/gravel/desertmerge
	name = "gravel"
	icon_state = "desertmerge"
	initial_flooring = /decl/flooring/gravel/desertmerge

/turf/simulated/floor/gravel/dirtmerge
	name = "gravel"
	icon_state = "dirtmerge"
	initial_flooring = /decl/flooring/gravel/dirtmerge

/turf/simulated/floor/gravel/path
	name = "gravel path"
	icon_state = "path_dirt"
	initial_flooring = /decl/flooring/gravel/path

/turf/simulated/floor/gravel/intersection
	name = "gravel path"
	icon_state = "path_dirt_intersection"
	initial_flooring = /decl/flooring/gravel/intersection

/turf/simulated/floor/gravel/end
	name = "gravel path"
	icon_state = "path_dirt_end"
	initial_flooring = /decl/flooring/gravel/end

//Other turfs

/turf/simulated/shuttle
	name = "shuttle"
	icon = 'icons/turf/shuttle.dmi'
	thermal_conductivity = 0.05
	heat_capacity = 0
	layer = 2

/turf/simulated/shuttle/floor
	name = "floor"
	icon_state = "floor"
	plane = FLOOR_PLANE

/turf/simulated/shuttle/floor/mining
	icon_state = "6,19"
	icon = 'icons/turf/shuttlemining.dmi'

/turf/simulated/shuttle/floor/science
	icon_state = "8,15"
	icon = 'icons/turf/shuttlescience.dmi'

/turf/simulated/shuttle/plating
	name = "plating"
	icon = 'icons/turf/floors.dmi'
	icon_state = "plating"
	level = BELOW_PLATING_LEVEL

/turf/simulated/shuttle/plating/is_plating()
	return TRUE


/turf/simulated/floor/plating
	icon = 'icons/turf/flooring/plating.dmi'
	name = "plating"
	icon_state = "plating"
	initial_flooring = /decl/flooring/reinforced/plating

/turf/simulated/floor/plating/airless
	oxygen = 0
	nitrogen = 0

/turf/simulated/floor/plating/under
	name = "underplating"
	icon_state = "under"
	icon = 'icons/turf/flooring/plating.dmi'
	initial_flooring = /decl/flooring/reinforced/plating/under

/turf/simulated/floor/plating/under/airless
	oxygen = 0
	nitrogen = 0

/turf/simulated/floor/grass
	name = "grass patch"
	icon = 'icons/turf/flooring/grass.dmi'
	icon_state = "grass0"
	initial_flooring = /decl/flooring/grass

/turf/simulated/floor/dirt
	name = "dirt"
	icon = 'icons/turf/flooring/dirt.dmi'
	icon_state = "dirt"
	initial_flooring = /decl/flooring/dirt




/turf/simulated/floor/road
	name = "road"
	icon = 'icons/turf/road.dmi'
	icon_state = "outermiddle"
	initial_flooring = /decl/flooring/road

/turf/simulated/floor/dirt/airless
	oxygen = 0
	nitrogen = 0

/turf/simulated/floor/hull
	name = "hull"
	icon = 'icons/turf/flooring/hull.dmi'
	icon_state = "hullcenter0"
	initial_flooring = /decl/flooring/reinforced/plating/hull


/turf/simulated/floor/hull/New()
	if(icon_state != "hullcenter0")
		overrided_icon_state = icon_state
	..()

/turf/simulated/shuttle/plating/vox //Skipjack plating
	oxygen = 0
	nitrogen = MOLES_N2STANDARD + MOLES_O2STANDARD

/turf/simulated/shuttle/floor4 // Added this floor tile so that I have a seperate turf to check in the shuttle -- Polymorph
	name = "Brig floor"        // Also added it into the 2x3 brig area of the shuttle.
	icon_state = "floor4"

/turf/simulated/shuttle/floor4/vox //skipjack floors
	name = "skipjack floor"
	oxygen = 0
	nitrogen = MOLES_N2STANDARD + MOLES_O2STANDARD
