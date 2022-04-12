/////////////Standard/////////////

//These are the master pistol files. Keep these no matter what; they've been repurposed into 9mm from .35 auto.
/obj/item/ammo_magazine/pistol
	name = "9mm magazine"
	icon_state = "pistol_l"
	ammo_color = "-l"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	matter = list(MATERIAL_STEEL = 3)
	caliber = CAL_PISTOL
	ammo_type = /obj/item/ammo_casing/pistol
	max_ammo = 15
	multiple_sprites = 1

/obj/item/ammo_magazine/pistol/empty
	icon_state = "pistol"
	ammo_color = ""
	initial_ammo = 0

/obj/item/ammo_magazine/pistol/practice
	name = "9mm magazine (practice)"
	icon_state = "pistol_p"
	ammo_color = "-p"
	ammo_type = /obj/item/ammo_casing/pistol/practice
	rarity_value = 5

/obj/item/ammo_magazine/pistol/highvelocity
	name = "9mm magazine (high-velocity)"
	icon_state = "pistol_hv"
	ammo_color = "-hv"
	ammo_type = /obj/item/ammo_casing/pistol/hv
	rarity_value = 80

/obj/item/ammo_magazine/pistol/rubber
	name = "9mm magazine (rubber)"
	icon_state = "pistol_r"
	ammo_color = "-r"
	ammo_type = /obj/item/ammo_casing/pistol/rubber

/obj/item/ammo_magazine/pistol/scrap
	name = "9mm magazine (old)"
	icon_state = "pistol_s"
	ammo_color = ""
	ammo_type = /obj/item/ammo_casing/pistol/scrap
	spawn_tags = SPAWN_AMMO_COMMON

////////// .22 PISTOL //////////

/obj/item/ammo_magazine/cspistol
	name = ".22 LR pistol magazine"
	icon_state = "cspistol_l"
	ammo_color = "-l"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	ammo_type = /obj/item/ammo_casing/clrifle
	matter = list(MATERIAL_STEEL = 4)
	caliber = CAL_22
	max_ammo = 16
	multiple_sprites = 1

/obj/item/ammo_magazine/cspistol/empty
	icon_state = "cspistol"
	ammo_color = ""
	initial_ammo = 0

/obj/item/ammo_magazine/cspistol/practice
	name = "pistol magazine (.22 Long Rifle practice)"
	icon_state = "cspistol_p"
	ammo_color = "-p"
	ammo_type = /obj/item/ammo_casing/clrifle/practice

/obj/item/ammo_magazine/cspistol/hv
	name = "pistol magazine (.22 Long Rifle high-velocity)"
	icon_state = "cspistol_hv"
	ammo_color = "-hv"
	ammo_type = /obj/item/ammo_casing/clrifle/hv

/obj/item/ammo_magazine/cspistol/rubber
	name = "pistol magazine (.22 Long Rifle rubber)"
	icon_state = "cspistol_r"
	ammo_color = "-r"
	ammo_type = /obj/item/ammo_casing/clrifle/rubber


/////////////10mm/////////////

/obj/item/ammo_magazine/pistol_10mm
	name = "10mm magazine"
	icon_state = "pistol_l"
	ammo_color = "-l"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	matter = list(MATERIAL_STEEL = 3)
	caliber = CAL_HPISTOL
	ammo_type = /obj/item/ammo_casing/hpistol
	max_ammo = 12
	multiple_sprites = 1

/obj/item/ammo_magazine/pistol_10mm/empty
	icon_state = "pistol"
	ammo_color = ""
	initial_ammo = 0

/obj/item/ammo_magazine/pistol_10mm/practice
	name = "10mm magazine (practice)"
	icon_state = "pistol_p"
	ammo_color = "-p"
	ammo_type = /obj/item/ammo_casing/pistol/practice

/obj/item/ammo_magazine/pistol_10mm/highvelocity
	name = "10mm magazine (high-velocity)"
	icon_state = "pistol_hv"
	ammo_color = "-hv"
	ammo_type = /obj/item/ammo_casing/pistol/hv


/////////////45 ACP/////////////

/obj/item/ammo_magazine/pistol_45
	name = "45 ACP magazine"
	icon_state = "pistol_l"
	ammo_color = "-l"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	matter = list(MATERIAL_STEEL = 3)
	caliber = CAL_45ACP
	ammo_type = /obj/item/ammo_casing/pistol
	max_ammo = 12
	multiple_sprites = 1

/obj/item/ammo_magazine/pistol_45/empty
	icon_state = "pistol"
	ammo_color = ""
	initial_ammo = 0

