local msgs = {
        "N�o deixe de visitar nosso website e conferir as novidades o nosso shop, promo��es e eventos!",
        "O melhor Wodbo est� aqui (WODBO WARS)",
}
 
function onThink(interval)
        local msg = msgs[math.random(#msgs)]
 
        for _, uid in pairs(getPlayersOnline()) do
                doScrollMessage(uid, msg)
        end
 
        return true
end