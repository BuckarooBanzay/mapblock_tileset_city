local MP = minetest.get_modpath(minetest.get_current_modname())

mapblock_tileset.register_tileset("pillar", {
    catalog = MP .. "/schematics/pillar.zip",
    groups = {
        pillar = true
    },
    tiles = {
        {
            -- bottom
            positions = {{x=0,y=0,z=0}},
            rules = {
                ["0,1,0"] = { groups = {"pillar"} }
            },
            rotations = {0},
            fallback = true
        },{
            -- middle
            positions = {{x=0,y=1,z=0}},
            rules = {
                ["0,-1,0"] = { groups = {"pillar"} },
                ["0,1,0"] = { groups = {"pillar"} }
            },
            rotations = {0},
        },{
            -- top
            positions = {{x=0,y=2,z=0}},
            rules = {
                ["0,-1,0"] = { groups = {"pillar"} }
            },
            rotations = {0}
        },{
        -- submerged variant
            -- bottom
            positions = {{x=0,y=0,z=0}},
            rules = {
                ["0,1,0"] = { groups = {"pillar"} },
                ["1,0,0"] = { groups = {"full_water"} }
            },
            rotations = {0,90,180,270},
            replace = {
                ["air"] = "default:water_source"
            }
        },{
            -- middle
            positions = {{x=0,y=1,z=0}},
            rules = {
                ["0,-1,0"] = { groups = {"pillar"} },
                ["0,1,0"] = { groups = {"pillar"} },
                ["1,0,0"] = { groups = {"full_water"} }
            },
            rotations = {0,90,180,270},
            replace = {
                ["air"] = "default:water_source"
            }
        },{
            -- top
            positions = {{x=0,y=2,z=0}},
            rules = {
                ["0,-1,0"] = { groups = {"pillar"} },
                ["1,0,0"] = { groups = {"full_water"} }
            },
            rotations = {0,90,180,270},
            replace = {
                ["air"] = "default:water_source"
            }
        }
    }
})