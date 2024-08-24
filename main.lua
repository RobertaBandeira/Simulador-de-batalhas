-- Dependencies
local player = require("definitions.player")
local colossus = require("definitions.colossus")
local utils = require("utils")

--Utf8
utils.enableUtf8()

--Header
utils.printHeader()


-- Obter definição do jogador

-- Obter definição do monstro
local boss = colossus

-- Apresentar o monstro

utils.printCreature(colossus)

-- Começar o loop de batalha

