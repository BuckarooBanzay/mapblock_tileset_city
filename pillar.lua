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
                ["0,1,0"] = "pillar"
            },
            rotations = {0},
            fallback = true
        },{
            -- middle
            positions = {{x=0,y=1,z=0}},
            rules = {
                ["0,-1,0"] = "pillar",
                ["0,1,0"] = "pillar"
            },
            rotations = {0},
        },{
            -- top
            positions = {{x=0,y=2,z=0}},
            rules = {
                ["0,-1,0"] = "pillar"
            },
            rotations = {0}
        }
    }
})