function onUse(cid, item, fromPosition, itemEx, toPosition)
ITEM = 12775
local storage = 50000
local wait = 0.2
local pos1 = {x = getPlayerPosition(cid).x + 1, y = getPlayerPosition(cid).y + 0, z = getPlayerPosition(cid).z}
if fromPosition.x ~= CONTAINER_POSITION and exhaustion.get(cid, storage) == FALSE then
REG_HEALTH = 5000
REG_MANA = 0
doPlayerAddMana(cid, REG_MANA)
doCreatureAddHealth(cid, REG_HEALTH)
doSendAnimatedText(getPlayerPosition(cid), "Aaahhh!", 180)
doSendMagicEffect(pos1, 79)
doRemoveItem(item.uid,1)
exhaustion.set(cid, storage, wait)
elseif item.itemid == ITEM and exhaustion.get(cid, storage) == FALSE then
REG_HEALTH = 5000
REG_MANA = 0
doPlayerAddMana(cid, REG_MANA)
doCreatureAddHealth(cid, REG_HEALTH)
doSendAnimatedText(getPlayerPosition(cid), "Aaahhh!", 180)
doSendMagicEffect(pos1, 79)
doRemoveItem(item.uid,1)
exhaustion.set(cid, storage, wait)
else
doPlayerSendCancel(cid, "You are exhausted.")
end
return TRUE
end