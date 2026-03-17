local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("sx-drugsell:client:raidStash", function(stashName)

    local success = lib.progressBar({
        duration = Config.RaidDuration,
        label = 'Executing Search Warrant',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            car = true,
            combat = true
        }
    })

    if success then
        TriggerServerEvent("sx-drugsell:server:raidStash", stashName)
    else
        lib.notify({
            type = 'error',
            description = 'Raid cancelled'
        })
    end

end)