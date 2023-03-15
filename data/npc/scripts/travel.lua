local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end
-- OTServ event handling functions end



-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({'earth'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer realmente se teletransportar para {Earth}?'})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 1, destination = {x=106, y=149, z=10} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})

-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({'bills island'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer realmente se teletransportar para {Bills Island}?'})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 1, destination = {x=553, y=151, z=6} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})

	
local travelNode = keywordHandler:addKeyword({'sand city'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer realmente se teletransportar para {Sand City}?'})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 1, destination = {x=288, y=935, z=8} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})

keywordHandler:addKeyword({'travel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Posso te teletransportar para: {Earth}, {Sand City}, {M2}, {Tsufur}, {Zelta}, {Vegeta}, {Namek}, {Lude}, {Premia}, {Boar's Island}, {Ruudo}, {City 17} e {Gardia}."})

-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({'m2'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer realmente se teletransportar para {M2}?'})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=78, y=514, z=8} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})
	
-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({'tsufur'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer realmente se teletransportar para {Tsufur}?'})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=105, y=489, z=8} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})
	
-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({'zelta'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer realmente se teletransportar para {Zelta}?'})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=105, y=515, z=8} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})
	
-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({'vegeta'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer realmente se teletransportar para {Vegeta}?'})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=141, y=489, z=8} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})
	
-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({'namek'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer realmente se teletransportar para {Namek}?'})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=141, y=515, z=8} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})
	
-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({'lude'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer realmente se teletransportar para {Lude}?'})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=191, y=498, z=8} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})
	
-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({'premia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Voce quer realmente se teletransportar para {Premia}?'})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=191, y=524, z=8} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})
	
-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"boar's island"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {Boar's Island}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=75, y=488, z=8} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})
	
-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"ruudo"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {Ruudo}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=103, y=547, z=8} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})
	
-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"city 17"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {City 17}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=800, y=1133, z=8} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})
	
-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"gardia"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {Gardia}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=48, y=1274, z=8} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})

 
 -- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"boss city"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {boss city}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=397, y=542, z=7} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})


 -- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"arena quest"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {arena quest}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=58, y=72, z=7} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})

-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"halloween city"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {halloween city}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=1170, y=148, z=7} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})

-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"mordor"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {mordor}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=1314, y=331, z=6} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})


-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"croner invasion"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {croner invasion}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=896, y=174, z=7} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})

-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"kanasa"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {kanasa}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=1054, y=928, z=6} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})

-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"multi world"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {multi world}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=342, y=267, z=6} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})		

-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"mucha island"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {mucha island}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=1371, y=216, z=6} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})		

-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"arabian city"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {arabian city}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=1068, y=1932, z=8} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})

-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"ice kong city"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {ice kong city}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=437, y=1559, z=8} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})	

-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"vehemence city"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {vehemence city}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=1980, y=1323, z=10} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})

-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"flasher city"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {flasher city}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=2086, y=1910, z=8} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})	
	
-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"stream city"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {stream city}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=1030, y=1035, z=7} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})	

-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"kazhel"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {kazhel}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=995, y=1318, z=3} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})
	
	-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"divindade city"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {divindade city}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=243, y=42, z=14} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})
	
	-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"dabura island"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {dabura island}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=1474, y=1246, z=15} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})
	
	-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"quest ultragod"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {quest ultragod}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 2100, destination = {x=104, y=956, z=7} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})
	
-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"frozen island"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {frozen island}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=1177, y=1333, z=8} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})

-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({"monaka island"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Voce quer realmente se teletransportar para {monaka island}?"})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 1, destination = {x=1558, y=1311, z=6} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Tudo bem, até mais!'})	
	

	-- Makes sure the npc reacts when you say hi, bye etc.
npcHandler:addModule(FocusModule:new())