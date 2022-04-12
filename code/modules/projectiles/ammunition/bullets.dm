//// .22 ////

/obj/item/ammo_casing/clrifle
	desc = "A .22 Long Rifle bullet casing."
	icon_state = "clrifle_c_l"
	spent_icon = "clrifle_c_l-spent"
	caliber = CAL_22
	projectile_type = /obj/item/projectile/bullet/clrifle
	is_caseless = TRUE
	maxamount = 20

	sprite_update_spawn = TRUE
	sprite_max_rotate = 32
	sprite_scale = 0.3

/obj/item/ammo_casing/clrifle/practice
	desc = "A .22 Long Rifle practice bullet casing."
	icon_state = "clrifle_c_p"
	spent_icon = "clrifle_c_p-spent"
	caliber = CAL_22
	projectile_type = /obj/item/projectile/bullet/clrifle/practice
	is_caseless = TRUE

/obj/item/ammo_casing/clrifle/hv
	desc = "A .22 Long Rifle high-velocity bullet casing."
	icon_state = "clrifle_c_hv"
	spent_icon = "clrifle_c_hv-spent"
	caliber = CAL_22
	projectile_type = /obj/item/projectile/bullet/clrifle/hv
	is_caseless = TRUE

/obj/item/ammo_casing/clrifle/rubber
	desc = "A .22 Long Rifle rubber bullet casing."
	icon_state = "clrifle_c_r"
	spent_icon = "clrifle_c_r-spent"
	caliber = CAL_22
	projectile_type = /obj/item/projectile/bullet/clrifle/rubber
	is_caseless = TRUE

/obj/item/ammo_casing/clrifle/scrap
	desc = "An old .22 Long Rifle bullet casing."
	icon_state = "clrifle_c_s"
	spent_icon = "clrifle_c_s-spent"
	caliber = CAL_22
	projectile_type = /obj/item/projectile/bullet/clrifle/scrap

/obj/item/ammo_casing/clrifle/scrap/prespawned
	amount = 10


//// 9mm ////

/obj/item/ammo_casing/pistol
	desc = "A 9mm bullet casing."
	icon_state = "pistol_c_l"
	spent_icon = "pistol_c_l-spent"
	caliber = CAL_PISTOL
	projectile_type = /obj/item/projectile/bullet/pistol
	maxamount = 15

	sprite_update_spawn = TRUE
	sprite_max_rotate = 32
	sprite_scale = 0.5

/obj/item/ammo_casing/pistol/hv
	desc = "A 9mm high-velocity bullet casing."
	icon_state = "pistol_c_hv"
	spent_icon = "pistol_c_hv-spent"
	caliber = CAL_PISTOL
	projectile_type = /obj/item/projectile/bullet/pistol/hv

/obj/item/ammo_casing/pistol/practice
	desc = "A 9mm practice bullet casing."
	icon_state = "pistol_c_p"
	spent_icon = "pistol_c_p-spent"
	caliber = CAL_PISTOL
	projectile_type = /obj/item/projectile/bullet/pistol/practice

/obj/item/ammo_casing/pistol/rubber
	desc = "A 9mm rubber bullet casing."
	icon_state = "pistol_c_r"
	spent_icon = "pistol_c_r-spent"
	caliber = CAL_PISTOL
	projectile_type = /obj/item/projectile/bullet/pistol/rubber

/obj/item/ammo_casing/pistol/scrap
	desc = "An old 9mm bullet casing."
	icon_state = "pistol_c_s"
	spent_icon = "pistol_c_s-spent"
	caliber = CAL_PISTOL
	projectile_type = /obj/item/projectile/bullet/pistol/scrap

/obj/item/ammo_casing/pistol/scrap/prespawned
	amount = 15


//// 10mm ////

/obj/item/ammo_casing/hpistol
	desc = "A 10mm bullet casing."
	icon_state = "pistol_c_l"
	spent_icon = "pistol_c_l-spent"
	caliber = CAL_HPISTOL
	projectile_type = /obj/item/projectile/bullet/hpistol
	maxamount = 12

	sprite_update_spawn = TRUE
	sprite_max_rotate = 32
	sprite_scale = 0.55

/obj/item/ammo_casing/hpistol/hv
	desc = "A 10mm high-velocity bullet casing."
	icon_state = "pistol_c_hv"
	spent_icon = "pistol_c_hv-spent"
	caliber = CAL_HPISTOL
	projectile_type = /obj/item/projectile/bullet/hpistol/hv

