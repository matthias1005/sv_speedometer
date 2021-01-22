Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
            SendNUIMessage({type = 'ui' , status = true})
            currentspeed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false)) * 3.6
            currentspeed = math.floor(currentspeed)
            speed = currentspeed .. "km/h"
            halfspeed = currentspeed/3
            halfspeed = halfspeed .. "%"
            SendNUIMessage({type = 'updatekmh', speed = speed, speedwidth = halfspeed})
        else
            SendNUIMessage({type = 'ui' , status = false})
        end
    end
end)