//Caliber Defines
//Pistols
#define CAL_22 ".22 Lr"
#define CAL_357 ".357"
#define CAL_PISTOL "9mm"
#define CAL_HPISTOL "10mm"
#define CAL_MAGNUM ".44 magnum"
#define CAL_45ACP "45 ACP"
#define CAL_4570 ".45-70"
#define CAL_127 "12.7mm"

//Rifles
#define CAL_GAUSS "2mm"
#define CAL_MINI "5mm"
#define CAL_SRIFLE "5.56"
#define CAL_LRIFLE "7.62"
#define CAL_ANTIM ".50 MG"
#define CAL_SHOTGUN "12 Gauge Shell"

//Misc
#define CAL_CAP "plastic cap"
#define CAL_ROCKET "rocket propelled grenade"
#define CAL_DART "chemical dart"
#define CAL_FLARE "flare shell"
#define CAL_GRENADE "grenade"
#define CAL_CROSSBOW "bolt"

//Gun loading types
#define SINGLE_CASING 	1		//The gun only accepts ammo_casings. ammo_magazines should never have this as their mag_type.
#define SPEEDLOADER 	2		//Transfers casings from the mag to the gun when used.
#define MAGAZINE		4		//The magazine item itself goes inside the gun

//Pistol Magwells
#define MAG_WELL_GENERIC	0		//Guns without special magwells
#define MAG_WELL_PISTOL		1		//Pistols
#define MAG_WELL_H_PISTOL	2		//High capacity magazines - add this to guns you want able to take high-cap mags.

//SMGs and Rifle Magwells
#define MAG_WELL_DRUM		4		//Drum SMG (Thompson, PPSH)
#define MAG_WELL_SMG		8		//SMGs
#define MAG_WELL_RIFLE		16		//5.56 rifles
#define MAG_WELL_BOX		64		//Lmgs with box mags

//Legacy Magwells
#define MAG_WELL_PAN		128		//Lmgs with pan mags
#define MAG_WELL_DART		256 	//Dartgun mag


#define SLOT_BARREL "barrel"
#define SLOT_GRIP "grip"
#define SLOT_TRIGGER "trigger"
#define SLOT_MUZZLE "muzzle"
#define SLOT_SCOPE "scope"
#define SLOT_UNDERBARREL "underbarrel"
#define SLOT_MECHANICS "mechanics"
#define SLOT_BAYONET "bayonet slot"