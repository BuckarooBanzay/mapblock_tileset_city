local MP = minetest.get_modpath(minetest.get_current_modname())

local has_street_signs_mod = minetest.get_modpath("street_signs")

local content_street_sign = -1
if has_street_signs_mod then
	content_street_sign = minetest.get_content_id("street_signs:sign_basic")
end

mapblock_tileset.register_tileset("street", {
    catalog = MP .. "/schematics/street.zip",
    groups = {
        street = true
    },
    disable_orientation = {
        ["moreblocks:iron_stone_bricks"] = true,
        ["street_signs:sign_basic"] = true
    },
    on_metadata = function(pos, content_id, meta)
        if content_id == content_street_sign then
            -- write street name
            local mapblock_pos = mapblock_lib.get_mapblock(pos)
            local z_streetname = mapblock_tileset_city.get_street_name(mapblock_pos.x * 3)
            local x_streetname = mapblock_tileset_city.get_street_name((mapblock_pos.z * 3) + 2048)
            local txt = z_streetname .. "\n" .. x_streetname
            meta:set_string("infotext", txt)
            meta:set_string("text", txt)
        end
    end,
    tiles = {
        {
            -- all sides
            positions = {{x=1,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"street"} },
                ["-1,0,0"] = { groups = {"street"} },
                ["0,0,1"] = { groups = {"street"} },
                ["0,0,-1"] = { groups = {"street"} }
            },
            fallback = true,
            rotations = {0}
        },{
            -- straight
            positions = {{x=2,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"street"} },
                ["-1,0,0"] = { groups = {"street"} }
            },
            rotations = {0,90}
        },{
            -- T crossing
            positions = {{x=3,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"street"} },
                ["-1,0,0"] = { groups = {"street"} },
                ["0,0,1"] = { groups = {"street"} }
            },
            rotations = {0,90,180,270}
        },{
            -- corner
            positions = {{x=4,y=0,z=0}},
            rules = {
                ["-1,0,0"] = { groups = {"street"} },
                ["0,0,1"] = { groups = {"street"} }
            },
            rotations = {0,90,180,270}
        }
    }
})

mapblock_tileset.register_tileset("street_slope", {
    catalog = MP .. "/schematics/street.zip",
    groups = {
        street_slope = true,
        street = true
    },
    tiles = {
        {
            -- lower slope
            positions = {{x=0,y=0,z=0}},
            rules = {
                ["1,0,0"] = { groups = {"street"} },
                ["-1,1,0"] = { groups = {"street"} }
            },
            fallback = true,
            rotations = {0,90,180,270}
        },{
            -- upper slope
            positions = {{x=0,y=1,z=0}},
            rules = {
                ["1,-1,0"] = { groups = {"street"} },
                ["-1,0,0"] = { groups = {"street"} }
            },
            rotations = {0,90,180,270}
        }
    }
})

mapblock_tileset.register_tileset("street_crossing", {
    catalog = MP .. "/schematics/street.zip",
    groups = {
        street = true
    },
    disable_orientation = {
        ["moreblocks:iron_stone_bricks"] = true
    },
    tiles = {
        {
            positions = {{x=2,y=0,z=1}},
            rules = {
                ["1,0,0"] = { groups = {"street"} },
                ["-1,0,0"] = { groups = {"street"} }
            },
            fallback = true,
            rotations = {0,90}
        }
    }
})

mapblock_tileset.register_tileset("street_tunnel", {
    catalog = MP .. "/schematics/street.zip",
    groups = {
        street = true
    },
    disable_orientation = {
        ["moreblocks:iron_stone_bricks"] = true
    },
    tiles = {
        {
            positions = {{x=2,y=0,z=2}},
            rules = {
                ["1,0,0"] = { groups = {"street"} },
                ["-1,0,0"] = { groups = {"street"} }
            },
            fallback = true,
            rotations = {0,90}
        }
    }
})