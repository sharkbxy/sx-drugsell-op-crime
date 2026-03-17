local QBCore = exports['qb-core']:GetCoreObject()

local playerJob = nil
local interacting = false

-- Track player job
RegisterNetEvent('QBCore:Client:OnJobUpdate', function(job)
    playerJob = job.name
end)

CreateThread(function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    playerJob = PlayerData.job.name
end)


CreateThread(function()

    for _, stash in pairs(Config.Stashes) do

        lib.zones.box({
            coords = stash.coords,
            size = stash.zone.size,
            rotation = stash.zone.rotation,
            debug = false,

            onEnter = function()
                lib.showTextUI('[E] Access Stash')
            end,

            inside = function()

                if interacting then return end

                if IsControlJustReleased(0, 38) then -- E

                    interacting = true

                    -- Police raid
                    if Config.PoliceJobs[playerJob] then
                        TriggerEvent("sx-drugsell:client:raidStash", stash.name)
                    else
                        -- Criminal stash access
                        TriggerServerEvent("sx-drugsell:openStash", stash.name)
                    end

                    Wait(1000)
                    interacting = false

                end

            end,

            onExit = function()
                lib.hideTextUI()
            end

        })

    end

end)


-- Open stash from server
RegisterNetEvent("sx-drugsell:client:openStash", function(stashName)

    exports.ox_inventory:setStashTarget(stashName)
    exports.ox_inventory:openInventory('stash', stashName)

end)