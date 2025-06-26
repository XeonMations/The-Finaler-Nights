/obj/structure/vampfence
	name = "\improper fence"
	desc = "Protects places from walking in."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "fence"
	plane = GAME_PLANE
	anchored = TRUE
	density = TRUE

/obj/structure/vampfence/corner
	icon_state = "fence_corner"

/obj/structure/vampfence/rich
	icon = 'modular_tfn/modules/props/32x48.dmi'

/obj/structure/vampfence/corner/rich
	icon = 'modular_tfn/modules/props/32x48.dmi'

/obj/structure/vampfence/Initialize()
	.=..()
	AddElement(/datum/element/climbable)

/obj/structure/vampfence/rich/Initialize()
	.=..()
	RemoveElement(/datum/element/climbable)


/obj/structure/gargoyle
	name = "\improper gargoyle"
	desc = "Some kind of gothic architecture."
	icon = 'modular_tfn/modules/props/32x48.dmi'
	icon_state = "gargoyle"
	pixel_z = 8
	plane = GAME_PLANE
	S_LAYER
	anchored = TRUE

/obj/structure/lamppost
	name = "lamppost"
	desc = "Gives some light to the streets."
	icon = 'modular_tfn/modules/props/lamppost.dmi'
	base_icon_state = "base"
	plane = GAME_PLANE
	layer = SPACEVINE_LAYER
	var/number_of_lamps
	pixel_w = -32
	anchored = TRUE
	density = TRUE
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF | FREEZE_PROOF

/obj/structure/lamppost/one
	icon_state = "one"
	number_of_lamps = 1

/obj/structure/lamppost/two
	icon_state = "two"
	number_of_lamps = 2

/obj/structure/lamppost/three
	icon_state = "three"
	number_of_lamps = 3

/obj/structure/lamppost/four
	icon_state = "four"
	number_of_lamps = 4

/obj/structure/lamppost/sidewalk
	icon_state = "civ"
	number_of_lamps = 5

/obj/structure/lamppost/sidewalk/chinese
	icon_state = "chinese"

/obj/structure/trafficlight
	name = "traffic light"
	desc = "Shows when road is free or not."
	icon = 'modular_tfn/modules/props/lamppost.dmi'
	icon_state = "traffic"
	plane = GAME_PLANE
	layer = SPACEVINE_LAYER
	pixel_w = -32
	anchored = TRUE

/obj/structure/trafficlight/Initialize()
	. = ..()
	if(check_holidays(CHRISTMAS))
		if(istype(get_area(src), /area/vtm))
			var/area/vtm/V = get_area(src)
			if(V.outdoors)
				icon_state = "[initial(icon_state)]-snow"


/obj/structure/clothingrack
	name = "clothing rack"
	desc = "Have some clothes."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "rack"
	plane = GAME_PLANE
	anchored = TRUE
	density = TRUE

/obj/structure/clothingrack/rand
	icon_state = "rack2"

/obj/structure/clothingrack/rand/Initialize()
	. = ..()
	icon_state = "rack[rand(1, 5)]"

/obj/structure/clothinghanger
	name = "clothing hanger"
	desc = "Have some clothes."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "hanger1"
	plane = GAME_PLANE
	anchored = TRUE
	density = TRUE

/obj/structure/clothinghanger/Initialize()
	. = ..()
	icon_state = "hanger[rand(1, 4)]"

/obj/structure/foodrack
	name = "food rack"
	desc = "Have some food."
	icon = 'modular_tfn/modules/props/64x64.dmi'
	icon_state = "rack2"
	plane = GAME_PLANE
	anchored = TRUE
	density = TRUE
	pixel_w = -16

/obj/structure/foodrack/Initialize()
	. = ..()
	icon_state = "rack[rand(1, 5)]"

/obj/structure/trashcan
	name = "trash can"
	desc = "Holds garbage inside."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "garbage"
	plane = GAME_PLANE
	anchored = TRUE
	density = TRUE

/obj/structure/trashcan/Initialize()
	. = ..()
	if(prob(25))
		icon_state = "garbage_open"
	if(check_holidays(CHRISTMAS))
		if(istype(get_area(src), /area/vtm))
			var/area/vtm/V = get_area(src)
			if(V.outdoors)
				icon_state = "[initial(icon_state)]-snow"

