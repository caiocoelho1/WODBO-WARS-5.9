function onUse(cid, item, frompos, item2, topos)
	if item.uid == 60035 then
		if getPlayerStorageValue(cid,60035) == -1 then
			doPlayerSendTextMessage(cid,25,"Voce ganhou um Cruze Armor e um Cruze Legs!")
			doPlayerAddItem(cid,2495,1)
			doPlayerAddItem(cid,2493,1)
			setPlayerStorageValue(cid,60035,1)
		else
			doPlayerSendTextMessage(cid,25,"Voce já recebeu seu item.")
		end
		return true
	end
end