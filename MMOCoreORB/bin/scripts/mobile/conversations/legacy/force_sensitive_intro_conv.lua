--[[

Main characters:

Jedi Master Thiel:
Thiel is new to the Village, he mainly serves to give the starting players history about what's going on and gear you towards progressing as a Jedi and the training.

Jedi Master La'Guo:
La'Guo serves only the purpose to ensure they know everything about the new sabers and the crystals.

Paemos:
Paemos gives you more history about the Force and that all Jedi are connected. He will give you knowledge about Force Skills.

Captain Sarguillo:
Sarg. will give you more knowledge about the defender skill

Noldan:
Noldan will talk about general Jedi skills, covering anything not covered by prior trainers.

Rohak:
Rohak will be used to let the player know that they need to do, what their new purpose is.

Mellichae:
His plays the role of the main evil, he will attempt to stop the player.


Pre Plot:
You are a Force Sensitive brought to Dathomir to learn about the Jedi way, you are fresh and new to this way of life and they must show you the way.

Main plot:
You will go through all the training from the mentors at the Village, you will learn that an evil has presented itself to you and that you must do something about it.
You will find your purpose and learn that you must leave the village to save the village and the Jedi.

End Plot:
upon leaving the village you will be presented a chance to become dark, exile, or light. where-ever you go afterwards when you do decide to join a team you will begin your next story.


]]

force_sensitive_intro_conv = ConvoTemplate:new {
	initialScreen = "intro_first_screen",
	templateType = "Lua",
	luaClassHandler = "force_sensitive_convo_handler",
	screens = {}
}


--Intro First
intro_first_screen = ConvoScreen:new {
	id = "intro_first_screen",
	leftDialog = "",
	customDialogText = "Welcome to Mos Eisley! I'm Mayor Guh'rantt. Do you know the history of Mos Eisley? It's a beautiful city, full of life and character and one of the best cantinas in the known galaxy.",
	stopConversation = "false",
	options = {
		{"I hear you need some help with a debt owed to Jabba.", "thiel2"},
		{"I'm very busy.  I'll come back later.","deny"}
	
	}
}

force_sensitive_intro_conv:addScreen(intro_first_screen);

--deny
deny = ConvoScreen:new {
	id = "deny",
	leftDialog = "",
	customDialogText = "Just come back when you're ready.",
	stopConversation = "true",
	options = {
	}
}

force_sensitive_intro_conv:addScreen(deny);

--thiel2
thiel2 = ConvoScreen:new {
	id = "thiel2",
	leftDialog = "",
	customDialogText = "Yes. My...debt. My next payment, a speeder deed, was stolen from me. I can't divert...er...raise the money with all the problems in the city. If you do some things for me, it might...free up some funds I need.",
	stopConversation = "false",
	options = {
		{"I see. What would I have to do?","thiel3"},
		
	}
}

force_sensitive_intro_conv:addScreen(thiel2);

--thiel3
thiel3 = ConvoScreen:new {
	id = "thiel3",
	leftDialog = "",
	customDialogText = "Mos Eisley suffers from Tusken Raiders, wild vermin, and menacing hooligans. I don't have the staff to handle these problems. I need you to go out there. You want to help the city, don't you?",
	stopConversation = "false",
	options = {
		{"Tell me about the wild vermin.","thiel4"},
	}
}

force_sensitive_intro_conv:addScreen(thiel3);

--thiel4
thiel4 = ConvoScreen:new {
	id = "thiel4",
	leftDialog = "",
	customDialogText = "Entha Kandela has been clamoring that she needs some help controlling the population of various vermin on the outskirts of Mos Eisley. Give her the assistance she requires.",
	stopConversation = "false",
	options = {
		{"I'll help her","thiel5"},
		{"I can't help right now.","deny"}
	}
}

force_sensitive_intro_conv:addScreen(thiel4);

--thiel5
thiel5 = ConvoScreen:new {
	id = "thiel5",
	leftDialog = "",
	customDialogText = "Good.",
	stopConversation = "true",
	options = {
		
	}
}

