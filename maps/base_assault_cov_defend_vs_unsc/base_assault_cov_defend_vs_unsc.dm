#include "../base_assault/base_assault_gm.dm"
#include "cov_v_unsc_gm.dm"

/datum/map/base_assault_cov_vs_unsc
	name = "Covenant Outpost"
	full_name = "Unknown Covenant System, Covenant Outpost"
	system_name = "Unknown System"
	path = "base_assault_cov_defend_vs_unsc"
	station_levels = list()
	admin_levels = list()
	accessible_z_levels = list()
	lobby_icon = 'code/modules/halo/splashworks/title6.jpg'
	id_hud_icons = 'maps/ks7_elmsville/hud_icons.dmi'
	station_networks = list("Exodus")
	station_name  = "Covenant Outpost"
	station_short = "Covenant Outpost"
	dock_name     = "Space Elevator"
	boss_name     = "Ministry of Resolution"
	boss_short    = "Ministry of Resolution"
	company_name  = "Ministry of Resolution"
	company_short = "Ministry of Resolution"

	use_overmap = 1
	overmap_size= 10
	overmap_event_tokens = 1

	allowed_gamemodes = list("base_assault_unsc_urf")
	map_admin_faxes = list("Ministry of Tranquility (General)","Ministry of Resolution (War Matters)","Ministry of Fervent Intercession (Internal Affairs)")

#if !defined(using_map_DATUM)

	#define using_map_DATUM /datum/map/base_assault_unsc_vs_urf

	#include "unit_tests.dm"

	#include "../npc_ships/om_ship_areas.dm"
	#include "../area_holders/overmap_ship_area_holder.dmm"

	#include "../Admin Planet/includes.dm"

	#include "../faction_bases/complex046/complex046.dm"

	#include "../faction_bases/CassiusMoonStation/cassiusmoon.dm"

	#include "../urf_flagship/includes.dm"

	#include "../../code/modules/halo/lobby_music/odst_music.dm"
	#include "../../code/modules/halo/lobby_music/halo_music.dm"

	#include "../../code/modules/halo/supply/unsc.dm"
	#include "../../code/modules/halo/supply/oni.dm"

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Base Assault
#endif

//Spawn In Overrides//
/obj/effect/overmap/complex046

/obj/effect/overmap/unsc_cassius_moon
	overmap_spawn_in_me = list(/obj/effect/overmap/complex046)

/datum/map/base_assault_cov_vs_unsc
	allowed_jobs = list(\
	/datum/job/unsc/spartan_two,
	/datum/job/unsc/marine,
	/datum/job/unsc/marine/specialist,
	/datum/job/unsc/marine/hellbringer,\
	/datum/job/unsc/marine/squad_leader,
	/datum/job/unsc/odst,
	/datum/job/unsc/odst/squad_leader,
	/datum/job/unsc/commanding_officer,
	/datum/job/unsc/executive_officer,
	/datum/job/covenant/huragok,
	/datum/job/covenant/sangheili_minor,
	/datum/job/covenant/sangheili_major,
	/datum/job/covenant/sangheili_ultra,
	/datum/job/covenant/sangheili_shipmaster,
	/datum/job/covenant/kigyarminor,
	/datum/job/covenant/unggoy_minor,
	/datum/job/covenant/unggoy_major,
	/datum/job/covenant/unggoy_ultra,
	/datum/job/covenant/unggoy_deacon,
	/datum/job/covenant/unggoy_heavy,
	/datum/job/covenant/skirmmurmillo,
	/datum/job/covenant/skirmcommando,
	/datum/job/covenant/skirmchampion,
	/datum/job/covenant/brute_minor,
	/datum/job/covenant/brute_major,
	/datum/job/covenant/brute_captain,
	/datum/job/covenant/yanmee_minor,
	/datum/job/covenant/yanmee_major,
	/datum/job/covenant/yanmee_ultra,
	/datum/job/covenant/yanmee_leader,
	)

	allowed_spawns = list(\
		DEFAULT_SPAWNPOINT_ID,\
		"UNSC Base Spawns",\
		"UNSC Base Fallback Spawns"\
		)

	default_spawn = DEFAULT_SPAWNPOINT_ID