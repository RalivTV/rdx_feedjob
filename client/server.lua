RDX = nil
local PlayerData = {}
Citizen.CreateThread(function()
	while RDX == nil do
		TriggerEvent('rdx:getSharedObject', function(obj) RDX = obj end)
		Citizen.Wait(0)
	end

	RDX.PlayerData = xPlayer
end) 

RegisterServerEvent("alimentar:galinhas")
AddEventHandler("alimentar:galinhas", function()
    local _source = source
	local xPlayer = RDX.GetPlayerFromId(_source)
		  xPlayer.addMoney(1)
end)