force_sensitive_intro_conv:addScreen(thiel5);

--thiel6
thiel6 = ConvoScreen:new {
	id = "thiel6",
	leftDialog = "",
	customDialogText = "Correct, now before I let you go I must warn you about what is going on in the galaxy. Much has changed over the years, there are many Jedi around the galaxy but that doesn't mean Jedi are safe from harm. There are plenty of Jedi out there that will attempt to kill you, or turn you to their side.",
	stopConversation = "false",
	options = {
		{"I understand the dangers, I will remember this.","thielFinal"},
	}
}

force_sensitive_intro_conv:addScreen(thiel6);

--thielFinal
thielFinal = ConvoScreen:new {
	id = "thielFinal",
	leftDialog = "",
	customDialogText = "So here are your tools, go speak with Captain Sarguillo! May the Force be with you.",
	stopConversation = "true",
	options = {
	}
}

force_sensitive_intro_conv:addScreen(thielFinal);


--complete
complete = ConvoScreen:new {
	id = "complete",
	leftDialog = "",
	customDialogText = "You need not speak to me anymore, if you haven't spoken to Captain Sarguillo I'd suggest you do that.",
	stopConversation = "true",
	options = {
	}
}

force_sensitive_intro_conv:addScreen(complete);


--not yet
not_yet = ConvoScreen:new {
	id = "not_yet",
	leftDialog = "",
	customDialogText = "You're just not ready.",
	stopConversation = "true",
	options = {
	}
}

force_sensitive_intro_conv:addScreen(not_yet);


addConversationTemplate("force_sensitive_intro_conv", force_sensitive_intro_conv);

--####################################################################		Captain Sarguillo	##########################################################################




force_sensitive_defense_conv = ConvoTemplate:new {
	initialScreen = "defense_first_screen",
	templateType = "Lua",
	luaClassHandler = "force_sensitive_defense_conv_handler",
	screens = {}
}


--Def First
defense_first_screen = ConvoScreen:new {
	id = "defense_first_screen",
	leftDialog = "",
	customDialogText = "Hello, I am going to teach you about the basics of defending yourself. Are you ready for this training?",
	stopConversation = "false",
	options = {
		{"Yes I am ready.","def1"},
		{"At this time I am not ready.","defense_deny"}
	}
}
force_sensitive_defense_conv:addScreen(defense_first_screen);

--defense deny
defense_deny = ConvoScreen:new {
	id = "defense_deny",
	leftDialog = "",
	customDialogText = "I understand, not everyone is equiped to learn at such a fast rate. Come back when you're ready.",
	stopConversation = "true",
	options = {}
}
force_sensitive_defense_conv:addScreen(defense_deny);


--def1
def1 = ConvoScreen:new {
	id = "def1",
	leftDialog = "",
	customDialogText = "Right now you are a Jedi without your Lightsaber, what other weapons do you have?",
	stopConversation = "false",
	options = {
	{"I have the Force!","def2"}
	}
}
force_sensitive_defense_conv:addScreen(def1);


--def2
def2 = ConvoScreen:new {
	id = "def2",
	leftDialog = "",
	customDialogText = "At least you understand that the Force can be a powerful ally. You will be wise to understand that the Force cannot protect you in all aspects, and to prepare your body for what the Force lacks.",
	stopConversation = "false",
	options = {
	{"I believe I understand, so... I must train my body as well as my knowledge with the Force?","def3"}
	}
}
force_sensitive_defense_conv:addScreen(def2);


--def3
def3 = ConvoScreen:new {
	id = "def3",
	leftDialog = "",
	customDialogText = "You understand correctly, but you must train yourself at close range combat and ranged combat! They are two completely different areas in defense, you will do yourself a favor by being an expert in those areas. If you're not prepared to defend yourself where the Force cannot then you will suffer greatly.",
	stopConversation = "false",
	options = {
	{"So I must learn to be without the Force, as well as being with it. I understand.","def4"}
	}
}
force_sensitive_defense_conv:addScreen(def3);