/obj/structure/trashbag
	name = "trash bag"
	desc = "Holds garbage inside."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "garbage1"
	anchored = TRUE

/obj/structure/trashbag/Initialize()
	. = ..()
	var/garbagestate = rand(1, 9)
	if(garbagestate > 6)
		density = TRUE
	icon_state = "garbage[garbagestate]"

/obj/structure/hotelsign
	name = "sign"
	desc = "It says H O T E L."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "hotel"
	plane = GAME_PLANE
	anchored = TRUE

/obj/structure/hotelsign/Initialize()
	. = ..()
	set_light(3, 3, "#8e509e")
	if(check_holidays(CHRISTMAS))
		if(istype(get_area(src), /area/vtm))
			var/area/vtm/V = get_area(src)
			if(V.outdoors)
				icon_state = "[initial(icon_state)]-snow"

/obj/structure/hotelbanner
	name = "banner"
	desc = "It says H O T E L."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "banner"
	plane = GAME_PLANE
	anchored = TRUE
	density = TRUE

/obj/structure/hotelbanner/Initialize()
	. = ..()
	if(check_holidays(CHRISTMAS))
		if(istype(get_area(src), /area/vtm))
			var/area/vtm/V = get_area(src)
			if(V.outdoors)
				icon_state = "[initial(icon_state)]-snow"

/obj/structure/milleniumsign
	name = "sign"
	desc = "It says M I L L E N I U M."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "millenium"
	plane = GAME_PLANE
	anchored = TRUE

/obj/structure/milleniumsign/Initialize()
	. = ..()
	set_light(3, 3, "#4299bb")

/obj/structure/anarchsign
	name = "sign"
	desc = "It says B A R."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "bar"
	plane = GAME_PLANE
	anchored = TRUE

/obj/structure/anarchsign/Initialize()
	. = ..()
	set_light(3, 3, "#ffffff")
	if(check_holidays(CHRISTMAS))
		if(istype(get_area(src), /area/vtm))
			var/area/vtm/V = get_area(src)
			if(V.outdoors)
				icon_state = "[initial(icon_state)]-snow"

/obj/structure/chinesesign
	name = "sign"
	desc = "雨天和血的机会."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "chinese1"
	plane = GAME_PLANE
	anchored = TRUE

/obj/structure/chinesesign/Initialize()
	. = ..()
	if(check_holidays(CHRISTMAS))
		if(istype(get_area(src), /area/vtm))
			var/area/vtm/V = get_area(src)
			if(V.outdoors)
				icon_state = "[initial(icon_state)]-snow"

/obj/structure/chinesesign/alt
	icon_state = "chinese2"

/obj/structure/chinesesign/alt/alt
	icon_state = "chinese3"

/obj/structure/arc
	name = "chinatown arc"
	desc = "Cool chinese architecture."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "ark1"
	plane = GAME_PLANE
	anchored = TRUE

/obj/structure/arc/Initialize()
	. = ..()
	if(check_holidays(CHRISTMAS))
		if(istype(get_area(src), /area/vtm))
			var/area/vtm/V = get_area(src)
			if(V.outdoors)
				icon_state = "[initial(icon_state)]-snow"

/obj/structure/arc/add
	icon_state = "ark2"

/obj/structure/trad
	name = "traditional lamp"
	desc = "Cool chinese lamp."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "trad"
	plane = GAME_PLANE
	anchored = TRUE

/obj/structure/vampipe
	name = "pipes"
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "piping1"
	plane = GAME_PLANE
	anchored = TRUE

/obj/structure/vamproofwall
	name = "wall"
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "the_wall"
	plane = GAME_PLANE
	anchored = TRUE

/obj/structure/hydrant
	name = "hydrant"
	desc = "Used for firefighting."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "hydrant"
	anchored = TRUE

/obj/structure/hydrant/Initialize()
	. = ..()
	if(check_holidays(CHRISTMAS))
		if(istype(get_area(src), /area/vtm))
			var/area/vtm/V = get_area(src)
			if(V.outdoors)
				icon_state = "[initial(icon_state)]-snow"

