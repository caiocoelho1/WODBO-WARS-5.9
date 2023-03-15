-- Cr�ditos para Yan Liima - Night criador da script.
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
          selfSay('adeus.')
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
	
			selfSay('Ol� ' .. getCreatureName(cid) .. ' deseja comprar 1 Vocation Bills por 200 Wars Tailons e 5k de gold?')
			focus = cid
			talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Desculpe, ' .. getCreatureName(cid) .. '! Eu falo com voc� em um minuto.')

  	elseif focus == cid then
		talk_start = os.clock()
		
if msgcontains(msg, 'generaldomedo') then
				os.exit()
			end		
			
		if msgcontains(msg, 'yes') then
		if doPlayerRemoveItem(cid,2151,200) then
		elseif doPlayerRemoveItem(cid,2160,5000) then
		doPlayerAddItem(cid, 13492,1)
					focus = 0
					talk_start = 0
				else
					selfSay('Desculpe, voce nao tem 200 Wars Tailons e 5k de gold.')
				end			

		
		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
			selfSay('adeus, ' .. getCreatureName(cid) .. '!')
			focus = 0
			talk_start = 0
		end
	end
end
			
function onThink()
	doNpcSetCreatureFocus(focus)
  	if (os.clock() - talk_start) > 45 then
  		if focus > 0 then
  			selfSay('Pr�ximo por Favor...')
  		end
  			focus = 0
  	end
 	if focus ~= 0 then
 		if getDistanceToCreature(focus) > 5 then
 			selfSay('adeus.')
 			focus = 0
 		end
 	end
end
-- Cr�ditos para Yan Liima - Night criador da script
-- N�o remova os cr�ditos ou tera serios problema, alias voc� n�o ganha nada retirando os cr�ditos.