/obj/item/ammo_casing/hpistol/practice
	desc = "A 10mm practice bullet casing."
	icon_state = "pistol_c_p"
	spent_icon = "pistol_c_p-spent"
	caliber = CAL_HPISTOL
	projectile_type = /obj/item/projectile/bullet/hpistol/practice

/obj/item/ammo_casing/hpistol/rubber
	desc = "A 10mm rubber bullet casing."
	icon_state = "pistol_c_r"
	spent_icon = "pistol_c_r-spent"
	caliber = CAL_HPISTOL
	projectile_type = /obj/item/projectile/bullet/hpistol/rubber

/obj/item/ammo_casing/hpistol/scrap
	desc = "An old 10mm bullet casing."
	icon_state = "pistol_c_s"
	spent_icon = "pistol_c_s-spent"
	caliber = CAL_HPISTOL
	projectile_type = /obj/item/projectile/bullet/hpistol/scrap

/obj/item/ammo_casing/hpistol/scrap/prespawned
	amount = 12

//// .45 ACP ////

/obj/item/ammo_casing/pistol45
	desc = "A .45 ACP bullet casing."
	icon_state = "pistol_c_l"
	spent_icon = "pistol_c_l-spent"
	caliber = CAL_45ACP
	projectile_type = /obj/item/projectile/bullet/pistol45
	maxamount = 12

	sprite_update_spawn = TRUE
	sprite_max_rotate = 32
	sprite_scale = 0.6

/obj/item/ammo_casing/pistol45/practice
	desc = "A .45 ACP practice bullet casing."
	icon_state = "pistol_c_p"
	spent_icon = "pistol_c_p-spent"
	caliber = CAL_45ACP
	projectile_type = /obj/item/projectile/bullet/pistol45/practice

/obj/item/ammo_casing/pistol45/hv
	desc = "A .45 ACP hollow point casing."
	icon_state = "pistol_c_hv"
	spent_icon = "pistol_c_hv-spent"
	caliber = CAL_45ACP
	projectile_type = /obj/item/projectile/bullet/pistol45/hv

//// .357 ////

/obj/item/ammo_casing/revolver
	desc = "A .357 bullet casing."
	icon_state = "pistol_c_l"
	spent_icon = "pistol_c_l-spent"
	caliber = CAL_357
	projectile_type = /obj/item/projectile/bullet/pistol
	maxamount = 12

	sprite_update_spawn = TRUE
	sprite_max_rotate = 32
	sprite_scale = 0.6

/obj/item/ammo_casing/revolver/practice
	desc = "A .357 practice bullet casing."
	icon_state = "pistol_c_p"
	spent_icon = "pistol_c_p-spent"
	caliber = CAL_357
	projectile_type = /obj/item/projectile/bullet/pistol/practice

/obj/item/ammo_casing/revolver/hv
	desc = "A .44 Magnum high-velocity bullet casing."
	icon_state = "magnum_c_hv"
	spent_icon = "magnum_c_hv-spent"
	caliber = CAL_357
	projectile_type = /obj/item/projectile/bullet/magnum/hv

/obj/item/ammo_casing/revolver/rubber
	desc = "A .357 rubber bullet casing."
	icon_state = "pistol_c_r"
	spent_icon = "pistol_c_r-spent"
	caliber = CAL_357
	projectile_type = /obj/item/projectile/bullet/pistol/rubber

/obj/item/ammo_casing/revolver/scrap
	desc = "An old .357 bullet casing."
	icon_state = "pistol_c_s"
	spent_icon = "pistol_c_s-spent"
	caliber = CAL_357
	projectile_type = /obj/item/projectile/bullet/pistol/scrap

/obj/item/ammo_casing/revolver/scrap/prespawned
	amount = 12

//// .44 ////

/obj/item/ammo_casing/magnum
	desc = "A .44 Magnum hollow point bullet casing."
	caliber = CAL_MAGNUM
	icon_state = "magnum_c_l"
	spent_icon = "magnum_c_l-spent"
	projectile_type = /obj/item/projectile/bullet/magnum
	maxamount = 8

	sprite_update_spawn = TRUE
	sprite_max_rotate = 32
	sprite_scale = 0.6

