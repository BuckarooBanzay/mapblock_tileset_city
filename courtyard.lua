local MP = minetest.get_modpath(minetest.get_current_modname())

mapblock_tileset.register_tileset("courtyard", {
    catalog = MP .. "/schematics/courtyard.zip",
    groups = {
        courtyard = true
    },
    category = "courtyard",
    disable_orientation = {
        ["moreblocks:iron_stone_bricks"] = true
    },
    tiles = {
        {
            -- all sides
            positions = {{x=2,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"courtyard"} },
                ["-1,0,0"] = { groups = {"courtyard"} },
                ["0,0,1"] = { groups = {"courtyard"} },
                ["0,0,-1"] = { groups = {"courtyard"} }
            },
            fallback = true,
            rotations = {0}
        },{
            -- one side
            positions = {{x=1,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"courtyard"} },
                ["-1,0,0"] = { groups = {"courtyard"} },
                ["0,0,-1"] = { groups = {"courtyard"} }
            },
            rotations = {0,90,180,270}
        },{
            -- corner
            positions = {{x=0,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"courtyard"} },
                ["0,0,-1"] = { groups = {"courtyard"} }
            },
            rotations = {0,90,180,270}
        }
    }
})

mapblock_tileset.register_tileset("courtyard_fountain", {
    catalog = MP .. "/schematics/courtyard.zip",
    groups = {
        courtyard = true
    },
    category = "courtyard",
    tiles = {
        {
            positions = {{x=2,y=0,z=1}},
            fallback = true,
            rules = {},
            rotations = {0}
        }
    }
})

mapblock_tileset.register_tileset("courtyard_pattern_1", {
    catalog = MP .. "/schematics/courtyard.zip",
    groups = {
        courtyard = true
    },
    category = "courtyard",
    tiles = {
        {
            positions = {{x=2,y=0,z=2}},
            fallback = true,
            rules = {},
            rotations = {0}
        }
    }
})