/obj/item/ammo_magazine/pistol_45/practice
	name = "45 ACP magazine (practice)"
	icon_state = "pistol_p"
	ammo_color = "-p"
	ammo_type = /obj/item/ammo_casing/pistol/practice

/obj/item/ammo_magazine/pistol_45/hv
	name = "45 ACP magazine (high-velocity)"
	icon_state = "pistol_hv"
	ammo_type = /obj/item/ammo_casing/pistol/hv

/////////////.44 Magnum/////////////

/obj/item/ammo_magazine/magnum
	name = "magnum pistol magazine"
	desc = "A 8 round magazine marked for .44 Magnum."
	icon_state = "magnum"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	ammo_type = /obj/item/ammo_casing/magnum
	matter = list(MATERIAL_STEEL = 4)
	caliber = CAL_MAGNUM
	max_ammo = 10
	multiple_sprites = 1

/obj/item/ammo_magazine/magnum/empty
	icon_state = "magnum"
	initial_ammo = 0

/obj/item/ammo_magazine/magnum/practice
	name = ".44 magazine (Magnum practice)"
	icon_state = "magnum_p"
	ammo_type = /obj/item/ammo_casing/magnum/practice

/obj/item/ammo_magazine/magnum/hv
	name = ".44 magazine (Magnum high-velocity)"
	icon_state = "magnum_hv"
	ammo_type = /obj/item/ammo_casing/magnum/hv

/obj/item/ammo_magazine/magnum/rubber
	name = ".44 magazine (Magnum rubber)"
	icon_state = "magnum_r"
	ammo_type = /obj/item/ammo_casing/magnum/rubber

/obj/item/ammo_magazine/magnum/lethal
	name = ".44 magazine (Magnum hollow-point)"
	icon_state = "magnum_l"
	ammo_type = /obj/item/ammo_casing/magnum/hv

/obj/item/ammo_magazine/magnum/scrap
	name = ".44 magazine (old)"
	icon_state = "pistol_s"
	ammo_color = ""
	ammo_type = /obj/item/ammo_casing/magnum/scrap


/////////////12.7mm/////////////

/obj/item/ammo_magazine/pistol_127
	name = "12.7mm magazine"
	icon_state = "pistol_l"
	ammo_color = "-l"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	matter = list(MATERIAL_STEEL = 3)
	caliber = CAL_127
	ammo_type = /obj/item/ammo_casing/pistol
	max_ammo = 12
	multiple_sprites = 1

/obj/item/ammo_magazine/pistol_127/empty
	icon_state = "pistol"
	ammo_color = ""
	initial_ammo = 0

/obj/item/ammo_magazine/pistol_127/practice
	name = "12.7mm magazine (practice)"
	icon_state = "pistol_p"
	ammo_color = "-p"
	ammo_type = /obj/item/ammo_casing/pistol/practice

/obj/item/ammo_magazine/pistol_127/hv
	name = "12.7mm magazine (hollow-point)"
	icon_state = "pistol_hv"
	ammo_type = /obj/item/ammo_casing/pistol/hv


/////////////HighCap Mags/////////////

/////////////9mm HC/////////////
/obj/item/ammo_magazine/hpistol
	name = "9mm highcap magazine"
	icon_state = "hpistol_l"
	ammo_color = "-l"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_H_PISTOL
	matter = list(MATERIAL_STEEL = 3)
	caliber = CAL_PISTOL
	ammo_type = /obj/item/ammo_casing/pistol
	max_ammo = 16
	multiple_sprites = 1
	rarity_value = 20

/obj/item/ammo_magazine/hpistol/empty
	icon_state = "hpistol"
	ammo_color = ""
	initial_ammo = 0

/obj/item/ammo_magazine/hpistol/practice
	name = "9mm highcap magazine (practice)"
	icon_state = "hpistol_p"
	ammo_color = "-p"
	ammo_type = /obj/item/ammo_casing/pistol/practice
	rarity_value = 10

/obj/item/ammo_magazine/hpistol/highvelocity
	name = "9mm highcap magazine (high-velocity)"
	icon_state = "hpistol_hv"
	ammo_color = "-hv"
	ammo_type = /obj/item/ammo_casing/pistol/hv
	rarity_value = 80

/obj/item/ammo_magazine/hpistol/rubber
	name = "9mm highcap magazine (rubber)"
	icon_state = "hpistol_r"
	ammo_color = "-r"
	ammo_type = /obj/item/ammo_casing/pistol/rubber
	rarity_value = 10


/////////////10mm HC/////////////