--def4
def4 = ConvoScreen:new {
	id = "def4",
	leftDialog = "",
	customDialogText = "If your enemies find your weakend and your not able to draw on the Force you very well could be destroyed. If you train yourself as we spoke... You will be able to overcome that.",
	stopConversation = "false",
	options = {
	{"So as a Jedi I have a greater responsibility to protect myself with and without the Force, as my enemies rely on me only drawing on the Force for protection.","def5"}
	}
}
force_sensitive_defense_conv:addScreen(def4);

--def5
def5 = ConvoScreen:new {
	id = "def5",
	leftDialog = "",
	customDialogText = "You are becoming wise indeed. Practice what we have spoken about, and I assure you it will save your life one day.",
	stopConversation = "false",
	options = {
	{"Thank Captain, what do I do now?","defFinal"}
	}
}
force_sensitive_defense_conv:addScreen(def5);

--defFinal
defFinal = ConvoScreen:new {
	id = "defFinal",
	leftDialog = "",
	customDialogText = "There is nothing more, I have updated your Mentor's Crystal... Go seek out Jedi Master La'Guo!",
	stopConversation = "true",
	options = {
	}
}
force_sensitive_defense_conv:addScreen(defFinal);

--complete
complete = ConvoScreen:new {
	id = "complete",
	leftDialog = "",
	customDialogText = "You have already completed my training, I'd suggest seeking out Jedi Master La'Guo.",
	stopConversation = "true",
	options = {}
}
force_sensitive_defense_conv:addScreen(complete);

--notyet
not_yet = ConvoScreen:new {
	id = "not_yet",
	leftDialog = "",
	customDialogText = "I cannot be speaking to you at this time. You're not ready for my training.",
	stopConversation = "true",
	options = {
	}
}
force_sensitive_defense_conv:addScreen(not_yet);

--[[
--
 = ConvoScreen:new {
	id = "",
	leftDialog = "",
	customDialogText = "",
	stopConversation = "",
	options = {}
}
force_sensitive_defense_conv:addScreen();
]]
addConversationTemplate("force_sensitive_defense_conv", force_sensitive_defense_conv);




--#############################################			laguo				#################################

force_sensitive_craft_conv = ConvoTemplate:new {
	initialScreen = "craft_first_screen",
	templateType = "Lua",
	luaClassHandler = "force_sensitive_craft_conv_handler",
	screens = {}
}


--First
craft_first_screen = ConvoScreen:new {
	id = "craft_first_screen",
	leftDialog = "",
	customDialogText = "I am Jedi Master La'Guo, I am going to teach you everything there is to know about Lightsabers. These are complex tools, and weapons... Are you ready for this portion in your training?",
	stopConversation = "false",
	options = {
		{"I am pleased to meet you master. I am ready to begin.","craft1"},
		{"This sounds intense, I feel I am not ready at this time master.","craft_deny"}	
	}
}

force_sensitive_craft_conv:addScreen(craft_first_screen);

--Craft deny
craft_deny = ConvoScreen:new {
	id = "craft_deny",
	leftDialog = "",
	customDialogText = "Don't keep me waiting.",
	stopConversation = "true",
	options = {}
}
force_sensitive_craft_conv:addScreen(craft_deny);

--craft1
craft1 = ConvoScreen:new {
	id = "craft1",
	leftDialog = "",
	customDialogText = "The Lightsaber is a very valuable weapon when you learn how to properly use it. Unfortuantly in the galaxy we live in today, using a Lightsaber puts you at risk to being attacked.",
	stopConversation = "false",
	options = {
	{"So I must be cautious about using my Lightsaber, and only use it around those I can trust.","craft2"}

	}
}
force_sensitive_craft_conv:addScreen(craft1);

