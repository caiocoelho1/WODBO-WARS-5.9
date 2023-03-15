local focus = 0
local talk_start = 0
local target = 0
local following = false
local attacking = false

function onThingMove(creature, thing, oldpos, oldstackpos)
end

function onCreatureAppear(creature)
end

function onCreatureDisappear(cid, pos)
if focus == cid then
selfSay('???')
focus = 0
talk_start = 0
end
end

function onCreatureTurn(creature)
end

function msgcontains(txt, str)
return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end

function onCreatureSay(cid, type, msg)
msg = string.lower(msg)
if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
selfSay('Olá! Se voce está pronto, diga "reborn".')
focus = cid
talk_start = os.clock()
elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
selfSay('Desculpe, ' .. getCreatureName(cid) .. '! Hey!.')
elseif focus == cid then
talk_start = os.clock()
if msgcontains(msg, 'reborn') and getPlayerStorageValue(cid,30023) == 4 then
selfSay('Desculpe, mas voce já é rebornado.')
focus = 0
talk_start = 0
elseif msgcontains(msg, 'reborn') and (getPlayerLevel(cid) < 200 and getPlayerStorageValue(cid,30023) ~= 4) or (getPlayerLevel(cid) > 1000 and getPlayerStorageValue(cid,30023) ~= 4) then
selfSay('Apenas level 200 até 1000 podem rebornar.')
focus = 0
talk_start = 0
elseif msgcontains(msg, 'reborn') then
selfSay('Realmente quer isto?')
talk_state = 2
--_GOKU_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 8 then
doReborn(cid,1,10,9)
talk_state = 0

--_VEGETA_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 23 then
doReborn(cid,1,25,24)
talk_state = 0

--_PICCOLO_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 36 then
doReborn(cid,1,42,37)
talk_state = 0

--_C17_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 49 then
doReborn(cid,1,50,50)
talk_state = 0

--_GOHAN_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 63 then
doReborn(cid,1,62,64)
talk_state = 0

--_TRUNKS_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 75 then
doReborn(cid,1,74,76)
talk_state = 0

--_CELL_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 87 then
doReborn(cid,1,81,88)
talk_state = 0

--_FREEZA_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 101 then
doReborn(cid,1,88,102)
talk_state = 0

--_MAJIN BOO_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 117 then
doReborn(cid,1,98,118)
talk_state = 0

--_BROLY_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 131 then
doReborn(cid,1,113,132)
talk_state = 0

--_C18_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 144 then
doReborn(cid,1,50,145)
talk_state = 0

--_UUB_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 156 then
doReborn(cid,1,128,157)
talk_state = 0

--_GOTEN_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 170 then
doReborn(cid,1,142,171)
talk_state = 0

--_CHIBI TRUNKS_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 184 then
doReborn(cid,1,151,185)
talk_state = 0

--_COOLER_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 197 then
doReborn(cid,1,153,198)
talk_state = 0

--_DENDE_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 210 then
doReborn(cid,1,169,211)
talk_state = 0

--_TSUFUL_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 222 then
doReborn(cid,1,180,223)
talk_state = 0

--_BARDOCK_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 235 then
doReborn(cid,1,194,236)
talk_state = 0

--_KURIRIN_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 248 then
doReborn(cid,1,205,249)
talk_state = 0

--_PAN_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 260 then
doReborn(cid,1,212,261)
talk_state = 0

--_KAIO_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 272 then
doReborn(cid,1,221,273)
talk_state = 0

--_VIDEL_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 284 then
doReborn(cid,1,227,285)
talk_state = 0

--_JANEMBA_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 296 then
doReborn(cid,1,234,297)
talk_state = 0

--_TENSHINHAN_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 308 then
doReborn(cid,1,246,309)
talk_state = 0

--_JENK_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 320 then
doReborn(cid,1,257,321)
talk_state = 0

--_RADITZ_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 332 then
doReborn(cid,1,265,333)
talk_state = 0

--_C16_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 344 then
doReborn(cid,1,277,345)
talk_state = 0

