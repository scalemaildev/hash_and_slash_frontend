MessageReel = {
	messages = {}
}

function get_glyph(actor_name)
	if actor_name == 'player' then
		return '@'
	elseif actor_name == 'orc' then
		return 'o'
	elseif actor_name == 'troll' then
		return 'T'
	elseif actor_name == 'bgoblin' then
		return 'g'
	end
end

function translate_message(message)
	local _actor
	local _subject
	local text

	if message.actor ~= nil then _actor = get_glyph(message.actor) end
	if message.subject ~= nil then _subject = get_glyph(message.subject) end

	if message.action == 'melee' then
		text = _actor .. " → " .. _subject
	elseif message.action == 'damage' then
		text = "!" .. message.count .. " " .. _subject
	elseif message.action == 'die' then
		text = "!!" .. _subject
	elseif message.action == 'playerDie' then
		text = '~X~'
	elseif message.action == 'victory' then
		text = '~!~'
	end

	return {
		text = text,
		round = message.round
	}
end

function MessageReel.append_message(message)
	local _message = translate_message(message)
	
	table.insert(MessageReel.messages, _message)

	local count = 0
	for _ in pairs(MessageReel.messages) do count = count + 1 end

	if count > 14 then
		table.remove(MessageReel.messages, 1)
	end
end

function MessageReel.get()
	return MessageReel.messages
end

function MessageReel.clear()
	for key, _ in ipairs(MessageReel.messages) do
		MessageReel.messages[key] = nil
	end
end

return MessageReel