--craft2
craft2 = ConvoScreen:new {
	id = "craft2",
	leftDialog = "",
	customDialogText = "Right, now you must also learn about how a Lightsaber functions. It requires a tuned color crystal that you tuned yourself, and when you make better Lightsabers you will be able to hold Krayt Dragon Pearls, and Power Crystals in them. Those also need to be tuned by you.",
	stopConversation = "false",
	options = {
	{"So I must obtain these items, and tune them for my Lightsaber only.","craft3"}

	}
}
force_sensitive_craft_conv:addScreen(craft2);

--craft3
craft3 = ConvoScreen:new {
	id = "craft3",
	leftDialog = "",
	customDialogText = "You must also note that pulling them out of your saber will cause them to take damage, and they will not be as they once were. You see the pearls and crystals tune themselves to the Lightsaber and when you remove them... they lose perfection.",
	stopConversation = "false",
	options = {
	{"The pearls and crystals are almost uniquely made for each lightsaber, and lose their value when I attempt to put them in another saber.","craftFinal"}

	}
}
force_sensitive_craft_conv:addScreen(craft3);

--craftFinal
craftFinal = ConvoScreen:new {
	id = "craftFinal",
	leftDialog = "",
	customDialogText = "Remember all I have taught you, and you will become a wise and powerful Jedi. Go seek out Paemos.",
	stopConversation = "true",
	options = {
	}
}
force_sensitive_craft_conv:addScreen(craftFinal);

--Complete
complete = ConvoScreen:new {
	id = "complete",
	leftDialog = "",
	customDialogText = "There is nothing more you can learn from me at this time. Go seek out Paemos.",
	stopConversation = "true",
	options = {}
}
force_sensitive_craft_conv:addScreen(complete);


addConversationTemplate("force_sensitive_craft_conv", force_sensitive_craft_conv);




--#######################################################				paemos						################################

force_sensitive_forced_conv = ConvoTemplate:new {
	initialScreen = "forced_first_screen",
	templateType = "Lua",
	luaClassHandler = "force_sensitive_forced_conv_handler",
	screens = {}
}


--First
forced_first_screen = ConvoScreen:new {
	id = "forced_first_screen",
	leftDialog = "",
	customDialogText = "I am Paemos, you must be the one Jedi Master Thiel was talking about. I am here at the village to train Force Sensitives about techniques used from the Force. Being able to defend yourself from the Force is as valuable as wielding it. I am ready to teach you if you're ready to learn.",
	stopConversation = "false",
	options = {
		{"I'm ready to learn.","forced_continue"},
		{"I will be back when I am ready.","forced_deny"}	
	}
}
force_sensitive_forced_conv:addScreen(forced_first_screen);


--Cont
forced_continue = ConvoScreen:new {
	id = "forced_continue",
	leftDialog = "",
	customDialogText = "Once a great Jedi Master told me... Control is internal. It is the Jedi's ability to recognize the Force in himself and to use it to his benefit ...Sense involves the next step, in which the Jedi recognizes the force in the universe outside herself. Alter is the third and most difficult area to master, for it involves the student's ability to modify the Force and redistribute its energies.",
	stopConversation = "",
	options = {
		{"I will study these basic practices.","forced_test"},
	}
}
force_sensitive_forced_conv:addScreen(forced_continue);


--Test
forced_test = ConvoScreen:new {
	id = "forced_test",
	leftDialog = "",
	customDialogText = "A Jedi can train themselves to draw on the Force to heal themselves and the others around them. Healing is one of the basic requirements to keep yourself alive and in the fight!",
	stopConversation = "false",
	options = {
		{"So for my basic survivability I would need to be able to draw on the Force to heal myself.","forced1"}	
	}
}
force_sensitive_forced_conv:addScreen(forced_test);


--Deny
forced_deny = ConvoScreen:new {
	id = "forced_deny",
	leftDialog = "",
	customDialogText = "Don't keep me waiting.",
	stopConversation = "true",
	options = {}
}
force_sensitive_forced_conv:addScreen(forced_deny);

