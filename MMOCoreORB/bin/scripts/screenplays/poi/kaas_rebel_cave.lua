kaas_rebel_cave = ScreenPlay:new {
	numberOfActs = 1;
	
	lootContainers = {
		

	},

	lootLevel = 100,

	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 700000},
				{group = "junk", chance = 7500000},
				{group = "rifles", chance = 600000},
				{group = "pistols", chance = 600000},
				{group = "clothing_attachments", chance = 300000},
				{group = "armor_attachments", chance = 300000}
			},
			lootChance = 8000000
		}
	},
}

registerScreenPlay("kaas_rebel_cave", true)

function kaas_rebel_cave:start()
	self:spawnMobiles()
end

function kaas_rebel_cave:spawnMobiles()

-- Mobiles

	spawnMobile("kaas", "rebel_commando", 200, -90.5, -103.4, -124.8, 179, 35791564)
	spawnMobile("kaas", "rebel_commando", 200, -94.2, -102.8, -135.1, 139, 35791561)
	spawnMobile("kaas", "rebel_commando", 200, -79.1, -100.7, -136.4, 154, 35791561)
	spawnMobile("kaas", "rebel_commando", 200, -74.5, -99.4, -159.4, 0, 35791561)
	spawnMobile("kaas", "rebel_commando", 200, -49.5, -87.8, -146.5, 90, 35791563)
	
	spawnMobile("kaas", "rebel_commando", 200, -30.1, -80.0, -145.2, 0, 35791563)
	spawnMobile("kaas", "rebel_commando", 200, -20.8, -79.6, -143.9, 0, 35791563)
	spawnMobile("kaas", "rebel_commando", 200, -25.4, -77.7, -131.5, 0, 35791563)
	
	spawnMobile("kaas", "lesser_prophet_of_the_light_side", 200, -30.4, -70.0, -102.2, -90, 35791562)
	spawnMobile("kaas", "lesser_prophet_of_the_light_side", 200, -39.0, -70.1, -95.8, -90, 35791562)
	spawnMobile("kaas", "lesser_prophet_of_the_light_side", 200, -38.4, -70.8, -81.3, -90, 35791562)
	spawnMobile("kaas", "lesser_prophet_of_the_light_side", 200, -50.6, -69.6, -89.1, -90, 35791562)
	spawnMobile("kaas", "lesser_prophet_of_the_light_side", 200, -58.9, -68.2, -104.5, -90, 35791562)
	
	spawnMobile("kaas", "rebel_commando", 200, -94.1, -69.8, -96.2, 179, 35791561)
	spawnMobile("kaas", "rebel_commando", 200, -100.9, -69.3, -101.2, 179, 35791561)
	spawnMobile("kaas", "rebel_commando", 200, -88.6, -69.7, -106.6, 179, 35791561)
	
	spawnMobile("kaas", "rebel_commando", 200, -81.8, -70.3, -124.4, -90, 35791561)
	spawnMobile("kaas", "rebel_commando", 200, -116.1, -69.3, -126.5, 90, 35791561)
	
	spawnMobile("kaas", "rebel_commando", 200, -110.2, -69.7, -170.6, 90, 35791561)
	spawnMobile("kaas", "lesser_prophet_of_the_light_side", 200, -96.6, -72.3, -180.7, 0, 35791561)
	spawnMobile("kaas", "lesser_prophet_of_the_light_side", 200, -76.7, -69.9, -170.6, 90, 35791561)
	spawnMobile("kaas", "rebel_commando", 200, -68.0, -70.5, -159.0, 179, 35791561)
	spawnMobile("kaas", "rebel_commando", 200, -59.6, -69.2, -165.7, 179, 35791561)
	spawnMobile("kaas", "rebel_commando", 200, -52.4, -69.1, -172.4, 179, 35791561)
	spawnMobile("kaas", "lesser_prophet_of_the_light_side", 200, -82.3, -69.8, -203.8, 0, 35791561)
	spawnMobile("kaas", "lesser_prophet_of_the_light_side", 200, -36.1, -66.8, -181.5, 90, 35791559)
	spawnMobile("kaas", "lesser_prophet_of_the_light_side", 200, -3.3, -63.9, -233.4, -90, 35791560)
	spawnMobile("kaas", "lesser_prophet_of_the_light_side", 200, -11.1, -63.8, -260.6, 0, 35791560)
	spawnMobile("kaas", "lesser_prophet_of_the_light_side", 200, -19.2, -63.1, -260.7, 0, 35791560)
	
	spawnMobile("kaas", "rebel_commando", 200, 47.9, -56.4, -178.1, 0, 35791558)
	spawnMobile("kaas", "rebel_commando", 200, 51.0, -56.4, -174.7, 0, 35791558)
	spawnMobile("kaas", "rebel_commando", 200, 44.7, -56.9, -166.7, 0, 35791558)
