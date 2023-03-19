local bless = {1, 2, 3, 4, 5}
local cost = 80000

function onSay(cid, words, param)

for i = 1, table.maxn(bless) do
if(getPlayerBlessing(cid, bless[i])) then

doPlayerSendCancel(cid, "Voce ja tem todas as bless.")
doSendMagicEffect(getPlayerPosition(cid), 5)

return TRUE

end

end

 

if(doPlayerRemoveMoney(cid, cost) == TRUE) then

	local bless = {1, 2, 3, 4, 5}
    doCreatureSay(cid, "You are now blessed" ,19)
	for i = 1, table.maxn(bless) do
		doPlayerAddBlessing(cid, bless[i])
		doSendMagicEffect(getPlayerPosition(cid), 27)
	end


else

doPlayerSendCancel(cid, "Voce precisa de 80k para a bless.")

end

return TRUE

end