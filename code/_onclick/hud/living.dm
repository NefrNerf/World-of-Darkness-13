/datum/hud/living
	ui_style = 'icons/hud/screen_gen.dmi'

/datum/hud/living/New(mob/living/owner)
	..()

	pull_icon = new /atom/movable/screen/pull()
	pull_icon.icon = ui_style
	pull_icon.update_icon()
	pull_icon.screen_loc = ui_living_pull
	pull_icon.hud = src
	static_inventory += pull_icon

	combo_display = new /atom/movable/screen/combo()
	infodisplay += combo_display

	static_noise = new /atom/movable/screen()
	static_noise.mouse_opacity = 0
	static_noise.icon = 'icons/hud/screen_gen.dmi'
	static_noise.screen_loc = "WEST,SOUTH to EAST,NORTH"
	static_noise.icon_state = "static_base"
	static_noise.alpha = 6
	static_inventory += static_noise

	//mob health doll! assumes whatever sprite the mob is
//	healthdoll = new /atom/movable/screen/healthdoll/living()
//	healthdoll.hud = src
//	infodisplay += healthdoll