--	spawnMobile("kaas", "rebel_commando", 200, 56.5, -56.9, -166.7, 0, 35791558)
	
	spawnMobile("kaas", "rebel_commando", 200, 58.0, -49.8, -134.5, -90, 35791558)
	spawnMobile("kaas", "rebel_commando", 200, 62.0, -48.0, -129.4, -90, 35791558)
	spawnMobile("kaas", "rebel_commando", 200, 59.5, -46.4, -123.1, -90, 35791558)
	spawnMobile("kaas", "rebel_commando", 200, 47.9, -48.2, -125.3, -90, 35791558)
	
	spawnMobile("kaas", "lesser_prophet_of_the_light_side", 200, 24.6, -46.0, -124.4, 0, 35791558)
	
	spawnMobile("kaas", "rebel_colonel", 200, -1.8, -45.7, -147.3, 0, 35791558)
	spawnMobile("kaas", "rebel_commando", 200, -7.9, -44.8, -139.9, 179, 35791558)
	spawnMobile("kaas", "rebel_commando", 200, -2.8, -45.1, -139.2, 179, 35791558)
	
	spawnMobile("kaas", "rebel_commando", 200, 42.0, -46.5, -87.7, 0, 35791557)
	spawnMobile("kaas", "rebel_commando", 200, 39.0, -46.3, -83.0, 0, 35791557)
	
	spawnMobile("kaas", "rebel_commando", 200, 33.0, -45.3, -54.8, -90, 35791557)
	spawnMobile("kaas", "rebel_commando", 200, 34.6, -45.3, -57.4, -90, 35791557)
	spawnMobile("kaas", "rebel_commando", 200, 35.8, -45.6, -49.9, -90, 35791557)
	
	spawnMobile("kaas", "lesser_prophet_of_the_light_side", 200, -10.8, -40.4, -83.1, 0, 35791556)
	spawnMobile("kaas", "rebel_commando", 200, -9.8, -30.8, -28.9, 90, 35791558)
	spawnMobile("kaas", "rebel_commando", 200, 9.8, -23.6, -25.4, 0, 35791558)
	
	spawnMobile("kaas", "rebel_commando", 200, 3356.7, 98.0, 2597.6, 0, 0)
	spawnMobile("kaas", "rebel_commando", 200, 3345.3, 96.4, 2612.4, 0, 0)
	spawnMobile("kaas", "rebel_commando", 200, 3329.8, 102.8, 2617.4, -25, 0)

	local pPadawan = spawnMobile("kaas", "lesser_prophet_of_the_light_side", 10800, 56.5, -56.9, -166.7, 0, 35791558)
        createObserver(OBJECTDESTRUCTION, "kaas_rebel_cave", "notifyPadawanDead", pPadawan)


end

function kaas_rebel_cave:notifyPadawanDead(pPadawan, pKiller)
	local player = LuaCreatureObject(pKiller)
        local pBoss = spawnMobile("kaas", "light_jedi_sentinel", 0, -94.5, -100.9, -94.8, 179, 35791564)
			spatialChat(pBoss, "With the Force there are two paths good and evil one may take, nothing in-between. One leads to a full life, no matter the years. Justice, knowledge and compassion are both endeavors and rewards. The other is most assuredly a short path that leads to untamed power. With nothing to earn, it leads to a certain solitary end. One should choose wisely.")	
          createObserver(DAMAGERECEIVED,"kaas_rebel_cave","boss_damage", pBoss)
          
          
     return 0
