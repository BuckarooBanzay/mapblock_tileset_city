local MP = minetest.get_modpath(minetest.get_current_modname())

mapblock_tileset.register_tileset("underground", {
    catalog = MP .. "/schematics/underground.zip",
    groups = {
        underground = true
    },
    disable_orientation = {
        ["default:stonebrick"] = true
    },
    tiles = {
        {
            -- all sides
            positions = {{x=0,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"underground"} },
                ["-1,0,0"] = { groups = {"underground"} },
                ["0,0,1"] = { groups = {"underground"} },
                ["0,0,-1"] = { groups = {"underground"} }
            },
            fallback = true,
            rotations = {0}
        },{
            -- straight
            positions = {{x=1,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"underground"} },
                ["-1,0,0"] = { groups = {"underground"} }
            },
            rotations = {0,90}
        },{
            -- straight with surface access
            positions = {{x=1,y=0,z=1}},
            rules = {
                ["1,0,0"] = { groups = {"underground"} },
                ["-1,0,0"] = { groups = {"underground"} },
                ["0,1,0"] = { groups = {"underground_access"} }
            },
            rotations = {0,90}
        },{
            -- T crossing
            positions = {{x=2,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"underground"} },
                ["-1,0,0"] = { groups = {"underground"} },
                ["0,0,1"] = { groups = {"underground"} }
            },
            rotations = {0,90,180,270}
        },{
            -- corner
            positions = {{x=3,y=0,z=0}},
            rules = {
                ["-1,0,0"] = { groups = {"underground"} },
                ["0,0,1"] = { groups = {"underground"} }
            },
            rotations = {0,90,180,270}
        }
    }
})

mapblock_tileset.register_tileset("underground_access", {
    catalog = MP .. "/schematics/underground.zip",
    groups = {
        underground_access = true,
        street = true
    },
    disable_orientation = {
        ["moreblocks:iron_stone_bricks"] = true
    },
    tiles = {
        {
            -- straight surface part
            positions = {{x=1,y=1,z=1}},
            rules = {
                ["1,0,0"] = { groups = {"street"} },
                ["-1,0,0"] = { groups = {"street"} },
                ["0,-1,0"] = { groups = {"underground"} }
            },
            rotations = {0,90}
        }
    }
})
