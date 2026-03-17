Config = {}

-- how often drugs sell
Config.SellInterval = 270

-- stash limits
Config.StashSlots = 50
Config.StashWeight = 100000 -- 100kg

Config.MoneyItem = "black_money"  -- Any item you want it to convert into to

-- police jobs allowed to raid
Config.PoliceJobs = {
    police = true,
    fib = true
}

Config.RequireWarrant = true
Config.WarrantItem = "search_warrant"

Config.RaidDuration = 8000 -- raid time

-- drug values
Config.Drugs = {
    Config.Drugs = {
    ls_plain_jane_bag = { price = 150 },
    ls_banana_kush_bag = { price = 188 },
    ls_blue_dream_bag = { price = 205 },
    ls_purple_haze_bag = { price = 231 },
    ls_orange_crush_bag = { price = 264 },
    ls_cosmic_kush_bag = { price = 279 },
    ls_grove_street_baggie = { price = 190 },
    ls_sandy_skunk_baggie = { price = 258 },
    ls_felony_funk_baggie = { price = 270 },
    ls_goon_gas_baggie = { price = 282 },
    ls_grim_reefer_baggie = { price = 251 },
    ls_casket_kush_baggie = { price = 194 },
    ls_fiesta_fuego_baggie = { price = 207 },
    ls_black_hole_baggie = { price = 233 },
    ls_bubblegum_baggie = { price = 244 },
    ls_white_rhino_baggie = { price = 219 },

    deathdrizzle_lean = { price = 310 },
    grimgrape_lean = { price = 280 },
    nightshadesyrup_lean = { price = 245 },
    purplerequiem_lean = { price = 220 },
    violetveins_lean = { price = 185 },

    white_meth_baggie = { price = 400 },
    cloudy_meth_baggie = { price = 550 },
    blue_meth_baggie = { price = 650 },

    coke_baggie = { price = 650 },
    lsd = { price = 650 },

    grim_caps = { price = 365 },
    tomb_bloom = { price = 380 },
    reapers_rations = { price = 450 },
    doomspores = { price = 475 },
    cryocap = { price = 500 },

    sdam_shine_apple = { price = 320 },
    sdam_shine_pear = { price = 325 },
    sdam_shine_peach = { price = 330 },
    sdam_shine_cherries = { price = 335 },
    sdam_shine_plum = { price = 330 },
    sdam_shine_banana = { price = 335 },
    sdam_shine_apricot = { price = 330 },
    sdam_shine_mango = { price = 340 },
    sdam_shine_strawberry = { price = 335 },
    sdam_shine_blueberry = { price = 340 },
    sdam_shine_grape = { price = 335 },
    sdam_shine_pineapple = { price = 345 },
    sdam_shine_orange = { price = 330 },
    sdam_shine_raspberry = { price = 340 },
    sdam_shine_blackberry = { price = 340 },
    sdam_shine_kiwi = { price = 335 }
}
}

-- stash locations
Config.Stashes = {

    {
        name = "org_4_sellstash",
        label = "Organization Drug Drop",
        group = "org_4",

        coords = vec3(-1535.1138, 806.7840, 184.9201),

        zone = {
            size = vec3(1.5,1.5,2),
            rotation = 0
        }
    },

    {
        name = "group_2_sellstash",
        label = "Drug Drop",
        group = "group_2",

        coords = vec3(200.0,300.0,50.0),

        zone = {
            size = vec3(1.5,1.5,2),
            rotation = 0
        }
    }

}