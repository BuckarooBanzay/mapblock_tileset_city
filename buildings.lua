local MP = minetest.get_modpath(minetest.get_current_modname())

local function building_tiles(opts)
    local tiles = {
        {
            -- lower section
            positions = {{x=0,y=0,z=0}},
            rules = {
                ["1,0,0"] = opts.tilename,
                ["0,1,0"] = opts.tilename,
                ["0,0,1"] = opts.tilename
            },
            rotations = {0,90,180,270},
            fallback = true
        },{
            positions = {{x=1,y=0,z=0}},
            rules = {
                ["0,1,0"] = opts.tilename,
                ["0,0,1"] = opts.tilename,
                ["1,0,0"] = opts.tilename,
                ["-1,0,0"] = opts.tilename
            },
            rotations = {0,90,180,270}
        },{
            positions = {{x=1,y=0,z=1}},
            rules = {
                ["0,1,0"] = opts.tilename,
                ["0,0,1"] = opts.tilename,
                ["0,0,-1"] = opts.tilename,
                ["1,0,0"] = opts.tilename,
                ["-1,0,0"] = opts.tilename
            },
            rotations = {0}
        },{
            -- middle section
            positions = {{x=0,y=1,z=0}},
            rules = {
                ["1,0,0"] = opts.tilename,
                ["0,0,1"] = opts.tilename,
                ["0,1,0"] = opts.tilename,
                ["0,-1,0"] = opts.tilename
            },
            rotations = {0,90,180,270}
        },{
            positions = {{x=1,y=1,z=0}},
            rules = {
                ["0,1,0"] = opts.tilename,
                ["0,-1,0"] = opts.tilename,
                ["0,0,1"] = opts.tilename,
                ["1,0,0"] = opts.tilename,
                ["-1,0,0"] = opts.tilename
            },
            rotations = {0,90,180,270}
        },{
            positions = {{x=1,y=1,z=1}},
            rules = {
                ["0,1,0"] = opts.tilename,
                ["0,-1,0"] = opts.tilename,
                ["0,0,1"] = opts.tilename,
                ["0,0,-1"] = opts.tilename,
                ["1,0,0"] = opts.tilename,
                ["-1,0,0"] = opts.tilename
            },
            rotations = {0}
        },{
        -- top section
            positions = {{x=0,y=2,z=0}},
            rules = {
                ["1,0,0"] = opts.tilename,
                ["0,0,1"] = opts.tilename,
                ["0,-1,0"] = opts.tilename
            },
            rotations = {0,90,180,270}
        },{
            positions = {{x=1,y=2,z=0}},
            rules = {
                ["0,-1,0"] = opts.tilename,
                ["0,0,1"] = opts.tilename,
                ["1,0,0"] = opts.tilename,
                ["-1,0,0"] = opts.tilename
            },
            rotations = {0,90,180,270}
        },{
            positions = {{x=1,y=2,z=1}},
            rules = {
                ["0,-1,0"] = opts.tilename,
                ["0,0,1"] = opts.tilename,
                ["0,0,-1"] = opts.tilename,
                ["1,0,0"] = opts.tilename,
                ["-1,0,0"] = opts.tilename
            },
            rotations = {0}
        }
    }

    if opts.inner_corner then
        -- inner corner available, add rules
        table.insert(tiles, {
            positions = {{x=0,y=0,z=1}},
            rules = {
                ["0,1,0"] = opts.tilename,
                ["0,0,1"] = opts.tilename,
                ["1,0,0"] = opts.tilename,
                ["-1,0,-1"] = { not_groups = {opts.group} }
            },
            rotations = {0,90,180,270}
        })
    end

    return tiles
end

mapblock_tileset.register_tileset("building1", {
    catalog = MP .. "/schematics/building1.zip",
    tiles = building_tiles({
        tilename = "building1"
    })
})

mapblock_tileset.register_tileset("building1_1", {
    catalog = MP .. "/schematics/building1.zip",
    tiles = building_tiles({
        tilename = "building1_1"
    }),
    replace = {
        ["moreblocks:coal_stone"] = "moreblocks:iron_stone",
        ["moreblocks:coal_glass"] = "moreblocks:clean_glass",
        ["moreblocks:checker_stone_tile"] = "moreblocks:iron_checker",
        ["moreblocks:slope_coal_stone"] = "moreblocks:slope_iron_stone",
        ["moreblocks:slope_coal_stone_inner"] = "moreblocks:slope_iron_stone_inner",
        ["moreblocks:slope_coal_stone_outer"] = "moreblocks:slope_iron_stone_outer",
	}
})