/obj/item/ammo_magazine/hpistol_10mm
	name = "10mm highcap magazine"
	icon_state = "hpistol_l"
	ammo_color = "-l"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_H_PISTOL
	matter = list(MATERIAL_STEEL = 3)
	caliber = CAL_HPISTOL
	ammo_type = /obj/item/ammo_casing/pistol
	max_ammo = 16
	multiple_sprites = 1
	rarity_value = 20

/obj/item/ammo_magazine/hpistol_10mm/empty
	icon_state = "hpistol"
	ammo_color = ""
	initial_ammo = 0

/obj/item/ammo_magazine/hpistol_10mm/practice
	name = "10mm highcap magazine (practice)"
	icon_state = "hpistol_p"
	ammo_color = "-p"
	ammo_type = /obj/item/ammo_casing/pistol/practice
	rarity_value = 10

/obj/item/ammo_magazine/hpistol_10mm/highvelocity
	name = "10mm highcap magazine (high-velocity)"
	icon_state = "hpistol_hv"
	ammo_color = "-hv"
	ammo_type = /obj/item/ammo_casing/pistol/hv
	rarity_value = 80

/obj/item/ammo_magazine/hpistol_10mm/rubber
	name = "10mm highcap magazine (rubber)"
	icon_state = "hpistol_r"
	ammo_color = "-r"
	ammo_type = /obj/item/ammo_casing/pistol/rubber
	rarity_value = 10


/////////////.22 SMG/////////////

/obj/item/ammo_magazine/cssmg
	name = ".22 LR pan-mag"
	icon_state = "maxim_l"
	ammo_color = "-l"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_PAN
	matter = list(MATERIAL_STEEL = 3)
	caliber = CAL_22
	ammo_type = /obj/item/ammo_casing/pistol
	max_ammo = 180
	multiple_sprites = 1

/obj/item/ammo_magazine/cssmg/empty
	icon_state = "maxim_l"
	ammo_color = ""
	initial_ammo = 0

/obj/item/ammo_magazine/cssmg/rubber
	icon_state = "maxim_l"
	ammo_color = "-r"
	ammo_type = /obj/item/ammo_casing/pistol/rubber


/////////////9mm SMG/////////////

/obj/item/ammo_magazine/smg
	name = "9mm smg magazine"
	icon_state = "smg_l"
	ammo_color = "-l"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_SMG
	matter = list(MATERIAL_STEEL = 4)
	caliber = CAL_PISTOL
	ammo_type = /obj/item/ammo_casing/pistol
	max_ammo = 32
	multiple_sprites = 1

/obj/item/ammo_magazine/smg/empty
	icon_state = "smg"
	ammo_color = ""
	initial_ammo = 0

/obj/item/ammo_magazine/smg/practice
	name = "9mm smg magazine"
	icon_state = "smg_p"
	ammo_color = "-p"
	ammo_type = /obj/item/ammo_casing/pistol/practice

/obj/item/ammo_magazine/smg/hv
	name = "9mm smg magazine (high-velocity)"
	icon_state = "smg_hv"
	ammo_color = "-hv"
	ammo_type = /obj/item/ammo_casing/pistol/hv

/obj/item/ammo_magazine/smg/rubber
	name = "9mm smg magazine (rubber)"
	icon_state = "smg_r"
	ammo_color = "-r"
	ammo_type = /obj/item/ammo_casing/pistol/rubber

/obj/item/ammo_magazine/smg/scrap
	name = "9mm smg magazine (old)"
	icon_state = "smg_s"
	ammo_color = ""
	ammo_type = /obj/item/ammo_casing/pistol/scrap
	spawn_tags = SPAWN_AMMO_COMMON


/////////////9mm Drum SMG/////////////

/obj/item/ammo_magazine/drum
	name = "9mm drum magazine"
	icon_state = "smg_l"
	ammo_color = "-l"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_DRUM
	matter = list(MATERIAL_STEEL = 4)
	caliber = CAL_PISTOL
	ammo_type = /obj/item/ammo_casing/pistol
	max_ammo = 72
	multiple_sprites = 1

/obj/item/ammo_magazine/drum/empty
	icon_state = "smg"
	ammo_color = ""
	initial_ammo = 0

/obj/item/ammo_magazine/drum/hv
	name = "9mm drum magazine (high-velocity)"
	icon_state = "smg_hv"
	ammo_color = "-hv"
	ammo_type = /obj/item/ammo_casing/pistol/hv


/////////////45 ACP SMG/////////////

