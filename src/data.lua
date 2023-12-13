require("prototypes.dependencies");
require("prototypes.tint");
require("prototypes.item");
require("prototypes.entity");
require("prototypes.recipe");
require("prototypes.technology");

if mods["5dim_core"] then
    local hpPipe = "high-pressure-pipe"
    local hpPipeToGround = "high-pressure-pipe-to-ground"
    local hpPump = "high-pressure-pump"
    -- items
    data.raw.item[hpPipe].subgroup = "transport-pipe"
    data.raw.item[hpPipe].order = "ab"
    data.raw.item[hpPipeToGround].subgroup = "transport-pipe-ground"
    data.raw.item[hpPipeToGround].order = "ab"
    data.raw.item[hpPump].subgroup = "liquid-small-pump"
    data.raw.item[hpPump].order = "ab"

    -- recipes
    data.raw.recipe[hpPipe].subgroup = "transport-pipe"
    data.raw.recipe[hpPipe].order = "ab"
    data.raw.recipe[hpPipeToGround].subgroup = "transport-pipe-ground"
    data.raw.recipe[hpPipeToGround].order = "ab"
    data.raw.recipe[hpPump].subgroup = "liquid-small-pump"
    data.raw.recipe[hpPump].order = "ab"
end
