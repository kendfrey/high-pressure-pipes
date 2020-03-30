basePrototypes =
{
	item =
	{
		["pipe"] = data.raw.item["copper-tungsten-pipe"] or data.raw.item["plastic-pipe"] or data.raw.item["pipe"],
		["pipe-to-ground"] = data.raw.item["copper-tungsten-pipe-to-ground"] or data.raw.item["plastic-pipe-to-ground"] or data.raw.item["pipe-to-ground"],
		["pump"] = data.raw.item["bob-pump-4"] or data.raw.item["pump"],
	},
	entity =
	{
		["pipe"] = data.raw["pipe"]["copper-tungsten-pipe"] or data.raw["pipe"]["plastic-pipe"] or data.raw["pipe"]["pipe"],
		["pipe-to-ground"] = data.raw["pipe-to-ground"]["copper-tungsten-pipe-to-ground"] or data.raw["pipe-to-ground"]["plastic-pipe-to-ground"] or data.raw["pipe-to-ground"]["pipe-to-ground"],
		["pump"] = data.raw["pump"]["bob-pump-4"] or data.raw["pump"]["pump"],
	},
	technology =
	{
		["fluid-handling"] = data.raw.technology["bob-fluid-handling-4"] or data.raw.technology["fluid-handling"],
	},
};
