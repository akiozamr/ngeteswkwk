local v1 = {
    "CENT", "VIG", "NOV", "OCT", "SEP", "SXD", "QUI", "QUA", "TR", "DU", "UN",
    "DE", "NO", "OC", "SP", "SX", "QI", "QA", "T", "B", "M", "K"
}
local v2 = #v1 - 1
local u3 = {}

local v15 = {
    autoColon = function(p4)
        if p4 >= 86400 then
            return string.format("%02i:%02i:%02i:%02i", p4 / 86400, p4 / 3600 % 24, p4 / 60 % 60, p4 % 60)
        elseif p4 >= 3600 then
            return string.format("%02i:%02i:%02i", p4 / 3600, p4 / 60 % 60, p4 % 60)
        else
            return string.format("%02i:%02i", p4 / 60, p4 % 60)
        end
    end,

    toMS = function(p5)
        return string.format("%01i:%02i", p5 / 60, p5 % 60)
    end,

    toHMS = function(p6)
        return string.format("%02i:%02i:%02i", p6 / 3600, p6 / 60 % 60, p6 % 60)
    end,

    toHMSExtended = function(p7)
        local v8 = p7 / 3600
        if v8 < 24 then
            return string.format("%02i:%02i:%02i", v8, p7 / 60 % 60, p7 % 60)
        end
        if v8 < 48 then
            return string.format("1 day, %02i hours", v8 - 24)
        end
        local v9 = v8 / 24
        return string.format("%02i days", v9)
    end,

    compactFormat = function(p10, p11)
        if p10 >= 86400 then
            local v12 = p10 % 86400 // 3600
            return ("%*d%*"):format(p10 // 86400, (v12 <= 0 or p11) and "" or (" %*h"):format(v12))
        end
        if p10 >= 3600 then
            local v13 = p10 % 3600 // 60
            return ("%*h%*"):format(p10 // 3600, (v13 <= 0 or p11) and "" or (" %*m"):format(v13))
        end
        if p10 < 60 then
            return ("%*s"):format(p10 // 1)
        end
        local v14 = p10 // 1 % 60
        return ("%*m%*"):format(p10 // 60, (v14 <= 0 or p11) and "" or (" %*s"):format(v14))
    end
}

for _, v16 in ipairs(v1) do
    local v17 = {
        Number = math.pow(1000, v2) * 1000,
        Symbol = v16
    }
    table.insert(u3, v17)
    v2 = v2 - 1
end

function v15.FormatCompactPrice(p18)
    for _, v19 in ipairs(u3) do
        local v20 = v19.Number
        local v21 = v19.Symbol
        if v20 <= p18 then
            return ("%s%s"):format(("%.0f"):format(p18 / v20), v21)
        end
    end
    return ("%.0f"):format(p18)
end

function v15.ReverseLerp(p22, p23, p24)
    return (p24 - p22) / (p23 - p22)
end

return v15
