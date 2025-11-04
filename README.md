# ox_fuel

Basic fuel resource and alternative to LegacyFuel, meant for use with ox_inventory.

## Get vehicle fuel level

This is an incredibly complicated task for some people, and they often ask for exports to do it.
You use the native function [GetVehicleFuelLevel](https://docs.fivem.net/natives/?_0x5F739BB8), or you can use a statebag.
This will return the volume of fuel in Liters currently in the fuel tank, and not a percentage.

```lua
Entity(entity).state.fuel
```

## Set vehicle fuel level

```lua
Entity(entity).state.fuel = fuelAmount
```

If you require getting the percentage level of the vehicles fuel level you can use:
```lua
local fuel, maxFuel = exports.ox_fuel:getFuel(entity)
local percentage = fuel / maxFuel * 100
```

## setPaymentMethod (server)

Replaces the standard payment method using "money" as an item.

```lua
exports.ox_fuel:setPaymentMethod(function(playerId, amount)
    local xPlayer = ESX.GetPlayerFromId(playerId)
	local bankAmount = xPlayer.getAccount('bank').money

	if bankAmount >= amount then
		xPlayer.removeAccountMoney('bank', amount)
		return true
	end

	TriggerClientEvent('ox_lib:notify', source, {
		type = 'error',
		description = locale('not_enough_money', amount - bankAmount)
	})
end)
```

## setMoneyCheck (client)

Replaces the standard inventory search for "money".

```lua
exports.ox_fuel:setMoneyCheck(function()
	local accounts = ESX.GetPlayerData().accounts

	for i = 1, #accounts do
		if accounts[i].name == 'bank' then
		    return accounts[i].money
		end
	end

	return 0
end)
```