--_TURLES_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 356 then
doReborn(cid,1,285,357)
talk_state = 0

--_BULMA_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 368 then
doReborn(cid,1,296,369)
talk_state = 0

--_SHENRON_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 380 then
doReborn(cid,1,302,381)
talk_state = 0

--_VEGETTO_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 392 then
doReborn(cid,1,308,393)
talk_state = 0

--_TAPION_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 404 then
doReborn(cid,1,321,405)
talk_state = 0

--_KAME_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 417 then
doReborn(cid,1,335,418)
talk_state = 0

--_KING VEGETA_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 429 then
doReborn(cid,1,347,430)
talk_state = 0

--_KAGOME_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 441 then
doReborn(cid,1,357,442)
talk_state = 0

--_ZAIKO_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 453 then
doReborn(cid,1,368,454)
talk_state = 0

--_LORD CHILLED_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 465 then
doReborn(cid,1,375,466)
talk_state = 0

--_Bills_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 482 then
doReborn(cid,1,517,483)
talk_state = 0

--_Wiss_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 514 then
doReborn(cid,1,653,515)
talk_state = 0

--_Goku God_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 526 then
doReborn(cid,1,627,527)
talk_state = 0

--_Bills Evolution_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 538 then
doReborn(cid,1,669,539)
talk_state = 0

--_Yamcha_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 550 then
doReborn(cid,1,674,551)
talk_state = 0

--_Evolution Frezza_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 562 then
doReborn(cid,1,700,563)
talk_state = 0


--_Evolution Trunks_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 574 then
doReborn(cid,1,712,575)
talk_state = 0

--_C13_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 586 then
doReborn(cid,1,723,587)
talk_state = 0

--_Xicor_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 598 then
doReborn(cid,1,742,599)
talk_state = 0

--_c20_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 613 then
doReborn(cid,1,769,614)
talk_state = 0

--_Paikuhan_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 625 then
doReborn(cid,1,762,626)
talk_state = 0

--_Mr Satan_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 638 then
doReborn(cid,1,790,639)
talk_state = 0

--_C8_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 650 then
doReborn(cid,1,782,651)
talk_state = 0

--_coller_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 662 then
doReborn(cid,1,811,663)
talk_state = 0

--_frost_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 680 then
doReborn(cid,1,824,681)
talk_state = 0

--_Vados_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 692 then
doReborn(cid,1,828,693)
talk_state = 0

--_Dabura_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 704 then
doReborn(cid,1,839,705)
talk_state = 0

--_GokuJr_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 719 then
doReborn(cid,1,841,720)
talk_state = 0

--_Gogetta_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 731 then
doReborn(cid,1,852,732)
talk_state = 0

--_Hitto_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 743 then
doReborn(cid,1,858,745)
talk_state = 0

--_Champa_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 759 then
doReborn(cid,1,874,760)
talk_state = 0

--_Gokublack_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 787 then
doReborn(cid,1,900,788)
talk_state = 0

--_Botamo_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 775 then
doReborn(cid,1,891,776)
talk_state = 0

--_Chichi_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 799 then
doReborn(cid,1,903,800)
talk_state = 0

--_cabba_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 811 then
doReborn(cid,1,912,812)
talk_state = 0

--_Monaka_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 823 then
doReborn(cid,1,922,824)
talk_state = 0

--_Zamusu_--
elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 200 and getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 835 then
doReborn(cid,1,934,836)
talk_state = 0


elseif msgcontains(msg, 'yes') and talk_state == 2 then
selfSay('Desculpe, ' .. getCreatureName(cid) .. '! Voce deve estar na ultima transformação ou então passou do level 1000.')


elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
selfSay('Adeus!')
focus = 0
talk_start = 0
end
end
end

function onThink()
doNpcSetCreatureFocus(focus)
if (os.clock() - talk_start) > 45 then
if focus > 0 then
selfSay('Próximo por favor...')
end
focus = 0
end
if focus ~= 0 then
if getDistanceToCreature(focus) > 5 then
selfSay('Adeus!')
focus = 0
end
end
end