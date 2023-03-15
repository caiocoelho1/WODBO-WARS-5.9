function onSay(cid, words, param, channel)
if(getStorage(ZE_STATUS) ~= 2) then
  local players_on_arena_count = #getZombiesEventPlayers()
  if(param == 'force') then
   if(players_on_arena_count > 0) then
	setZombiesEventPlayersLimit(players_on_arena_count  )
	addZombiesEventBlockEnterPosition()
	doSetStorage(ZE_STATUS, 2)
	doBroadcastMessage("O evento Zumbi Arena foi aberto!")
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Os zumbis come�aram a nascer.")
   else
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "O evento Zumbi Arena n�o come�ou por falta de jogadores suficientes.")
   end
  else
   if(param ~= '' and tonumber(param) > 0) then
	setZombiesEventPlayersLimit(tonumber(param))
   end
   removeZombiesEventBlockEnterPosition()
   doSetStorage(ZE_STATUS, 1)
   doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Zumbi Arena Event come�ou!")
   doPlayerBroadcastMessage(cid, "A passagem da Zumbi Arena Event foi aberta. Deve-se esperar " .. getZombiesEventPlayersLimit() - players_on_arena_count .. " jogadores para come�ar.")
  end
else
  doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "O Zumbi Arena Event j� come�ou.")
end
return true
end