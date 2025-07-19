local module = {}

local mutations = 
{
    ["Radioactive"] = {
        Name = "Radioactive",
        Color = Color3.fromRGB(98, 255, 0),
        ValueMulti = 80
    },
    ["Meteoric"] = {
        Name = "Meteoric",
        Color = Color3.fromRGB(73, 29, 193),
        ValueMulti = 125
    },
    ["Celestial"] = {
        Name = "Celestial",
        Color = Color3.fromRGB(255, 0, 255),
        ValueMulti = 120
    },
    ["Windstruck"] = {
        Name = "Windstruck",
        Color = Color3.fromRGB(162, 185, 209),
        ValueMulti = 2
    },
    ["Fried"] = {
        Name = "Fried",
        Color = Color3.fromRGB(223, 110, 34),
        ValueMulti = 8
    },
    ["Burnt"] = {
        Name = "Burnt",
        Color = Color3.fromRGB(40, 40, 40),
        ValueMulti = 4
    },
    ["Drenched"] = {
        Name = "Drenched",
        Color = Color3.fromRGB(0, 55, 228),
        ValueMulti = 5
    },
    ["Tempestuous"] = {
        Name = "Tempestuous",
        Color = Color3.fromRGB(143, 163, 180),
        ValueMulti = 12
    },
    ["Shocked"] = {
        Name = "Shocked",
        Color = Color3.fromRGB(255, 255, 100),
        ValueMulti = 100
    },
    ["Aurora"] = {
        Name = "Aurora",
        Color = Color3.fromRGB(99, 89, 175),
        ValueMulti = 90
    },
    ["Choc"] = {
        Name = "Choc",
        Color = Color3.fromRGB(92, 64, 51),
        ValueMulti = 2
    },
    ["Bloodlit"] = {
        Name = "Bloodlit",
        Color = Color3.fromRGB(200, 0, 0),
        ValueMulti = 4
    },
    ["Friendbound"] = {
        Name = "Friendbound",
        Color = Color3.fromRGB(255, 0, 127),
        ValueMulti = 70
    },
    ["Paradisal"] = {
        Name = "Paradisal",
        Color = Color3.fromRGB(176, 240, 0),
        ValueMulti = 100
    },
    ["Clay"] = {
        Name = "Clay",
        Color = Color3.fromRGB(147, 129, 122),
        ValueMulti = 5
    },
    ["Amber"] = {
        Name = "Amber",
        Color = Color3.fromRGB(255, 192, 0),
        ValueMulti = 10
    },
    ["Zombified"] = {
        Name = "Zombified",
        Color = Color3.fromRGB(128, 199, 127),
        ValueMulti = 25
    },
    ["HoneyGlazed"] = {
        Name = "HoneyGlazed",
        Color = Color3.fromRGB(255, 204, 0),
        ValueMulti = 5
    },
    ["Frozen"] = {
        Name = "Frozen",
        Color = Color3.fromRGB(108, 184, 255),
        ValueMulti = 10
    },
    ["OldAmber"] = {
        Name = "OldAmber",
        Color = Color3.fromRGB(252, 106, 33),
        ValueMulti = 20
    },
    ["Verdant"] = {
        Name = "Verdant",
        Color = Color3.fromRGB(34, 139, 34),
        ValueMulti = 4
    },
    ["Sandy"] = {
        Name = "Sandy",
        Color = Color3.fromRGB(212, 191, 141),
        ValueMulti = 3
    },
    ["Toxic"] = {
        Name = "Toxic",
        Color = Color3.fromRGB(85, 255, 0),
        ValueMulti = 12
    },
    ["Moonlit"] = {
        Name = "Moonlit",
        Color = Color3.fromRGB(153, 141, 255),
        ValueMulti = 2
    },
    ["Tranquil"] = {
        Name = "Tranquil",
        Color = Color3.fromRGB(255, 255, 255),
        ValueMulti = 20
    },
    ["Enlightened"] = {
        Name = "Enlightened",
        Color = Color3.fromRGB(255, 255, 255),
        ValueMulti = 35
    },
    ["Eclipsed"] = {
        Name = "Eclipsed",
        Color = Color3.fromRGB(44, 111, 162),
        ValueMulti = 15
    },
    ["FoxfireChakra"] = {
        Name = "FoxfireChakra",
        Color = Color3.fromRGB(255, 80, 65),
        ValueMulti = 90
    },
    ["Chakra"] = {
        Name = "Chakra",
        Color = Color3.fromRGB(255, 80, 65),
        ValueMulti = 15
    },
    ["Infected"] = {
        Name = "Infected",
        Color = Color3.fromRGB(67, 167, 0),
        ValueMulti = 75
    },
    ["AncientAmber"] = {
        Name = "AncientAmber",
        Color = Color3.fromRGB(204, 68, 0),
        ValueMulti = 50
    },
    ["Ceramic"] = {
        Name = "Ceramic",
        Color = Color3.fromRGB(234, 184, 146),
        ValueMulti = 32
    },
    ["Pollinated"] = {
        Name = "Pollinated",
        Color = Color3.fromRGB(255, 170, 0),
        ValueMulti = 3
    },
    ["Disco"] = {
        Name = "Disco",
        Color = Color3.fromRGB(255, 105, 180),
        ValueMulti = 125
    },
    ["Twisted"] = {
        Name = "Twisted",
        Color = Color3.fromRGB(191, 191, 191),
        ValueMulti = 5
    },
    ["Alienlike"] = {
        Name = "Alienlike",
        Color = Color3.fromRGB(0, 223, 197),
        ValueMulti = 100
    },
    ["Plasma"] = {
        Name = "Plasma",
        Color = Color3.fromRGB(208, 43, 137),
        ValueMulti = 5
    },
    ["Molten"] = {
        Name = "Molten",
        Color = Color3.fromRGB(223, 100, 0),
        ValueMulti = 25
    },
    ["Dawnbound"] = {
        Name = "Dawnbound",
        Color = Color3.fromRGB(255, 213, 0),
        ValueMulti = 150
    },
    ["Cooked"] = {
        Name = "Cooked",
        Color = Color3.fromRGB(210, 120, 60),
        ValueMulti = 10
    },
    ["Chilled"] = {
        Name = "Chilled",
        Color = Color3.fromRGB(135, 206, 250),
        ValueMulti = 2
    },
    ["Heavenly"] = {
        Name = "Heavenly",
        Color = Color3.fromRGB(255, 249, 160),
        ValueMulti = 5
    },
    ["Wiltproof"] = {
        Name = "Wiltproof",
        Color = Color3.fromRGB(0, 222, 155),
        ValueMulti = 4
    },
    ["Sundried"] = {
        Name = "Sundried",
        Color = Color3.fromRGB(207, 93, 0),
        ValueMulti = 85
    },
    ["Galactic"] = {
        Name = "Galactic",
        Color = Color3.fromRGB(243, 148, 255),
        ValueMulti = 120
    },
    ["Voidtouched"] = {
        Name = "Voidtouched",
        Color = Color3.fromRGB(225, 0, 255),
        ValueMulti = 135
    },
    ["Wet"] = {
        Name = "Wet",
        Color = Color3.fromRGB(64, 164, 223),
        ValueMulti = 2
    },
    ["Cloudtouched"] = {
        Name = "Cloudtouched",
        Color = Color3.fromRGB(225, 255, 255),
        ValueMulti = 5
    },
}

function module.GetMutations()
    local list = {}
    for _, data in pairs(mutations) do
        table.insert(list, data)
    end
    return list
end

function module:CalcValueMulti(plant)
    if typeof(plant) ~= "Instance" then
        return 1
    end

    local valueMulti = 1
    local detected = {}
    
    for name, data in pairs(mutations) do
        if plant:GetAttribute(name) then
            valueMulti += (data.ValueMulti - 1)
            detected[name] = true
        end
    end

    for _, child in ipairs(plant:GetChildren()) do
        if child:IsA("StringValue") then
            local name = child.Value
            if mutations[name] and not detected[name] then
                valueMulti += (mutations[name].ValueMulti - 1)
                detected[name] = true
            end
        end
    end

    return math.max(1, valueMulti)
end

module.MutationsByName = mutations
return module
