function onStepIn(cid, item, position, lastPosition, fromPosition, toPosition, actor)

if isPlayer(cid) then
doPlayerAddSoul(cid, 2)
end
return true
end