/obj/item/ammo_casing/magnum/practice
	desc = "A .44 Magnum practice bullet casing."
	icon_state = "magnum_c_p"
	spent_icon = "magnum_c_p-spent"
	caliber = CAL_MAGNUM
	projectile_type = /obj/item/projectile/bullet/magnum/practice

/obj/item/ammo_casing/magnum/hv
	desc = "A .44 Magnum high-velocity bullet casing."
	icon_state = "magnum_c_hv"
	spent_icon = "magnum_c_hv-spent"
	caliber = CAL_MAGNUM
	projectile_type = /obj/item/projectile/bullet/magnum/hv

/obj/item/ammo_casing/magnum/rubber
	desc = "A .44 Magnum rubber bullet casing."
	icon_state = "magnum_c_r"
	spent_icon = "magnum_c_r-spent"
	caliber = CAL_MAGNUM
	projectile_type = /obj/item/projectile/bullet/magnum/rubber

/obj/item/ammo_casing/magnum/scrap/prespawned
	amount = 8

//// .45-70 ////

/obj/item/ammo_casing/govt
	desc = "A .45-70 Government bullet casing."
	icon_state = "magnum_c_l"
	spent_icon = "magnum_c_l-spent"
	caliber = CAL_4570
	projectile_type = /obj/item/projectile/bullet/srifle
	maxamount = 10

	sprite_update_spawn = TRUE
	sprite_max_rotate = 32
	sprite_scale = 0.6

/obj/item/ammo_casing/govt/practice
	desc = "A .45-70 Government practice bullet casing."
	icon_state = "magnum_c_p"
	spent_icon = "magnum_c_p-spent"
	caliber = CAL_4570
	projectile_type = /obj/item/projectile/bullet/srifle/practice

/obj/item/ammo_casing/govt/hv
	desc = "A .45-70 Government high-velocity bullet casing."
	icon_state = "magnum_c_hv"
	spent_icon = "magnum_c_hv-spent"
	caliber = CAL_4570
	projectile_type = /obj/item/projectile/bullet/srifle/hv

/obj/item/ammo_casing/govt/rubber
	desc = "A .45-70 Government rubber bullet casing."
	icon_state = "magnum_c_r"
	spent_icon = "magnum_c_r-spent"
	caliber = CAL_4570
	projectile_type = /obj/item/projectile/bullet/srifle/rubber

/obj/item/ammo_casing/govt/scrap
	desc = "An old .45-70 Government bullet casing."
	icon_state = "magnum_c_s"
	spent_icon = "magnum_c_s-spent"
	caliber = CAL_4570
	projectile_type = /obj/item/projectile/bullet/srifle/scrap

/obj/item/ammo_casing/govt/scrap/prespawned
	amount = 10

//// 12.7mm ////

/obj/item/ammo_casing/bpistol
	desc = "A 12.7mm bullet casing."
	icon_state = "magnum_c_l"
	spent_icon = "magnum_c_l-spent"
	caliber = CAL_127
	projectile_type = /obj/item/projectile/bullet/srifle
	maxamount = 10

	sprite_update_spawn = TRUE
	sprite_max_rotate = 32
	sprite_scale = 0.6

/obj/item/ammo_casing/bpistol/practice
	desc = "A 12.7mm practice bullet casing."
	icon_state = "magnum_c_p"
	spent_icon = "magnum_c_p-spent"
	caliber = CAL_127
	projectile_type = /obj/item/projectile/bullet/srifle/practice

//// 5mm ////

/obj/item/ammo_casing/rifle_5mm
	desc = "A 5mm Rifle bullet casing."
	icon_state = "srifle_c_l"
	spent_icon = "srifle_c_l-spent"
	caliber = CAL_MINI
	projectile_type = /obj/item/projectile/bullet/rifle_5mm
	maxamount = 10

	sprite_update_spawn = TRUE
	sprite_max_rotate = 32
	sprite_scale = 0.45

/obj/item/ammo_casing/rifle_5mm/practice
	desc = "A 5mm Rifle practice bullet casing."
	icon_state = "srifle_c_p"
	spent_icon = "srifle_c_p-spent"
	caliber = CAL_MINI
	projectile_type = /obj/item/projectile/bullet/rifle_5mm/practice

//// 5.56 ////

/obj/item/ammo_casing/srifle
	desc = "A 5.56 Rifle bullet casing."
	icon_state = "srifle_c_l"
	spent_icon = "srifle_c_l-spent"
	caliber = CAL_SRIFLE
	projectile_type = /obj/item/projectile/bullet/srifle
	maxamount = 10

	sprite_update_spawn = TRUE
	sprite_max_rotate = 32
	sprite_scale = 0.5