/obj/item/ammo_magazine/msmg
	name = ".45 ACP smg magazine"
	icon_state = "msmg_l"
	ammo_color = "-l"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_SMG
	matter = list(MATERIAL_STEEL = 5)
	caliber = CAL_MAGNUM
	ammo_type = /obj/item/ammo_casing/magnum
	max_ammo = 30
	multiple_sprites = 1

/obj/item/ammo_magazine/msmg/empty
	icon_state = "smg"
	ammo_color = ""
	initial_ammo = 0

/obj/item/ammo_magazine/msmg/practice
	name = ".45 ACP smg magazine (practice)"
	icon_state = "msmg_p"
	ammo_color = "-p"
	ammo_type = /obj/item/ammo_casing/magnum/practice

/obj/item/ammo_magazine/msmg/hv
	name = ".45 ACP smg magazine (high-velocity)"
	icon_state = "msmg_hv"
	ammo_color = "-hv"
	ammo_type = /obj/item/ammo_casing/magnum/hv

/obj/item/ammo_magazine/msmg/rubber
	name = ".45 ACP smg magazine (rubber)"
	icon_state = "msmg_r"
	ammo_color = "-r"
	ammo_type = /obj/item/ammo_casing/magnum/rubber

/obj/item/ammo_magazine/msmg/scrap
	name = ".45 ACP smg magazine (old)"
	icon_state = "msmg_s"
	ammo_color = ""
	ammo_type = /obj/item/ammo_casing/magnum/scrap
	spawn_tags = SPAWN_AMMO_COMMON


/////////////45 ACP Drum/////////////

/obj/item/ammo_magazine/drum_45
	name = ".45 ACP drum magazine"
	icon_state = "msmg_l"
	ammo_color = "-l"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_SMG
	matter = list(MATERIAL_STEEL = 5)
	caliber = CAL_MAGNUM
	ammo_type = /obj/item/ammo_casing/magnum
	max_ammo = 50
	multiple_sprites = 1

/obj/item/ammo_magazine/drum_45/empty
	icon_state = "smg"
	ammo_color = ""
	initial_ammo = 0

/obj/item/ammo_magazine/drum_45/practice
	name = ".45 ACP smg magazine (practice)"
	icon_state = "msmg_p"
	ammo_color = "-p"
	ammo_type = /obj/item/ammo_casing/magnum/practice

/obj/item/ammo_magazine/drum_45/hv
	name = ".45 ACP smg magazine (high-velocity)"
	icon_state = "msmg_hv"
	ammo_color = "-hv"
	ammo_type = /obj/item/ammo_casing/magnum/hv

////////// .22 RIFLE ///////////

/obj/item/ammo_magazine/c10x24
	name = ".22 LR box magazine"
	icon_state = "10x24"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	caliber = CAL_22
	matter = list(MATERIAL_STEEL = 8, MATERIAL_PLASTIC = 1)
	ammo_type = /obj/item/ammo_casing/clrifle
	max_ammo = 99
	multiple_sprites = 1

/obj/item/ammo_magazine/ihclrifle
	name = ".22 LR magazine"
	icon_state = "ihclrifle_l"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	ammo_type = /obj/item/ammo_casing/clrifle
	matter = list(MATERIAL_STEEL = 4)
	caliber = CAL_22
	max_ammo = 20
	multiple_sprites = 1
	spawn_tags = SPAWN_TAG_AMMO_IH
	rarity_value = 5

/obj/item/ammo_magazine/ihclrifle/empty
	icon_state = "ihclrifle"
	initial_ammo = 0

/obj/item/ammo_magazine/ihclrifle/practice
	name = "magazine (.22 Long Rifle practice)"
	icon_state = "ihclrifle_p"
	ammo_type = /obj/item/ammo_casing/clrifle/practice
	spawn_frequency = 5

/obj/item/ammo_magazine/ihclrifle/hv
	name = "magazine (.22 Long Rifle high-velocity)"
	icon_state = "ihclrifle_hv"
	ammo_type = /obj/item/ammo_casing/clrifle/hv
	spawn_tags = null

/obj/item/ammo_magazine/ihclrifle/rubber
	name = "magazine (.22 Long Rifle rubber)"
	icon_state = "ihclrifle_r"
	ammo_type = /obj/item/ammo_casing/clrifle/rubber

/obj/item/ammo_magazine/ihclrifle/scrap
	name = "magazine (old .22 Long Rifle)"
	icon_state = "ihclrifle_s"
	ammo_type = /obj/item/ammo_casing/clrifle/scrap
	spawn_tags = SPAWN_AMMO_COMMON


