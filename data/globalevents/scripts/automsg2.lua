-- [( Script created by Matheus for TibiaKing.com )] --
function onThink(interval, lastExecution)
MENSAGEM = {
"\nDonate no nosso servidor\nSua ajuda vai nos manter online sempre,� muito f�cil donatar va agora mesmo no\nNosso site que � wodbowars.hopto.org e clique em como donatar\nVoc� receber� seus pontos no mesmo dia\n Quer ficar ligado nas novidades do servidor? Digite !notice.",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],22)
return true
end