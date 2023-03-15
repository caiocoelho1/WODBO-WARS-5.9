function onSay(cid, words, param)
   if doPlayerRemoveMoney(cid, 10000) then
      doPlayerAddItem(cid, 12757, 1)
      doSendMagicEffect(getThingPos(cid),13)
      doCreatureSay(cid, "DBOHG - Voce comprou um BOL!", TALKTYPE_ORANGE_1)
   else
      doPlayerSendCancel(cid, "DBOHG - Você não tem dinheiro suficiente para comprar uma BOL.")
      doSendMagicEffect(getThingPos(cid), 2)
   end
  return true
end