/////////////// 2mm ///////////////

/obj/item/ammo_magazine/rifle_2mm
	name = "2mm magazine"
	icon_state = "lrifle_l"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	caliber = CAL_MINI
	matter = list(MATERIAL_STEEL = 5)
	ammo_type = /obj/item/ammo_casing/lrifle
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/rifle_5mm/empty
	initial_ammo = 0


/////////////// 5mm ///////////////

/obj/item/ammo_magazine/rifle_5mm
	name = "5mm magazine"
	icon_state = "lrifle_l"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	caliber = CAL_MINI
	matter = list(MATERIAL_STEEL = 5)
	ammo_type = /obj/item/ammo_casing/rifle_5mm
	max_ammo = 48
	multiple_sprites = 1

/obj/item/ammo_magazine/rifle_5mm/empty
	initial_ammo = 0

/obj/item/ammo_magazine/rifle_5mm/practice
	name = "5mm magazine (practice)"
	icon_state = "lrifle_p"
	ammo_type = /obj/item/ammo_casing/rifle_5mm/practice

/obj/item/ammo_magazine/rifle_5mm/short
	name = "5mm magazine"
	icon_state = "lrifle_l"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	caliber = CAL_MINI
	matter = list(MATERIAL_STEEL = 5)
	ammo_type = /obj/item/ammo_casing/rifle_5mm
	max_ammo = 24
	multiple_sprites = 1

/obj/item/ammo_magazine/rifle_5mm/short/empty
	initial_ammo = 0

/obj/item/ammo_magazine/rifle_5mm/short/practice
	name = "5mm magazine (practice)"
	icon_state = "lrifle_p"
	ammo_type = /obj/item/ammo_casing/rifle_5mm/practice


///////////// 5.56 /////////////

/obj/item/ammo_magazine/srifle
	name = "5.56 magazine box"
	icon_state = "lrifle_box"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_BOX
	caliber = CAL_SRIFLE
	matter = list(MATERIAL_STEEL = 8)
	ammo_type = /obj/item/ammo_casing/srifle
	max_ammo = 50
	multiple_sprites = 1

/obj/item/ammo_magazine/srifle/empty
	initial_ammo = 0

/obj/item/ammo_magazine/srifle/lmg
	name = "5.56 LMG munitions box"
	icon_state = "pk_box"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_BOX
	caliber = CAL_SRIFLE
	matter = list(MATERIAL_STEEL = 8)
	ammo_type = /obj/item/ammo_casing/srifle
	max_ammo = 80
	multiple_sprites = 1
	w_class = ITEM_SIZE_NORMAL

/obj/item/ammo_magazine/ammobox/srifle/lmg/on_update_icon()
	if (!stored_ammo.len)
		icon_state = "pk_box-0"
		return
	if (stored_ammo.len == max_ammo)
		icon_state = "pk_box"
		return

	var/number = 0
	if (stored_ammo.len && max_ammo)
		var/percent = (stored_ammo.len / max_ammo) * 100
		number = round(percent, 25)
	icon_state = "pk_box-[number]"

/obj/item/ammo_magazine/srifle/pk/empty
	initial_ammo = 0

/obj/item/ammo_magazine/srifle/short
	name = "5.56 magazine"
	icon_state = "lrifle_l"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	caliber = CAL_SRIFLE
	matter = list(MATERIAL_STEEL = 5)
	ammo_type = /obj/item/ammo_casing/srifle
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/srifle/short/empty
	icon_state = "lrifle"
	initial_ammo = 0

/obj/item/ammo_magazine/srifle/short/practice
	name = "5.56 magazine (practice)"
	icon_state = "lrifle_p"
	ammo_type = /obj/item/ammo_casing/srifle/practice

/obj/item/ammo_magazine/srifle/short/highvelocity
	name = "5.56 magazine (high-velocity)"
	icon_state = "lrifle_hv"
	ammo_type = /obj/item/ammo_casing/srifle/hv

/obj/item/ammo_magazine/srifle
	name = "5.56 magazine"
	icon_state = "lrifle_l"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	caliber = CAL_SRIFLE
	matter = list(MATERIAL_STEEL = 5)
	ammo_type = /obj/item/ammo_casing/srifle
	max_ammo = 30
	multiple_sprites = 1

/obj/item/ammo_magazine/srifle/empty
	icon_state = "lrifle"
	initial_ammo = 0

/obj/item/ammo_magazine/srifle/practice
	name = "5.56 magazine (practice)"
	icon_state = "lrifle_p"
	ammo_type = /obj/item/ammo_casing/srifle/practice

