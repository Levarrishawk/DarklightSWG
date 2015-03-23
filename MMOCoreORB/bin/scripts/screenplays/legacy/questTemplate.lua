force_sensitive = ScreenPlay:new { 

	numberOfActs = 1, 

	questString = "QuestStringTemplate",

	states = {

		quest = { hasQuest = 2, hasComplete = 4 }

	}, 

	questdata = Object:new {

		

		activePlayerName = "initial",

	}

	

}



registerScreenPlay("force_sensitive", true)



function force_sensitive:start() 

	--spawnMobile("planet", "npc_name", re-spawn timer, x, z, y, direction of face, cell)

	spawnMobile("character_farm","thiel", 1, 1, 0, 1, -10, 0)



end



--Setup

function force_sensitive:getActivePlayerName()

	return self.questdata.activePlayerName

end



function force_sensitive:setActivePlayerName(playerName)

	self.questdata.activePlayerName = playerName	

end



--Thiels Conv

intro_convo_handler = Object:new {

	

 }



function intro_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)

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

			local hasAccepted = creature:hasScreenPlayState(force_sensitive.states.quest.hasComplete, force_sensitive.questString)

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



function intro_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)	

	--print("\ntest_convo_handler:runScreenHandlers() called\n")

	local screen = LuaConversationScreen(conversationScreen)	

	local screenID = screen:getScreenID()	

	--print("screenID is " .. screenID	)

	local player = LuaCreatureObject(conversingPlayer)

	local completed = player:getScreenPlayState(force_sensitive.states.quest.hasQuest, force_sensitive.questString)	

	local pInventory = player:getSlottedObject("inventory")

	if ( screenID == "thielFinal" ) then

		player:setScreenPlayState(force_sensitive.states.quest.hasComplete, force_sensitive.questString)

	end

	

	

	--print("returning convosvreen")

	return conversationScreen

end