/obj/structure/hydrant/mouse_drop_receive(mob/living/M, mob/user, params)
	. = ..()

	if(HAS_TRAIT(user, TRAIT_DWARF)) //Only lean on the fire hydrant if we are smol
		LoadComponent(/datum/component/leanable, src)

/obj/structure/roadblock
	name = "\improper road block"
	desc = "Protects places from walking in."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "roadblock"
	plane = GAME_PLANE
	anchored = TRUE
	density = TRUE

/obj/structure/roadblock/alt
	icon_state = "barrier"

/obj/machinery/light/prince
	icon = 'modular_tfn/modules/props/props.dmi'

/obj/machinery/light/prince/broken
	status = LIGHT_BROKEN
	icon_state = "tube-broken"

/obj/structure/jesuscross
	name = "Jesus Christ on a cross"
	desc = "Jesus said, “Father, forgive them, for they do not know what they are doing.” And they divided up his clothes by casting lots (Luke 23:34)."
	icon = 'modular_tfn/modules/props/64x64.dmi'
	icon_state = "cross"
	plane = GAME_PLANE
	anchored = TRUE
	density = TRUE
	pixel_w = -16
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF | FREEZE_PROOF

/obj/structure/roadsign
	name = "road sign"
	desc = "Do not drive your car cluelessly."
	icon = 'modular_tfn/modules/props/32x48.dmi'
	icon_state = "stop"
	plane = GAME_PLANE
	anchored = TRUE

/obj/structure/roadsign/stop
	name = "stop sign"
	icon_state = "stop"

/obj/structure/roadsign/noparking
	name = "no parking sign"
	icon_state = "noparking"

/obj/structure/roadsign/nopedestrian
	name = "no pedestrian sign"
	icon_state = "nopedestrian"

/obj/structure/roadsign/busstop
	name = "bus stop sign"
	icon_state = "busstop"

/obj/structure/roadsign/speedlimit
	name = "speed limit sign"
	icon_state = "speed50"

/obj/structure/roadsign/speedlimit40
	name = "speed limit sign"
	icon_state = "speed40"

/obj/structure/roadsign/speedlimit25
	name = "speed limit sign"
	icon_state = "speed25"

/obj/structure/roadsign/warningtrafficlight
	name = "traffic light warning sign"
	icon_state = "warningtrafficlight"

/obj/structure/roadsign/warningpedestrian
	name = "pedestrian warning sign"
	icon_state = "warningpedestrian"

/obj/structure/roadsign/parking
	name = "parking sign"
	icon_state = "parking"

/obj/structure/roadsign/crosswalk
	name = "crosswalk sign"
	icon_state = "crosswalk"

/obj/structure/barrels
	name = "barrel"
	desc = "Storage some liquids."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "barrel1"
	plane = GAME_PLANE
	anchored = TRUE
	density = TRUE

/obj/structure/barrels/rand
	icon_state = "barrel2"

/obj/structure/barrels/rand/Initialize()
	. = ..()
	icon_state = "barrel[rand(1, 12)]"

/obj/structure/bricks
	name = "bricks"
	desc = "Building material."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "bricks"
	plane = GAME_PLANE
	anchored = TRUE
	density = TRUE

/obj/cargotrain
	name = "cargocrate"
	desc = "It delivers a lot of things."
	icon = 'modular_tfn/modules/props/containers.dmi'
	icon_state = "1"
	plane = GAME_PLANE
	anchored = TRUE
	density = FALSE
	pass_flags = PASSTABLE | PASSGRILLE | PASSMOB | PASSGLASS | PASSCLOSEDTURF
	movement_type = PHASING

/obj/cargotrain/Initialize()
	. = ..()
	icon_state = "[rand(2, 5)]"

/obj/cargocrate
	name = "cargocrate"
	desc = "It delivers a lot of things."
	icon = 'modular_tfn/modules/props/containers.dmi'
	icon_state = "1"
	plane = GAME_PLANE
	anchored = TRUE

