/*Fallout 13 Legion Faction armor.

I don't care who touches this, keep this in mind: ANY changes you make are to be balanced to the faction. Giving one faction a notable 'edge' over the other.
Any changes without this is not only a horrid decision. Any and all changes should go through balance and showing to gerneral coders to avoid bias.

Also, an example - NCR Trooper armor should not be 'better' inherantly than any other equal faction armor. A Prime and Trooper /can/ sport different values, but they need the same amount of
dedicated points or less slowdown to compensate for this. Do this for all classes; all classes should have a counter equivilent.

Trooper -> Prime
Ranger -> Veteran
LT -> Centurion



- Mostly misc town armors. These should be relatively 'weak' but there's no balance counterparts for this as the town are not intended as a hostile faction particpiating in agressive fights.
Cope and seethe, townoids.
*/

//Suit 'Armors'
//These suck as armor. They're really for suit-looks.

//Innkeeper coat; equal to that of an artist coat
/obj/item/clothing/suit/artist
	name = "innkeeper vest"
	desc = "A beautiful, well made vest of the finest materials around the wasteland! Though.. it doesn't offer much in the way of protection.."
	icon_state = "artist"
	item_state = "artist_armor"
	blood_overlay_type = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor = list(
		melee = 5,
		bullet = 0,
		energy = 0,
		bomb = 0,
		bio = 0,
		rad = 0
	)

//Merchant coat; equal to that of assistant coat.
/obj/item/clothing/suit/storage/f13/merchant
	name = "traveling merchant coat"
	desc = "Practical and comfortable jacket for wasteland traders. It seems have a little protection from physical harm."
	icon_state = "ass_jacket"
	item_state = "ass_jacket"
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	armor = list(
		melee = 10,
		bullet = 10,
		energy = 10,
		bomb = 0,
		bio = 0,
		rad = 0
	)

//Doctor vest; literally just a surgical apron.
/obj/item/clothing/suit/storage/doctor
	name = "doctor surgical apron"
	desc = "An excellent blood collector!"
	icon_state = "surgeon"
	item_state = "surgeon"
	blood_overlay_type = "armor"
	spawn_blacklisted = TRUE
	extra_allowed = list(
		/obj/item/tool/bonesetter,
		/obj/item/tool/cautery,
		/obj/item/tool/saw/circular,
		/obj/item/tool/hemostat,
		/obj/item/tool/retractor,
		/obj/item/tool/scalpel,
		/obj/item/tool/surgicaldrill,
		/obj/item/stack/medical/advanced/bruise_pack
	)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO

//Researcher vest; literally just a labcoat
/obj/item/clothing/suit/storage/toggle/researcher
	name = "researcher labcoat"
	desc = "A suit that protects against minor chemical spills and wedgies. Mostly chemical spills."
	icon_state = "labcoat_open"
	item_state = "labcoat" //Is this even used for anything?
	icon_open = "labcoat_open"
	icon_closed = "labcoat"
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|ARMS
	armor = list(
		melee = 0,
		bullet = 0,
		bomb = 0,
		bio = 50,
		bomb = 0,
		bio = 0,
		rad = 0
	)

//Chief medical officer vest; literally cmo coat.
/obj/item/clothing/suit/storage/toggle/labcoat/researcher
	name = "chief of development labcoat"
	desc = "A suit that protects against minor chemical spills, wedgies AND your ego being hurt by your subordinates!"
	icon_state = "labcoat_cmo_open"
	item_state = "labcoat_cmo"
	icon_open = "labcoat_cmo_open"
	icon_closed = "labcoat_cmo"

//Alderman coat; literally club manager coat.
/obj/item/clothing/suit/storage/toggle/alderman
	name = "alderman's jacket"
	desc = "A well tailored jacket made for the cold regions of the north or a cold desert night. It doesn't provide much protection but it's warm and stylish!"
	icon_state = "cm_coat"
	item_state = "cm_coat"
	icon_open = "cm_coat_open"
	icon_closed = "cm_coat"
	body_parts_covered = UPPER_TORSO|ARMS
	cold_protection = UPPER_TORSO|ARMS
	min_cold_protection_temperature = T0C - 20
	siemens_coefficient = 0.7


//Light Armors

//Scavenger Jacket; equal to that of leather armor.
/obj/item/clothing/suit/armor/f13/town/scav
	name = "scavenger jacket"
	desc = "A jacket for scavengers of the local town's scavenger union. Tanned, aged brahmin hide into a protective stylish jacket."
	icon_state = "scav"
	item_state = "scav"
	slowdown = 0.1
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 25,
		bullet = 25,
		energy = 20,
		bomb = 10,
		bio = 0,
		rad = 0
	)


//Medium Armors

//Marshal Armor; equal to that of combat armor.
/obj/item/clothing/suit/armor/f13/town/marshal
	name = "marshal combat armor"
	desc = "A painted set of old military combat armor complete with a town insignia painted on its chest."
	icon_state = "marshal"
	item_state = "marshal"
	equip_delay = 1 SECONDS
	slowdown = 0.15
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 30,
		bullet = 45,
		energy = 30,
		bomb = 15,
		bio = 0,
		rad = 5
	)

//Provost Armor; equal to that of combat armor Mk2.
/obj/item/clothing/suit/armor/f13/town/provost
	name = "provost combat armor"
	desc = "A painted set of old military combat armor complete with a town insignia painted on its chest. This one appears to be one of the more advanced models!"
	icon_state = "provost"
	item_state = "provost"
	equip_delay = 1 SECONDS
	slowdown = 0.2
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(
		melee = 30,
		bullet = 50,
		energy = 35,
		bomb = 20,
		bio = 0,
		rad = 10
	)