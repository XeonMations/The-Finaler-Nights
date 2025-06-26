/turf/open/floor/plating/sewage
	gender = PLURAL
	name = "sewage"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "shit"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_WATER
	barefootstep = FOOTSTEP_WATER
	clawfootstep = FOOTSTEP_WATER
	heavyfootstep = FOOTSTEP_WATER

/turf/open/floor/plating/sewage/border
	icon_state = "shit_border"

/turf/open/floor/plating/vampcanal
	gender = PLURAL
	name = "plating"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "canal1"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_FLOOR
	barefootstep = FOOTSTEP_HARD_BAREFOOT
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/vampcanal/Initialize()
	..()
	icon_state = "canal[rand(1, 3)]"

/turf/open/floor/plating/vampcanalplating
	gender = PLURAL
	name = "plating"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "canal_plating1"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_PARKET
	barefootstep = FOOTSTEP_PARKET
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/vampcanal/Initialize()
	..()
	icon_state = "canal_plating[rand(1, 4)]"

/turf/closed/indestructible/elevatorshaft
	name = "elevator shaft"
	desc = "Floors, floors, floors..."
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "black"

/turf/open/floor/plating/bacotell
	gender = PLURAL
	name = "plating"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "bacotell"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_TROTUAR
	barefootstep = FOOTSTEP_TROTUAR
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/gummaguts
	gender = PLURAL
	name = "plating"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "gummaguts"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_TROTUAR
	barefootstep = FOOTSTEP_TROTUAR
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/vampwood
	gender = PLURAL
	name = "wood"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "bwood"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_PARKET
	barefootstep = FOOTSTEP_PARKET
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/vampwood/Initialize()
	..()
	set_light(1, 0.5, "#a4b7ff")
	if(check_holidays(CHRISTMAS))
		if(istype(get_area(src), /area/vtm))
			var/area/vtm/V = get_area(src)
			if(V.outdoors)
				icon_state = "snow[rand(1, 14)]"
				footstep = FOOTSTEP_SNOW
				barefootstep = FOOTSTEP_SNOW
				heavyfootstep = FOOTSTEP_SNOW

/turf/open/floor/plating/vampbeach
	gender = PLURAL
	name = "sand"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "sand1"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_SAND
	barefootstep = FOOTSTEP_SAND
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/vampbeach/Initialize()
	..()
	icon_state = "sand[rand(1, 4)]"
	set_light(1, 0.5, "#a4b7ff")
	if(check_holidays(CHRISTMAS))
		if(istype(get_area(src), /area/vtm))
			var/area/vtm/V = get_area(src)
			if(V.outdoors)
				icon_state = "snow[rand(1, 14)]"

/turf/open/floor/plating/vampocean
	gender = PLURAL
	name = "water"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "ocean"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_WATER
	barefootstep = FOOTSTEP_WATER
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	density = TRUE

/turf/open/floor/plating/vampocean/Initialize()
	..()
	set_light(1, 0.5, "#a4b7ff")

/turf/open/floor/plating/vampcrossableocean
	gender = PLURAL
	name = "water"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "ocean"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_WATER
	barefootstep = FOOTSTEP_WATER
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	density = FALSE

/turf/open/floor/plating/vampacid
	gender = PLURAL
	name = "goop"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "acid"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_WATER
	barefootstep = FOOTSTEP_WATER
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	density = FALSE

/turf/open/floor/plating/vampacid/Initialize()
	..()
	set_light(1, 0.5, "#1b7c4c")


/turf/open/floor/plating/vampacid/Entered(atom/movable/AM)
	if(acid_burn(AM))
		START_PROCESSING(SSobj, src)

/turf/open/floor/plating/vampacid/proc/acid_burn(mob/living/L)
	if(isliving(L))
		if(L.movement_type & FLYING)
			return
		//L.apply_damage(10, CLONE)
		L.apply_damage(30, TOX)
		to_chat(L, "<span class='warning'>Your flesh burns!</span>")

/turf/open/floor/plating/parquetry
	gender = PLURAL
	name = "parquetry"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "parquet"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_PARKET
	barefootstep = FOOTSTEP_PARKET
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/parquetry/old
	icon_state = "parquet-old"

/turf/open/floor/plating/parquetry/rich
	icon_state = "parquet-rich"

/turf/open/floor/plating/granite
	gender = PLURAL
	name = "granite"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "granite"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_TROTUAR
	barefootstep = FOOTSTEP_TROTUAR
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/granite/black
	icon_state = "granite-black"

/turf/open/floor/plating/concrete
	gender = PLURAL
	name = "concrete"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "concrete1"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_TROTUAR
	barefootstep = FOOTSTEP_TROTUAR
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/concrete/Initialize()
	..()
	icon_state = "concrete[rand(1, 4)]"

