-----------------------------------
-- ID: 4386
-- King Truffle
--  5 Minutes, food effect, All Races
-----------------------------------
-- Strength -6
-- Mind     +4
-----------------------------------
local itemObject = {}

itemObject.onItemCheck = function(target)
    return xi.itemUtils.foodOnItemCheck(target, xi.foodType.BASIC)
end

itemObject.onItemUse = function(target)
    target:addStatusEffect(xi.effect.FOOD, 0, 0, 300, 4386)
end

itemObject.onEffectGain = function(target, effect)
    target:addMod(xi.mod.STR, -6)
    target:addMod(xi.mod.MND, 4)
end

itemObject.onEffectLose = function(target, effect)
    target:delMod(xi.mod.STR, -6)
    target:delMod(xi.mod.MND, 4)
end

return itemObject
