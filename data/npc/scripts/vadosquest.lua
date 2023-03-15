-- Créditos para Yan Liima - Night criador da script.
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
	
			selfSay('Olá ' .. getCreatureName(cid) .. ' deseja pegar a vocation Yamcha por 1200 vados coins?')
			focus = cid
			talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Desculpe, ' .. getCreatureName(cid) .. '! Eu falo com você em um minuto.')

  	elseif focus == cid then
		talk_start = os.clock()
		
		if msgcontains(msg, 'yes') then
		if doPlayerRemoveItem(cid,2160,1) then
		elseif doPlayerRemoveItem(cid,2149,1200) then
		doPlayerAddItem(cid, 2136,1)
					focus = 0
					talk_start = 0
				else
					selfSay('Desculpe, voce nao tem 1200 vados coins.')
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
  			selfSay('Próximo por Favor...')
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
-- Créditos para Yan Liima - Night criador da script
-- Não remova os créditos ou tera serios problema, alias você não ganha nada retirando os créditos.