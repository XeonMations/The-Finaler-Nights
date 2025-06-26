/datum/controller/subsystem/job/proc/free_role(rank, mob/living/carbon/human/mob)
	if(!rank)
		return
	var/datum/job/job = get_job(rank)
	if(!job)
		return FALSE
	job.current_positions = max(0, job.current_positions - 1)
