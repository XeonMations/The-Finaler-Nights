/area/vtm
	name = "San Francisco"
	icon = 'modular_tfn/modules/map_areas/areas.dmi'
	icon_state = "sewer"
	requires_power = TRUE
	default_gravity = STANDARD_GRAVITY
	outdoors = TRUE
	//How much yang chi is in the room. Used for Kuei-Jin
	var/yang_chi = 1
	//How much yin chi is in the room. Used for Kuei-Jin
	var/yin_chi = 1

/area/vtm/interior
	name = "Interior"
	icon_state = "interior"
	ambience_index = AMBIENCE_GENERIC
	outdoors = FALSE

/area/vtm/interior/shop
	name = "Shop"
	icon_state = "shop"
	outdoors = FALSE

/area/vtm/interior/laundromat
	name = "Laundromat"
	icon_state = "shop"
	outdoors = FALSE

/area/vtm/interior/giovanni
	name = "Giovanni Mansion"
	icon_state = "giovanni"
	outdoors = FALSE
	yang_chi = 0
	yin_chi = 2

/area/vtm/interior/giovanni/outside
	name = "Giovanni Mansion - Courtyard"
	icon_state = "giovanni"
	outdoors = TRUE
	yang_chi = 0
	yin_chi = 2

/area/vtm/interior/giovanni/basement
	name = "Giovanni Mansion - Basement"
	icon_state = "giovanni"
	outdoors = FALSE
	yang_chi = 0
	yin_chi = 2

/area/vtm/interior/techshop
	name = "Nightwolf Techshop"
	icon_state = "shop"
	outdoors = FALSE

/area/vtm/interior/bianchiBank
	name = "Bianchi Bank"
	icon_state = "giovanni"
	outdoors = FALSE

/area/vtm/interior/police
	name = "Police Station"
	icon_state = "police"
	outdoors = FALSE

/area/vtm/interior/police/morgue
	name = "Police Station - Morgue"
	icon_state = "police"
	outdoors = FALSE

/area/vtm/interior/police/upstairs
	name = "Police Station - Upstairs"
	icon_state = "police"
	outdoors = FALSE

/area/vtm/interior/police/fed
	name = "Hotel"
	icon_state = "police"
	outdoors = FALSE

/area/vtm/interior/vjaitor
	name = "Cleaners"
	icon_state = "janitor"
	outdoors = FALSE

/area/vtm/interior/strip
	name = "Strip Club"
	icon_state = "strip"
	outdoors = FALSE

/area/vtm/interior/strip/toreador
	name = "Strip Club - Apartments"
	icon_state = "prince"
	outdoors = FALSE

/area/vtm/interior/strip/elysium
	name = "Strip Club - Elysium"
	icon_state = "prince"
	outdoors = FALSE

/area/vtm/interior/mansion
	name = "Abandoned Mansion"
	icon_state = "mansion"
	outdoors = FALSE
	yang_chi = 0
	yin_chi = 2

/area/vtm/interior/apartment
	name = "Millenium Apartments"
	icon_state = "camarilla_interior"
	outdoors = FALSE

/area/vtm/interior/ghetto
	name = "Ghetto Apartments"
	icon_state = "ghetto_interior"
	outdoors = FALSE

/area/vtm/financialdistrict
	name = "Financial District"
	icon_state = "financialdistrict"
	ambience_index = AMBIENCE_GENERIC
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/downtown.ogg'
	outdoors = TRUE

/area/vtm/financialdistrict/construction
	name = "Financial District - In Construction"

/area/vtm/financialdistrict/library
	name = "Financial District - Cultural Square"

/area/vtm/ghetto
	name = "Ghetto"
	icon_state = "ghetto"
	ambience_index = AMBIENCE_GENERIC
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/downtown.ogg'
	outdoors = TRUE

/area/vtm/ghetto/old
	name = "Ghetto - Old Quarter"

/area/vtm/pacificheights
	name = "Pacific Heights"
	icon_state = "pacificheights"
	ambience_index = AMBIENCE_GENERIC
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/hollywood.ogg'
	outdoors = TRUE

/area/vtm/pacificheights/forest
	name = "Pacific Heights Forest Outskirts"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/night_ambience.ogg'

/area/vtm/pacificheights/old
	name = "Pacific Heights - Old District"

/area/vtm/pacificheights/community
	name = "Pacific Heights - Community Road"

/area/vtm/chinatown
	name = "Chinatown"
	icon_state = "chinatown"
	ambience_index = AMBIENCE_GENERIC
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/chinatown.ogg'
	outdoors = TRUE

/area/vtm/fishermanswharf
	name = "Fisherman's Wharf"
	icon_state = "fishermanswharf"
	ambience_index = AMBIENCE_GENERIC
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/santamonica.ogg'
	outdoors = TRUE

/area/vtm/fishermanswharf/ghetto
	name = "Fisherman's Wharf - Ghetto"

/area/vtm/fishermanswharf/lower
	name = "Fisherman's Wharf - Lower Beachside"

