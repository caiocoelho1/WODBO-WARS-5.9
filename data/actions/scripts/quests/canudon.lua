function onUse(cid, item, frompos, item2, topos) 
if item.uid == 61003 then
if item.itemid == 1945 then
player1pos = {x=1543, y=1871, z=3, stackpos=253}
player1 = getThingfromPos(player1pos)

player2pos = {x=1543, y=1874, z=3, stackpos=253}
player2 = getThingfromPos(player2pos)

player3pos = {x=1540, y=1876, z=3, stackpos=253}
player3 = getThingfromPos(player3pos)

player4pos = {x=1543, y=1877, z=3, stackpos=253}
player4 = getThingfromPos(player4pos)

player5pos = {x=1546, y=1876, z=3, stackpos=253}
player5 = getThingfromPos(player5pos)

player6pos = {x=1543, y=1880, z=3, stackpos=253}
player6 = getThingfromPos(player6pos)


if player1.itemid > 0 and player2.itemid > 0 and player3.itemid > 0 and player4.itemid > 0 then

player1level = getPlayerLevel(player1.uid)
player2level = getPlayerLevel(player2.uid)
player3level = getPlayerLevel(player3.uid)
player4level = getPlayerLevel(player4.uid)
player5level = getPlayerLevel(player5.uid)
player6level = getPlayerLevel(player6.uid)

questlevel = 1

if player1level >= questlevel and player2level >= questlevel and player3level >= questlevel and player4level >= questlevel then

queststatus1 = getPlayerStorageValue(player1.uid,6026)
queststatus2 = getPlayerStorageValue(player2.uid,6026)
queststatus3 = getPlayerStorageValue(player3.uid,6026)
queststatus4 = getPlayerStorageValue(player4.uid,6026)
queststatus5 = getPlayerStorageValue(player5.uid,6026)
queststatus6 = getPlayerStorageValue(player6.uid,6026)

if queststatus1 == -1 and queststatus2 == -1 and queststatus3 == -1 and queststatus4 == -1 then

monster1pos = {x=225, y=352, z=8}


doSummonCreature("Super Bojack", monster1pos)

nplayer1pos = {x=1525, y=1863, z=3}
nplayer2pos = {x=1523, y=1864, z=3}
nplayer3pos = {x=1527, y=1864, z=3}
nplayer4pos = {x=1523, y=1863, z=3}
nplayer5pos = {x=1527, y=1866, z=3}
nplayer6pos = {x=1525, y=1868, z=3}

doSendMagicEffect(player1pos,2)
doSendMagicEffect(player2pos,2)
doSendMagicEffect(player3pos,2)
doSendMagicEffect(player4pos,2)
doSendMagicEffect(player5pos,2)
doSendMagicEffect(player6pos,2)

doTeleportThing(player1.uid,nplayer1pos)
doTeleportThing(player2.uid,nplayer2pos)
doTeleportThing(player3.uid,nplayer3pos)
doTeleportThing(player4.uid,nplayer4pos)
doTeleportThing(player5.uid,nplayer5pos)
doTeleportThing(player6.uid,nplayer6pos)

doSendMagicEffect(nplayer1pos,10)
doSendMagicEffect(nplayer2pos,10)
doSendMagicEffect(nplayer3pos,10)
doSendMagicEffect(nplayer4pos,10)
doSendMagicEffect(nplayer5pos,10)
doSendMagicEffect(nplayer6pos,10)

doTransformItem(item.uid,item.itemid+0)

else
doPlayerSendCancel(cid,"Sorry, not possible.")
end
else
doPlayerSendCancel(cid,"Sorry, not possible.")
end
else
doPlayerSendCancel(cid,"Sorry, not possible.")
end
elseif item.itemid == 1945 then
if getPlayerAccess(cid) == 3 then
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"Sorry, not possible.")
end
end
end
return 1
end