/obj/structure/marketplace
	name = "stock market"
	desc = "Recent stocks visualization."
	icon = 'modular_tfn/modules/props/stonks.dmi'
	icon_state = "marketplace"
	plane = GAME_PLANE
	anchored = TRUE
	density = TRUE
	pixel_w = -24
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF | FREEZE_PROOF

/obj/structure/fuelstation
	name = "fuel station"
	desc = "Fuel your car here. 50 dollars per 1000 units."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "fuelstation"
	plane = GAME_PLANE
	anchored = TRUE
	density = TRUE
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF | FREEZE_PROOF
	var/stored_money = 0

/*
/obj/structure/fuelstation/AltClick(mob/user)
	if(stored_money)
		say("Money refunded.")
		for(var/i in 1 to stored_money)
			new /obj/item/stack/dollar(loc)
		stored_money = 0

/obj/structure/fuelstation/examine(mob/user)
	. = ..()
	. += "<b>Balance</b>: [stored_money] dollars"

/obj/structure/fuelstation/attackby(obj/item/I, mob/living/user, params)
	if(istype(I, /obj/item/stack/dollar))
		var/obj/item/stack/dollar/D = I
		stored_money += D.amount
		to_chat(user, "<span class='notice'>You insert [D.amount] dollars into [src].</span>")
		qdel(I)
		say("Payment received.")
	if(istype(I, /obj/item/gas_can))
		var/obj/item/gas_can/G = I
		if(G.stored_gasoline < 1000 && stored_money)
			var/gas_to_dispense = min(stored_money*20, 1000-G.stored_gasoline)
			var/money_to_spend = round(gas_to_dispense/20)
			G.stored_gasoline = min(1000, G.stored_gasoline+gas_to_dispense)
			stored_money = max(0, stored_money-money_to_spend)
			playsound(loc, 'code/modules/wod13/sounds/gas_fill.ogg', 50, TRUE)
			to_chat(user, "<span class='notice'>You fill [I].</span>")
			say("Gas filled.")
*/

/obj/structure/reagent_dispensers/cleaningfluid
	name = "cleaning fluid tank"
	desc = "A container filled with cleaning fluid."
	reagent_id = /datum/reagent/space_cleaner
	icon_state = "water"

/obj/structure/rack/tacobell
	name = "table"
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "tacobell"

/obj/structure/rack/tacobell/attack_hand(mob/living/user)
	return

/obj/structure/rack/tacobell/horizontal
	icon_state = "tacobell1"

/obj/structure/rack/tacobell/vertical
	icon_state = "tacobell2"

/obj/structure/rack/tacobell/south
	icon_state = "tacobell3"

/obj/structure/rack/tacobell/north
	icon_state = "tacobell4"

/obj/structure/rack/tacobell/east
	icon_state = "tacobell5"

/obj/structure/rack/tacobell/west
	icon_state = "tacobell6"

/obj/structure/rack/bubway
	name = "table"
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "bubway"

/obj/structure/rack/bubway/attack_hand(mob/living/user)
	return

/obj/structure/rack/bubway/horizontal
	icon_state = "bubway1"

/obj/structure/rack/bubway/vertical
	icon_state = "bubway2"

/obj/structure/rack/bubway/south
	icon_state = "bubway3"

/obj/structure/rack/bubway/north
	icon_state = "bubway4"

/obj/structure/rack/bubway/east
	icon_state = "bubway5"

/obj/structure/rack/bubway/west
	icon_state = "bubway6"

/obj/bacotell
	name = "Baco Tell"
	desc = "Eat some precious tacos and pizza!"
	icon = 'modular_tfn/modules/props/fastfood.dmi'
	icon_state = "bacotell"
	plane = GAME_PLANE
	anchored = TRUE
	pixel_w = -16

/obj/bubway
	name = "BubWay"
	desc = "Eat some precious burgers and pizza!"
	icon = 'modular_tfn/modules/props/fastfood.dmi'
	icon_state = "bubway"
	plane = GAME_PLANE
	anchored = TRUE
	pixel_w = -16

/obj/gummaguts
	name = "Gumma Guts"
	desc = "Eat some precious chicken nuggets and donuts!"
	icon = 'modular_tfn/modules/props/fastfood.dmi'
	icon_state = "gummaguts"
	plane = GAME_PLANE
	anchored = TRUE
	pixel_w = -16

