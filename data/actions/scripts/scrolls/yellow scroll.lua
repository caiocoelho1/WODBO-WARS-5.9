local exp = 500000
local text = "Parab�ns! Voce ganhou "..exp.." pontos de experiencia."
function onUse(cid, item, fromPosition, itemEx, toPosition)
doPlayerAddExp(cid, exp)
doCreatureSay(cid, text, 19)
doSendMagicEffect(getCreaturePosition(cid), 114)
doRemoveItem(cid, item.uid, 1)
return true
end