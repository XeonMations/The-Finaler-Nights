// Frankly this entire thing should just be what replaces normal walls, but whatever.
/obj/effect/decal/wallpaper
	name = "wall paint"
	icon = 'modular_tfn/modules/wallpaper/wallpaper.dmi'
	icon_state = "wallpaper"
	plane = GAME_PLANE
	mouse_opacity = 0

/obj/effect/decal/wallpaper/Initialize()
	..()
	if(isclosedturf(loc))
		forceMove(get_step(src, SOUTH))
		pixel_y = 32

/obj/effect/decal/wallpaper/low
	icon_state = "wallpaper_low"

/obj/effect/decal/wallpaper/grey
	icon_state = "wallpaper-grey"

/obj/effect/decal/wallpaper/grey/low
	icon_state = "wallpaper-grey_low"

/obj/effect/decal/wallpaper/light
	icon_state = "wallpaper-light"

/obj/effect/decal/wallpaper/light/low
	icon_state = "wallpaper-light_low"

/obj/effect/decal/wallpaper/red
	icon_state = "wallpaper-asylum"

/obj/effect/decal/wallpaper/red/low
	icon_state = "wallpaper-asylum_low"

/obj/effect/decal/wallpaper/blue
	icon_state = "wallpaper-club"

/obj/effect/decal/wallpaper/blue/low
	icon_state = "wallpaper-club_low"

/obj/effect/decal/wallpaper/paper
	name = "wallpapers"
	icon_state = "wallpaper-cheap"

/obj/effect/decal/wallpaper/paper/low
	icon_state = "wallpaper-cheap_low"

/obj/effect/decal/wallpaper/paper/green
	icon_state = "wallpaper-green"

/obj/effect/decal/wallpaper/paper/green/low
	icon_state = "wallpaper-green_low"

/obj/effect/decal/wallpaper/paper/stripe
	icon_state = "wallpaper-stripe"

/obj/effect/decal/wallpaper/paper/stripe/low
	icon_state = "wallpaper-stripe_low"

/obj/effect/decal/wallpaper/paper/rich
	icon_state = "wallpaper-rich"

/obj/effect/decal/wallpaper/paper/rich/low
	icon_state = "wallpaper-rich_low"

/obj/effect/decal/wallpaper/paper/darkred
	icon_state = "wallpaper-dred"

/obj/effect/decal/wallpaper/paper/darkred/low
	icon_state = "wallpaper-dred_low"

/obj/effect/decal/wallpaper/paper/darkgreen
	icon_state = "wallpaper-dgreen"

/obj/effect/decal/wallpaper/paper/darkgreen/low
	icon_state = "wallpaper-dgreen_low"

/obj/effect/decal/wallpaper/stone
	name = "wall decoration"
	icon_state = "wallpaper-stone"

/obj/effect/decal/wallpaper/stone/low
	icon_state = "wallpaper-stone_low"

/obj/effect/decal/wallpaper/gold
	icon_state = "wallpaper-gold"

/obj/effect/decal/wallpaper/gold/alt
	icon_state = "wallpaper-gold_alt"

/obj/effect/decal/wallpaper/gold/low
	icon_state = "wallpaper-gold_low"

/obj/effect/decal/wallpaper/padded
	icon_state = "wallpaper-padded"

/obj/effect/decal/wallpaper/padded/low
	icon_state = "wallpaper-padded_low"

/obj/effect/decal/wallpaper/lightpadded
	icon_state = "wallpaper-lightpadded"

/obj/effect/decal/wallpaper/lightpadded/low
	icon_state = "wallpaper-lightpadded_low"

/obj/effect/decal/wallpaper/papers
	name = "papers"
	plane = GAME_PLANE
	anchored = TRUE

/obj/effect/decal/wallpaper/papers/one
	icon_state = "wall papers 1"

/obj/effect/decal/wallpaper/papers/two
	icon_state = "wall papers 2"

/obj/effect/decal/wallpaper/papers/three
	icon_state = "wall papers 3"

/obj/effect/decal/wallpaper/papers/four
	icon_state = "wall papers 4"

/obj/effect/decal/wallpaper/papers/five
	icon_state = "wall papers 5"

/obj/effect/decal/wallpaper/papers/six
	icon_state = "wall papers 6"

/obj/effect/decal/wallpaper/papers/seven
	icon_state = "wall papers 7"

/obj/effect/decal/wallpaper/papers/eight
	icon_state = "wall papers 8"