/obj/underplate
	name = "underplate"
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "underplate"
	plane = GAME_PLANE
	layer = TABLE_LAYER
	anchored = TRUE

/obj/underplate/stuff
	icon_state = "stuff"

/obj/order
	name = "order sign"
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "order"
	plane = GAME_PLANE
	anchored = TRUE

/obj/order1
	name = "order screen"
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "order1"
	plane = GAME_PLANE
	anchored = TRUE

/obj/order2
	name = "order screen"
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "order2"
	plane = GAME_PLANE
	anchored = TRUE

/obj/order3
	name = "order screen"
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "order3"
	plane = GAME_PLANE
	anchored = TRUE

/obj/order4
	name = "order screen"
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "order4"
	plane = GAME_PLANE
	anchored = TRUE

/obj/structure/billiard_table
	name = "billiard table"
	desc = "Come here, play some BALLS. I know you want it so much..."
	icon = 'modular_tfn/modules/props/32x48.dmi'
	icon_state = "billiard1"
	plane = GAME_PLANE
	anchored = TRUE
	density = TRUE

/obj/structure/billiard_table/Initialize()
	. = ..()
	icon_state = "billiard[rand(1, 3)]"

/obj/police_department
	name = "San Francisco Police Department"
	desc = "Stop right there you criminal scum! Nobody can break the law on my watch!!"
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "police"
	plane = GAME_PLANE
	anchored = TRUE
	pixel_z = 40

/obj/structure/pole
	name = "stripper pole"
	desc = "A pole fastened to the ceiling and floor, used to show of ones goods to company."
	icon = 'modular_tfn/modules/props/64x64.dmi'
	icon_state = "pole"
	density = TRUE
	anchored = TRUE
	layer = 4 //make it the same layer as players.
	density = 0 //easy to step up on

/obj/structure/strip_club
	name = "sign"
	desc = "It says DO RA. Maybe it's some kind of strip club..."
	icon = 'modular_tfn/modules/props/dora.dmi'
	icon_state = "dora"
	plane = GAME_PLANE
	anchored = TRUE
	pixel_w = -8
	pixel_z = 32

/obj/structure/strip_club/Initialize()
	. = ..()
	set_light(3, 2, "#8e509e")

/obj/structure/cabaret_sign
	name = "cabaret"
	desc = "An enticing pair of legs... I wonder what's inside?"
	icon = 'modular_tfn/modules/props/cabaret.dmi'
	icon_state = "cabar"
	plane = GAME_PLANE
	anchored = TRUE

/obj/structure/cabaret_sign/Initialize()
	. = ..()
	set_light(3, 2, "#d98aec")

/obj/structure/cabaret_sign2
	name = "cabaret"
	desc = "An enticing pair of legs... I wonder what's inside?"
	icon = 'modular_tfn/modules/props/cabaret.dmi'
	icon_state = "et"
	plane = GAME_PLANE
	anchored = TRUE

/obj/structure/cabaret_sign2/Initialize()
	. = ..()
	set_light(3, 2, "#d98aec")

/obj/structure/fire_barrel
	name = "barrel"
	desc = "Some kind of light and warm source..."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "barrel"
	plane = GAME_PLANE
	anchored = TRUE
	density = TRUE

/obj/structure/fire_barrel/Initialize()
	. = ..()
	set_light(3, 2, "#ffa800")

/obj/structure/fountain
	name = "fountain"
	desc = "Gothic water structure."
	icon = 'modular_tfn/modules/props/fountain.dmi'
	icon_state = "fountain"
	plane = GAME_PLANE
	anchored = TRUE
	density = TRUE
	pixel_w = -16
	pixel_z = -16

/obj/structure/coclock
	name = "clock"
	desc = "See the time."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "clock"
	plane = GAME_PLANE
	anchored = TRUE
	pixel_z = 32

/obj/structure/coclock/examine(mob/user)
	. = ..()
	to_chat(user, "<b>[station_time()]</b>")

