data:extend(
{
	{
		type = "recipe",
		name = "high-pressure-pipe",
		energy_required = 0.5,
		ingredients =
		{
			{basePrototypes.item["pipe"].name, settings.startup["high-pressure-multiplier"].value},
		},
		result = "high-pressure-pipe",
		enabled = false,
	},
	{
		type = "recipe",
		name = "high-pressure-pipe-to-ground",
		energy_required = 0.5,
		ingredients =
		{
			{basePrototypes.item["pipe-to-ground"].name, settings.startup["high-pressure-multiplier"].value * 2},
		},
		result_count = 2,
		result = "high-pressure-pipe-to-ground",
		enabled = false,
	},
	{
		type = "recipe",
		name = "high-pressure-pump",
		energy_required = 2,
		ingredients =
		{
			{basePrototypes.item["pump"].name, 1},
			{"high-pressure-pipe", 1},
		},
		result = "high-pressure-pump",
		enabled = false,
	},
}
);