/obj/item/ammo_casing/srifle/practice
	desc = "A 5.56 Rifle practice bullet casing."
	icon_state = "srifle_c_p"
	spent_icon = "srifle_c_p-spent"
	caliber = CAL_SRIFLE
	projectile_type = /obj/item/projectile/bullet/srifle/practice

/obj/item/ammo_casing/srifle/hv
	desc = "A 5.56 Rifle high-velocity bullet casing."
	icon_state = "srifle_c_hv"
	spent_icon = "srifle_c_hv-spent"
	caliber = CAL_SRIFLE
	projectile_type = /obj/item/projectile/bullet/srifle/hv

/obj/item/ammo_casing/srifle/rubber
	desc = "A 5.56 Rifle rubber bullet casing."
	icon_state = "srifle_c_r"
	spent_icon = "srifle_c_r-spent"
	caliber = CAL_SRIFLE
	projectile_type = /obj/item/projectile/bullet/srifle/rubber

/obj/item/ammo_casing/srifle/scrap
	desc = "An old 5.56 Rifle bullet casing."
	icon_state = "srifle_c_s"
	spent_icon = "srifle_c_s-spent"
	caliber = CAL_SRIFLE
	projectile_type = /obj/item/projectile/bullet/srifle/scrap

/obj/item/ammo_casing/srifle/scrap/prespawned
	amount = 10

//// 7.62 ////

/obj/item/ammo_casing/lrifle
	desc = "A 7.62 rifle bullet casing."
	icon_state = "lrifle_c_l"
	spent_icon = "lrifle_c_l-spent"
	caliber = CAL_LRIFLE
	projectile_type = /obj/item/projectile/bullet/lrifle
	maxamount = 10

	sprite_update_spawn = TRUE
	sprite_max_rotate = 32
	sprite_scale = 0.55

/obj/item/ammo_casing/lrifle/practice
	desc = "A 7.62 rifle practice bullet casing."
	icon_state = "lrifle_c_p"
	spent_icon = "lrifle_c_p-spent"
	caliber = CAL_LRIFLE
	projectile_type = /obj/item/projectile/bullet/lrifle/practice

/obj/item/ammo_casing/lrifle/hv
	desc = "A 7.62 Rifle high-velocity bullet casing."
	icon_state = "lrifle_c_hv"
	spent_icon = "lrifle_c_hv-spent"
	caliber = CAL_LRIFLE
	projectile_type = /obj/item/projectile/bullet/lrifle/hv

/obj/item/ammo_casing/lrifle/scrap
	desc = "An old 7.62 rifle bullet casing."
	icon_state = "lrifle_c_s"
	spent_icon = "lrifle_c_s-spent"
	caliber = CAL_LRIFLE
	projectile_type = /obj/item/projectile/bullet/lrifle/scrap

/obj/item/ammo_casing/lrifle/scrap/prespawned
	amount = 10

//// .50 ////

/obj/item/ammo_casing/antim
	name = "\"Penetrator\" shell casing"
	desc = "A .50 Anti-Material \"Penetrator\" shell."
	icon_state = "atmr"
	spent_icon = "atmr-spent"
	caliber = CAL_ANTIM
	projectile_type = /obj/item/projectile/bullet/antim
	matter = list(MATERIAL_STEEL = 2)
	maxamount = 5

	sprite_update_spawn = TRUE
	sprite_max_rotate = 32
	sprite_scale = 0.6

/obj/item/ammo_casing/antim/prespawned
	amount = 5

/obj/item/ammo_casing/antim/emp
	name = "\"Blackout\" shell casing"
	desc = "A .50 Anti-Material \"Blackout\" shell."
	icon_state = "atmr-emp"
	spent_icon = "atmr-emp-spent"
	projectile_type = /obj/item/projectile/bullet/antim/emp

/obj/item/ammo_casing/antim/emp/prespawned
	amount = 5

/obj/item/ammo_casing/antim/uranium
	name = "\"Meltdown\" shell casing"
	desc = "A .50 Anti-Material \"Meltdown\" shell."
	icon_state = "atmr-DU"
	spent_icon = "atmr-DU-spent"
	projectile_type = /obj/item/projectile/bullet/antim/uranium

/obj/item/ammo_casing/antim/uranium/prespawned
	amount = 5

