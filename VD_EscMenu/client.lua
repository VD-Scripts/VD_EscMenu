RegisterCommand("+escScreen", function()
    if not IsPauseMenuActive() then
        SendNUIMessage({action="esc"})
        SetNuiFocus(true,true)
        DisableControlAction(PlayerPedId(),87,true)
        DisableControlAction(PlayerPedId(),88,true)
        DisableControlAction(PlayerPedId(),89,true)
        DisableControlAction(PlayerPedId(),90,true)
    end
end)
RegisterKeyMapping("+escScreen", "Meniu ESC", "keyboard", "escape")
RegisterNUICallback("actiune", function(data)
    if data.val == "setari" then
        SetNuiFocus(false,false)
        ActivateFrontendMenu(GetHashKey('FE_MENU_VERSION_LANDING_MENU'),0,-1)
    elseif data.val == "harta" then
        SetNuiFocus(false,false)
        ActivateFrontendMenu(GetHashKey('FE_MENU_VERSION_MP_PAUSE'),0,-1)
    elseif data.val == "reia" then
        SetNuiFocus(false,false)
    end
end)
RegisterNUICallback("kickPlayer", function()
    TriggerServerEvent("vd:kickPlayer")
end)
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        SetPauseMenuActive(false)
    end
end)