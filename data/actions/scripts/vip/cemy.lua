function onUse(cid, item, fromPosition, itemEx, toPosition)

local config={
removeOnUse = "yes" -- remover quando usar ("yes" or "no")
}

local days = 1500 -- coloque os dias que ser�o a VIP!
local daysvalue = days * 24 * 60 * 60
local storageplayer = getPlayerStorageValue(cid, 13501)
local timenow = os.time()

if getPlayerStorageValue(cid, 13501) - os.time() <= 0 then
time = timenow + daysvalue
else
time = storageplayer + daysvalue
end

doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Foram adicionados ".. days .." dias permiss�o no character.")
setPlayerStorageValue(cid, 13501, time)
local quantity = math.floor((getPlayerStorageValue(cid, 13501) - timenow)/(24 * 60 * 60))
doSendMagicEffect(getPlayerPosition(cid), math.random(28,30)) 
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voc� tem ".. quantity .." dias de permiss�o restantes.")
if (config.removeOnUse == "yes") then
doRemoveItem(item.uid, 1)
end

return TRUE
end