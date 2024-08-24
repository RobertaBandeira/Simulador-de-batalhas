os.execute("chcp 65001")

-- Dependencies
local player = require("definitions.player")
local colossus = require("definitions.colossus")




-- header
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

-- Obter definição do jogador
print(string.format("A vida do jogador é %d/%d", player.health, player.maxhealth))

-- Obter definição do monstro
local boss = colossus
print(string.format("A vida do inimigo é %d/%d", colossus.health, colossus.maxhealth))

-- Apresentar o monstro

-- Começar o loop de batalha

