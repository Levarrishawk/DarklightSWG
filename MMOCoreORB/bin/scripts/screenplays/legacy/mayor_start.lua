mayor_start = ScreenPlay:new {
  numberOfActs = 1,
  questString = "LegacyQuest",
  screenplayName = "mayor_start"
}

registerScreenPlay("mayor_start", true)

function mayor_start:start()
  if (isZoneEnabled("tatooine")) then
    self:spawnMobiles()
  end
end

function mayor_start:spawnMobiles()

  --In The Guild Hall
  spawnMobile("tatooine", "mayor_start", 1, -0.1, 2.5, 7.5, 179, 1279960)
end

--This Creates the handler.
legacy_quest_convo_handler = Object:new {
	
 }
--function nameOfHandlerInsideOfConversationLuaFile:getNext....
function legacy_quest_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	local creature = LuaCreatureObject(conversingPlayer)
	local convosession = creature:getConversationSession()
	lastConversation = nil
	--print("getNextConversation() called")
	local conversation = LuaConversationTemplate(conversationTemplate)
	local nextConversationScreen 
	if ( conversation ~= nil ) then
		-- checking to see if we have a next screen
		if ( convosession ~= nil ) then
			 local session = LuaConversationSession(convosession)
			 if ( session ~= nil ) then
			 	--print("casting getlastconversationsreen()")
			 	lastConversationScreen = session:getLastConversationScreen()
			 end
		end
		if ( lastConversationScreen == nil ) then
			--print("Last conversation is null.  let's try to get the first screen")
			
			local creature = LuaCreatureObject(conversingPlayer)
		--	local hasAccepted = creature:hasScreenPlayState(force_sensitive.states.quest.intro, force_sensitive.questString)
			--print("hasAccepted() is " .. hasAccepted)   
			
			if ( hasAccepted == 0 ) then
				nextConversationScreen = conversation:getScreen("intro_first_screen")--First convo screen to pull.

			else
				nextConversationScreen = conversation:getScreen("complete")--End of the road.
			end
		else
			
			local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
			local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)		
			--print("optionLink fromn the last screen is .. " .. optionLink)		
			--local thiscreen = conversation:getScreen(optionLink)
			nextConversationScreen = conversation:getScreen(optionLink)			
		end			
	end	
	--print("returning screen")		
	return nextConversationScreen	
end

function legacy_quest_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)	
	--print("\ntest_convo_handler:runScreenHandlers() called\n")
	local screen = LuaConversationScreen(conversationScreen)	
	local screenID = screen:getScreenID()	
	--print("screenID is " .. screenID	)
	local player = LuaCreatureObject(conversingPlayer)
	--[[local completed = player:getScreenPlayState(force_sensitive.states.quest.intro, force_sensitive.questString)	
	local pInventory = player:getSlottedObject("inventory")
	if ( screenID == "thielFinal" ) then
		player:setScreenPlayState(force_sensitive.states.quest.intro, force_sensitive.questString)
		giveItem(pInventory, "object/tangible/loot/quest/force_sensitive/force_crystal.iff", -1)
		giveItem(pInventory, "object/tangible/crafting/station/generic_tool.iff", -1)
		giveItem(pInventory, "object/tangible/survey_tool/survey_tool_mineral.iff", -1)
		giveItem(pInventory, "object/tangible/survey_tool/survey_tool_liquid.iff", -1)
	end
	]]
	--print("returning convosvreen")
	return conversationScreen
end
