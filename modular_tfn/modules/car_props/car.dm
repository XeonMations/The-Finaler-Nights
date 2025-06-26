
/obj/structure/vampcar
	name = "car"
	desc = "It drives."
	icon = 'modular_tfn/modules/car_props/cars.dmi'
	icon_state = "taxi"
	plane = GAME_PLANE

	anchored = TRUE
	density = TRUE
	pixel_w = -16

/obj/structure/vampcar/Initialize()
	. = ..()
	var/atom/movable/M = new(get_step(loc, EAST))
	M.density = TRUE
	M.anchored = TRUE
	dir = pick(NORTH, SOUTH, WEST, EAST)
