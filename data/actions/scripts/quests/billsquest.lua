function onUse(cid, item, frompos, item2, topos)
	if item.uid == 61000 then
		if getPlayerStorageValue(cid,61000) == -1 then
			doPlayerSendTextMessage(cid,25,"Voce ganhou um set Bills!")
			doPlayerAddItem(cid,2476,1)
			doPlayerAddItem(cid,2477,1)
			doPlayerAddItem(cid,8886,1)
			doPlayerAddItem(cid,2475,1)
			setPlayerStorageValue(cid,61000,1)
		else
			doPlayerSendTextMessage(cid,25,"Voce já recebeu seu item.")
		end
		return true
	end
end