local highPressurePipe = table.deepcopy(basePrototypes.item["pipe"]);
highPressurePipe.name = "high-pressure-pipe";
highPressurePipe.place_result = "high-pressure-pipe";
highPressurePipe.icon = nil
highPressurePipe.icons = {{icon = data.raw.item["pipe"].icon, tint = highPressureTint, icon_size = 64}};
highPressurePipe.order = highPressurePipe.order .. "a";

local highPressurePipeToGround = table.deepcopy(basePrototypes.item["pipe-to-ground"]);
highPressurePipeToGround.name = "high-pressure-pipe-to-ground";
highPressurePipeToGround.place_result = "high-pressure-pipe-to-ground";
highPressurePipeToGround.icon = nil
highPressurePipeToGround.icons = {{icon = data.raw.item["pipe-to-ground"].icon, tint = highPressureTint, icon_size = 64}};
highPressurePipeToGround.order = highPressurePipeToGround.order .. "a";

local highPressurePump = table.deepcopy(basePrototypes.item["pump"]);
highPressurePump.name = "high-pressure-pump";
highPressurePump.place_result = "high-pressure-pump";
highPressurePump.icon = nil
highPressurePump.icons = {{icon = data.raw.item["pump"].icon, tint = highPressureTint, icon_size = 64}};
highPressurePump.order = highPressurePump.order .. "a";

data:extend({highPressurePipe, highPressurePipeToGround, highPressurePump});
