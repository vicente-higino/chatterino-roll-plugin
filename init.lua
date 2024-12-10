function startswith(str, prefix)
    return string.sub(str, 1, prefix:len()) == prefix
end

function cmdRoll(ctx)
    table.remove(ctx.words, 1)
    local first = ctx.words[1]
    local second = ctx.words[2]
    if second == nil then
        local randNumber = math.random(1, first)
        ctx.channel:send_message("/me rolls " .. randNumber .. " (1-" .. first .. ")", true)
    else
        local message = ""
        for i = 1, first do
            local randNumber = math.random(1, second)
            message = message .. randNumber .. " "
        end
        ctx.channel:send_message("/me rolls " .. message .. "(1-" .. second ..")", true)
    end
end

c2.register_command("/roll", cmdRoll)
