function onStepIn(cid, item, position, fromPosition)

local config = {
msgDenied = "Desculpe, Voc� n�o tem permiss�o para entrar aqui e para ter compre a Permiss�o para entra no Planeta Wars!",
msgWelcome = "Voc� entrou no Planeta Wars!"
}

if getPlayerStorageValue(cid, 13500) - os.time() <= 0 then
doTeleportThing(cid, fromPosition, true)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.msgDenied)
doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE)
return TRUE
end
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.msgWelcome)
return TRUE
end