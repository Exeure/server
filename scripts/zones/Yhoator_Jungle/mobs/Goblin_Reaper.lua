-----------------------------------
-- Area: Yhoator Jungle
--  Mob: Goblin Reaper
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    xi.regime.checkRegime(player, mob, 129, 2, xi.regime.type.FIELDS)
end

return entity
