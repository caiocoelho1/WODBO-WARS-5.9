local conditionBlack = createConditionObject(CONDITION_OUTFIT)
setConditionParam(conditionBlack, CONDITION_PARAM_TICKS, -1)
addOutfitCondition(conditionBlack, {lookType = 494})
local conditionRed = createConditionObject(CONDITION_OUTFIT)
setConditionParam(conditionRed, CONDITION_PARAM_TICKS, -1)
addOutfitCondition(conditionRed, {lookType = 495})
function onStepIn(cid, item, position, fromPosition)
if getPlayerAccess(cid) > 3 then
doTeleportThing(cid, _Lib_Battle_Info.TeamOne.pos) return false
elseif getGlobalStorageValue(_Lib_Battle_Info.storage_count) > 0 then
setGlobalStorageValue(_Lib_Battle_Info.storage_count, getGlobalStorageValue(_Lib_Battle_Info.storage_count)-1)
end
if getGlobalStorageValue(_Lib_Battle_Info.storage_count) >= 0 then
if getGlobalStorageValue(_Lib_Battle_Info.TeamOne.storage) < getGlobalStorageValue(_Lib_Battle_Info.TeamTwo.storage) then
setPlayerStorageValue(cid, _Lib_Battle_Info.TeamOne.storage, 1)
doAddCondition(cid, conditionBlack)
setGlobalStorageValue(_Lib_Battle_Info.TeamOne.storage, getGlobalStorageValue(_Lib_Battle_Info.TeamOne.storage)+1)
doTeleportThing(cid, _Lib_Battle_Info.TeamOne.pos)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voce est� no time " .. _Lib_Battle_Info.TeamOne.name .. "!")
else
setPlayerStorageValue(cid, _Lib_Battle_Info.TeamTwo.storage, 1)
doAddCondition(cid, conditionRed)
setGlobalStorageValue(_Lib_Battle_Info.TeamTwo.storage, getGlobalStorageValue(_Lib_Battle_Info.TeamTwo.storage)+1)
doTeleportThing(cid, _Lib_Battle_Info.TeamTwo.pos)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voce est� no time " .. _Lib_Battle_Info.TeamTwo.name .. "!")
end
end
if getGlobalStorageValue(_Lib_Battle_Info.storage_count) == 0 then
removeBattleTp()
doBroadcastMessage("Battlefield ir� come�ar em 1 minuto, monte sua estrat�gia.")
addEvent(doBroadcastMessage, 1*60*1000-500, "Battlefield ir� come�ar agora!")
addEvent(OpenWallBattle, 1*60*1000)
end
return true
end