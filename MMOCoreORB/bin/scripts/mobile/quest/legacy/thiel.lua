thiel = Creature:new {
	objectName = "",
	customName = "Thiel",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 15,
	chanceHit = 0.31,
	damageMin = 160,
	damageMax = 170,
	baseXp = 831,
	baseHAM = 2400,
	baseHAMmax = 3000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,0,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = PACK,
	optionsBitmask = 136,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_commoner_artisan_trandoshan_male_01.iff",
				"object/mobile/dressed_commoner_artisan_bith_male_01.iff",
				"object/mobile/dressed_commoner_artisan_sullustan_male_01.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "force_sensitive_intro_conv",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(thiel, "thiel")