/turf/open/floor/plating/vampgrass
	gender = PLURAL
	name = "grass"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "grass1"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_TRAVA
	barefootstep = FOOTSTEP_TRAVA
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/vampgrass/Initialize()
	..()
	set_light(1, 0.5, "#a4b7ff")
	icon_state = "grass[rand(1, 3)]"
	if(check_holidays(CHRISTMAS))
		if(istype(get_area(src), /area/vtm))
			var/area/vtm/V = get_area(src)
			if(V.outdoors)
				icon_state = "snow[rand(1, 14)]"
				footstep = FOOTSTEP_SNOW
				barefootstep = FOOTSTEP_SNOW
				heavyfootstep = FOOTSTEP_SNOW

/turf/open/floor/plating/vampcarpet
	gender = PLURAL
	name = "carpet"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "carpet_black"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_PARKET
	barefootstep = FOOTSTEP_PARKET
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/vampdirt
	gender = PLURAL
	name = "dirt"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "dirt"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_ASPHALT
	barefootstep = FOOTSTEP_ASPHALT
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/vampdirt/Initialize()
	. = ..()
	set_light(1, 0.5, "#a4b7ff")
	if(check_holidays(CHRISTMAS))
		if(istype(get_area(src), /area/vtm))
			var/area/vtm/V = get_area(src)
			if(V.outdoors)
				icon_state = "snow[rand(1, 14)]"
				footstep = FOOTSTEP_SNOW
				barefootstep = FOOTSTEP_SNOW
				heavyfootstep = FOOTSTEP_SNOW

/turf/open/floor/plating/vampdirt/rails
	name = "rails"
	icon_state = "dirt_rails"

/turf/open/floor/plating/vampdirt/rails/Initialize()
	. = ..()
	if(check_holidays(CHRISTMAS))
		if(istype(get_area(src), /area/vtm))
			var/area/vtm/V = get_area(src)
			if(V.outdoors)
				icon_state = "snow_rails"
				footstep = FOOTSTEP_SNOW
				barefootstep = FOOTSTEP_SNOW
				heavyfootstep = FOOTSTEP_SNOW

/turf/open/floor/plating/vampplating
	gender = PLURAL
	name = "plating"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "plating"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_TROTUAR
	barefootstep = FOOTSTEP_TROTUAR
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/vampplating/mono
	icon_state = "plating-mono"

/turf/open/floor/plating/vampplating/stone
	icon_state = "plating-stone"

/turf/open/floor/plating/rough
	gender = PLURAL
	name = "rough floor"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "rough"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_TROTUAR
	barefootstep = FOOTSTEP_TROTUAR
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/rough/cave
	icon_state = "cave1"

/turf/open/floor/plating/rough/cave/Initialize()
	. = ..()
	icon_state = "cave[rand(1, 7)]"

/turf/open/floor/plating/stone
	gender = PLURAL
	name = "rough floor"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "stone"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_TROTUAR
	barefootstep = FOOTSTEP_TROTUAR
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/stone
	icon_state = "stone1"

/turf/open/floor/plating/stone/Initialize()
	.=..()
	icon_state = "cave[rand(1, 7)]"

/turf/open/floor/plating/toilet
	gender = PLURAL
	name = "plating"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "toilet1"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_PARKET
	barefootstep = FOOTSTEP_PARKET
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/toilet/Initialize()
	..()
	icon_state = "toilet[rand(1, 9)]"

/turf/open/floor/plating/industrial
	gender = PLURAL
	name = "plating"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "industrial1"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_PARKET
	barefootstep = FOOTSTEP_PARKET
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/industrial/Initialize()
	..()
	icon_state = "industrial[rand(1, 9)]"

/turf/open/floor/plating/circled
	gender = PLURAL
	name = "fancy plating"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "circle1"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_PARKET
	barefootstep = FOOTSTEP_PARKET
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/circled/Initialize()
	..()
	icon_state = "circle[rand(1, 8)]"

/turf/open/floor/plating/woodrough
	gender = PLURAL
	name = "wood flooring"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "wood1"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_PARKET
	barefootstep = FOOTSTEP_PARKET
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/woodrough/Initialize()
	..()
	icon_state = "wood[rand(1, 12)]"

/turf/open/floor/plating/woodfancy
	gender = PLURAL
	name = "fancy wood flooring"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "woodd1"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_PARKET
	barefootstep = FOOTSTEP_PARKET
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/woodfancy/Initialize()
	..()
	icon_state = "woodd[rand(1, 12)]"