/area/vtm/northbeach
	name = "Beach"
	icon_state = "northbeach"
	ambience_index = AMBIENCE_GENERIC
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/santamonica.ogg'
	outdoors = TRUE

/area/vtm/unionsquare
	name = "Union Square"
	icon_state = "unionsquare"
	ambience_index = AMBIENCE_GENERIC
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/downtown.ogg'
	outdoors = TRUE

/area/vtm/interior/millennium_tower
	name = "Millennium Tower F1"
	icon_state = "millenniumtowerf1"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/prince.ogg'

/area/vtm/interior/millennium_tower/f2
	name = "Millennium Tower F2"
	icon_state = "millenniumtowerf2"

/area/vtm/interior/millennium_tower/f3
	name = "Millennium Tower F3 - Security Wing"
	icon_state = "millenniumtowerf3"

/area/vtm/interior/millennium_tower/f4
	name = "Millennium Tower F4 - Executive Floor"
	icon_state = "millenniumtowerf4"

/area/vtm/interior/millennium_tower/f5
	name = "Millennium Tower F5 - Roof Access"
	icon_state = "millenniumtowerf5"

/area/vtm/interior/millennium_tower/ventrue
	name = "Jazz Club Penthouse"
	icon_state = "millenniumtowerpenthouse"

/area/vtm/jazzclub
	name = "Jazz Club"
	icon_state = "camarilla"
	ambience_index = AMBIENCE_GENERIC
	outdoors = FALSE

/area/vtm/cabaret
	name = "Siren's Cabaret"
	icon_state = "melpominee"
	ambience_index = AMBIENCE_GENERIC
	outdoors = FALSE

/area/vtm/cabaret/basement
	name = "Siren's Cabaret - Basement"

/area/vtm/clinic
	name = "Hospital"
	icon_state = "clinic"
	ambience_index = AMBIENCE_GENERIC
	outdoors = FALSE
	yang_chi = 2
	yin_chi = 0

/area/vtm/clinic/haven
	name = "Hospital - Psych Ward"

/area/vtm/supply
	name = "Supply Depot"
	icon_state = "supply"
	ambience_index = AMBIENCE_GENERIC
	outdoors = FALSE

/area/vtm/anarch
	name = "Bar"
	icon_state = "anarch"
	ambience_index = AMBIENCE_GENERIC
	outdoors = FALSE
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/naive.ogg'

/area/vtm/anarch/basement
	name = "Bar - Basement"
	icon_state = "anarch"
	ambience_index = AMBIENCE_GENERIC
	outdoors = FALSE
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/naive.ogg'

/area/vtm/anarch/garage
	name = "Garage"
	icon_state = "anarch"
	ambience_index = AMBIENCE_GENERIC
	outdoors = FALSE

/area/vtm/hotel
	name = "Hotel"
	icon_state = "hotel"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/naive.ogg'
	ambience_index = AMBIENCE_GENERIC
	outdoors = FALSE

/area/vtm/church
	name = "Church Grounds"
	icon_state = "church"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/night_ambience.ogg'
	outdoors = TRUE

/area/vtm/church/interior
	name = "Church - Interior"
	icon_state = "church"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/hahihaho.ogg'
	ambience_index = AMBIENCE_GENERIC
	outdoors = FALSE

/area/vtm/church/interior/staff
	name = "Church - Backrooms"
	icon_state = "church"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/hahihaho.ogg'
	ambience_index = AMBIENCE_GENERIC
	outdoors = FALSE

/area/vtm/church/interior/haven
	name = "Church - Restricted Floor"
	icon_state = "old_clan_tzimisce"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/hahihaho.ogg'
	ambience_index = AMBIENCE_GENERIC
	outdoors = FALSE
	yang_chi = 0
	yin_chi = 2

/area/vtm/graveyard
	name = "Graveyard"
	icon_state = "graveyard"
	ambience_index = AMBIENCE_GENERIC
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/hollywood.ogg'
	outdoors = TRUE
	yang_chi = 0
	yin_chi = 2

/area/vtm/graveyard/interior
	name = "Graveyard Interior"
	icon_state = "interior"
	outdoors = FALSE
	yang_chi = 0
	yin_chi = 2

/area/vtm/park
	name = "Park"
	icon_state = "park"
	ambience_index = AMBIENCE_GENERIC
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/downtown.ogg'
	outdoors = TRUE
	yang_chi = 2
	yin_chi = 0

/area/vtm/sewer
	name = "Sewer"
	icon_state = "sewer"
	ambience_index = AMBIENCE_GENERIC
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/enterlair.ogg'
	outdoors = FALSE
	yang_chi = 0
	yin_chi = 2

/area/vtm/sewer/nosferatu_town
	name = "Underground Town"
	icon_state = "hotel"
	outdoors = FALSE
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/nosferatu.ogg'
	yang_chi = 0
	yin_chi = 2

