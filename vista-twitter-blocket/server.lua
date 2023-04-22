ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) 
	ESX = obj 
end)



AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/blocket" then
		CancelEvent()
                local xPlayer = ESX.GetPlayerFromId(source)
                local firstname = xPlayer["character"]["firstname"]
                local lastname = xPlayer["character"]["lastname"]
		TriggerClientEvent('chatMessage', -1, "Blocket | @" .. firstname .. " " .. lastname, { 254, 32, 32 }, string.sub(msg,9))
	end
end)

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end



AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/twitter" then
		CancelEvent()
                local xPlayer = ESX.GetPlayerFromId(source)
                local firstname = xPlayer["character"]["firstname"]
                local lastname = xPlayer["character"]["lastname"]
		TriggerClientEvent('chatMessage', -1, "Twitter | @" .. firstname .. " " .. lastname, { 30, 144, 255 }, string.sub(msg,9))
	end
end)

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

