function onUse(cid, item, frompos, item2, topos)
	if item.uid == 60068 then
		if getPlayerStorageValue(cid,60068) == -1 then
			doPlayerSendTextMessage(cid,25,"Voce ganhou 100 Senzu Beans!")
			doPlayerAddItem(cid,12779,100)
			doPlayerAddItem(cid,12764,1)
			doPlayerAddItem(cid,12758,1)
			doPlayerAddItem(cid,12622,1)
			doPlayerAddItem(cid,12640,1)
			doPlayerAddItem(cid,12666,1)
			doPlayerAddItem(cid,12698,1)
			doPlayerAddItem(cid,2160,5)
			setPlayerStorageValue(cid,60068,1)
		else
			doPlayerSendTextMessage(cid,25,"Voce já recebeu seu item.")
		end
		return true
	end
end