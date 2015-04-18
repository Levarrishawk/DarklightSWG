krix_swift = Creature:new {
	objectName = "",
	customName = "Krix SwiftShadow",
	socialGroup = "death_watch",
	faction = "",
	level = 127,
	chanceHit = 0.37,
	damageMin = 1260,
	damageMax = 1270,
	baseXp = 12822,
	baseHAM = 158100,
	baseHAMmax = 159900,
	armor = 0,
	resists = {30,30,30,-1,30,-1,30,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 136,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_imperial_general_m.iff"},
	scale = 1.3,
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 6200000},
				{group = "rifles", chance = 550000},
				{group = "pistols", chance = 550000},
				{group = "melee_weapons", chance = 550000},
				{group = "carbines", chance = 550000},
				{group = "clothing_attachments", chance = 25000},
				{group = "armor_attachments", chance = 25000},
				{group = "imperial_officer_common", chance = 450000},
				{group = "wearables_common", chance = 1000000}
			},
			lootChance = 2800000
		}
	},
	weapons = {"imperial_weapons_heavy"},
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(brawlermaster)
}

CreatureTemplates:addCreatureTemplate(krix_swift, "krix_swift")
