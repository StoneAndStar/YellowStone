/*Fallout 13 helmet armors.

These should sport no slowdown modifiers but just less protection than their suit-armor counterparts. Helmets are important but mostly due to melee, bullets rarely hit heads. While head armor
is important it's not drastically so. So, unlike armor, helmets are sort of direct upgrades or niches that get fufilled; such as visors, night vision, etc.*/

//Regular Hats

/obj/item/clothing/head/armor/f13/cowboy
	name = "cowboy hat"
	desc = "Made of Brahmin hide and stitching this frontiersman hat protects one's head from the sun quite well! Though.. not so great against - anything else."
	icon_state = "helmet"
	armor = list(
		melee = 5,
		bullet = 10,
		energy = 5,
		bomb = 5,
		bio = 0,
		rad = 0
	)

/obj/item/clothing/head/armor/f13/swatter
	name = "swatters cap"
	desc = "Hey batter-batter, SWING! This pre-war cap somehow survived the war! What a great relic, memorializing those who died in gladitorial swatter combat.."
	icon_state = "swatter"
	armor = list(
		melee = 10,
		bullet = 5,
		energy = 5,
		bomb = 5,
		bio = 0,
		rad = 0
	)

/obj/item/clothing/head/armor/f13/fedora
	name = "fedora hat"
	desc = "You - are a supreme gentleman. One of culture and class. One of extreme intelligence. God - you are just an insufferable prick, aren't you?"
	icon_state = "fedora"
	armor = list(
		melee = 5,
		bullet = 10,
		energy = 5,
		bomb = 5,
		bio = 0,
		rad = 0
	)

/obj/item/clothing/head/armor/f13/bowler
	name = "bowler hat"
	desc = "A glorious old pre-war hat worn by gentlemen and mobsters alike! This one even sports a tag inside saying 'Made in New Reno'! .. Well, that's among two others but - maybe!"
	icon_state = "bowler"
	armor = list(
		melee = 5,
		bullet = 5,
		energy = 5,
		bomb = 10,
		bio = 0,
		rad = 0
	)

//Regular Helmets

/obj/item/clothing/head/armor/f13/stormchaser
	name = "stormchaser hat"
	desc = "A simple mix of a hood, goggles and a hat to fit onto ones head to protect them mostly from the enviorment. Though it seems these also have some reinforced materials!"
	icon_state = "stormchaser"
	armor = list(
		melee = 15,
		bullet = 15,
		energy = 10,
		bomb = 5,
		bio = 0,
		rad = 0
	)

/obj/item/clothing/head/armor/f13/firehelmet
	name = "fire helmet"
	desc = "An old pre-war firehelmet! It doesn't offer much protection but, hey, good pickup lines!"
	icon_state = "helmet" //Unsure what sprite this uses at all; default helmet for now.
	armor = list(
		melee = 25,
		bullet = 10,
		energy = 10,
		bomb = 15,
		bio = 0,
		rad = 0
	)

/obj/item/clothing/head/armor/f13/rider
	name = "motorcycle helmet"
	desc = "An old pre-war motorcycle riding helmet. Perfect to protect one's head from impacts at high speeds. Or attacks - well.. maybe. Mostly high-speed impacts."
	body_parts_covered = HEAD|EARS|EYES|FACE
	flags_inv = BLOCKHEADHAIR|HIDEEARS|HIDEEYES|HIDEFACE
	icon_state = "rider"
	armor = list(
		melee = 35,
		bullet = 20,
		energy = 15,
		bomb = 20,
		bio = 10,
		rad = 5
	)

/obj/item/clothing/head/armor/f13/metal
	name = "metal helmet"
	desc = "A cruedly constructed helmet made out of various metals from car parts to dustbins. While thise wreck of salvage may look bad, you notice someone cared to actually cushion it. D'aw!"
	body_parts_covered = HEAD
	flags_inv = BLOCKHEADHAIR|HIDEEARS
	icon_state = "metalhelmet"
	armor = list(
		melee = 30,
		bullet = 35,
		energy = 20,
		bomb = 25,
		bio = 5,
		rad = 5
	)

/obj/item/clothing/head/armor/f13/metal/reinforced
	name = "reinforced metal helmet"
	desc = "A cruedly constructed helmet made out of various metals from car parts to dustbins. This one appears to sport extra plates on the side of it, attempting to protect the wearer better."
	body_parts_covered = HEAD
	flags_inv = BLOCKHEADHAIR|HIDEEARS
	icon_state = "metalhelmet_r"
	armor = list(
		melee = 35,
		bullet = 40,
		energy = 25,
		bomb = 25,
		bio = 5,
		rad = 5
	)

/obj/item/clothing/head/armor/f13/combat
	name = "combat helmet"
	desc = "An advanced pre-war military helmet, complete with cushioning and advanced protection."
	icon_state = "combat_helmet"
	body_parts_covered = HEAD | EARS | EYES
	armor = list(
		melee = 30,
		bullet = 45,
		energy = 30,
		bomb = 30,
		bio = 0,
		rad = 0
	)

