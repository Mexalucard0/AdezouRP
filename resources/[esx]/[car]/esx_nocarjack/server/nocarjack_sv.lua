ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local vehicles = {}

function getVehData(plate, callback)
    MySQL.Async.fetchAll("SELECT * FROM `owned_vehicles`", {},
    function(result)
        local foundIdentifier = nil
        for i=1, #result, 1 do
            local vehicleData = json.decode(result[i].vehicle)
            if vehicleData.plate == plate then
                foundIdentifier = result[i].owner
                break
            end
        end
        local info = {
            plate = plate
        }
        if foundIdentifier ~= nil then
            MySQL.Async.fetchAll("SELECT * FROM `users` WHERE `identifier` = @identifier", {['@identifier'] = foundIdentifier},
            function(result)
                    if result[1] ~= nil then
                    --local ownerName = result[1].firstname .. " " .. result[1].lastname
                    --table.insert(info, owner = ownerName)
                    tab["owner"] = result[1].firstname .. " " .. result[1].lastname
                    end
                end
            )
        end
        callback(info)
    end)
  end

RegisterNetEvent("esx_nocarjack:setVehicleDoorsForEveryone")
AddEventHandler("esx_nocarjack:setVehicleDoorsForEveryone", function(veh, doors, plate)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local veh_model = veh[1]
    local veh_doors = veh[2]
    local veh_plate = veh[3]

    if not vehicles[veh_plate] then
        getVehData(veh_plate, function(veh_data)
            if veh_data.plate ~= plate then
                local players = GetPlayers()
                for _,player in pairs(players) do
                    TriggerClientEvent("esx_nocarjack:setVehicleDoors", player, table.unpack(veh, doors))
                end
            end
        end)
        vehicles[veh_plate] = true
    end
end)