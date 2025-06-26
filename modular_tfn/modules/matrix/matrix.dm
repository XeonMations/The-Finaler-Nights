/obj/matrix
	name = "matrix"
	desc = "Suicide is no exit..."
	icon = 'modular_tfn/modules/matrix/matrix.dmi'
	icon_state = "matrix"
	plane = GAME_PLANE
	layer = ABOVE_NORMAL_TURF_LAYER
	anchored = TRUE
	opacity = TRUE
	density = TRUE
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF | FREEZE_PROOF

/obj/matrix/attack_hand(mob/user)
	if(!user.client)
		return FALSE
	//if(iswerewolf(user))
	//	to_chat(user, span_warning("Return to your homid form before you matrix!"))
	//	return TRUE
	if(do_after(user, 100, src))
		cryoMob(user, src)
	return TRUE

/obj/matrix/proc/cryoMob(mob/living/mob_occupant)
	if(mob_occupant.mind && mob_occupant.mind.assigned_role)
		//Handle job slot/tater cleanup.
		var/job = mob_occupant.mind.assigned_role
		SSjob.free_role(job)

	for(var/datum/record/crew/R as anything in GLOB.manifest.general)
		if((R.name == mob_occupant.real_name))
			qdel(R)

	//if(mob_occupant.bloodhunted)
	//	SSbloodhunt.hunted -= mob_occupant
	//	mob_occupant.bloodhunted = FALSE
	//	SSbloodhunt.update_shit()

	// Ghost and delete the mob.
	if(!mob_occupant.get_ghost(TRUE))
		if(world.time < 15 MINUTES) // before the 15 minute mark
			mob_occupant.ghostize(FALSE) // Players despawned too early may not re-enter the game
		else
			mob_occupant.ghostize(TRUE)
	QDEL_NULL(mob_occupant)
