-------------------------------------------
-------- MADE BY GITHUB.COM/AVAN0X --------
--------------- AvaN0x#6348 ---------------
-------------------------------------------

ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function getIdentity(identifier)
    local result = MySQL.Sync.fetchAll("SELECT firstname, lastname FROM users WHERE identifier = @identifier", {
        ['@identifier'] = identifier
    })
    if result[1] then
        return result[1]
    else
        return {
            firstname = "FIRSTNAME",
            lastname = "LASTNAME"
        }
    end
end


-- TriggerEvent('es:addGroupCommand', 'twt', 'user', function(source, args)
--     if args[1] then
--         local xPlayer = ESX.GetPlayerFromId(source)
--         local msg = table.concat(args, " ") or ""
--         local name = getIdentity(xPlayer.identifier)
--         local fal = name.firstname .. " " .. name.lastname
--         TriggerClientEvent('chat:addMessage', -1, {
--             template = '<div class="chat-message"><b>Twitter @{0}:</b> {1}</div>',
--             args = { fal, msg }
--         })
--     end
-- end, function(source, args)
-- 	TriggerClientEvent('chat:addMessage', source, {args = {'^1SYSTEM', 'Insufficient Permissions.'}})
-- end, {
-- 	help = "Poste un tweet dans le chat", 
-- 	params = {
-- 		{
-- 			name = "message", 
-- 			help = "Le message à envoyer"
-- 		}
-- 	}
-- })


-- TriggerEvent('es:addGroupCommand', 'news', 'user', function(source, args)
--     if args[1] then
--         local xPlayer = ESX.GetPlayerFromId(source)
--         local msg = table.concat(args, " ") or ""
--         local name = getIdentity(xPlayer.identifier)
--         if xPlayer.job.name == 'mecano'
--         or xPlayer.job.name == 'ambulance'
--         or xPlayer.job.name == 'police'
--         or xPlayer.job.name == 'cardealer'
--         or xPlayer.job.name == 'ammu'
--         or xPlayer.job.name == 'ammunation'
--         or xPlayer.job.name == 'journaliste'
--         or xPlayer.job.name == 'unicorn'
--         or xPlayer.job.name == 'bahama'
--         or xPlayer.job.name == 'taxi'
--         or xPlayer.job.name == 'realestateagent' then
--             TriggerClientEvent('chat:addMessage', -1, {
--                 template = '<div class="chat-message-ad"><b>Annonce {0} :</b> {1}</div>',
--                 args = { xPlayer.job.label, msg }
--             })
--         elseif xPlayer.job.name == 'state' then
--             TriggerClientEvent('chat:addMessage', -1, {
--                 template = '<div class="chat-message-ad-state"><b>Annonce {0} :</b> {1}</div>',
--                 args = { xPlayer.job.label, msg }
--             })
--         end
--     end
-- end, function(source, args)
-- 	TriggerClientEvent('chat:addMessage', source, {args = {'^1SYSTEM', 'Insufficient Permissions.'}})
-- end, {
--     help = "Fait une annonce pour ton métier", 
--     params = {
--         {
--             name = "message",
--             help = "Le message à envoyer"
--         }
--     }
-- })



RegisterServerEvent('esx_avan0x:lifeInvader')
AddEventHandler('esx_avan0x:lifeInvader', function(msg, jobLabel)
    local msg = trim(msg)

    if msg and msg ~= "" then
        local xPlayer = ESX.GetPlayerFromId(source)
        local account

        if jobLabel then
            account = jobLabel
            SendWebhookEmbedMessage("avan0x_wh_lifeinvader", jobLabel, msg, 15459370) -- #ebe42a
        else
            local name = getIdentity(xPlayer.identifier)
            account = name.firstname .. " " .. name.lastname
            SendWebhookEmbedMessage("avan0x_wh_lifeinvader", account, msg, 16733269) -- #ff5455 
        end
        TriggerClientEvent('esx:showAdvancedNotification', -1, 'LIFEINVADER', account, msg, "CHAR_LIFEINVADER", 1)
    end
end)

function trim(s)
    return (string.gsub(s, "^%s*(.-)%s*$", "%1"))
end