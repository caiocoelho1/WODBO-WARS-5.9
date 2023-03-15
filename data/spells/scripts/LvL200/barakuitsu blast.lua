local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_HITCOLOR, COLOR_LIGHTGREEN)
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 31)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 11)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -50.0, 0, -50.8, 0)


local function onCastSpell1(parameters)
doCombat(parameters.cid, parameters.combat1, parameters.var)
end


function onCastSpell(cid, var)
local parameters = {cid = cid, var = var, combat1 = combat1}

for k = 1, 7 do
	addEvent(function()
		if isCreature(cid) then
			addEvent(onCastSpell1, 0, parameters)
		end
	end, 1 + ((k-1) * 275))
end
return true
end