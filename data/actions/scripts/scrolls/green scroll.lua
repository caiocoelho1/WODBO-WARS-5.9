local exp = 1500000
local text = "Parabéns! Voce ganhou "..exp.." pontos de experiencia."
function onUse(cid, item, fromPosition, itemEx, toPosition)
doPlayerAddExp(cid, exp)
doCreatureSay(cid, text, 19)
doSendMagicEffect(getCreaturePosition(cid), 111)
doRemoveItem(cid, item.uid, 1)
return true
end