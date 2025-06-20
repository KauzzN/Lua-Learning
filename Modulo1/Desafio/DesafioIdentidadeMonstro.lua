os.execute("chcp 65001")

--Boss Infos
local nome = 'Eye Of Cthulu'
local tipo = 'Boss'
local sinopse = '"Um Olho Voador maligno, mortal e extremamente arrepiante"'
local Som = 'Um grito estrondoso, meio agudo'
local drop = 'Escudo de Cthulu, Moedas'
local predar = 'Apenas Noturno'
local invocarItem = 'Um pequeno item voodoo, com a forma do EYE OF CTHULU, levando o mesmo nome da criatura'

--Boss attributes
local vida = 9
local inteligencia = 6
local dano = 8
local speed = 10
local perigo = 9
local personalidade = 'Agressivo'

--Habilidades
local habilidades1 = 'Atravessa blocos e desfere Dano quando tocado'
local habilidades2 = 'Sumona mini olhos voadores que te perseguem'
local habilidades3 = 'Quando a vida esta em 50%, se transforma numa boca voadora extremamente veloz e mortal'
local habilidades4 = 'Da um longo avanço em linha reta, mirando no Jogador'

--Função Barra de progresso
local function getProgressBar(attribute)
    local fullChar = '⬜'
    local emptyChar = '⬛'

    local result = ''
    for i = 1, 10, 1 do
        if i <= attribute then 
            result = result.. fullChar
        else
            result = result.. emptyChar
        end
    end
    return result
end

--Função Separação de linhas
local function separacao(num)
    if num == 1 then
        print("=====================================================")
        print("|")
    elseif num == 2 then
        print("|")
    elseif num == 3 then
        print("|")
        print("=====================================================")
    end    
end

--RG
print("")
print("EYE OF CTHULU MonsterDex")
separacao(1)
print("| Infos")
print("| ".. nome)
print("|   ".. sinopse )
separacao(2)
print("|   Som: ".. Som)
print("|   Drop: ".. drop)
print("|   Horario mais ativo: ".. predar)
separacao(2)
print("| Atributos:")
print("|   Tipo:           ".. tipo)
print("|   Personalidade:  ".. personalidade)
print("|   Vitalidade:     ".. getProgressBar(vida))
print("|   Dano:           ".. getProgressBar(dano))
print("|   Velocidade:     ".. getProgressBar(speed))
print("|   Periculosidade: ".. getProgressBar(perigo))
print("|   inteligencia:   ".. getProgressBar(inteligencia))
separacao(2)
print("| Habilidades:")
print("|    Passivas:")
print("|      ".. habilidades2)
print("|      ".. habilidades1)
print("|    Ativas:")
print("|      ".. habilidades3)
print("|      ".. habilidades4)
separacao(2)
print("| Formas de invocar:")
print("|   1. O EYE OF CTHULU possui uma chance pequena de spawnar a noite")
print('|      a mensagem "voce sente uma presença maligna observando voce" aparece no chat')
print("|   2. ".. invocarItem)
print('|      utilizando a noite, o EYE OF CTHULU ira spawnar e perseguir voce')
separacao(3)