/obj/item/ammo_magazine/srifle/highvelocity
	name = "5.56 magazine (high-velocity)"
	icon_state = "lrifle_hv"
	ammo_type = /obj/item/ammo_casing/srifle/hv

/obj/item/ammo_magazine/srifle/scrap
	name = "magazine (old .20 Rifle)"
	icon_state = "srifle_s"
	ammo_type = /obj/item/ammo_casing/srifle/scrap
	spawn_tags = SPAWN_AMMO_COMMON


/////////////// 7.62 ///////////////

/obj/item/ammo_magazine/lrifle
	name = "7.62 magazine box"
	icon_state = "lrifle_box"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_BOX
	caliber = CAL_LRIFLE
	matter = list(MATERIAL_STEEL = 8)
	ammo_type = /obj/item/ammo_casing/lrifle
	max_ammo = 50
	multiple_sprites = 1

/obj/item/ammo_magazine/lrifle/empty
	initial_ammo = 0

/obj/item/ammo_magazine/enblock
	name = "7.62 enblock clip"
	icon_state = "enblock"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	caliber = CAL_LRIFLE
	matter = list(MATERIAL_STEEL = 5)
	ammo_type = /obj/item/ammo_casing/lrifle
	max_ammo = 8

/obj/item/ammo_magazine/lrifle/pk
	name = "7.62 LMG munitions box"
	icon_state = "pk_box"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_BOX
	caliber = CAL_LRIFLE
	matter = list(MATERIAL_STEEL = 8)
	ammo_type = /obj/item/ammo_casing/lrifle
	max_ammo = 80
	multiple_sprites = 1
	w_class = ITEM_SIZE_NORMAL

//Magazine type for the mech PK, you shouldn't see this

/obj/item/ammo_magazine/lrifle/pk/mech
	name = "7.62 LMG munitions box"
	icon_state = "pk_box"
	matter = list()
	spawn_blacklisted = TRUE
	bad_type = /obj/item/ammo_magazine/lrifle/pk/mech

/obj/item/ammo_magazine/ammobox/lrifle/pk/on_update_icon()
	if (!stored_ammo.len)
		icon_state = "pk_box-0"
		return
	if (stored_ammo.len == max_ammo)
		icon_state = "pk_box"
		return

	var/number = 0
	if (stored_ammo.len && max_ammo)
		var/percent = (stored_ammo.len / max_ammo) * 100
		number = round(percent, 25)
	icon_state = "pk_box-[number]"

/obj/item/ammo_magazine/lrifle/pk/empty
	initial_ammo = 0

/obj/item/ammo_magazine/lrifle
	name = "7.62 magazine"
	icon_state = "lrifle_l"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	caliber = CAL_LRIFLE
	matter = list(MATERIAL_STEEL = 5)
	ammo_type = /obj/item/ammo_casing/lrifle
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/lrifle/empty
	icon_state = "lrifle"
	initial_ammo = 0

/obj/item/ammo_magazine/lrifle/practice
	name = "7.62 magazine (practice)"
	icon_state = "lrifle_p"
	ammo_type = /obj/item/ammo_casing/lrifle/practice

/obj/item/ammo_magazine/lrifle/highvelocity
	name = "7.62 magazine (high-velocity)"
	icon_state = "lrifle_hv"
	ammo_type = /obj/item/ammo_casing/lrifle/hv

/obj/item/ammo_magazine/lrifle/scrap
	name = "7.62 magazine (old)"
	icon_state = "lrifle_r"
	ammo_type = /obj/item/ammo_casing/lrifle

/obj/item/ammo_magazine/lrifle/short
	name = "7.62 short magazine"
	icon_state = "lrifle_l"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	caliber = CAL_LRIFLE
	matter = list(MATERIAL_STEEL = 5)
	ammo_type = /obj/item/ammo_casing/lrifle
	max_ammo = 10
	multiple_sprites = 1

/obj/item/ammo_magazine/lrifle/short/empty
	icon_state = "lrifle"
	initial_ammo = 0

/obj/item/ammo_magazine/lrifle/short/practice
	name = "7.62 short magazine (practice)"
	icon_state = "lrifle_p"
	ammo_type = /obj/item/ammo_casing/lrifle/practice

/obj/item/ammo_magazine/lrifle/short/highvelocity
	name = "7.62 short magazine (high-velocity)"
	icon_state = "lrifle_hv"
	ammo_type = /obj/item/ammo_casing/lrifle/hv

