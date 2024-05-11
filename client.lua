Citizen.CreateThread(function()
while true do 
    Wait(0)
    local indicator = GetVehicleIndicatorLights(GetVehiclePedIsIn(PlayerPedId(), false))
    local car = GetVehiclePedIsIn(PlayerPedId(), false)
    
        if IsControlJustPressed(0, Config.keys.right) then
           
        if indicator == 2 then
            SetVehicleIndicatorLights(car, 0, false)
        

        else 
            SetVehicleIndicatorLights(car, 0, true)
        
        
            end
        end




        if IsControlJustPressed(0, Config.keys.left) then
            
            if indicator == 1 then
                SetVehicleIndicatorLights(car, 1, false)

            else
                SetVehicleIndicatorLights(car, 1, true)
            end
        end



        if IsControlJustPressed(0, Config.keys.both) then

        if indicator ~= 3 then
            SetVehicleIndicatorLights(car, 0, true)
            SetVehicleIndicatorLights(car, 1, true)
        end
    end

    if IsControlJustPressed(0, 173) then
       
    if indicator == 3 then
        SetVehicleIndicatorLights(car, 0, false)
        SetVehicleIndicatorLights(car, 1, false)
    end
end
            


    end
end)







-- Citizen.CreateThread(function()
--     local indicator = GetVehicleIndicatorLights(vehicle)

--     if IsControlJustPressed(0, 9) then
--         SetVehicleIndicatorLights(vehicle, 0, toggle)
-- end)