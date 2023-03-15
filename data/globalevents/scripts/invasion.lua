local i = {
["21:02"] = {nome = "Invasão Croner", pos = {x=897, y=154, z=7}, monster = {"1 Croner", "15 Rookador"}},
["19:21"] = {nome = "The Massive Dragon Invasion", pos = {x=159, y=58, z=7}, monster = {"1 Demon"}},
}

function onTime()
hours = tostring(os.date("%X")):sub(1, 5)
tb = i[hours]
if tb then
doBroadcastMessage(hours .. " - " .. tb.nome .. " iníciou ! Todos em Croner Invasion ,vai pelo capsule !.")
for _,x in pairs(tb.monster) do
for s = 1, tonumber(x:match("%d+")) do
doSummonCreature(x:match("%s(.+)"), tb.pos)
end
end
end
return true
end