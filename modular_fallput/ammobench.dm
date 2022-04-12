/obj/machinery/autolathe/ammo
	name = "reloading bench"
	icon = 'icons/fallput/obj/benches.dmi'
	desc = "An ammo bench that utilizes metal and other materials to make ammo and magazines."
	circuit = /obj/item/electronics/circuitboard/ammolathe

	suitable_materials = list(MATERIAL_STEEL, MATERIAL_TITANIUM, MATERIAL_GUNPOWDER)

	default_disk = /obj/item/computer_hardware/hard_drive/portable/design/excelsior/weapons

/obj/machinery/autolathe/ammo/ui_data()
	var/list/data = list()

	data["have_disk"] = have_disk
	data["have_reagents"] = have_reagents
	data["have_materials"] = have_materials
	data["have_design_selector"] = have_design_selector

	data["error"] = error
	data["paused"] = paused

	data["unfolded"] = unfolded

	data["speed"] = speed

	if(disk)
		data["disk"] = list(
			"name" = disk.get_disk_name(),
			"license" = disk.license,
			"read_only" = disk.read_only
		)

	if(categories)
		data["categories"] = categories
		data["show_category"] = show_category

	data["special_actions"] = special_actions

	data |= materials_data()

	var/list/L = list()
	for(var/d in design_list())
		var/datum/computer_file/binary/design/design_file = d
		if(!show_category || design_file.design.category == show_category)
			L.Add(list(design_file.ui_data()))
	data["designs"] = L


	if(current_file)
		data["current"] = current_file.ui_data()
		data["progress"] = progress

	var/list/Q = list()
	var/licenses_used = 0
	var/list/qmats = stored_material.Copy()

	for(var/i = 1; i <= queue.len; i++)
		var/datum/computer_file/binary/design/design_file = queue[i]
		var/list/QR = design_file.ui_data()

		QR["ind"] = i

		QR["error"] = 0

		if(design_file.copy_protected)
			licenses_used++

			if(!disk || licenses_used > disk.license)
				QR["error"] = 1

		for(var/rmat in design_file.design.materials)
			if(!(rmat in qmats))
				qmats[rmat] = 0

			qmats[rmat] -= design_file.design.materials[rmat]
			if(qmats[rmat] < 0)
				QR["error"] = 1

		if(can_print(design_file) != ERR_OK)
			QR["error"] = 2

		Q.Add(list(QR))

	data["queue"] = Q
	data["queue_max"] = queue_max

	data["use_oddities"] = use_oddities

	if(inspiration)
		var/list/stats = list()
		var/list/LE = inspiration.calculate_statistics()
		for(var/stat in LE)
			var/list/LF = list("name" = stat, "level" = LE[stat])
			stats.Add(list(LF))

		data["oddity_name"] = oddity.name
		data["oddity_stats"] = stats

	data["use_license"] = !!disk
	data["is_nanoforge"] = is_nanoforge
	return data

/obj/machinery/autolathe/ammo/ui_interact(mob/user, ui_key = "main", var/datum/nanoui/ui = null, var/force_open = NANOUI_FOCUS)
	var/list/data = ui_data(user, ui_key)

	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)
	if(!ui)
		// the ui does not exist, so we'll create a new() one
		// for a list of parameters and their descriptions see the code docs in \code\modules\nano\nanoui.dm
		ui = new(user, src, ui_key, "autolathe.tmpl", capitalize(name), 600, 700)

		// template keys starting with _ are not appended to the UI automatically and have to be called manually
		ui.add_template("_materials", "autolathe_materials.tmpl")
		ui.add_template("_reagents", "autolathe_reagents.tmpl")
		ui.add_template("_designs", "autolathe_designs.tmpl")
		ui.add_template("_queue", "autolathe_queue.tmpl")
		ui.add_template("_oddity", "autolathe_oddity.tmpl")
		ui.add_template("_nanoforge", "nanoforge_actions.tmpl")

		// when the ui is first opened this is the data it will use
		ui.set_initial_data(data)
		// open the new ui window
		ui.open()
