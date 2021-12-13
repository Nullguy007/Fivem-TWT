--Twitter Message
RegisterCommand("twt", function(source, args, raw)
    if #args <= 0 then return end
    local message = table.concat(args, " ")
	TriggerClientEvent('chatMessage', -1, "^5Twitter: ^0(^1" .. GetPlayerName(source) .." ^0| ^1" ..source.."^0)", { 30, 144, 255 }, message)
end)

--911 Message
RegisterCommand("911", function(source, args, raw)
    if #args <= 0 then return end
    local message = table.concat(args, " ")
    TriggerClientEvent('chatMessage', -1, "^5911: ^0(^1" .. GetPlayerName(source) .." ^0| ^1" ..source.."^0)", { 30, 144, 255 }, message)
end)






--Chat Proximity
AddEventHandler('chatMessage', function(source, name, message)
    if string.sub(message, 1, string.len("/")) ~= "/" then
        local name = GetPlayerName(source)
	TriggerClientEvent("sendProxMsg", -1, source, name, message)
    end
    CancelEvent()
end)

--Function
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

--Console Message
 print "Roleplay Commands - Made by MF"