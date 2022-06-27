local MP = minetest.get_modpath(minetest.get_current_modname())

local function building_tiles(opts)
    return {
        {
            -- lower section
            positions = {{x=0,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {opts.group} },
                ["0,1,0"] = { groups = {opts.group} },
                ["0,0,1"] = { groups = {opts.group} }
            },
            rotations = {0,90,180,270},
            fallback = true
        },{
            positions = {{x=1,y=0,z=0}},
            rules = {
                ["0,1,0"] = { groups = {opts.group} },
                ["0,0,1"] = { groups = {opts.group} },
                ["1,0,0"] = { groups = {opts.group} },
                ["-1,0,0"] = { groups = {opts.group} }
            },
            rotations = {0,90,180,270}
        },{
            positions = {{x=1,y=0,z=1}},
            rules = {
                ["0,1,0"] = { groups = {opts.group} },
                ["0,0,1"] = { groups = {opts.group} },
                ["0,0,-1"] = { groups = {opts.group} },
                ["1,0,0"] = { groups = {opts.group} },
                ["-1,0,0"] = { groups = {opts.group} }
            },
            rotations = {0}
        },{
            -- middle section
            positions = {{x=0,y=1,z=0}},
            rules = {
                ["1,0,0"] = { groups = {opts.group} },
                ["0,0,1"] = { groups = {opts.group} },
                ["0,1,0"] = { groups = {opts.group} },
                ["0,-1,0"] = { groups = {opts.group} }
            },
            rotations = {0,90,180,270}
        },{
            positions = {{x=1,y=1,z=0}},
            rules = {
                ["0,1,0"] = { groups = {opts.group} },
                ["0,-1,0"] = { groups = {opts.group} },
                ["0,0,1"] = { groups = {opts.group} },
                ["1,0,0"] = { groups = {opts.group} },
                ["-1,0,0"] = { groups = {opts.group} }
            },
            rotations = {0,90,180,270}
        },{
            positions = {{x=1,y=1,z=1}},
            rules = {
                ["0,1,0"] = { groups = {opts.group} },
                ["0,-1,0"] = { groups = {opts.group} },
                ["0,0,1"] = { groups = {opts.group} },
                ["0,0,-1"] = { groups = {opts.group} },
                ["1,0,0"] = { groups = {opts.group} },
                ["-1,0,0"] = { groups = {opts.group} }
            },
            rotations = {0}
        },{
        -- top section
        positions = {{x=0,y=2,z=0}},
            rules = {
                ["1,0,0"] = { groups = {opts.group} },
                ["0,0,1"] = { groups = {opts.group} },
                ["0,-1,0"] = { groups = {opts.group} }
            },
            rotations = {0,90,180,270}
        },{
            positions = {{x=1,y=2,z=0}},
            rules = {
                ["0,-1,0"] = { groups = {opts.group} },
                ["0,0,1"] = { groups = {opts.group} },
                ["1,0,0"] = { groups = {opts.group} },
                ["-1,0,0"] = { groups = {opts.group} }
            },
            rotations = {0,90,180,270}
        },{
            positions = {{x=1,y=2,z=1}},
            rules = {
                ["0,-1,0"] = { groups = {opts.group} },
                ["0,0,1"] = { groups = {opts.group} },
                ["0,0,-1"] = { groups = {opts.group} },
                ["1,0,0"] = { groups = {opts.group} },
                ["-1,0,0"] = { groups = {opts.group} }
            },
            rotations = {0}
        }
    }
end

mapblock_tileset.register_tileset("building1", {
    catalog = MP .. "/schematics/building1.zip",
    groups = {
        building1 = true
    },
    tiles = building_tiles({
        group = "building1"
    })
})

mapblock_tileset.register_tileset("building2", {
    catalog = MP .. "/schematics/building2.zip",
    groups = {
        building2 = true
    },
    tiles = building_tiles({
        group = "building2"
    })
})

mapblock_tileset.register_tileset("building3", {
    catalog = MP .. "/schematics/building3.zip",
    groups = {
        building3 = true
    },
    tiles = building_tiles({
        group = "building3"
    })
})

