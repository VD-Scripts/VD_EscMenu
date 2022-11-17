local tunnel = module("vrp", "lib/Tunnel")
local proxy = module("vrp", "lib/Proxy")
vRP = proxy.getInterface("vRP")
vRPclient = tunnel.getInterface("vRP", "VD_EscMenu")
RegisterServerEvent("vd:kickPlayer", function()
    source = source
    DropPlayer(source,"Te-ai deconectat de pe server !")
end)