local msgs = {
        "Não deixe de visitar nosso website e conferir as novidades o nosso shop, promoções e eventos!",
        "O melhor dbo está aqui",
}
 
function onThink(interval)
        local msg = msgs[math.random(#msgs)]
 
        for _, uid in pairs(getPlayersOnline()) do
                doScrollMessage(uid, msg)
        end
 
        return true
end