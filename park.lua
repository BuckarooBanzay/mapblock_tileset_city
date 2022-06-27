local MP = minetest.get_modpath(minetest.get_current_modname())

mapblock_tileset.register_tileset("park", {
    catalog = MP .. "/schematics/park.zip",
    groups = {
        park = true
    },
    disable_orientation = {
        ["moreblocks:iron_stone_bricks"] = true
    },
    tiles = {
        {
            -- all sides
            positions = {{x=2,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"park"} },
                ["-1,0,0"] = { groups = {"park"} },
                ["0,0,1"] = { groups = {"park"} },
                ["0,0,-1"] = { groups = {"park"} }
            },
            fallback = true,
            rotations = {0}
        },{
            -- one side
            positions = {{x=1,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"park"} },
                ["-1,0,0"] = { groups = {"park"} },
                ["0,0,-1"] = { groups = {"park"} }
            },
            rotations = {0,90,180,270}
        },{
            -- corner
            positions = {{x=0,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"park"} },
                ["0,0,-1"] = { groups = {"park"} }
            },
            rotations = {0,90,180,270}
        }
    }
})
