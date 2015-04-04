--[[
TODO: UPDATE THIS INFORMATION

DESC ABOUT QUEST

Quest Details:

You start the quest by talking to Thiel, it will then send you to talk to all the mentors and answering questions. 
Eventually leading to Rohak, after that you will need to find a holocron, this holocron will send you back to rohak.
Rohak will talk about sith shadows, and mellichae. You will then be given the choice of who you want to help... Paemos, or Sarguillo.
Whatever quest line you pick you will be tested in ways to determine what you will be: Light, Dark, or Exile.
After you complete the quest you will be sent to the according "enclave" to join that faction.



TODO:

-Paemos convo
-Captain convo * fix
-Lost FS convo
-Mellichae convo
	-Lightside done
	-Exile = need information from halo
	-Darkside more work needed

-Darkside side note
use sendTo:player
]]


force_sensitive = ScreenPlay:new { 
	numberOfActs = 1, 
	questString = "ForceSensitive",
	states = {
		quest = { intro = 2, defense = 4, craft = 8, forced = 16, force = 32, rohak = 64, mission = 128, missionComp = 256, jedi = 512 }
	}, 
	questdata = Object:new {
		
		activePlayerName = "initial",
	}
	
}

registerScreenPlay("force_sensitive", true)

function force_sensitive:start() 
	--spawnMobile("planet", "npc_name", re-spawn timer, x, z, y, direction of face, cell)
	spawnMobile("tatooine", "mayor_start", 1, -0.1, 2.5, 7.5, 179, 1279960)
	if ( pThiel ~= nil ) then
	end
end

--Setup
function force_sensitive:getActivePlayerName()
	return self.questdata.activePlayerName
end

function force_sensitive:setActivePlayerName(playerName)
	self.questdata.activePlayerName = playerName	
end




--Thiels Conv
force_sensitive_convo_handler = Object:new {
	
 }

function force_sensitive_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
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
			local hasAccepted = creature:hasScreenPlayState(force_sensitive.states.quest.intro, force_sensitive.questString)
			--print("hasAccepted() is " .. hasAccepted)   
			
			if ( hasAccepted == 0 ) then
				nextConversationScreen = conversation:getScreen("first_conv")--First convo screen to pull.

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

function force_sensitive_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)	
	--print("\ntest_convo_handler:runScreenHandlers() called\n")
	local screen = LuaConversationScreen(conversationScreen)	
	local screenID = screen:getScreenID()	
	--print("screenID is " .. screenID	)
	local player = LuaCreatureObject(conversingPlayer)
	local completed = player:getScreenPlayState(force_sensitive.states.quest.intro, force_sensitive.questString)	
	local pInventory = player:getSlottedObject("inventory")
	if ( screenID == "thielFinal" ) then
		player:setScreenPlayState(force_sensitive.states.quest.intro, force_sensitive.questString)
		giveItem(pInventory, "object/tangible/loot/quest/force_sensitive/force_crystal.iff", -1)
		giveItem(pInventory, "object/tangible/crafting/station/generic_tool.iff", -1)
		giveItem(pInventory, "object/tangible/survey_tool/survey_tool_mineral.iff", -1)
		giveItem(pInventory, "object/tangible/survey_tool/survey_tool_liquid.iff", -1)
	end
	
	
	--print("returning convosvreen")
	return conversationScreen
end