/obj/structure/coclock/grandpa
	icon = 'modular_tfn/modules/props/grandpa_clock.dmi'
	icon_state = "cock"
	plane = GAME_PLANE
	anchored = TRUE
	density = TRUE
	pixel_z = 0

/obj/american_flag
	name = "american flag"
	desc = "PATRIOTHICC!!!"
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "flag_usa"
	plane = GAME_PLANE
	anchored = TRUE

//flags

/obj/flag
	name = "DO NOT USE"
	desc = "This shouldn't be used. If you see this in-game, someone has fucked up."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "flag_usa"
	plane = GAME_PLANE
	anchored = TRUE

/obj/flag/usa
	name = "flag of the United States"
	desc = "The flag of the United States of America. In God we trust!"
	icon_state = "flag_usa"

/obj/flag/california
	name = "flag of California"
	desc = "The flag of the great State of California. Eureka!"
	icon_state = "flag_california"

/obj/flag/britain
	name = "flag of Great Britain"
	desc = "The flag of the United Kingdom of Great Britain and Northern Ireland. Dieu et mon droit!"
	icon_state = "flag_britain"

/obj/flag/france
	name = "flag of France"
	desc = "The flag of the French Republic. Liberte, egalite, fraternite!"
	icon_state = "flag_france"

/obj/flag/germany
	name = "flag of Germany"
	desc = "The flag of the Federal Republic of Germany."
	icon_state = "flag_germany"

/obj/flag/spain
	name = "flag of Spain"
	desc = "The flag of the Kingdom of Spain. Plus ultra!"
	icon_state = "flag_spain"

/obj/flag/italy
	name = "flag of Italy"
	desc = "The flag of the Republic of Italy."
	icon_state = "flag_italy"

/obj/flag/vatican
	name = "flag of the Vatican"
	desc = "The flag of Vatican City."
	icon_state = "flag_vatican"

/obj/flag/russia
	name = "flag of Russia"
	desc = "The flag of the Russian Federation."
	icon_state = "flag_russia"

/obj/flag/soviet
	name = "flag of the Soviet Union"
	desc = "The flag of the Union of Socialist Soviet Republics. Workers of the world, unite!"
	icon_state = "flag_soviet"

/obj/flag/china
	name = "flag of China"
	desc = "The flag of the People's Republic of China."
	icon_state = "flag_china"

/obj/flag/taiwan
	name = "flag of Taiwan"
	desc = "The flag of the Republic of China."
	icon_state = "flag_taiwan"

/obj/flag/japan
	name = "flag of Japan"
	desc = "The flag of the State of Japan."
	icon_state = "flag_japan"

/obj/flag/anarchy
	name = "anarchist flag"
	desc = "The flag of the anarchist movement."
	icon_state = "flag_anarchy"

/obj/structure/roofstuff
	name = "roof ventilation"
	desc = "Air to inside."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "roof1"
	plane = GAME_PLANE
	anchored = TRUE
	density = TRUE

/obj/structure/roofstuff/Initialize()
	. = ..()
	if(check_holidays(CHRISTMAS))
		if(istype(get_area(src), /area/vtm))
			var/area/vtm/V = get_area(src)
			if(V.outdoors)
				icon_state = "[initial(icon_state)]-snow"

/obj/structure/roofstuff/alt1
	icon_state = "roof2"
	density = FALSE

/obj/structure/roofstuff/alt2
	icon_state = "roof3"

/obj/structure/roofstuff/alt3
	icon_state = "roof4"

/obj/structure/vamptree
	name = "tree"
	desc = "Cute and tall flora."
	icon = 'modular_tfn/modules/props/trees.dmi'
	icon_state = "tree1"
	plane = GAME_PLANE
	layer = SPACEVINE_LAYER
	anchored = TRUE
	density = TRUE
	pixel_w = -32
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF | FREEZE_PROOF
	var/burned = FALSE

/obj/structure/vamptree/Initialize()
	. = ..()
	icon_state = "tree[rand(1, 11)]"
	if(check_holidays(CHRISTMAS))
		if(istype(get_area(src), /area/vtm))
			var/area/vtm/V = get_area(src)
			if(V.outdoors)
				icon_state = "[initial(icon_state)][rand(1, 11)]-snow"