--forced1
forced1 = ConvoScreen:new {
	id = "forced1",
	leftDialog = "",
	customDialogText = "There are several ways to heal yourself, or others... But there are two main arts of healing, you have Internal healing and Supportive healing. Internal healing is used for yourself, and Supportive is well... for others. You will learn how to heal your mind, health, and action. You can focus the healing to heal the damage, or wounds. You could also unlock the secrets to being able to heal yourself over time for a duration.",
	stopConversation = "false",
	options = {
	{"This is a lot to remember, but I understand that healing is very important and I can use it for not only myself but for others.","forced_complete"}
	}
}
force_sensitive_forced_conv:addScreen(forced1);


--Comp
forced_complete = ConvoScreen:new {
	id = "forced_complete",
	leftDialog = "",
	customDialogText = "Great, you were paying attention. You will need to learn how to alter the Force first, then you will be able to manipulate the Force for yourself. Go and study with your Force crystal, and when you're ready for more training go talk to Noldan he is awaiting your arrival.",
	stopConversation = "true",
	options = {
	}
}
force_sensitive_forced_conv:addScreen(forced_complete);


--N Y
forced_not_yet = ConvoScreen:new {
	id = "forced_not_yet",
	leftDialog = "",
	customDialogText = "You're not yet ready for my training youngling you shouldn't be wondering around like a lost puppy.",
	stopConversation = "true",
	options = {}
}
force_sensitive_forced_conv:addScreen(forced_not_yet);


--T Y
forced_thank_you = ConvoScreen:new {
	id = "forced_thank_you",
	leftDialog = "",
	customDialogText = "Go seek out Noldan if you haven't already.",
	stopConversation = "true",
	options = {}
}
force_sensitive_forced_conv:addScreen(forced_thank_you);


addConversationTemplate("force_sensitive_forced_conv", force_sensitive_forced_conv);






--####################                                  NOLDAN				########

force_sensitive_force_conv = ConvoTemplate:new {
	initialScreen = "force_first_screen",
	templateType = "Lua",
	luaClassHandler = "force_sensitive_force_conv_handler",
	screens = {}
}


--First
force_first_screen = ConvoScreen:new {
	id = "force_first_screen",
	leftDialog = "",
	customDialogText = "Ah well it appears you finally arrive, I am Noldan. I am here to teach you about the Force. Paemos should have told you the three basic practices of the Force, are you ready to learn more?",
	stopConversation = "false",
	options = {
		{"Yes I am ready to learn more.","force_continue"},
		{"I'll be back later I need to study more.","force_deny"}	
	}
}
force_sensitive_force_conv:addScreen(force_first_screen);


--Cont
force_continue = ConvoScreen:new {
	id = "force_continue",
	leftDialog = "",
	customDialogText = "The Force is one... abilities are not inherently good or evil, it's how you use them. Light and Dark sides of the Force do not actually describe the Force, but rather defined on how you use it either to directly harm your enemies or to help yourself overcome situations.",
	stopConversation = "false",
	options = {
		{"Thank you for the enlightenment Noldan.","force1"},
	}
}
force_sensitive_force_conv:addScreen(force_continue);


--force1
force1 = ConvoScreen:new {
	id = "force1",
	leftDialog = "",
	customDialogText = "You will need to take a lot of time to practice the ability to use the Force to bring your enemies down. The skills you learn will need to be tuned to yourself so you can actually hit your target.",
	stopConversation = "false",
	options = {
	{"So even though I learn how to use the ability, I still need to practice my accuracy.","force_complete"}
	}
}
force_sensitive_force_conv:addScreen(force1);

--Deny
force_deny = ConvoScreen:new {
	id = "force_deny",
	leftDialog = "",
	customDialogText = "Don't keep me waiting.",
	stopConversation = "true",
	options = {}
}
force_sensitive_force_conv:addScreen(force_deny);


--Comp
force_complete = ConvoScreen:new {
	id = "force_complete",
	leftDialog = "",
	customDialogText = "Your connection to the Force will progress with your growing knowledge of it. Speak with Rohak, he is waiting for you.",
	stopConversation = "true",
	options = {}
}
force_sensitive_force_conv:addScreen(force_complete);


