local positions = {
    [""]        = {pos = {x = 1187, y = 1002, z = 7}, color = {100, 107}, effect = {76}},
	["Receber"]        = {pos = {x = 1186, y = 1002, z = 7}, color = {100, 107}, effect = {}},
	
}

function onThink(cid, interval, lastExecution)
    for t, pos in pairs(positions) do
        for _, effect in ipairs(pos.effect) do
            if(#pos.effect > 0) then
                doSendMagicEffect(pos.pos, effect)
            end
        end
        doSendAnimatedText(pos.pos, t, #pos.color > 0 and pos.color[math.random(#pos.color)] or 215)
    end
    return true
end