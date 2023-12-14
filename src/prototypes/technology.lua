data:extend(
{
	{
		type = "technology",
		name = "high-pressure-fluid-handling",
		icons = {{icon = basePrototypes.technology["fluid-handling"].icon, tint = highPressureTint, icon_size = basePrototypes.technology["fluid-handling"].icon_size}},
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
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
		},
		order = basePrototypes.technology["fluid-handling"].order .. "a",
	},
}
);

if data.raw.tool["advanced-logistic-science-pack"] then
	table.insert(data.raw.technology["high-pressure-fluid-handling"].unit.ingredients, {"advanced-logistic-science-pack", 1});
end
