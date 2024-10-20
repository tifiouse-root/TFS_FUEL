ESX = exports["es_extended"]:getSharedObject()

CreateCallback("gacha_fuel:callback:hasMoney", function(source, cb, litres)
	local totalPrice = (Config.PriceLitre * litres)
		if ESX then
			local xPlayer = ESX.GetPlayerFromId(source)
			local PlayerMoney = xPlayer.getMoney()
			if PlayerMoney >= totalPrice then
				xPlayer.removeMoney(totalPrice)
				cb(true)
			else
				cb(false)
			end
		else
			print('You need to have ESX imported in the fxmanifest')
		end
end)