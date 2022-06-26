
local MP = minetest.get_modpath(minetest.get_current_modname())

mapblock_tileset.register_tileset("terrain", {
    catalog = MP .. "/schematics/terrain.zip",
    groups = {
        terrain = true
    },
    tiles = {
        {
            positions = {{x=0,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"terrain"} },
                ["-1,0,0"] = { groups = {"terrain"} },
                ["0,0,1"] = { groups = {"terrain"} },
                ["0,0,-1"] = { groups = {"terrain"} }
            },
            fallback = true,
            rotations = {0}
        }
    }
})

mapblock_tileset.register_tileset("terrain_slope", {
    catalog = MP .. "/schematics/terrain.zip",
    groups = {
        terrain_slope = true
    },
    tiles = {
        {
            positions = {{x=1,y=0,z=0}},
            rules = {
                ["0,0,1"] = { groups = {"terrain"} },
                ["-1,0,0"] = { groups = {"terrain"} },
                ["1,0,0"] = { groups = {"terrain_slope"} },
                ["0,0,-1"] = { groups = {"terrain_slope"} }
            },
            rotations = {0,90,180,270}
        },{
            positions = {{x=2,y=0,z=0}},
            rules = {
                ["0,0,1"] = { groups = {"terrain"} }
            },
            rotations = {0,90,180,270}
        },{
            positions = {{x=3,y=0,z=0}},
            rules = {
                ["0,0,1"] = { groups = {"terrain_slope"} },
                ["-1,0,0"] = { groups = {"terrain_slope"} }
            },
            rotations = {0,90,180,270}
        }
    }
})