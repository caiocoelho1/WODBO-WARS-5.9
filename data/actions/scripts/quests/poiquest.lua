function onUse(cid, item, frompos, item2, topos)
	if item.uid == 61002 then
		if getPlayerStorageValue(cid,61002) == -1 then
			doPlayerSendTextMessage(cid,25,"Voce recebeu seus itens da poi parabéns!")
			doPlayerAddItem(cid,8303,2)
			doPlayerAddItem(cid,9971,150)
			doPlayerAddItem(cid,2008,1)
			doPlayerAddItem(cid,1949,1)
			doPlayerAddItem(cid,8890,1)
			setPlayerStorageValue(cid,61002,1)
		else
			doPlayerSendTextMessage(cid,25,"Voce já recebeu seu item.")
		end
		return true
	end
end