/turf/open/floor/plating/grate
	gender = PLURAL
	name = "grate"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "lattice_new"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_PLATING
	barefootstep = FOOTSTEP_PARKET
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/grate/dirty
	gender = PLURAL
	name = "grate"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "lattice_new_dirt"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_PLATING
	barefootstep = FOOTSTEP_PARKET
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/church
	gender = PLURAL
	name = "fancy plating"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "church1"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_PARKET
	barefootstep = FOOTSTEP_PARKET
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/church/Initialize()
	..()
	icon_state = "church[rand(1, 4)]"

/turf/open/floor/plating/saint
	gender = PLURAL
	name = "fancy plating"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "saint1"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_PARKET
	barefootstep = FOOTSTEP_PARKET
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/saint/Initialize()
	..()
	icon_state = "saint[rand(1, 2)]"

/turf/open/floor/plating/roofwalk/cobblestones
	name = "cobblestones"

/turf/open/floor/plating/asphalt
	gender = PLURAL
	name = "asphalt"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "asphalt1"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_ASPHALT
	barefootstep = FOOTSTEP_ASPHALT
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/asphalt/Initialize()
	. = ..()
	if(check_holidays(CHRISTMAS))
		if(istype(get_area(src), /area/vtm))
			var/area/vtm/V = get_area(src)
			if(V.outdoors)
				new /obj/effect/decal/snow_overlay(src)
				footstep = FOOTSTEP_SNOW
				barefootstep = FOOTSTEP_SNOW
				heavyfootstep = FOOTSTEP_SNOW
	if(prob(50))
		icon_state = "asphalt[rand(1, 3)]"
		update_appearance()
	if(prob(25))
		new /obj/effect/decal/asphalt(src)
	set_light(1, 0.5, "#a4b7ff")

/turf/open/floor/plating/asphalt/try_replace_tile(obj/item/stack/tile/T, mob/user, params)
	return

/turf/open/floor/plating/asphalt/ex_act(severity, target)
	contents_explosion(severity, target)

/obj/effect/decal/stock
	name = "stock"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "stock"
	mouse_opacity = 0

/turf/open/floor/plating/sidewalkalt
	gender = PLURAL
	name = "sidewalk"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "sidewalk_alt"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_TROTUAR
	barefootstep = FOOTSTEP_TROTUAR
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/sidewalkalt/Initialize()
	. = ..()
	if(check_holidays(CHRISTMAS))
		if(istype(get_area(src), /area/vtm))
			var/area/vtm/V = get_area(src)
			if(V.outdoors)
				icon_state = "snow[rand(1, 14)]"
				footstep = FOOTSTEP_SNOW
				barefootstep = FOOTSTEP_SNOW
				heavyfootstep = FOOTSTEP_SNOW

/turf/open/floor/plating/sidewalk
	gender = PLURAL
	name = "sidewalk"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "sidewalk1"
	var/number_of_variations = 3
	var/based_icon_state = "sidewalk"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_TROTUAR
	barefootstep = FOOTSTEP_TROTUAR
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/sidewalk/Initialize()
	. = ..()
	icon_state = "[based_icon_state][rand(1, number_of_variations)]"
	set_light(1, 0.5, "#a4b7ff")
	if(check_holidays(CHRISTMAS))
		if(istype(get_area(src), /area/vtm))
			var/area/vtm/V = get_area(src)
			if(V.outdoors)
				icon_state = "snow[rand(1, 14)]"
				footstep = FOOTSTEP_SNOW
				barefootstep = FOOTSTEP_SNOW
				heavyfootstep = FOOTSTEP_SNOW

/turf/open/floor/plating/sidewalk/poor
	icon_state = "sidewalk_poor1"
	based_icon_state = "sidewalk_poor"

/turf/open/floor/plating/sidewalk/rich
	icon_state = "sidewalk_rich1"
	number_of_variations = 6
	based_icon_state = "sidewalk_rich"

/turf/open/floor/plating/sidewalk/old
	icon_state = "sidewalk_old1"
	number_of_variations = 4
	based_icon_state = "sidewalk_old"

/turf/open/floor/plating/roofwalk
	gender = PLURAL
	name = "roof"
	icon = 'modular_tfn/modules/flooring/floor.dmi'
	icon_state = "roof"
	flags_1 = NONE
	attachment_holes = FALSE
	bullet_bounce_sound = null
	footstep = FOOTSTEP_TROTUAR
	barefootstep = FOOTSTEP_TROTUAR
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/roofwalk/Initialize()
	. = ..()
	if(check_holidays(CHRISTMAS))
		if(istype(get_area(src), /area/vtm))
			var/area/vtm/V = get_area(src)
			if(V.outdoors)
				icon_state = "snow[rand(1, 14)]"
				footstep = FOOTSTEP_SNOW
				barefootstep = FOOTSTEP_SNOW
				heavyfootstep = FOOTSTEP_SNOW
