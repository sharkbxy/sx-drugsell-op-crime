local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("sx-drugsell:server:raidStash", function(stashName)

    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    local job = Player.PlayerData.job.name

    -- Ensure player is police
    if not Config.PoliceJobs[job] then
        print('[sx-drugsell] Unauthorized raid attempt from:', src)
        return
    end

    -- Check for warrant (but DO NOT remove it)
    if Config.RequireWarrant then

        local warrantCount = exports.ox_inventory:Search(src, 'count', Config.WarrantItem)

        if not warrantCount or warrantCount < 1 then
            TriggerClientEvent('ox_lib:notify', src, {
                type = 'error',
                description = 'You need a search warrant to raid this stash.'
            })
            return
        end

    end

    -- Notify officer
    TriggerClientEvent('ox_lib:notify', src, {
        type = 'success',
        description = 'Search warrant executed. Stash unlocked.'
    })

    print('[sx-drugsell] Police raid authorized for stash:', stashName)

    -- Open stash for officer
    TriggerClientEvent("sx-drugsell:client:openStash", src, stashName)

end)