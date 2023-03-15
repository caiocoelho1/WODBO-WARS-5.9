function onUse(cid, item, frompos, item2, topos)
	if item.uid == 61004 then
		if getPlayerStorageValue(cid,61004) == -1 then
			doPlayerSendTextMessage(cid,25,"Voce ganhou um cemitery tikcet!")
			doPlayerAddItem(cid,2345,1)
			setPlayerStorageValue(cid,61004,1)
		else
			doPlayerSendTextMessage(cid,25,"Voce já recebeu seu item.")
		end
		return true
	end
end