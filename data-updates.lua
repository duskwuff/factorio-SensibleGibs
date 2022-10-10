local level = settings.startup["SensibleGibs-level"].value

data.raw["optimized-particle"]["blood-particle"].life_time = 90 -- from 180
data.raw["optimized-particle"]["guts-entrails-particle-small-medium"].life_time = 120 -- from 900
data.raw["optimized-particle"]["guts-entrails-particle-big"].life_time = 120 -- from 900

-- remove ground patches from biter/spitter corpses
for _, c in pairs(data.raw["corpse"]) do
    if string.match(c.name, "%-biter%-corpse") or string.match(c.name, "%-spitter%-corpse") then
        if level >= "2" then c.ground_patch = nil end
        if level >= "3" then c.time_before_removed = 1800 end -- from 54000!
    end
end