--N Y
force_not_yet = ConvoScreen:new {
	id = "force_not_yet",
	leftDialog = "",
	customDialogText = "I am busy right now youngling. Come back later.",
	stopConversation = "true",
	options = {}
}
force_sensitive_force_conv:addScreen(force_not_yet);


--T Y
force_thank_you = ConvoScreen:new {
	id = "force_thank_you",
	leftDialog = "",
	customDialogText = "Well youngling, you will do well to start training nearby the village. Practice all the skills you have learned, There are more trainers in the village that will help you with your proficiency in each skill that a Jedi Initiate needs. When you're ready to learn how to be a Jedi Initiate speak to rohak our village elder.",
	stopConversation = "true",
	options = {}
}
force_sensitive_force_conv:addScreen(force_thank_you);



addConversationTemplate("force_sensitive_force_conv", force_sensitive_force_conv);



--################################################################################################################################################################################################################################
--######################################################################### ROHAK #######################################################################################################################



force_sensitive_rohak_conv = ConvoTemplate:new {
	initialScreen = "rohak_first_screen",
	templateType = "Lua",
	luaClassHandler = "force_sensitive_rohak_conv_handler",
	screens = {}
}


--First
rohak_first_screen = ConvoScreen:new {
	id = "rohak_first_screen",
	leftDialog = "",
	customDialogText = "I am the village elder Rohak, I am glad to finally meet you. I am here to tell you what you will see once you leave our village. There are three seperate Jedi factions vying for power over the other. The Light Jedi Order, the Dark Jedi Order, and these Jedi that call themselves the Exiles. You will do well to educate yourself about them all.",
	stopConversation = "false",
	options = {
		{"I will see what I can do.","rohak_complete"}	
	}
}
force_sensitive_rohak_conv:addScreen(rohak_first_screen);


--cont
rohak_continue = ConvoScreen:new {
	id = "rohak_continue",
	leftDialog = "",
	customDialogText = "Later I will discuss this with you, but we need you to become more in tuned with your Force training, come back when you're a Jedi Initiate. There are plenty of Sith Shadows out there that need to be taken care of, strike true and May the Force be with you.",
	stopConversation = "false",
	options = {
		{"Yes Rohak, May the Force be with you.","rohak_complete"},
	}
}
force_sensitive_rohak_conv:addScreen(rohak_continue);


--Deny
rohak_deny = ConvoScreen:new {
	id = "rohak_deny",
	leftDialog = "",
	customDialogText = "",
	stopConversation = "true",
	options = {}
}
force_sensitive_rohak_conv:addScreen(rohak_deny);


--Comp
rohak_complete = ConvoScreen:new {
	id = "rohak_complete",
	leftDialog = "",
	customDialogText = "May the Force be with you.",
	stopConversation = "true",
	options = {}
}
force_sensitive_rohak_conv:addScreen(rohak_complete);


--N Y
rohak_not_yet = ConvoScreen:new {
	id = "rohak_not_yet",
	leftDialog = "",
	customDialogText = "Right now I'm busy, Noldan will let me know when you're ready to talk.",
	stopConversation = "true",
	options = {}
}
force_sensitive_rohak_conv:addScreen(rohak_not_yet);


--T Y
rohak_thank_you = ConvoScreen:new {
	id = "rohak_thank_you",
	leftDialog = "",
	customDialogText = "May the Force be with you.",
	stopConversation = "true",
	options = {}
}
force_sensitive_rohak_conv:addScreen(rohak_thank_you);


-- Holocron
rohak_holocron = ConvoScreen:new {
	id = "rohak_holocron",
	leftDialog = "",
	customDialogText = "You come back to me all trained and ready to learn about becoming a fully fledged Jedi Initiate! Are you ready for the task that you must complete to become recognized as a Jedi Initiate?",
	stopConversation = "false",
	options = {
		{"I am ready for this!","rohak_mell"}
	}
}
force_sensitive_rohak_conv:addScreen(rohak_holocron);


