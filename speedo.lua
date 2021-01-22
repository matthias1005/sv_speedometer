Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
            SendNUIMessage({type = 'ui' , status = true})
            currentspeed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false)) * 3.6
            currentspeed = math.floor(currentspeed)
            speed = currentspeed .. "km/h"
            halfspeed = currentspeed/3
            halfspeed = halfspeed .. "%"
            fuel = GetVehicleFuelLevel(GetVehiclePedIsIn(GetPlayerPed(-1)))
            fuelwidth = fuel .."%"
            SendNUIMessage({type = 'updatekmh', speed = speed, speedwidth = halfspeed})
            SendNUIMessage({type = 'updatefuel', fuel = fuelwidth})
        else
            SendNUIMessage({type = 'ui' , status = false})
        end
    end
end)
