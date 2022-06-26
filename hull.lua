local MP = minetest.get_modpath(minetest.get_current_modname())

mapblock_tileset.register_tileset("hull", {
    catalog = MP .. "/schematics/hull.zip",
    groups = {
        hull = true
    },
    tiles = {
        {
            -- bottom
            positions = {{x=0,y=0,z=0}},
            rules = {
                ["0,0,1"] = { groups = {"hull"} },
                ["1,0,0"] = { groups = {"hull"} },
                ["0,1,0"] = { groups = {"hull"} }
            },
            rotations = {0,90,180,270},
            fallback = true
        },{
            positions = {{x=1,y=0,z=0}},
            rules = {
                ["0,0,1"] = { groups = {"hull"} },
                ["1,0,0"] = { groups = {"hull"} },
                ["-1,0,0"] = { groups = {"hull"} },
                ["0,1,0"] = { groups = {"hull"} }
            },
            rotations = {0,90,180,270}
        },{
            positions = {{x=1,y=0,z=1}},
            rules = {
                ["0,0,1"] = { groups = {"hull"} },
                ["0,0,-1"] = { groups = {"hull"} },
                ["1,0,0"] = { groups = {"hull"} },
                ["-1,0,0"] = { groups = {"hull"} },
            },
            rotations = {0}
        },{
            -- middle
            positions = {{x=0,y=1,z=0}},
            rules = {
                ["0,0,1"] = { groups = {"hull"} },
                ["1,0,0"] = { groups = {"hull"} },
                ["0,1,0"] = { groups = {"hull"} },
                ["0,-1,0"] = { groups = {"hull"} }
            },
            rotations = {0,90,180,270}
        },{
            positions = {{x=1,y=1,z=0}},
            rules = {
                ["-1,0,0"] = { groups = {"hull"} },
                ["1,0,0"] = { groups = {"hull"} },
                ["0,1,0"] = { groups = {"hull"} },
                ["0,-1,0"] = { groups = {"hull"} }
            },
            rotations = {0,90,180,270}
        },
        {
            -- top
            positions = {{x=0,y=2,z=0}},
            rules = {
                ["0,0,1"] = { groups = {"hull"} },
                ["1,0,0"] = { groups = {"hull"} },
                ["0,-1,0"] = { groups = {"hull"} }
            },
            rotations = {0,90,180,270}
        },{
            positions = {{x=1,y=2,z=0}},
            rules = {
                ["-1,0,0"] = { groups = {"hull"} },
                ["1,0,0"] = { groups = {"hull"} },
                ["0,-1,0"] = { groups = {"hull"} }
            },
            rotations = {0,90,180,270}
        },{
            positions = {{x=1,y=2,z=1}},
            rules = {
                ["-1,0,0"] = { groups = {"hull"} },
                ["1,0,0"] = { groups = {"hull"} },
                ["0,0,1"] = { groups = {"hull"} },
                ["0,0,-1"] = { groups = {"hull"} }
            },
            rotations = {0}
        }
    }
})