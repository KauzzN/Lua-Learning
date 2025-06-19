os.execute("chcp 65001")

--Creeper Infos
local nome = 'Creeper'
local tipo = 'Monstro'
local sinopse = '"Um monstro silencioso e aparentemente inofensivo, mas extremamente mortal"'
local medo = 'Gatos'
local drop = 'Polvora'
local predar = 'Noturno'
local som = 'tssss'

--Creeper attributes
local vida = 7
local inteligencia = 4
local dano = 10
local speed = 5
local perigo = 10
local personalidade = 'Agressivo'

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


--RG
print("================================================")
print("|")
print("| ".. nome)
print("|   ".. sinopse )
print("|   Pontos fracos: ".. medo )
print("|   Drop: ".. drop)
print("|   Horario mais ativo: ".. predar)
print("|   Som: ".. som)
print("|")
print("| Atributos:")
print("|   Tipo:           ".. tipo)
print("|   Personalidade:  ".. personalidade)
print("|   Vitalidade:     ".. getProgressBar(vida))
print("|   Dano:           ".. getProgressBar(dano))
print("|   Velocidade:     ".. getProgressBar(speed) )
print("|   Periculosidade: ".. getProgressBar(perigo))
print("|   inteligencia:   ".. getProgressBar(inteligencia))
print("|")
print("================================================")