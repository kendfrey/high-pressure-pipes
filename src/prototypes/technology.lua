data:extend(
{
	{
		type = "technology",
		name = "high-pressure-fluid-handling",
		icons = {{icon = basePrototypes.technology["fluid-handling"].icon, tint = highPressureTint, icon_size = 128}},
		prerequisites =
		{
			basePrototypes.technology["fluid-handling"].name,
			"engine",
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "high-pressure-pipe"
			},
			{
				type = "unlock-recipe",
				recipe = "high-pressure-pipe-to-ground"
			},
			{
				type = "unlock-recipe",
				recipe = "high-pressure-pump"
			},
		},
		unit =
		{
			time = 30,
			count = 100,
			ingredients =
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
				{"high-tech-science-pack", 1},
			},
		},
		order = basePrototypes.technology["fluid-handling"].order .. "a",
	},
}
);

if data.raw.tool["logistic-science-pack"] then
	table.insert(data.raw.technology["high-pressure-fluid-handling"].unit.ingredients, {"logistic-science-pack", 1});
end