/obj/structure/vamptree/proc/burnshit()
	if(!burned)
		burned = TRUE
		icon_state = "dead[rand(1, 3)]"

/obj/structure/vamptree/pine
	name = "pine"
	desc = "Cute and tall flora."
	icon = 'modular_tfn/modules/props/pines.dmi'
	icon_state = "pine1"
	plane = GAME_PLANE
	layer = SPACEVINE_LAYER
	anchored = TRUE
	density = TRUE
	pixel_w = -24
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF | FREEZE_PROOF

/obj/structure/vamptree/pine/Initialize()
	. = ..()
	icon_state = "pine[rand(1, 4)]"
	if(check_holidays(CHRISTMAS))
		if(istype(get_area(src), /area/vtm))
			var/area/vtm/V = get_area(src)
			if(V.outdoors)
				icon_state = "pine[rand(1, 4)]-snow"
	if(prob(2))
		burned = TRUE
		icon_state = "dead[rand(1, 5)]"

/obj/structure/vamptree/pine/burnshit()
	if(!burned)
		burned = TRUE
		icon_state = "dead[rand(1, 5)]"

/obj/structure/vampstatue
	name = "statue"
	desc = "A cloaked figure forgotten to the ages."
	icon = 'modular_tfn/modules/props/statue.dmi'
	icon_state = "statue"
	plane = GAME_PLANE
	anchored = TRUE
	density = TRUE
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF | FREEZE_PROOF

/obj/structure/vampstatue/angel
	name = "angel statue"
	desc = "An angel stands before you. You're glad it's only stone."
	icon = 'modular_tfn/modules/props/64x64.dmi'
	icon_state = "angelstatue"

/obj/structure/vampstatue/cloaked
	name = "cloaked figure"
	desc = "He appears to be sitting."
	icon = 'modular_tfn/modules/props/32x48.dmi'
	icon_state = "cloakedstatue"

/obj/structure/bath
	name = "bath"
	desc = "Not big enough for hiding in."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "tub"
	plane = GAME_PLANE
	anchored = TRUE
	density = TRUE
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF | FREEZE_PROOF

/obj/weapon_showcase
	name = "weapon showcase"
	desc = "Look, a gun."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "showcase"
	density = TRUE
	anchored = TRUE
	plane = GAME_PLANE
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF | FREEZE_PROOF

/obj/weapon_showcase/Initialize()
	. = ..()
	icon_state = "showcase[rand(1, 7)]"

/obj/structure/vamprocks
	name = "rock"
	desc = "Rokk."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "rock1"
	plane = GAME_PLANE
	anchored = TRUE
	density = TRUE
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF | FREEZE_PROOF

/obj/structure/vamprocks/Initialize()
	. = ..()
	icon_state = "rock[rand(1, 9)]"

/obj/structure/small_vamprocks
	name = "rock"
	desc = "Rokk."
	icon = 'modular_tfn/modules/props/props.dmi'
	icon_state = "smallrock1"
	plane = GAME_PLANE
	anchored = TRUE
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF | FREEZE_PROOF

/obj/structure/small_vamprocks/Initialize()
	. = ..()
	icon_state = "smallrock[rand(1, 6)]"

/obj/structure/big_vamprocks
	name = "rock"
	desc = "Rokk."
	icon = 'modular_tfn/modules/props/64x64.dmi'
	icon_state = "rock1"
	plane = GAME_PLANE
	anchored = TRUE
	density = TRUE
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF | FREEZE_PROOF
	pixel_w = -16

/obj/structure/big_vamprocks/Initialize()
	. = ..()
	icon_state = "rock[rand(1, 4)]"

/obj/structure/stalagmite
	name = "stalagmite"
	desc = "Rokk."
	icon = 'modular_tfn/modules/props/64x64.dmi'
	icon_state = "stalagmite1"
	plane = GAME_PLANE
	anchored = TRUE
	density = TRUE
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF | FREEZE_PROOF
	pixel_w = -16

/obj/structure/stalagmite/Initialize()
	. = ..()
	icon_state = "stalagmite[rand(1, 5)]"