/obj/item/ammo_casing/antim/breach
	name = "\"Breacher\" shell casing"
	desc = "A .50 Anti-Material \"Breacher\" shell."
	icon_state = "atmr-HE"
	spent_icon = "atmr-HE-spent"
	projectile_type = /obj/item/projectile/bullet/antim/breach

/obj/item/ammo_casing/antim/breach/prespawned
	amount = 5

/obj/item/ammo_casing/antim/scrap
	name = "shell casing"
	desc = "An old .50 Anti-Material shell."
	icon_state = "atmr_s"
	spent_icon = "atmr_s-spent"
	projectile_type = /obj/item/projectile/bullet/antim/scrap
	maxamount = 5

/obj/item/ammo_casing/antim/scrap/prespawned
	amount = 5

//// 2mm Gauss ////

/obj/item/ammo_casing/gauss
	name = "2mm shell casing"
	desc = "A 2mm shell."
	icon_state = "atmr"
	spent_icon = "atmr-spent"
	caliber = CAL_GAUSS
	projectile_type = /obj/item/projectile/bullet/gauss
	matter = list(MATERIAL_STEEL = 2)
	maxamount = 5

	sprite_update_spawn = TRUE
	sprite_max_rotate = 32
	sprite_scale = 0.45

//// Shotgun ////

/obj/item/ammo_casing/shotgun
	name = "shotgun slug"
	desc = "A 12 gauge slug."
	icon_state = "s-shell_hv"
	spent_icon = "s-shell_hv-spent"
	shell_color = "hv"
	caliber = CAL_SHOTGUN
	projectile_type = /obj/item/projectile/bullet/shotgun
	matter = list(MATERIAL_STEEL = 1)
	maxamount = 5

	sprite_update_spawn = TRUE
	sprite_max_rotate = 22
	sprite_scale = 0.75

/obj/item/ammo_casing/shotgun/prespawned
	amount = 5

/obj/item/ammo_casing/shotgun/scrap
	name = "old shotgun slug"
	desc = "An older 12 gauge slug."
	icon_state = "s-shell_s"
	spent_icon = "s-shell_s-spent"
	shell_color = "scrap"
	caliber = CAL_SHOTGUN
	projectile_type = /obj/item/projectile/bullet/shotgun/scrap
	maxamount = 5

/obj/item/ammo_casing/shotgun/scrap/prespawned
	amount = 5

/obj/item/ammo_casing/shotgun/beanbag
	name = "beanbag shell"
	desc = "A 12 gauge beanbag shell."
	icon_state = "s-shell_r"
	spent_icon = "s-shell_r-spent"
	shell_color = "r"
	projectile_type = /obj/item/projectile/bullet/shotgun/beanbag
	matter = list(MATERIAL_STEEL = 1)

/obj/item/ammo_casing/shotgun/beanbag/prespawned
	amount = 5

/obj/item/ammo_casing/shotgun/beanbag/scrap
	name = "Old beanbag shell"
	desc = "An older 12 gauge beanbag shell."
	icon_state = "s-shell_rs"
	spent_icon = "s-shell_rs-spent"
	shell_color = "scrap_r"
	projectile_type = /obj/item/projectile/bullet/shotgun/beanbag/scrap
	matter = list(MATERIAL_STEEL = 1)

/obj/item/ammo_casing/shotgun/beanbag/scrap/prespawned
	amount = 5

/obj/item/ammo_casing/shotgun/pellet
	name = "shotgun shell"
	desc = "A 12 gauge shell."
	icon_state = "s-shell_l"
	spent_icon = "s-shell_l-spent"
	shell_color = "l"
	projectile_type = /obj/item/projectile/bullet/pellet/shotgun
	matter = list(MATERIAL_STEEL = 1)

/obj/item/ammo_casing/shotgun/pellet/prespawned
	amount = 5

/obj/item/ammo_casing/shotgun/pellet/scrap
	name = "old shotgun shell"
	desc = "An older 12 gauge shell."
	icon_state = "s-shell_ss"
	spent_icon = "s-shell_ss-spent"
	shell_color = "scrap_s"
	projectile_type = /obj/item/projectile/bullet/pellet/shotgun/scrap

/obj/item/ammo_casing/shotgun/pellet/scrap/prespawned
	amount = 5