end

function kaas_rebel_cave:boss_damage(pBoss, pPlayer)
		
	local player = LuaCreatureObject(pPlayer)
	local boss = LuaCreatureObject(pBoss)
	if ( boss ~= nil ) then
		local bossHealth = boss:getHAM(0)
		local bossAction = boss:getHAM(3)
		local bossMind = boss:getHAM(6)
		local bossMaxHealth = boss:getMaxHAM(0)
		local bossMaxAction = boss:getMaxHAM(3)
		local bossMaxMind = boss:getMaxHAM(6)

		local x1 = -94.5
		local y1 = -94.8
		local x2 = boss:getPositionX()
		local y2 = boss:getPositionY() 

		local distance = ((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1))
		local maxDistance = 32
		
		if distance > (maxDistance * maxDistance) then
			spatialChat(pBoss, "Why do you run from me? I now stand one with the Force.")

			boss:setPvpStatusBitmask(0)
			forcePeace(pBoss)
			boss:setOptionsBitmask(128)

			createEvent(500, "kaas_rebel_cave", "removeFromKRC", pPlayer)
		end
		

		if (((bossHealth <= (bossMaxHealth *0.9)) or (bossAction <= (bossMaxAction * 0.9)) or (bossMind <= (bossMaxMind *0.9))) and readData("kaas_rebel_cave:spawnAdd") == 0) then
			spatialChat(pBoss, "I am a Jedi, and right now that is a very dangerous thing to be.")
			writeData("kaas_rebel_cave:spawnAdd", 1)
			if (readData("kaas_rebel_cave:spawnAdd") == 1) then
				local pJos = spawnMobile("kaas", "lesser_prophet_of_the_light_side", 0, -94.5, -100.9, -94.8, 179, 35791564)
				local firstTime = LuaCreatureObject(pJos)
				spatialChat(pJos, "There is no emotion, there is peace.")
				firstTime:engageCombat(pPlayer)
			end

		end
		if (((bossHealth <= (bossMaxHealth *0.89)) or (bossAction <= (bossMaxAction * 0.89)) or (bossMind <= (bossMaxMind *0.89))) and readData("kaas_rebel_cave:spawnAdd1") == 0) then
		--	spatialChat(pBoss, "I smell you")
			writeData("kaas_rebel_cave:spawnAdd1", 1)
			if (readData("kaas_rebel_cave:spawnAdd1") == 1) then
				local pJosTwo = spawnMobile("kaas", "lesser_prophet_of_the_light_side", 0, -94.5, -100.9, -94.8, 179, 35791564)
				local secondTime = LuaCreatureObject(pJosTwo)
				spatialChat(pJosTwo, "There is no ignorance, there is knowledge.")
				secondTime:engageCombat(pPlayer)
			end

		end
		if (((bossHealth <= (bossMaxHealth *0.88)) or (bossAction <= (bossMaxAction * 0.88)) or (bossMind <= (bossMaxMind *0.88))) and readData("kaas_rebel_cave:spawnAdd2") == 0) then
		--	spatialChat(pBoss, "I smell you")
			writeData("kaas_rebel_cave:spawnAdd2", 1)
			if (readData("kaas_rebel_cave:spawnAdd2") == 1) then
				local pJosThree = spawnMobile("kaas", "lesser_prophet_of_the_light_side", 0, -94.5, -100.9, -94.8, 179, 35791564)
				local thirdTime = LuaCreatureObject(pJosThree)
				spatialChat(pJosThree, "There is no passion, there is serenity.")
				thirdTime:engageCombat(pPlayer)
			end

		end		
		if (((bossHealth <= (bossMaxHealth *0.87)) or (bossAction <= (bossMaxAction * 0.87)) or (bossMind <= (bossMaxMind *0.87))) and readData("kaas_rebel_cave:spawnAdd3") == 0) then
		--	spatialChat(pBoss, "I smell you")
			writeData("kaas_rebel_cave:spawnAdd3", 1)
			if (readData("kaas_rebel_cave:spawnAdd3") == 1) then
				local pJosFour = spawnMobile("kaas", "lesser_prophet_of_the_light_side", 0, -94.5, -100.9, -94.8, 179, 35791564)
				local fourthTime = LuaCreatureObject(pJosFour)
				spatialChat(pJosFour, "There is no death, there is the force.")
				fourthTime:engageCombat(pPlayer)
			end

		end		
		if (((bossHealth <= (bossMaxHealth * 0.5)) or (bossAction <= (bossMaxAction * 0.5)) or (bossMind <= (bossMaxMind * 0.5))) and readData("kaas_rebel_cave:spawnAddOne") == 0) then
			spatialChat(pBoss,"My path is the dark one, but if the Force is with me I will find light at the other end.")
			writeData("kaas_rebel_cave:spawnAddOne", 1)
			if (readData("kaas_rebel_cave:spawnAddOne") == 1) then
				local pJosFive = spawnMobile("kaas", "lesser_prophet_of_the_light_side",0, -94.5, -100.9, -94.8, 179, 35791564)
				local fifthTime = LuaCreatureObject(pJosFive)
				spatialChat(pJosFive, "You are beyond redemption.  I will do what I must.")
				secondTime:engageCombat(pPlayer)
			end

		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("kaas_rebel_cave:spawnAddTwo") == 0) then
			spatialChat(pBoss,"For you, the choice is the dark side. Forever will it dominate your destiny.")
			writeData("kaas_rebel_cave:spawnAddTwo", 1)
			if (readData("kaas_rebel_cave:spawnAddTwo") == 1) then
				local pJosSix = spawnMobile("kaas", "lesser_prophet_of_the_light_side", 0, -94.5, -100.9, -94.8, 179, 35791564)
				local sixthTime = LuaCreatureObject(pJosSix)
				spatialChat(pJosSix, "The force will be with me.")
				sixthTime:engageCombat(pPlayer)
			end

		end
		if (((bossHealth <= (bossMaxHealth * 0.4)) or (bossAction <= (bossMaxAction * 0.4)) or (bossMind <= (bossMaxMind * 0.4))) and readData("kaas_rebel_cave:spawnAddThree") == 0) then
		--	spatialChat(pBoss,"I smell you")
			writeData("kaas_rebel_cave:spawnAddThree", 1)
			if (readData("kaas_rebel_cave:spawnAddThree") == 1) then
				local pJosSeven = spawnMobile("kaas",  "lesser_prophet_of_the_light_side", 0, -94.5, -100.9, -94.8, 179, 35791564)
				local seventhTime = LuaCreatureObject(pJosSeven)
				spatialChat(pJosSeven, "My ally is the force, and a powerful ally it is.")
				seventhTime:engageCombat(pPlayer)
			end

		end		
		
		if (((bossHealth <= (bossMaxHealth * 0.02)) or (bossAction <= (bossMaxAction * 0.02)) or (bossMind <= (bossMaxMind * 0.02)))) then
			spatialChat(pBoss, "Why hesitate? Strike me down.")
			writeData("kaas_rebel_cave:spawnAddFour", 1)
		end


		end

	
	
	
end

function kaas_rebel_cave:removeFromKRC(pPlayer)
	if (pPlayer == nil) then
		return
	end
	
	local creature = LuaCreatureObject(pPlayer)
	
	if (creature:isGrouped()) then
		size = creature:getGroupSize()
		
		for i = 0, size - 1, 1 do
			pMember = creature:getGroupMember(i)
			if pMember ~= nil then
				local groupMember = LuaCreatureObject(pMember)
				if groupMember:getParentID() > 35791556 and groupMember:getParentID() < 35791564 then
					createEvent(500, "kaas_rebel_cave", "teleportPlayer", pMember)
				end
			end
		end 
	else
		createEvent(500, "kaas_rebel_cave", "teleportPlayer", pPlayer)
	end
	
end

function kaas_rebel_cave:teleportPlayer(pPlayer)
	if (pPlayer == nil) then
		return
	end
	
	local creature = LuaCreatureObject(pPlayer)
	creature:teleport( -4624.7, 78.9, 6677.5, 0)
	

end
