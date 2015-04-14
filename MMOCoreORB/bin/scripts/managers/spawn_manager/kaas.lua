JUNKNOTSELLABLE = 0
JUNKGENERIC = 1
JUNKCLOTHESANDJEWELLERY = 2
JUNKWEAPONS = 4
JUNKARMOUR = 8
JUNKTUSKEN = 16
JUNKJEDI = 32
JUNKJAWA = 64

JUNKCONVGENERIC = 1
JUNKCONVARMS = 2
JUNKCONVFINARY = 3
JUNKCONVDENDERRORI = 4
JUNKCONVDENDERTHEED = 5
JUNKCONVLILABORVO = 6
JUNKCONVMALIKVISTAL = 7
JUNKCONVNADOWATTOS = 8
JUNKCONVNATHANTAIKE = 9
JUNKCONVOLLOBOJABBAS = 10
JUNKCONVQUICHDANTOOINE = 11
JUNKCONVREGGINYM = 12
JUNKCONVSHEANILAKE = 13
JUNKCONVSNEGVALARIAN = 14
JUNKCONVJAWAGENERIC = 15
JUNKCONVJAWAFINARY = 16
JUNKCONVJAWAARMS = 17
JUNKCONVJAWATUSKEN = 18

-- Generated by SWGEmu Spawn Tool v0.12
-- {"regionName", xCenter, yCenter, radius, tier, spawnConstant, "spawnGroup", maxSpawnLimit}
-- Tier is a bit mask with the following possible values where each hexadecimal position is one possible configuration.
-- That means that it is not possible to have both a spawn area and a no spawn area in the same region, but
-- a spawn area that is also a no build zone is possible.


UNDEFINEDAREA       = 0x0000
SPAWNAREA           = 0x0001
NOSPAWNAREA         = 0x0002
WORLDSPAWNAREA      = 0x0010
NOBUILDZONEAREA     = 0x0100

kaas_regions = {
        {"mysterious_shrine",-6374,6400,{1,30},NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"a_rebel_outpost",-6131,2705,{1,700},NOSPAWNAREA + NOBUILDZONEAREA,1},
        {"mysterious_shrine_2",-4495,-7535,{1,30},NOSPAWNAREA + NOBUILDZONEAREA,1},
	{"narmle_easy_newbie",-5205,-2290,{1,1400},SPAWNAREA,1,"kaas_world",1256},
	{"narmle_medium_newbie",-5200,-2290,{3,1400,2200},SPAWNAREA,1,"kaas_world",1384},
--      {"narmle_spike",-3389,-2096,{1,30},NOSPAWNAREA + NOBUILDZONEAREA,1},
--	{"northeast_mountains",0,0,{1,0},UNDEFINEDAREA,1},
        {"rebel_outpost",3677,-6447,{1,1500},SPAWNAREA,1,"kaas_world",1384},
--	{"restuss",0,0,{1,0},UNDEFINEDAREA,1},
	{"restuss_easy_newbie",5300,5700,{1,1400},SPAWNAREA,1,"kaas_world",1256},
	{"restuss_medium_newbie",5305,5700,{3,1400,2200},SPAWNAREA,1,"kaas_world",1384},
--      {"rori_gungan_swamp_town",-2073,3315,{1,200},NOSPAWNAREA + NOBUILDZONEAREA,1},
	{"world_spawner",0,0,{1,-1},SPAWNAREA + WORLDSPAWNAREA,1,"kaas_world",2048},


}

kaas_static_spawns = {
	{"imperial_recruiter",60,0,0,0,-48,0, "neutral", "", ""},


}

kaas_badges = {

}
