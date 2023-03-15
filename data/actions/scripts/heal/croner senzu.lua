function onUse(cid, item, fromPosition, itemEx, toPosition)
if isPremium(cid) then
ITEM = 2159
local storage = 50000
local wait = 1.5
local pos1 = {x = getPlayerPosition(cid).x + 1, y = getPlayerPosition(cid).y + 0, z = getPlayerPosition(cid).z}
if fromPosition.x ~= CONTAINER_POSITION and exhaustion.get(cid, storage) == FALSE then
REG_HEALTH = 130000
REG_MANA = 130000
doPlayerAddMana(cid, REG_MANA)
doCreatureAddHealth(cid, REG_HEALTH)
doCreatureSay(cid, 'Croner Senzu Event!', TALKTYPE_ORANGE_1)
doSendMagicEffect(pos1, 77)
doRemoveItem(item.uid, 0)
exhaustion.set(cid, storage, wait)
elseif item.itemid == ITEM and exhaustion.get(cid, storage) == FALSE then
REG_HEALTH = 130000
REG_MANA = 130000
doPlayerAddMana(cid, REG_MANA)
doCreatureAddHealth(cid, REG_HEALTH)
doCreatureSay(cid, 'Croner Senzu Event!', TALKTYPE_ORANGE_1)
doSendMagicEffect(pos1, 77)
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