/area/vtm/sewer/nosferatu_warren
	name = "Underground Warren"
	icon_state = "hotel"
	outdoors = FALSE
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/nosferatu.ogg'
	yang_chi = 0
	yin_chi = 2

/area/vtm/sewer/nosferatu_bar
	name = "Underground Bar"
	icon_state = "hotel"
	outdoors = FALSE
	yang_chi = 0
	yin_chi = 2

/area/vtm/interior/nosferatu_office
	name = "Underground Office"
	icon_state = "hotel"
	outdoors = FALSE
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/nosferatu.ogg'
	yang_chi = 0
	yin_chi = 2

/area/vtm/sewer/cappadocian
	name = "Cappadocian Crypt"
	icon_state = "graveyard"
	ambience_index = AMBIENCE_GENERIC
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/hollywood.ogg'
	outdoors = FALSE
	yang_chi = 0
	yin_chi = 2

/area/vtm/forest
	name = "Forest"
	icon_state = "park"
	outdoors = TRUE
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/night_ambience.ogg'
	yang_chi = 2
	yin_chi = 0

/area/vtm/interior/glasswalker
	name = "Glasswalker's Lab"
	icon_state = "supply"
	outdoors = FALSE
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/night_ambience.ogg'

/area/vtm/interior/endron_facility
	name = "Endron Headquarters"
	icon_state = "supply"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/night_ambience.ogg'
	yang_chi = 0
	yin_chi = 1

/area/vtm/interior/endron_facility/helipad
	name = "Endron Helipad"
	icon_state = "supply"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/night_ambience.ogg'
	yang_chi = 0
	yin_chi = 1

/area/vtm/interior/endron_facility/forest
	name = "Endron Forest Worksite"
	icon_state = "supply"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/night_ambience.ogg'
	yang_chi = 0
	yin_chi = 1

/area/vtm/interior/endron_facility/restricted
	name = "Endron Facility Restricted"
	icon_state = "graveyard"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/night_ambience.ogg'
	yang_chi = 0
	yin_chi = 2

/area/vtm/interior/wyrm_corrupted
	name = "Wyrm Corruption"
	icon_state = "graveyard"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/night_ambience.ogg'
	yang_chi = 0
	yin_chi = 2

/area/vtm/interior/cog
	name = "Children of Gaia Generic"
	icon_state = "cog_pantry"

/area/vtm/interior/cog/pantry
	name = "Earth's Bounty Food Pantry"
	icon_state = "cog_pantry"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/night_ambience.ogg'

/area/vtm/interior/cog/caern
	name = "Children of Gaia Caern"
	icon_state = "cog_caern"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/night_ambience.ogg'

/area/vtm/interior/gnawer
	name = "Bone Gnawer Shrine"
	icon_state = "gnawer"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/night_ambience.ogg'

/area/vtm/interior/penumbra
	name = "Penumbra"
	icon_state = "church"
	ambience_index = AMBIENCE_GENERIC
	outdoors = FALSE
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/penumbra.ogg'

/area/vtm/interior/penumbra/enoch
	name = "???"

/area/vtm/interior/chantry
	name = "Chantry"
	icon_state = "theatre"
	yang_chi = 0
	yin_chi = 2

/area/vtm/interior/chantry/basement
	name = "Chantry Basement"

/area/vtm/interior/theatre
	name = "Theatre"
	icon_state = "theatre"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/theatre.ogg'

/area/vtm/interior/oldchurch
	name = "Old Seaside Church"
	icon_state = "church"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/hahihaho.ogg'

/area/vtm/interior/museum
	name = "Historical Museum"
	icon_state = "old_clan_tzimisce"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/prince.ogg'
	yang_chi = 0
	yin_chi = 2

/area/vtm/interior/trujah
	name = "Antique Shop"
	icon_state = "old_clan_tzimisce"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/prince.ogg'

/area/vtm/interior/baali
	name = "Alcoholics Anonymous"
	icon_state = "old_clan_tzimisce"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/prince.ogg'

/area/vtm/interior/salubri
	name = "Veterinary Clinic"
	icon_state = "old_clan_tzimisce"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/prince.ogg'

/area/vtm/interior/banu
	name = "Coffee House"
	icon_state = "old_clan_tzimisce"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/prince.ogg'

/area/vtm/interior/banu/haven
	name = "Coffee House Staff Section"
	icon_state = "old_clan_tzimisce"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/prince.ogg'

/area/vtm/interior/tzimisce_manor
	name = "Clan Tzimisce Manor"
	icon_state = "old_clan_tzimisce"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/prince.ogg'

/area/vtm/sewer/tzimisce_sanctum
	name = "Clan Tzimisce Sanctum"
	icon_state = "old_clan_sanctum"
	ambient_buzz = 'modular_tfn/master_files/sound/the_final_nights/nosferatu.ogg'

/area/vtm/interior/setite
	name = "Community Center"
	icon_state = "hotel"
	outdoors = FALSE

/area/vtm/interior/setite/basement
	name = "Community Center Basement"
	yang_chi = 0
	yin_chi = 2