/obj/item/clothing/head/armor/f13/combat/mk2
	name = "mk2 combat helmet"
	desc = "An advanced pre-war military helmet, complete with cushioning, advanced protection, reinforced plating - and - this model even has a head lamp!"
	icon_state = "combat_helmet_mk2"
	body_parts_covered = HEAD | EARS | EYES
	armor = list(
		melee = 35,
		bullet = 50,
		energy = 35,
		bomb = 30,
		bio = 0,
		rad = 0
	)

//Helmet has a head-lamp. Unique MK2.
/obj/item/clothing/head/armor/f13/combat/mk2/lamp
	name = "mk2 combat headlamp helmet"
	desc = "An advanced pre-war military helmet, complete with cushioning, advanced protection, reinforced plating - and - this model even has a head lamp!"
	icon_state = "combat_helmet_mk2"
	body_parts_covered = HEAD | EARS | EYES
	action_button_name = "Toggle Headlamp"
	brightness_on = 4
	armor = list(
		melee = 35,
		bullet = 40,
		energy = 45,
		bomb = 30,
		bio = 0,
		rad = 0
	)

//Special MK2 with a visor. Needs the Ironhammer faceshield helmet piece. Also minor flash protection.
/obj/item/clothing/head/armor/faceshield/f13/mk2/visor
	name = "mk2 combat-riot helmet"
	desc = "An advanced pre-war military helmet, complete with cushioning, advanced protection, reinforced plating - and - this model appears to sport a visor!"
	icon_state = "combat_helmet_mk2"
	body_parts_covered = HEAD | EARS | EYES
	flash_protection = FLASH_PROTECTION_MAJOR
	armor = list(
		melee = 45,
		bullet = 45,
		energy = 30,
		bomb = 30,
		bio = 10,
		rad = 0
	)

//Unique raider MK2 helmet. Outlaws or shit.
/obj/item/clothing/head/armor/f13/combat/mk2/raider
	name = "raider combat helmet"
	desc = "An advanced pre-war military helmet, though someone felt the need to strap spikes and extra material to the helmet. \
			Seems like they really didn't want a concussion yet wanted to keep style in mind."
	icon_state = "combat_helmet_raider"
	body_parts_covered = HEAD | EARS | EYES
	action_button_name = "Toggle Headlamp"
	brightness_on = 4
	armor = list(
		melee = 50,
		bullet = 40,
		energy = 30,
		bomb = 35,
		bio = 0,
		rad = 0
	)

/obj/item/clothing/head/armor/f13/combat/mk2/marine
	name = "marine combat helmet"
	desc = "This bulky looking helmet was adopted by the U.S.M.C before the war and still bears parts of its markings on the interior part of the helmet."
	icon_state = "marinehelmet"
	body_parts_covered = HEAD | EARS | EYES | FACE
	flags_inv = BLOCKHEADHAIR|HIDEEARS|HIDEEYES|HIDEFACE
	flash_protection = FLASH_PROTECTION_MAJOR
	item_flags = THICKMATERIAL | COVER_PREVENT_MANIPULATION
	action_button_name = "Toggle Night Vision"
	var/obj/item/clothing/glasses/bullet_proof_ironhammer/hud
	armor = list(
		melee = 45,
		bullet = 50,
		energy = 40,
		bomb = 40,
		bio = 50,
		rad = 50
	)

/obj/item/clothing/head/armor/f13/combat/mk2/brokenranger
	name = "broken elite ranger helmet"
	desc = "A broken piece of pre-war riot gear outfited for use by the NCR. These rare-find helmets typically sport nightvision! Though.. this one seems to have a few holes in it now."
	icon_state = "ranger_broken"
	body_parts_covered = HEAD | EARS | EYES | FACE
	flags_inv = BLOCKHEADHAIR|HIDEEARS|HIDEEYES|HIDEFACE
	flash_protection = FLASH_PROTECTION_MAJOR
	item_flags = THICKMATERIAL | COVER_PREVENT_MANIPULATION
	action_button_name = "Toggle Night Vision"
	var/obj/item/clothing/glasses/bullet_proof_ironhammer/hud
	armor = list(
		melee = 45,
		bullet = 55,
		energy = 35,
		bomb = 35,
		bio = 50,
		rad = 50
	)

/obj/item/clothing/head/armor/f13/t45b
	name = "salvaged T-45b helmet"
	desc = "A broken pre-war power armor helmet outfited to United States troops. Though this helmet looks like it's seen better days.."
	icon_state = "t45b"
	body_parts_covered = HEAD | EARS | EYES | FACE
	flags_inv = BLOCKHEADHAIR|HIDEEARS|HIDEEYES|HIDEFACE
	flash_protection = FLASH_PROTECTION_MAJOR
	item_flags = THICKMATERIAL | COVER_PREVENT_MANIPULATION
	armor = list(
		melee = 50,
		bullet = 50,
		energy = 45,
		bomb = 40,
		bio = 50,
		rad = 50
	)

/obj/item/clothing/head/armor/f13/t45b/raider
	name = "salvaged raider power armor helmet"
	desc = "A set of salvaged pre-war PA helmet with spikes added onto it for extra effect! Every junkie, bandit, robber, outlaw or serial killer LOVES some good flavorful spikes!"
	icon_state = "raiderpa"
	armor = list(
		melee = 60,
		bullet = 45,
		energy = 35,
		bomb = 35,
		bio = 50,
		rad = 50
	)