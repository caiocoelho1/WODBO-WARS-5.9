local config = {
    positions = {
        
        ["INICIANTE"] = { x = 91, y = 178, z = 7 },
        ["ARENA+TRAINER"] = { x = 110, y = 188, z = 7 },
        ["BEM VINDOS"] = { x = 655, y = 397, z = 7 },
        ["YAMA"] = { x = 105, y = 168, z = 7 },
        ["+ TRAINERS"] = { x = 105, y = 166, z = 7 },
        ["ARENA 1"] = { x = 48, y = 65, z = 7 },
        ["ARENA 2"] = { x = 58, y = 67, z = 7 },
        ["ARENA 3"] = { x = 67, y = 65, z = 7 },
        ["CAPSULE"] = { x = 58, y = 74, z = 7 },
        ["CAPSULE"] = { x = 397, y = 543, z = 7 },
        ["BOSS WARS"] = { x = 397, y = 536, z = 7 },
        ["EVENTOS"] = { x = 649, y = 390, z = 7 },
        ["EVENTO"] = { x = 661, y = 390, z = 7 },
        ["HALLOWEEN QUEST"] = { x = 1170, y = 144, z = 7 },
        ["RB QUEST"] = { x = 93, y = 169, z = 7 },
	["NEW TRAINERS"] = { x = 91, y = 175, z = 7 },
        ["Donate??"] = { x = 97, y = 178, z = 7 },
		["Itens"] = { x = 102, y = 177, z = 6 },
		["Donate"] = { x = 103, y = 177, z = 6 },
		["Viajar"] = { x = 109, y = 175, z = 7 },
		["Tasks"] = { x = 104, y = 167, z = 6 },

    }
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(3, 260))
    end
    
    return TRUE
end  