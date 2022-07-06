local MP = minetest.get_modpath(minetest.get_current_modname())

mapblock_tileset.register_tileset("river", {
    catalog = MP .. "/schematics/river.zip",
    disable_orientation = {
        ["moreblocks:iron_stone_bricks"] = true
    },
    tiles = {
        {
            -- all sides
            positions = {{x=3,y=0,z=0}},
            rules = {
                ["1,0,0"] = "river",
                ["-1,0,0"] = "river",
                ["0,0,1"] = "river",
                ["0,0,-1"] = "river"
            },
            fallback = true,
            rotations = {0}
        },{
            -- one side
            positions = {{x=1,y=0,z=0}},
            rules = {
                ["1,0,0"] = "river",
                ["-1,0,0"] = "river",
                ["0,0,-1"] = "river"
            },
            rotations = {0,90,180,270}
        },{
            -- corner
            positions = {{x=0,y=0,z=0}},
            rules = {
                ["1,0,0"] = "river",
                ["0,0,-1"] = "river"
            },
            rotations = {0,90,180,270}
        }
    }
})
