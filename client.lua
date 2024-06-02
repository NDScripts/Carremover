function deleteAllCars()
    local allVehicles = GetGamePool('CVehicle')
    local playerVehicle = GetVehiclePedIsIn(PlayerPedId(), false)

    for _, vehicle in ipairs(allVehicles) do
        if vehicle ~= playerVehicle and not IsThisModelAPlane(GetEntityModel(vehicle)) then
            DeleteEntity(vehicle)
        end
    end
end

function timerCallback()
    Citizen.Wait(Config.Timer.timer1)
    lib.notify({
        Config.Translate.InpoundTitle,
        description = Config.Translate.InpoundDescription5,
        type = 'info'
    })
    Citizen.Wait(60000)
    lib.notify({
        Config.Translate.InpoundTitle,
        description = Config.Translate.InpoundDescription4,
        type = 'info'
    })
    Citizen.Wait(60000)
    lib.notify({
        Config.Translate.InpoundTitle,
        description = Config.Translate.InpoundDescription3,
        type = 'info'
    })
    Citizen.Wait(60000)
    lib.notify({
        Config.Translate.InpoundTitle,
        description = Config.Translate.InpoundDescription2,
        type = 'info'
    })
    Citizen.Wait(60000)
    lib.notify({
        Config.Translate.InpoundTitle,
        description = Config.Translate.InpoundDescription1,
        type = 'info'
    })
    Citizen.Wait(1000)
    lib.notify({
        Config.Translate.InpoundTitle,
        description = Config.Translate.InpoundDescriptionWarning,
        type = 'info'
    })
    Citizen.Wait(60000)

    deleteAllCars()

    lib.notify({
        title = Config.Translate.InpoundTitle,
        description = Config.Translate.InpoundDescription,
        type = 'info'
    })

    SetTimeout(1800000, timerCallback) 
end

timerCallback()