/obj/item/ammo_magazine/maxim
	name = "pan magazine"
	icon_state = "maxim_l"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_PAN
	caliber = CAL_LRIFLE
	matter = list(MATERIAL_STEEL = 10)
	ammo_type = /obj/item/ammo_casing/lrifle
	max_ammo = 96
	multiple_sprites = 1
	ammo_color = "-l"

/////////////// .50 Cal ///////////////

/obj/item/ammo_magazine/bmg
	name = ".50 MG magazine box"
	icon_state = "lrifle_box"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_BOX
	caliber = CAL_LRIFLE
	matter = list(MATERIAL_STEEL = 8)
	ammo_type = /obj/item/ammo_casing/lrifle
	max_ammo = 80
	multiple_sprites = 1


/obj/item/ammo_magazine/bmg/empty
	initial_ammo = 0

/obj/item/ammo_magazine/bmg/pk
	name = "50 MG heavy munitions box"
	icon_state = "pk_box"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_BOX
	caliber = CAL_LRIFLE
	matter = list(MATERIAL_STEEL = 8)
	ammo_type = /obj/item/ammo_casing/lrifle
	max_ammo = 100
	multiple_sprites = 1
	w_class = ITEM_SIZE_NORMAL


///////// SPEEDLOADERS ///////////

//////// 10mm SPEEDLOADERS //////////
/obj/item/ammo_magazine/slpistol
	name = "10mm speed loader"
	icon_state = "slpistol_l"
	icon = 'icons/obj/ammo_speed.dmi'
	caliber = CAL_HPISTOL
	matter = list(MATERIAL_STEEL = 3)
	ammo_type = /obj/item/ammo_casing/hpistol
	max_ammo = 12
	multiple_sprites = 1
	rarity_value = 6.66

/obj/item/ammo_magazine/slpistol/empty
	icon_state = "slpistol"
	initial_ammo = 0

/obj/item/ammo_magazine/slpistol/practice
	name = "10mm speed loader (practice)"
	icon_state = "slpistol_p"
	ammo_type = /obj/item/ammo_casing/hpistol/practice

/obj/item/ammo_magazine/slpistol/hv
	name = "10mm speed loader (high-velocity)"
	icon_state = "slpistol_hv"
	ammo_type = /obj/item/ammo_casing/hpistol/hv
	rarity_value = 80

/obj/item/ammo_magazine/slpistol/rubber
	name = "10mm speed loader (rubber)"
	icon_state = "slpistol_r"
	ammo_type = /obj/item/ammo_casing/hpistol/rubber
	rarity_value = 5

/obj/item/ammo_magazine/slpistol/scrap
	name = "10mm speed loader (old)"
	icon_state = "slpistol_s"
	ammo_type = /obj/item/ammo_casing/hpistol/scrap
	rarity_value = 5
	spawn_tags = SPAWN_AMMO_COMMON

//////// .357 SPEEDLOADERS //////////

/obj/item/ammo_magazine/speed357
	name = ".357 speed loader"
	icon_state = "slmagnum_l"
	icon = 'icons/obj/ammo_speed.dmi'
	caliber = CAL_357
	ammo_type = /obj/item/ammo_casing/revolver
	matter = list(MATERIAL_STEEL = 3)
	max_ammo = 6
	multiple_sprites = 1
	spawn_tags = SPAWN_TAG_AMMO_IH
	rarity_value = 5

/obj/item/ammo_magazine/speed357/empty
	icon_state = "slmagnum"
	initial_ammo = 0

/obj/item/ammo_magazine/speed357/practice
	name = ".357 speed loader (practice)"
	icon_state = "slmagnum_p"
	ammo_type = /obj/item/ammo_casing/revolver/practice
	spawn_tags = null

/obj/item/ammo_magazine/speed357/highvelocity
	name = ".357 speed loader (high-velocity)"
	icon_state = "slmagnum_hv"
	ammo_type = /obj/item/ammo_casing/revolver/hv
	spawn_tags = null

//////// .44 SPEEDLOADERS //////////

/obj/item/ammo_magazine/slmagnum
	name = "magnum speed loader"
	icon_state = "slmagnum_l"
	icon = 'icons/obj/ammo_speed.dmi'
	caliber = CAL_MAGNUM
	ammo_type = /obj/item/ammo_casing/magnum
	matter = list(MATERIAL_STEEL = 3)
	max_ammo = 6
	multiple_sprites = 1
	spawn_tags = SPAWN_TAG_AMMO_IH
	rarity_value = 5

/obj/item/ammo_magazine/slmagnum/empty
	icon_state = "slmagnum"
	initial_ammo = 0

