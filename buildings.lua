
local MP = minetest.get_modpath(minetest.get_current_modname())

mapblock_tileset.register_tileset("building", {
    catalog = MP .. "/schematics/building.zip",
    groups = {
        building = true
    },
    tiles = {
        {
            -- lower section
            positions = {{x=0,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"building"} },
                ["0,1,0"] = { groups = {"building"} },
                ["0,0,1"] = { groups = {"building"} }
            },
            rotations = {0,90,180,270},
            fallback = true
        },{
            positions = {{x=1,y=0,z=0}},
            rules = {
                ["0,1,0"] = { groups = {"building"} },
                ["0,0,1"] = { groups = {"building"} },
                ["1,0,0"] = { groups = {"building"} },
                ["-1,0,0"] = { groups = {"building"} }
            },
            rotations = {0,90,180,270}
        },{
            positions = {{x=1,y=0,z=1}},
            rules = {
                ["0,1,0"] = { groups = {"building"} },
                ["0,0,1"] = { groups = {"building"} },
                ["0,0,-1"] = { groups = {"building"} },
                ["1,0,0"] = { groups = {"building"} },
                ["-1,0,0"] = { groups = {"building"} }
            },
            rotations = {0}
        },{
            -- middle section
            positions = {{x=0,y=1,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"building"} },
                ["0,0,1"] = { groups = {"building"} },
                ["0,1,0"] = { groups = {"building"} },
                ["0,-1,0"] = { groups = {"building"} }
            },
            rotations = {0,90,180,270}
        },{
            positions = {{x=1,y=1,z=0}},
            rules = {
                ["0,1,0"] = { groups = {"building"} },
                ["0,-1,0"] = { groups = {"building"} },
                ["0,0,1"] = { groups = {"building"} },
                ["1,0,0"] = { groups = {"building"} },
                ["-1,0,0"] = { groups = {"building"} }
            },
            rotations = {0,90,180,270}
        },{
            positions = {{x=1,y=1,z=1}},
            rules = {
                ["0,1,0"] = { groups = {"building"} },
                ["0,-1,0"] = { groups = {"building"} },
                ["0,0,1"] = { groups = {"building"} },
                ["0,0,-1"] = { groups = {"building"} },
                ["1,0,0"] = { groups = {"building"} },
                ["-1,0,0"] = { groups = {"building"} }
            },
            rotations = {0}
        },{
        -- top section
        positions = {{x=0,y=2,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"building"} },
                ["0,0,1"] = { groups = {"building"} },
                ["0,-1,0"] = { groups = {"building"} }
            },
            rotations = {0,90,180,270}
        },{
            positions = {{x=1,y=2,z=0}},
            rules = {
                ["0,-1,0"] = { groups = {"building"} },
                ["0,0,1"] = { groups = {"building"} },
                ["1,0,0"] = { groups = {"building"} },
                ["-1,0,0"] = { groups = {"building"} }
            },
            rotations = {0,90,180,270}
        },{
            positions = {{x=1,y=2,z=1}},
            rules = {
                ["0,-1,0"] = { groups = {"building"} },
                ["0,0,1"] = { groups = {"building"} },
                ["0,0,-1"] = { groups = {"building"} },
                ["1,0,0"] = { groups = {"building"} },
                ["-1,0,0"] = { groups = {"building"} }
            },
            rotations = {0}
        }
    }
})

