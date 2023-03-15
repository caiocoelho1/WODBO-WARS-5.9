-- [( Script created by Matheus for TibiaKing.com )] --
function onThink(interval, lastExecution)
MENSAGEM = {
"\nDonate no nosso servidor\nSua ajuda vai nos manter online sempre,é muito fácil donatar va agora mesmo no\nNosso site que é wodbowars.hopto.org e clique em como donatar\nVocê receberá seus pontos no mesmo dia\n Quer ficar ligado nas novidades do servidor? Digite !notice.",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],22)
return true
end