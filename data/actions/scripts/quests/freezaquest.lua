function onUse(cid, item, frompos, item2, topos)
	if item.uid == 61001 then
		if getPlayerStorageValue(cid,61001) == -1 then
			doPlayerSendTextMessage(cid,25,"Voce ganhou um Freeza Set!")
			doPlayerAddItem(cid,8882,1)
			doPlayerAddItem(cid,8883,1)
			doPlayerAddItem(cid,8884,1)
			doPlayerAddItem(cid,8885,1)
			setPlayerStorageValue(cid,61001,1)
		else
			doPlayerSendTextMessage(cid,25,"Voce já recebeu seu item.")
		end
		return true
	end
end