local MP = minetest.get_modpath(minetest.get_current_modname())

mapblock_tileset.register_tileset("street", {
    catalog = MP .. "/schematics/street.zip",
    groups = {
        street = true
    },
    tiles = {
        {
            positions = {{x=0,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"street"} },
                ["-1,0,0"] = { groups = {"street"} },
                ["0,0,1"] = { groups = {"street"} },
                ["0,0,-1"] = { groups = {"street"} }
            },
            fallback = true,
            rotations = {0}
        },{
            positions = {{x=1,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"street"} },
                ["-1,0,0"] = { groups = {"street"} }
            },
            rotations = {0,90}
        },{
            positions = {{x=2,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"street"} },
                ["-1,0,0"] = { groups = {"street"} },
                ["0,0,1"] = { groups = {"street"} }
            },
            rotations = {0,90,180,270}
        },{
            positions = {{x=3,y=0,z=0}},
            rules = {
                ["-1,0,0"] = { groups = {"street"} },
                ["0,0,1"] = { groups = {"street"} }
            },
            rotations = {0,90,180,270}
        }
    }
})