
for each, font in pairs(data.raw.font) do
    log("\n")
    log(font.name)
    log(font.from)
    log(font.size)
    if font.from == "default" then
        --log(font.name)
        --log(font.from)
        data.raw.font[each].from = "OpenDyslexic-Regular"
        if font.name == "default-game" then
            data.raw.font[each].border = false
            data.raw.font[each].size = data.raw.font[each].size - 2
        else
            data.raw.font[each].size = data.raw.font[each].size
        end
        log(font.size)
    elseif font.from == "default-semibold" then
        data.raw.font[each].from = "OpenDyslexic-Bold"
        data.raw.font[each].size = data.raw.font[each].size - 2
    elseif font.from == "default-bold" then
        data.raw.font[each].from = "OpenDyslexic-Bold"
        data.raw.font[each].size = data.raw.font[each].size - 2
    elseif font.from == "locale-pick" then
        data.raw.font[each].from = "OpenDyslexic-Regular"
    end
    log(font.from)
end