/obj/item/ammo_casing/shotgun/blank
	name = "shotgun shell"
	desc = "A 12 gauge blank shell."
	icon_state = "s-shell_b"
	spent_icon = "s-shell_b-spent"
	shell_color = "b"
	projectile_type = /obj/item/projectile/bullet/blank
	matter = list(MATERIAL_STEEL = 1)

/obj/item/ammo_casing/shotgun/blank/prespawned
	amount = 5

/obj/item/ammo_casing/shotgun/practice
	name = "shotgun shell"
	desc = "A 12 gauge practice shell."
	icon_state = "s-shell_p"
	spent_icon = "s-shell_p-spent"
	shell_color = "p"
	projectile_type = /obj/item/projectile/bullet/shotgun/practice
	matter = list(MATERIAL_STEEL = 1)

/obj/item/ammo_casing/shotgun/practice/prespawned
	amount = 5

//Does not stun, only blinds, but has area of effect.
/obj/item/ammo_casing/shotgun/flash
	name = "flash shell"
	desc = "A 12 gauge chemical shell used to signal distress or provide illumination."
	icon_state = "s-shell_f"
	spent_icon = "s-shell_f-spent"
	shell_color = "f"
	projectile_type = /obj/item/projectile/energy/flash/flare
	matter = list(MATERIAL_STEEL = 1, MATERIAL_SILVER = 0.5)

/obj/item/ammo_casing/shotgun/flash/prespawned
	amount = 5

/obj/item/ammo_casing/shotgun/incendiary
	name = "incendiary shell"
	desc = "A 12 gauge chemical shell with highly flammable load."
	icon_state = "s-shell_i"
	spent_icon = "s-shell_i-spent"
	shell_color = "i"
	projectile_type = /obj/item/projectile/bullet/shotgun/incendiary
	matter = list(MATERIAL_STEEL = 1, MATERIAL_PLASMA = 0.5)

/obj/item/ammo_casing/shotgun/incendiary/prespawned
	amount = 5

//// Grenade Shells ////

/obj/item/ammo_casing/grenade
	name = "baton round"
	desc = "A less-lethal rubber round, designed to be fired from grenade launchers"
	icon_state = "baton-round"
	spent_icon = "grenadeshell"
	projectile_type = /obj/item/projectile/bullet/batonround
	w_class = ITEM_SIZE_SMALL
	caliber = CAL_GRENADE
	maxamount = 1
	spawn_tags = SPAWN_TAG_AMMO
	rarity_value = 10

/obj/item/ammo_casing/grenade/blast
	name = "blast grenade shell"
	desc = "An explosive grenade shell, designed to be fired from grenade launchers"
	icon_state = "blast"
	projectile_type = /obj/item/projectile/bullet/grenade
	rarity_value = 25

/obj/item/ammo_casing/grenade/frag
	name = "frag grenade shell"
	desc = "A frag grenade shell, designed to be fired from grenade launchers"
	icon_state = "frag"
	projectile_type = /obj/item/projectile/bullet/grenade/frag
	rarity_value = 25

/obj/item/ammo_casing/grenade/emp
	name = "emp grenade shell"
	desc = "An EMP grenade shell, designed to be fired from grenade launchers"
	icon_state = "emp"
	projectile_type = /obj/item/projectile/bullet/grenade/emp // gonna keep this from being maint-lootable for now

//// Other ////

/obj/item/ammo_casing/rocket
	name = "PG-7VL grenade"
	desc = "A 1.5 warhead designed for the RPG-7 launcher. Has tubular shape."
	icon_state = "rocketshell"
	projectile_type = /obj/item/projectile/bullet/rocket
	caliber = CAL_ROCKET
	maxamount = 1
	reload_delay = 15
	is_caseless = TRUE
	w_class = ITEM_SIZE_NORMAL

/obj/item/ammo_casing/cap
	name = "cap"
	desc = "A cap for children toys."
	caliber = CAL_CAP
	color = "#FF0000"
	projectile_type = /obj/item/projectile/bullet/cap

/obj/item/ammo_casing/flare
	name = "flare shell"
	desc = "A chemical flare shell designed to produce a distress signal or illuminate an area."
	caliber = CAL_FLARE
	icon_state = "f-shell"
	spent_icon = "f-shell-spent"
	projectile_type = /obj/item/projectile/bullet/flare
	matter = list(MATERIAL_PLASTIC = 1)
	matter_reagents = list("phosphorus" = 3)
	rarity_value = 8

/obj/item/ammo_casing/flare
	amount = 3
