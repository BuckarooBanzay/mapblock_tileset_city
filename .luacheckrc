
globals = {
	"mapblock_tileset_city"
}

read_globals = {
	-- Stdlib
	string = {fields = {"split", "trim"}},
	table = {fields = {"copy", "getn"}},

	-- Minetest
	"minetest",
	"ItemStack",
	"dump", "dump2",
	"VoxelArea",
	"vector",

	-- deps
	"mapblock_tileset",
	"mapblock_lib"
}