--Mellichae
rohak_mell = ConvoScreen:new {
	id = "rohak_mell",
	leftDialog = "",
	customDialogText = "There is a Jedi that calls himself Mellichae, we need you to investigate him. We have gathered word that he only comes in when his commander has something to report, I'd suggest finding that commander!",
	stopConversation = "false",
	options = {
		{"You need me to find this man called Mellichae and report back what I find?","take_holo"}--done
	}
}
force_sensitive_rohak_conv:addScreen(rohak_mell);


--Take Holo
take_holo = ConvoScreen:new {
	id = "take_holo",
	leftDialog = "",
	customDialogText = "Yes, don't fight him... He is much to powerful for you. We wouldn't want to lose you to him.",
	stopConversation = "false",
	options = {
		{"I understand the dangers, I accept the mission.","capture"}--done
	}
}
force_sensitive_rohak_conv:addScreen(take_holo);


--Capture
capture = ConvoScreen:new {
	id = "capture",
	leftDialog = "",
	customDialogText = "He is hiding in one of his camps nearby the village, one of his commanders might know where he is located. May the Force be with you.",
	stopConversation = "true",
	options = {
	}
}
force_sensitive_rohak_conv:addScreen(capture);


--Jedi
jedi = ConvoScreen:new {
	id = "jedi",
	leftDialog = "",
	customDialogText = "I see you have returned, do you bring back information that we need?",
	stopConversation = "false",
	options = {
	{"Actually I had to take on Mellichae myself, he went into hiding.","jedi1"}
	}
}
force_sensitive_rohak_conv:addScreen(jedi);

--Jedi1
jedi1 = ConvoScreen:new {
	id = "jedi1",
	leftDialog = "",
	customDialogText = "You... You have shown that you can handle your own, I am pleased to see that you have taken care of the menace. I am honored to grant you the title Jedi Initiate! We now must suggest you go seek out our Light Jedi Order on Taanab, beware to stay away from the Dark Jedi Order and the Exiles... They are also on Taanab!",
	stopConversation = "true",
	options = {
	}
}
force_sensitive_rohak_conv:addScreen(jedi1);


addConversationTemplate("force_sensitive_rohak_conv", force_sensitive_rohak_conv);


--[[

--
 = ConvoScreen:new {
	id = "",
	leftDialog = "",
	customDialogText = "",
	stopConversation = "false",
	options = {
		{"",""},
		{"",""}
	}
}
force_sensitive_rohak_conv:addScreen();

]]

--###############################################					Mellichae				##############################################--

--[[

--
 = ConvoScreen:new {
	id = "",
	leftDialog = "",
	customDialogText = "",
	stopConversation = "false",
	options = {
		{"",""},
		{"",""}
	}
}
force_sensitive_mel_conv:addScreen();

]]

force_sensitive_mel_conv = ConvoTemplate:new {
	initialScreen = "mel_first_screen",
	templateType = "Lua",
	luaClassHandler = "force_sensitive_mel_conv_handler",
	screens = {}
}

--Not yet
not_yet = ConvoScreen:new {
	id = "not_yet",
	leftDialog = "",
	customDialogText = "Step away from me or suffer my wraith.",
	stopConversation = "true",
	options = {

	}
}
force_sensitive_mel_conv:addScreen(not_yet);


--First Screen
mel_first_screen = ConvoScreen:new {
	id = "mel_first_screen",
	leftDialog = "",
	customDialogText = "I have been watching you, you're the newest hot shot around the village. I am excited we finally meet, I am sure you know who I am.",
	stopConversation = "false",
	options = {
		{"I sure do, I am here to capture you. Come peacefully and no one will get hurt.","light"},--done
		{"I am here to show you what real power looks like!","dark"},--done
		{"You think you're so smart, I am going to rid you of this place... After I am done with you, you can become 'One with the Force'","exile"}--done
	}
}
force_sensitive_mel_conv:addScreen(mel_first_screen);