mapblock_tileset.register_tileset("building2", {
    catalog = MP .. "/schematics/building2.zip",
    tiles = building_tiles({
        tilename = "building2"
    })
})

mapblock_tileset.register_tileset("building2_1", {
    catalog = MP .. "/schematics/building2.zip",
    tiles = building_tiles({
        tilename = "building2_1"
    }),
    replace = {
        ["moreblocks:coal_stone"] = "moreblocks:iron_stone",
        ["moreblocks:coal_glass"] = "moreblocks:clean_glass",
        ["moreblocks:checker_stone_tile"] = "moreblocks:iron_checker",
        ["moreblocks:coal_stone_bricks"] = "moreblocks:iron_stone_bricks",
        ["moreblocks:stair_coal_stone_bricks"] = "moreblocks:stair_iron_stone_bricks",
        ["moreblocks:stair_coal_stone_bricks_outer"] = "moreblocks:stair_iron_stone_bricks_outer"
    }
})

mapblock_tileset.register_tileset("building2_2", {
    catalog = MP .. "/schematics/building2.zip",
    tiles = building_tiles({
        tilename = "building2_2"
    }),
    replace = {
        ["moreblocks:coal_stone"] = "default:desert_sandstone",
        ["moreblocks:coal_glass"] = "default:glass",
        ["moreblocks:coal_stone_bricks"] = "default:desert_sandstone_brick",
        ["moreblocks:stair_coal_stone_bricks"] = "moreblocks:stair_desert_sandstone_brick",
        ["moreblocks:stair_coal_stone_bricks_outer"] = "moreblocks:stair_desert_sandstone_brick_outer"
    }
})

mapblock_tileset.register_tileset("building2_3", {
    catalog = MP .. "/schematics/building2.zip",
    tiles = building_tiles({
        tilename = "building2_3"
    }),
    replace = {
        ["moreblocks:coal_stone"] = "default:desert_stone",
        ["moreblocks:coal_stone_bricks"] = "default:desert_stonebrick",
        ["moreblocks:stair_coal_stone_bricks"] = "moreblocks:stair_desert_stonebrick",
        ["moreblocks:stair_coal_stone_bricks_outer"] = "moreblocks:stair_desert_stonebrick_outer"
    }
})

mapblock_tileset.register_tileset("building3", {
    catalog = MP .. "/schematics/building3.zip",
    tiles = building_tiles({
        tilename = "building3"
    })
})

mapblock_tileset.register_tileset("building3_1", {
    catalog = MP .. "/schematics/building3.zip",
    tiles = building_tiles({
        tilename = "building3_1"
    }),
    replace = {
        ["moreblocks:coal_glass"] = "moreblocks:clean_glass",
        ["moreblocks:coal_stone"] = "moreblocks:iron_stone",
        ["moreblocks:slope_coal_glass"] = "moreblocks:slope_clean_glass",
        ["moreblocks:checker_stone_tile"] = "moreblocks:iron_checker",
        ["moreblocks:coal_stone_bricks"] = "moreblocks:iron_stone_bricks",
        ["moreblocks:stair_coal_stone"] = "moreblocks:stair_iron_stone",
        ["moreblocks:stair_coal_stone_bricks"] = "moreblocks:stair_iron_stone_bricks",
        ["moreblocks:stair_coal_stone_bricks_outer"] = "moreblocks:stair_iron_stone_bricks_outer",
        ["moreblocks:slope_coal_stone_half_raised"] = "moreblocks:slope_iron_stone_half_raised",
        ["moreblocks:slope_coal_stone_inner_cut"] = "moreblocks:slope_iron_stone_inner_cut",
        ["moreblocks:slope_coal_stone_inner_half_raised"] = "moreblocks:slope_iron_stone_inner_half_raised",
        ["moreblocks:slope_coal_stone_outer_cut_half_raised"] = "moreblocks:slope_iron_stone_outer_cut_half_raised"
	}
})

