intro_conv = ConvoTemplate:new {

	initialScreen = "intro_first_screen",

	templateType = "Lua",

	luaClassHandler = "intro_convo_handler",

	screens = {}

}





--Intro First

intro_first_screen = ConvoScreen:new {

	id = "intro_first_screen",

	leftDialog = "",

	customDialogText = "Hello there! I see you're our newest arrival. Allow me to be the first to introduce myself and welcome you to our village on Dathomir. I am Jedi Master Thiel... Are you ready to get started?",

	stopConversation = "false",

	options = {

		{"Yes, I have been waiting for this moment for a long time now.", "thiel2"},

		{"I'd prefer to take my time, I'll come back when I am ready.","deny"}

	

	}

}



intro_conv:addScreen(intro_first_screen);



--deny

deny = ConvoScreen:new {

	id = "deny",

	leftDialog = "",

	customDialogText = "Just come back when you're ready.",

	stopConversation = "true",

	options = {

	}

}



intro_conv:addScreen(deny);



--thiel2

thiel2 = ConvoScreen:new {

	id = "thiel2",

	leftDialog = "",

	customDialogText = "Great! There is going to be a lot of information given to you during your time with the mentors. We are here to give you all the insight you need to become a sucessful Jedi, becoming a Jedi is not easy and it's not an easy life when you become one either. Are you sure you wish to continue this path?",

	stopConversation = "false",

	options = {

		{"Yes I am ready and willing to do this.","thiel3"},

		{"You're right, I am not ready for this.","deny"}

	}

}



intro_conv:addScreen(thiel2);



--thiel3

thiel3 = ConvoScreen:new {

	id = "thiel3",

	leftDialog = "",

	customDialogText = "Now that you understand what your journey is about to be, I am going to explain what you will be doing here at our village. We have gathered some of our best from the Jedi Order to come here and teach all of our new Force sensitives, when you go up to each mentor they will specificly bring up their area of expertise.",

	stopConversation = "false",

	options = {

		{"I understand completely, please continue.","thiel4"},

	}

}



intro_conv:addScreen(thiel3);



--thiel4

thiel4 = ConvoScreen:new {

	id = "thiel4",

	leftDialog = "",

	customDialogText = "When you are here you will learn how to survive on your own, we will not baby you and you will be at your own risk if you leave the village... we will not stop you.",

	stopConversation = "false",

	options = {

		{"Is there anything else I need to know?","thiel5"},

	}

}



intro_conv:addScreen(thiel4);



--thiel5

thiel5 = ConvoScreen:new {

	id = "thiel5",

	leftDialog = "",

	customDialogText = "I will provide you with the basic tools for your success here, and a 'Mentor's Crystal' it will give you guidence if you feel lost, and it will be needed to complete your training. ",

	stopConversation = "false",

	options = {

		{"Alright so I use the crystal after completing my training from each mentor, or if I feel lost.","thiel6"},

	}

}



intro_conv:addScreen(thiel5);



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



intro_conv:addScreen(thiel6);



--thielFinal

thielFinal = ConvoScreen:new {

	id = "thielFinal",

	leftDialog = "",

	customDialogText = "So here are your tools, go speak with Captain Sarguillo! May the Force be with you.",

	stopConversation = "true",

	options = {

	}

}



intro_conv:addScreen(thielFinal);





--complete

complete = ConvoScreen:new {

	id = "complete",

	leftDialog = "",

	customDialogText = "You need not speak to me anymore, if you haven't spoken to Captain Sarguillo I'd suggest you do that.",

	stopConversation = "true",

	options = {

	}

}



intro_conv:addScreen(complete);





--not yet

not_yet = ConvoScreen:new {

	id = "not_yet",

	leftDialog = "",

	customDialogText = "You're just not ready.",

	stopConversation = "true",

	options = {

	}

}



intro_conv:addScreen(not_yet);





addConversationTemplate("intro_conv", intro_conv);
