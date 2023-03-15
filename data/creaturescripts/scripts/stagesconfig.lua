skillConfig = {skill = getConfigValue('rateSkill'), magiclevel = getConfigValue('rateMagic')}
skillStages = {}
skillStages[SKILL_FIST] = {{0,10},{60,6},{80,4},{100,2},{120,1}}
skillStages[SKILL_CLUB] = {{0,10},{60,6},{80,4},{100,2},{120,1}}
skillStages[SKILL_SWORD] = {{0,10},{60,6},{80,4},{100,2},{120,1}}
skillStages[SKILL_AXE] = {{0,10},{60,6},{80,4},{100,2},{120,1}}
skillStages[SKILL_DISTANCE] = {{0,10},{60,6},{80,4},{100,2},{120,1}}
skillStages[SKILL_SHIELD] = {{0,10},{60,6},{80,4},{100,2},{120,1}}
skillStages[SKILL_FISHING] = {{0,10},{60,6},{80,4},{100,2},{120,1}} -- voce pode retirar os -- desse script para ativar, por padrao esta desativado
skillStages[SKILL__MAGLEVEL] = {{0,5},{100,4},{120,3},{135,2},{150,1},{155,0}}
showInfoOnAdvance = true -- envia uma nova mensagem com a sua nova rate
showInfoOnLogin = true -- envia mensagem da rate ao jogador ao logar

function getPlayerSkillRatesText(cid)
local skillInfo = getPlayerRates(cid)
return "Rates Info: [ Magic Level: " .. skillInfo[SKILL__MAGLEVEL] * skillConfig.magiclevel .. "x || Fist: " .. skillInfo[SKILL_FIST] * skillConfig.skill .. "x | Club: " .. skillInfo[SKILL_CLUB] * skillConfig.skill .. "x |  Sword: " .. skillInfo[SKILL_SWORD] * skillConfig.skill .. "x | Axe: " .. skillInfo[SKILL_AXE] * skillConfig.skill .. "x |  Distance: " .. skillInfo[SKILL_DISTANCE] * skillConfig.skill .. " | Shielding: " .. skillInfo[SKILL_SHIELD] * skillConfig.skill .. "x | Fishing: " .. skillInfo[SKILL_FISHING] * skillConfig.skill .. "x ]"
end