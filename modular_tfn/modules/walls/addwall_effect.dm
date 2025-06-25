/obj/effect/addwall
	name = "Debug"
	desc = "First rule of debug placeholder: Do not talk about debug placeholder."
	icon = 'modular_tfn/modules/walls/lowwalls.dmi'
	base_icon_state = "wall"
	plane = WALL_PLANE
	anchored = TRUE
	mouse_opacity = 0

/obj/effect/addwall/Initialize(mapload)
	. = ..()
	var/static/list/loc_connections = list(
		COMSIG_ATOM_ENTERED = PROC_REF(on_entered),
		COMSIG_ATOM_EXITED = PROC_REF(on_exited)
	)
	AddElement(/datum/element/connect_loc, src, loc_connections)

/obj/effect/addwall/proc/on_entered(datum/source, atom/movable/AM)
	SIGNAL_HANDLER
	alpha = 128

/obj/effect/addwall/proc/on_exited(datum/source, atom/movable/AM, direction)
	SIGNAL_HANDLER
	alpha = 255
