local QBCore = exports['qb-core']:GetCoreObject()

print('[sx-drugsell] stash.lua loaded')

CreateThread(function()

    Wait(1000)

    if not Config or not Config.Stashes then
        print('[sx-drugsell] ERROR: Config.Stashes missing')
        return
    end

    for _, stash in pairs(Config.Stashes) do

        exports.ox_inventory:RegisterStash(
            stash.name,
            stash.label,
            Config.StashSlots,
            Config.StashWeight,
            false
        )

        print('[sx-drugsell] Registered stash:', stash.name)

    end

end)


RegisterNetEvent("sx-drugsell:openStash", function(stashName)

    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if not Player then return end

    local citizenid = Player.PlayerData.citizenid


    -- find stash config
    local stashConfig
    for _, stash in pairs(Config.Stashes) do
        if stash.name == stashName then
            stashConfig = stash
            break
        end
    end

    if not stashConfig then
        print('[sx-drugsell] Invalid stash attempt:', stashName)
        return
    end


    -- get player organization from op-crime
    local playerOrg = exports['op-crime']:getPlayerOrganisation(citizenid)

    if not playerOrg then
        TriggerClientEvent('ox_lib:notify', src, {
            type = 'error',
            description = 'You are not part of any organization'
        })
        return
    end


    local orgName = "org_" .. playerOrg.orgIndex


    -- check org permission
    if orgName ~= stashConfig.group then
        TriggerClientEvent('ox_lib:notify', src, {
            type = 'error',
            description = 'This stash belongs to another organization'
        })
        return
    end


    print('[sx-drugsell] Opening stash:', stashName, 'for', citizenid)

    TriggerClientEvent("sx-drugsell:client:openStash", src, stashName)

end)