--Light
light = ConvoScreen:new {
	id = "light",
	leftDialog = "",
	customDialogText = "HA! Capture me? You truely are a tool of the Jedi. I will not be captured by an untrained Force Sensitive! I hope you came ready for a fight youngling!",
	stopConversation = "false",
	options = {
		{"Wait wait, we can still talk this over can't we?","switch"},--done
		{"I will do what I must.","light1"}--done
	}
}
force_sensitive_mel_conv:addScreen(light);


--Light1
light1 = ConvoScreen:new {
	id = "light1",
	leftDialog = "",
	customDialogText = "Then face your doom!",
	stopConversation = "true",
	options = {
	}
}
force_sensitive_mel_conv:addScreen(light1);


--switch
switch = ConvoScreen:new {
	id = "switch",
	leftDialog = "",
	customDialogText = "You come here to try to capture me, and now you just want to talk? We can talk about you dying or serving me those are your only options.",
	stopConversation = "false",
	options = {
		{"I don't wish to die, I will join you.","switch_setup"},--done
		{"Actually... How about I just kill you instead.","exile"},--done
		{"You'll have to kill me then, I will never join you!","light1"}--done
	}
}
force_sensitive_mel_conv:addScreen(switch);


--Switch Setup
switch_setup = ConvoScreen:new {
	id = "switch_setup",
	leftDialog = "",
	customDialogText = "I knew we could work something out, altho I won't be so trusting... You prove to me that you're loyal to me and only me I will train you and give you ultimate power.",
	stopConversation = "false",
	options = {
		{"What must I do to prove myself","alert"},--done
		{"What must I do to prove myself (lie)","alert"}--done
	}
}
force_sensitive_mel_conv:addScreen(switch_setup);


--alert
alert = ConvoScreen:new {
	id = "alert",
	leftDialog = "",
	customDialogText = "Bring me Sarguillo and when the time comes strike him down, now go!",
	stopConversation = "true",
	options = {
	}
}
force_sensitive_mel_conv:addScreen(alert);


--Dark
dark = ConvoScreen:new {
	id = "dark",
	leftDialog = "",
	customDialogText = "True power? You know nothing of true power!",
	stopConversation = "false",
	options = {
		{"You think because you control the Sith Shadows that you are made up of 'Power'? You are only going to fail, only I can bring the village to it's knees!","dark1"},--done
		{"I know enough power to take you down.","exile"}--done
	}
}
force_sensitive_mel_conv:addScreen(dark);


--dark1
dark1 = ConvoScreen:new {
	id = "dark1",
	leftDialog = "",
	customDialogText = "Maybe we could work together, think of what we could do TOGETHER! Join me and we can conquer the galaxy, think about what we could accomplish. The Jedi council will fall to their knees before us.",
	stopConversation = "false",
	options = {
		{"I can see that we have the same goals, maybe we could work something out. What should we do first?","dark2"},--done
		{"I don't need you, you're weak!","exile"}--done
	}
}
force_sensitive_mel_conv:addScreen(dark1);


--dark2
dark2 = ConvoScreen:new {
	id = "dark2",
	leftDialog = "",
	customDialogText = "Well I had just been thinking about weakening them with my Sith Shadows, then luring Sarguillo and Paemos outside... Strike them in the heart.",
	stopConversation = "false",
	options = {
		{"I will convince Paemos, and Sarguillo to come outside the village then. They know not of my plan, they are fools.","dark3"}--done
	}
}
force_sensitive_mel_conv:addScreen(dark2);


--dark3
dark3 = ConvoScreen:new {
	id = "dark3",
	leftDialog = "",
	customDialogText = "Then go, I will put our scheme into motions.",
	stopConversation = "false",
	options = {
	}
}
force_sensitive_mel_conv:addScreen(dark3);


--Exile
exile = ConvoScreen:new {
	id = "exile",
	leftDialog = "",
	customDialogText = "Those are some bold words coming from a youngling, very well then prepare yourself!",
	stopConversation = "true",
	options = {
	}
}
force_sensitive_mel_conv:addScreen(exile);

addConversationTemplate("force_sensitive_mel_conv", force_sensitive_mel_conv);
