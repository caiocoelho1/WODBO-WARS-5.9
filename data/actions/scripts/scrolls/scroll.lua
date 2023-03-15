local exp = 6000000000
local text = "Parabéns! Voce usou scroll de "..exp.." da poi."
function onUse(cid, item, fromPosition, itemEx, toPosition)
doPlayerAddExp(cid, exp)
doCreatureSay(cid, text, 19)
doSendMagicEffect(getCreaturePosition(cid), 114)
doRemoveItem(cid, item.uid, 1)
return true
end