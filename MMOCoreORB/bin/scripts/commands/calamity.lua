CalamityCommand = {
        name = "calamity",
        
	damageMultiplier = 4,
	speedMultiplier = 1.0,
	healthCostMultiplier = 0,
	actionCostMultiplier = 2,
	mindCostMultiplier = 0,
	
	animationCRC = 0,
	effectString = "clienteffect/calamity.cef",
	poolsToDamage = HEALTH_ATTRIBUTE,
	combatSpam = "calamity",
	range = -1
}

AddCommand(CalamityCommand)
