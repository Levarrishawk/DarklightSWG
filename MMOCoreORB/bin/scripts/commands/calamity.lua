CalamityCommand = {
        name = "calamity",
        
	damageMultiplier = 4,
	speedMultiplier = 1.0,
	healthCostMultiplier = 0,
	actionCostMultiplier = 2,
	mindCostMultiplier = 0,
	
	dotEffects = {
	  DotEffect( 
		ONFIRE, 
		{"resistance_fire", "fire_resist"},
		HEALTH,
		true,
		20,
		300,
		300, 
		75,
		100,
		100
	  )
	},

	animationCRC = 0,
	effectString = "clienteffect/calamity.cef",
	poolsToDamage = HEALTH_ATTRIBUTE,
	combatSpam = "calamity",
	range = -1
}

AddCommand(CalamityCommand)
