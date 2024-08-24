local utils = {}
---
---Abilitar emojis e sinais especiais
---
function utils.enableUtf8()
    os.execute("chcp 65001")
end

---
---Faz print da apresentação do simulador no terminal
---
function utils.printHeader()
    print([[
==================================================================================
                     O                                     O
                {o)xxx|===============-  *  -===============|xxx(o}
                     O                                     O
                               SIMULADOR DE BATALHA

==================================================================================

                 Você empunha sua espada e se prepara para lutar.
                              É hora da batalha!
]])
end

--- Função que recebe um atributo e retorna uma barra de progresso em string.
--- @return string
function utils.getProgressBar(attribute)
    local fullChar = "🟩"
    local emptyChar = "⬛"

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end


---Faz o print das informações de uma criatura.
---@param creature table
---
function utils.printCreature(creature)
    -- Calculate health rate
    local healthRate = math.floor((creature.health / creature.maxhealth) * 10)
    
    --Cartão
    print("|    " .. creature.name)
    print("|    ")
    print("|    " .. creature.description)
    print("|    ")
    print("| Atributos:")
    print("|    Vida:        " .. utils.getProgressBar(healthRate))
    print("|    Ataque:      " .. utils.getProgressBar(creature.attack))
    print("|    Defesa       " .. utils.getProgressBar(creature.defense))
    print("|    Velocidade:  " .. utils.getProgressBar(creature.speed))
end


return utils