local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 34)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 0.9, 0.5, 0.8, 1)
function onUseWeapon(cid, var)
for k = 1, 2 do
	addEvent(function()
		if isCreature(cid) then
			doCombat(cid, combat, var)
		end
	end, 1 + ((k-1) * 600))
end
	return true
end
