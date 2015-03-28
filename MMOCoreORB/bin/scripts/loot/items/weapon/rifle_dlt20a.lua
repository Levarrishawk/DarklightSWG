--Automatically generated by SWGEmu Spawn Tool v0.12 loot editor.

rifle_dlt20a = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/ranged/rifle/rifle_dlt20a.iff",
	craftingValues = {
		{"mindamage",56,89,0},
		{"maxdamage",94,153,0},
		{"attackspeed",8.1,5.9,0},
		{"woundchance",4.8,11.3,0},
		{"hitpoints",750,750,0},
		{"roundsused",15,45,0},
		{"zerorangemod",-70,-70,0},
		{"maxrangemod",-50,-50,0},
		{"midrange",45,45,0},
		{"midrangemod",21,39,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 1000,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 25,
	junkMaxValue = 45

}

addLootItemTemplate("rifle_dlt20a", rifle_dlt20a)
