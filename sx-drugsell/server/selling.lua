local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()

    while true do

        Wait(Config.SellInterval * 1000)

        for _, stash in pairs(Config.Stashes) do

            local inventory = exports.ox_inventory:GetInventory(stash.name)

            if inventory and inventory.items then

                for _, item in pairs(inventory.items) do

                    -- Skip money item
                    if item.name ~= Config.MoneyItem then

                        local drug = Config.Drugs[item.name]

                        if drug and item.count > 0 then

                            local value = drug.price

                            -- remove ONE drug
                            exports.ox_inventory:RemoveItem(
                                stash.name,
                                item.name,
                                1
                            )

                            -- add money to stash
                            exports.ox_inventory:AddItem(
                                stash.name,
                                Config.MoneyItem,
                                value
                            )

                            print('[sx-drugsell] '..stash.name..' sold 1 '..item.name..' for $'..value)

                            -- stop after selling ONE drug
                            break

                        end

                    end

                end

            end

        end

    end

end)