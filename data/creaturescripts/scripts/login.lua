local config = {
	loginMessage = getConfigValue('loginMessage'),
	useFragHandler = getBooleanFromString(getConfigValue('useFragHandler'))
}

function onLogin(cid)
	local loss = getConfigValue('deathLostPercent')
	if(loss ~= nil) then
		doPlayerSetLossPercent(cid, PLAYERLOSS_EXPERIENCE, loss * 10)
	end
	
	local accountManager = getPlayerAccountManager(cid)
	if(accountManager == MANAGER_NONE) then
		local lastLogin, str = getPlayerLastLoginSaved(cid), config.loginMessage
		if(lastLogin > 0) then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, str)
			str = "Your last visit was on " .. os.date("%a %b %d %X %Y", lastLogin) .. "."
		else
			str = str .. " Please choose your outfit."
			doPlayerSendOutfitWindow(cid)
			setPlayerStorageValue(cid, 30024, 0)
		end

		doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, str)
	elseif(accountManager == MANAGER_NAMELOCK) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, it appears that your character has been namelocked, what would you like as your new name?")
	elseif(accountManager == MANAGER_ACCOUNT) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, type {account} to manage your account and if you want to start over then type {cancel}.")
	else
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, type {account} to create an account or type {recover} to recover an account.")
	end
if getPlayerStorageValue(cid, 67792) == -1 then

doPlayerPopupFYI(cid, "BEM VINDOS AO WODBOWARS OFICIAL")

doPlayerSetStorageValue(cid, 67792, 0)

end
	if(not isPlayerGhost(cid)) then
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	end

	registerCreatureEvent(cid, "Mail")
	registerCreatureEvent(cid, "SkullCheck")
	registerCreatureEvent(cid, "NoPartyAttack")
	registerCreatureEvent(cid, "TiraBattle")
	registerCreatureEvent(cid, "Idle")
	if(config.useFragHandler) then
		registerCreatureEvent(cid, "SkullCheck")
		registerCreatureEvent(cid, "Reward")
	end
	registerCreatureEvent(cid, "FullHpMana")
	registerCreatureEvent(cid, "AdvanceSave")
	doPlayerPopupFYI(cid, "VEM AI NOVO SERVIDOR WODBOWARS 2 GLOBAL\nVA AGORA MESMO NA PAGINA DO FACEBOOK\nDO SERVER E CONFIRA ESSE NOVO LANSAMENTO\n\n\n\n")
	registerCreatureEvent(cid, "ZombieAttack")
	registerCreatureEvent(cid, "BlessCheck")
	registerCreatureEvent(cid, "advance")
	registerCreatureEvent(cid, "SkullCheck")
	registerCreatureEvent(cid, "ReportBug")
	registerCreatureEvent(cid,"Outfit")
	registerCreatureEvent(cid, "FragReward")
	registerCreatureEvent(cid, "Niwdeath")
	registerCreatureEvent(cid, "DeathPlayer")
	registerCreatureEvent(cid, "AdvanceSave")
	registerCreatureEvent(cid, "LevelRecompense")
	registerCreatureEvent(cid, "BoasVindas")
	registerCreatureEvent(cid, "BroadDeath")
	registerCreatureEvent(cid, "SaveStamina")
	--------- SHOP ---------
	registerCreatureEvent(cid, "VocShenron")
	registerCreatureEvent(cid, "VocVegetto")
	registerCreatureEvent(cid, "VocTapion")
	registerCreatureEvent(cid, "VocKame")
	registerCreatureEvent(cid, "VocKagome")
	registerCreatureEvent(cid, "VocKingVegeta")
	registerCreatureEvent(cid, "VocZaiko")
	registerCreatureEvent(cid, "VocChilled")
	registerCreatureEvent(cid, "VocC8")
        registerCreatureEvent(cid, "VocChampa")
	registerCreatureEvent(cid, "VocPai")
	registerCreatureEvent(cid, "Voc20")
	registerCreatureEvent(cid, "VocVados")
	registerCreatureEvent(cid, "VocCola")
	registerCreatureEvent(cid, "UltraWiss")
	registerCreatureEvent(cid, "UltraBillsevo")
	registerCreatureEvent(cid, "UltraXicor")
	registerCreatureEvent(cid, "UltraPaikuhan")
	registerCreatureEvent(cid, "UltraChiled")
	registerCreatureEvent(cid, "UltraCell")
	registerCreatureEvent(cid, "UltraVegetto")
	registerCreatureEvent(cid, "UltraBillsquest")
	registerCreatureEvent(cid, "UltraGokugod")
	registerCreatureEvent(cid, "UltraJanemba")
	registerCreatureEvent(cid, "UltraHitto")
	registerCreatureEvent(cid, "UltraTurles")
	registerCreatureEvent(cid, "UltraChampa")
	registerCreatureEvent(cid, "VocFrost")
	registerCreatureEvent(cid, "VocIrmawiss")
	registerCreatureEvent(cid, "VocBotamo")
	registerCreatureEvent(cid, "VocZamusu")
	registerCreatureEvent(cid, "VocMonaka")
	registerCreatureEvent(cid, "VocCabba")
	registerCreatureEvent(cid, "VocChichi")
	registerCreatureEvent(cid, "VocGokublack")
	registerCreatureEvent(cid, "UltraC8")
	registerCreatureEvent(cid, "UltraBotamo")
	registerCreatureEvent(cid, "UltraCabba")
	registerCreatureEvent(cid, "UltraTrunksevo")
	registerCreatureEvent(cid, "UltraFreezaevo")
	registerCreatureEvent(cid, "UltraC13")
	registerCreatureEvent(cid, "UltraVados")
	registerCreatureEvent(cid, "UltraKaio")
	registerCreatureEvent(cid, "UltraDende")
	registerCreatureEvent(cid, "UltraPiccolo")
	registerCreatureEvent(cid, "UltraZamusu")
	registerCreatureEvent(cid, "UltraBlack")
	registerCreatureEvent(cid, "UltraBuu")
	registerCreatureEvent(cid, "UltraZaiko")
	registerCreatureEvent(cid, "VocDabura")
	registerCreatureEvent(cid, "UltraBrolly")
	registerCreatureEvent(cid, "UltraDivindade")
	registerCreatureEvent(cid, "RemovedorDeFrags")
	--------------- REFLECT ----------------
	registerCreatureEvent(cid, "Reflect")
	if getPlayerStorageValue(cid, 3482101) ~= 0 then
			setPlayerStorageValue(cid, 3482101, 0) 
	end
return true
end