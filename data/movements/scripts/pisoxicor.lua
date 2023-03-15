local vocacao = { -- Vocação que pode passar
number = 605, -- Numero da vocação
name = "xicor reborn" --Nome da vocação
} 


function onStepIn(cid, item, position, fromPosition)
if getPlayerVocation(cid) ~= vocacao.number then
doTeleportThing(cid, fromPosition, true)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Apenas players com a vocacao ".. vocacao.name .." podem passar por aqui!")
end
return TRUE
end