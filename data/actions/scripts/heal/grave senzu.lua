function onUse(cid, item, fromPosition, itemEx, toPosition)
if isPremium(cid) then
ITEM = 2308
local storage = 50000
local wait = 1.5
local pos1 = {x = getPlayerPosition(cid).x + 1, y = getPlayerPosition(cid).y + 0, z = getPlayerPosition(cid).z}
if fromPosition.x ~= CONTAINER_POSITION and exhaustion.get(cid, storage) == FALSE then
REG_HEALTH = 155000
REG_MANA = 155000
doPlayerAddMana(cid, REG_MANA)
doCreatureAddHealth(cid, REG_HEALTH)
doCreatureSay(cid, 'Usando Grave Senzu!', TALKTYPE_ORANGE_1)
doSendMagicEffect(pos1, 78)
doRemoveItem(item.uid, 0)
exhaustion.set(cid, storage, wait)
elseif item.itemid == ITEM and exhaustion.get(cid, storage) == FALSE then
REG_HEALTH = 175000
REG_MANA = 175000
doPlayerAddMana(cid, REG_MANA)
doCreatureAddHealth(cid, REG_HEALTH)
doCreatureSay(cid, 'Usando Grave Senzu!', TALKTYPE_ORANGE_1)
doSendMagicEffect(pos1, 79)
doRemoveItem(item.uid,0)
exhaustion.set(cid, storage, wait)
else
doPlayerSendCancel(cid, "You are exhausted.")
end
return TRUE
else
doPlayerSendCancel(cid, "Voce precisa ser premium.")
return true
end
end