/obj/item/ammo_magazine/slmagnum/practice
	name = "magnum speed loader (practice)"
	icon_state = "slmagnum_p"
	ammo_type = /obj/item/ammo_casing/magnum/practice
	spawn_tags = null

/obj/item/ammo_magazine/slmagnum/highvelocity
	name = "magnum speed loader (high-velocity)"
	icon_state = "slmagnum_hv"
	ammo_type = /obj/item/ammo_casing/magnum/hv
	spawn_tags = null

/obj/item/ammo_magazine/slmagnum/rubber
	name = "magnum speed loader (rubber)"
	icon_state = "slmagnum_r"
	ammo_type = /obj/item/ammo_casing/magnum/rubber

/obj/item/ammo_magazine/slmagnum/scrap
	name = "magnum speed loader (old)"
	icon_state = "slmagnum_s"
	ammo_type = /obj/item/ammo_casing/magnum/scrap
	spawn_tags = SPAWN_AMMO_COMMON

//////// .45-70 SPEEDLOADERS //////////

/obj/item/ammo_magazine/govt
	name = "government speed loader"
	icon_state = "slmagnum_l"
	icon = 'icons/obj/ammo_speed.dmi'
	caliber = CAL_MAGNUM
	ammo_type = /obj/item/ammo_casing/govt
	matter = list(MATERIAL_STEEL = 3)
	max_ammo = 6
	multiple_sprites = 1
	spawn_tags = SPAWN_TAG_AMMO_IH
	rarity_value = 5

/obj/item/ammo_magazine/govt/empty
	icon_state = "slmagnum"
	initial_ammo = 0

/obj/item/ammo_magazine/govt/practice
	name = "government speed loader (practice)"
	icon_state = "slmagnum_p"
	ammo_type = /obj/item/ammo_casing/govt/practice
	spawn_tags = null

//////// 7.62 RIFLE SPEEDLOADERS ////////
/obj/item/ammo_magazine/sllrifle
	name = "ammo strip"
	icon_state = "lrifle"
	icon = 'icons/obj/ammo_speed.dmi'
	caliber = CAL_LRIFLE
	matter = list(MATERIAL_STEEL = 3)
	ammo_type = /obj/item/ammo_casing/lrifle
	max_ammo = 5
	multiple_sprites = 1
	w_class = ITEM_SIZE_TINY

/obj/item/ammo_magazine/sllrifle/hv
	name = "ammo strip (HV)"
	icon_state = "lrifle"
	icon = 'icons/obj/ammo_speed.dmi'
	caliber = CAL_LRIFLE
	matter = list(MATERIAL_STEEL = 3)
	ammo_type = /obj/item/ammo_casing/lrifle/hv
	max_ammo = 5
	multiple_sprites = 1

/// OTHER ///

/obj/item/ammo_magazine/caps
	name = "speed loader (caps)"
	icon_state = "slpistol_r"
	icon = 'icons/obj/ammo_speed.dmi'
	caliber = CAL_CAP
	color = "#FF0000"
	ammo_type = /obj/item/ammo_casing/cap
	matter = list(MATERIAL_STEEL = 2)
	max_ammo = 7
	multiple_sprites = 1

////////////Shotguns!////////////

/obj/item/ammo_magazine/m12
	name = "ammo drum (.50 slug)"
	icon_state = "m12_hv"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	caliber = CAL_SHOTGUN
	ammo_type = /obj/item/ammo_casing/shotgun
	matter = list(MATERIAL_STEEL = 6)
	max_ammo = 8
	ammo_color = "-hv"

/obj/item/ammo_magazine/m12/on_update_icon()
	cut_overlays()
	if(stored_ammo.len)
		var/obj/item/ammo_casing/AC = stored_ammo[1] //look at next casing.
		overlays += "m12_shell_[AC.shell_color]" //look and display the overlay for the ammo

/obj/item/ammo_magazine/m12/Initialize()
	. = ..()
	update_icon()

/obj/item/ammo_magazine/m12/pellet
	name = "ammo drum (.50 pellet)"
	icon_state = "m12_l"
	ammo_type = /obj/item/ammo_casing/shotgun/pellet
	ammo_color = "-l"

/obj/item/ammo_magazine/m12/beanbag
	name = "ammo drum (.50 beanbag)"
	icon_state = "m12_r"
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag
	ammo_color = "-r"

/obj/item/ammo_magazine/m12/empty
	name = "ammo drum (.50)"
	icon_state = "m12"
	ammo_color = ""
	initial_ammo = 0
