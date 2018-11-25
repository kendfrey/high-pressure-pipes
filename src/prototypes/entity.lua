function mapMany(array, f)
	local result = {};
	for _, vs in pairs(array) do
		for _, v in pairs(f(vs)) do
			table.insert(result, v);
		end
	end
	return result;
end

function tintPictures(pictures, tint)
	for _, picture in pairs(pictures) do
		picture.tint = tint;
		if picture.hr_version then
			picture.hr_version.tint = tint;
		end
	end
end

local highPressurePipe = table.deepcopy(basePrototypes.entity["pipe"]);
highPressurePipe.name = "high-pressure-pipe";
highPressurePipe.minable.result = "high-pressure-pipe";
highPressurePipe.fluid_box.height = (highPressurePipe.fluid_box.height or 1) * settings.startup["high-pressure-multiplier"].value;
highPressurePipe.pictures = table.deepcopy(data.raw["pipe"]["pipe"].pictures);
tintPictures(highPressurePipe.pictures, highPressureTint);

local highPressurePipeToGround = table.deepcopy(basePrototypes.entity["pipe-to-ground"]);
highPressurePipeToGround.name = "high-pressure-pipe-to-ground";
highPressurePipeToGround.minable.result = "high-pressure-pipe-to-ground";
highPressurePipeToGround.fluid_box.height = (highPressurePipeToGround.fluid_box.height or 1) * settings.startup["high-pressure-multiplier"].value;
highPressurePipeToGround.pictures = table.deepcopy(data.raw["pipe-to-ground"]["pipe-to-ground"].pictures);
tintPictures(highPressurePipeToGround.pictures, highPressureTint);
highPressurePipeToGround.fluid_box.pipe_covers = table.deepcopy(data.raw["pipe-to-ground"]["pipe-to-ground"].fluid_box.pipe_covers);
tintPictures(mapMany(highPressurePipeToGround.fluid_box.pipe_covers, function (p) return p.layers; end), highPressureTint);

local highPressurePump = table.deepcopy(basePrototypes.entity["pump"]);
highPressurePump.name = "high-pressure-pump";
highPressurePump.minable.result = "high-pressure-pump";
highPressurePump.fluid_box.height = (highPressurePump.fluid_box.height or 2) * settings.startup["high-pressure-multiplier"].value;
highPressurePump.pumping_speed = highPressurePump.pumping_speed * settings.startup["high-pressure-pump-multiplier"].value;
highPressurePump.animations = table.deepcopy(data.raw["pump"]["pump"].animations);
tintPictures(highPressurePump.animations, highPressureTint);
highPressurePump.fluid_box.pipe_covers = table.deepcopy(data.raw["pump"]["pump"].fluid_box.pipe_covers);
tintPictures(mapMany(highPressurePump.fluid_box.pipe_covers, function (p) return p.layers; end), highPressureTint);

data:extend({highPressurePipe, highPressurePipeToGround, highPressurePump});
