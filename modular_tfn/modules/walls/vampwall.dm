/turf/closed/wall/vampwall
	name = "old brick wall"
	desc = "A huge chunk of old bricks used to separate rooms."
	icon = 'modular_tfn/modules/walls/walls.dmi'
	icon_state = "wall-0"
	base_icon_state = "wall"
	var/obj/effect/addwall/addwall
	var/low = FALSE
	var/window

/turf/closed/wall/vampwall/CanAllowThrough(atom/movable/mover, turf/target)
	. = ..()
	if(low)
		if(.)
			return
		if(istype(mover) && (mover.pass_flags & PASSTABLE))
			return TRUE
		if(istype(mover.loc, /turf/closed/wall/vampwall)) //Because "low" type walls aren't standardized and are subtypes of different wall types
			var/turf/closed/wall/vampwall/vw = mover.loc
			if(vw.low)
				return TRUE
		//Roughly the same elevation
		if(locate(/obj/structure/table) in get_turf(mover))
			return TRUE

/turf/closed/wall/vampwall/Initialize()
	..()
	if(window)
		var/obj/W = new window(src)
		W.plane = GAME_PLANE
		W.layer = ABOVE_ALL_MOB_LAYER
	else if(!low)
		addwall = new(get_step(src, NORTH))
		addwall.icon_state = icon_state
		addwall.name = name
		addwall.desc = desc

	if(low)
		AddElement(/datum/element/climbable)

/turf/closed/wall/vampwall/set_smoothed_icon_state(new_junction)
	..()
	if(addwall)
		addwall.icon_state = icon_state

/turf/closed/wall/vampwall/Destroy()
	..()
	if(addwall)
		qdel(addwall)

//You can't deconstruct these normally.
/turf/closed/wall/vampwall/deconstruction_hints()
	return

/turf/closed/wall/vampwall/try_decon()
	return FALSE
