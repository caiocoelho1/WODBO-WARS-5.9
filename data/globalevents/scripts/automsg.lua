-- [( Script created by Matheus for TibiaKing.com )] --
function onThink(interval, lastExecution)
MENSAGEM = {
"VEM AI NOVO SERVIDOR WODBO WARS[2]GLOBAL\nVai no facebook e confira o video do novo server\n\n\nMais informações no facebook leia lá a postagem\nquer evitar rolbacks? em caso de queda Use !save\nNão adianta ficar mentindo\ndizendo que perdeu isso ou aquilo,\nNão entregaremos nada digo denovo use !save sempre para salvar seu personagem\n Quer ficar ligado nas novidades do servidor? Digite !notice.",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],22)
return true
end