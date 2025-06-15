
local module = {}

-- Data tanaman
local allPlants = {
    {
        "Carrot",
        0.275,
        20,
        100
    },
    {
        "Strawberry",
        0.3,
        15,
        100
    },
    {
        "Blueberry",
        0.2,
        20,
        100
    },
    {
        "Orange Tulip",
        0.05,
        850,
        55
    },
    {
        "Tomato",
        0.5,
        30,
        100
    },
    {
        "Corn",
        2,
        40,
        100
    },
    {
        "Daffodil",
        0.2,
        1000,
        45
    },
    {
        "Watermelon",
        7,
        3000,
        70
    },
    {
        "Pumpkin",
        8,
        3400,
        80
    },
    {
        "Apple",
        3,
        275,
        50
    },
    {
        "Bamboo",
        4,
        4000,
        35
    },
    {
        "Coconut",
        14,
        400,
        70
    },
    {
        "Cactus",
        7,
        3400,
        100
    },
    {
        "Dragon Fruit",
        12,
        4750,
        100
    },
    {
        "Mango",
        15,
        6500,
        200
    },
    {
        "Grape",
        3,
        7850,
        200
    },
    {
        "Mushroom",
        25,
        151000,
        220
    },
    {
        "Pepper",
        5,
        8000,
        200
    },
    {
        "Cacao",
        8,
        12000,
        250
    },
    {
        "Beanstalk",
        10,
        28000,
        300
    },
    {
        "Ember Lily",
        12,
        55555,
        450
    },
    {
        "Chocolate Carrot",
        0.275,
        11000,
        100
    },
    {
        "Red Lollipop",
        4,
        50000,
        65
    },
    {
        "Blue Lollipop",
        1,
        50000,
        65
    },
    {
        "Candy Sunflower",
        1.5,
        80000,
        85
    },
    {
        "Easter Egg",
        3,
        2500,
        20
    },
    {
        "Candy Blossom",
        3,
        100000,
        40
    },
    {
        "Peach",
        2,
        300,
        70
    },
    {
        "Raspberry",
        0.75,
        100,
        70
    },
    {
        "Pineapple",
        3,
        2000,
        70
    },
    {
        "Papaya",
        3,
        1000,
        60
    },
    {
        "Banana",
        1.5,
        1750,
        100
    },
    {
        "Passionfruit",
        3,
        3550,
        40
    },
    {
        "Soul Fruit",
        25,
        7750,
        200
    },
    {
        "Cursed Fruit",
        30,
        25750,
        200
    },
    {
        "Mega Mushroom",
        70,
        500,
        2000000
    },
    {
        "Cherry Blossom",
        3,
        500,
        400
    },
    {
        "Purple Cabbage",
        5,
        500,
        70
    },
    {
        "Lemon",
        1,
        350,
        50
    },
    {
        "Pear",
        3,
        500,
        20
    },
    {
        "Crocus",
        0.05,
        850,
        55
    },
    {
        "Pink Tulip",
        0.05,
        850,
        55
    },
    {
        "Succulent",
        3,
        500,
        150
    },
    {
        "Avocado",
        2,
        500,
        150
    },
    {
        "Cranberry",
        1,
        3000,
        50
    },
    {
        "Durian",
        8,
        7000,
        200
    },
    {
        "Eggplant",
        5,
        9500,
        220
    },
    {
        "Lotus",
        20,
        25000,
        650
    },
    {
        "Venus Fly Trap",
        10,
        45000,
        650
    },
    {
        "Nightshade",
        0.5,
        3500,
        100
    },
    {
        "Glowshroom",
        0.75,
        300,
        100
    },
    {
        "Mint",
        1,
        5250,
        150
    },
    {
        "Moonflower",
        2,
        9500,
        200
    },
    {
        "Starfruit",
        3,
        15000,
        250
    },
    {
        "Moonglow",
        7,
        20000,
        400
    },
    {
        "Moon Blossom",
        3,
        60000,
        400
    },
    {
        "Crimson Vine",
        1,
        1250,
        100
    },
    {
        "Moon Melon",
        8,
        18000,
        300
    },
    {
        "Blood Banana",
        1.5,
        6000,
        200
    },
    {
        "Celestiberry",
        2,
        10000,
        200
    },
    {
        "Moon Mango",
        15,
        50000,
        300
    },
    {
        "Rose",
        1,
        5000,
        100
    },
    {
        "Foxglove",
        2,
        20000,
        250
    },
    {
        "Lilac",
        3,
        35000,
        250
    },
    {
        "Pink Lily",
        6,
        65000,
        400
    },
    {
        "Purple Dahlia",
        12,
        75000,
        400
    },
    {
        "Sunflower",
        16.5,
        150000,
        600
    },
    {
        "Lavender",
        0.275,
        25000,
        90
    },
    {
        "Nectarshade",
        0.8,
        50000,
        100
    },
    {
        "Nectarine",
        3,
        40000,
        200
    },
    {
        "Hive Fruit",
        8,
        50000,
        300
    },
    {
        "Manuka Flower",
        0.3,
        25000,
        200
    },
    {
        "Dandelion",
        4,
        50000,
        300
    },
    {
        "Lumira",
        6,
        85000,
        350
    },
    {
        "Honeysuckle",
        12,
        100000,
        400
    },
    {
        "Bee Balm",
        1.5,
        20000,
        250
    },
    {
        "Noble Flower",
        5,
        20000,
        250
    },
    {
        "Nectar Thorn",
        5,
        20000,
        250
    },
    {
        "Suncoil",
        13,
        20000,
        200
    }
}

-- Data seed (seed name, plant name, _, rarity)
local allSeeds = {
    {
        "Carrot Seed",
        "Carrot",
        1.1,
        "Common",
        3248692171,
        10,
        5,
        3269339926
    },
    {
        "Strawberry Seed",
        "Strawberry",
        2,
        "Common",
        3248695947,
        50,
        3,
        3269339924
    },
    {
        "Tomato Seed",
        "Tomato",
        4,
        "Rare",
        3248696942,
        800,
        1,
        3269339929
    },
    {
        "Blueberry Seed",
        "Blueberry",
        3,
        "Uncommon",
        3248690960,
        400,
        3,
        3269339931
    },
    {
        "Orange Tulip Seed",
        "Orange Tulip",
        3,
        "Common",
        3265927408,
        100,
        0,
        3269339925
    },
    {
        "Corn Seed",
        "Corn",
        5,
        "Rare",
        3248692845,
        1300,
        0,
        3269339919
    },
    {
        "Pumpkin Seed",
        "Pumpkin",
        10,
        "Legendary",
        3248695199,
        3000,
        0,
        3269339934
    },
    {
        "Daffodil Seed",
        "Daffodil",
        10,
        "Common",
        3265927978,
        100,
        0,
        3269339921
    },
    {
        "Watermelon Seed",
        "Watermelon",
        7,
        "Legendary",
        3248697546,
        2500,
        0,
        3269339904
    },
    {
        "Apple Seed",
        "Apple",
        14,
        "Legendary",
        3248716238,
        3250,
        0,
        3269339923
    },
    {
        "Bamboo Seed",
        "Bamboo",
        3,
        "Uncommon",
        3261009117,
        4000,
        3,
        3269339922
    },
    {
        "Purple Cabbage Seed",
        "Purple Cabbage",
        40,
        "Mythical",
        3273005969,
        5250,
        0,
        3273008000
    },
    {
        "Coconut Seed",
        "Coconut",
        20,
        "Mythical",
        3248744789,
        4750,
        0,
        3269339918
    },
    {
        "Cactus Seed",
        "Cactus",
        100,
        "Legendary",
        3260940714,
        17000,
        0,
        3269339920
    },
    {
        "Eggplant Seed",
        "Eggplant",
        16,
        "Mythical",
        3273006109,
        30000,
        0,
        3273007733
    },
    {
        "Dragon Fruit Seed",
        "Dragon Fruit",
        40,
        "Mythical",
        3253012192,
        27000,
        0,
        3269339909
    },
    {
        "Mango Seed",
        "Mango",
        70,
        "Mythical",
        3259333414,
        50000,
        0,
        3269339912
    },
    {
        "Grape Seed",
        "Grape",
        20,
        "Mythical",
        3261068725,
        4750,
        0,
        3269339905
    },
    {
        "Pepper Seed",
        "Pepper",
        2,
        "Rare",
        3277675404,
        25000,
        3,
        3277675837
    },
    {
        "Cacao Seed",
        "Cacao",
        2,
        "Rare",
        3282870834,
        50,
        3,
        3282871246
    },
    {
        "Beanstalk Seed",
        "Beanstalk",
        2,
        "Rare",
        3284390402,
        50,
        3,
        3284390954
    },
    {
        "Red Lollipop Seed",
        "Red Lollipop",
        1.5,
        "Rare",
        3268186603,
        100,
        0,
        nil
    },
    {
        "Blue Lollipop Seed",
        "Blue Lollipop",
        1.5,
        "Rare",
        3268186832,
        100,
        0,
        nil
    },
    {
        "Candy Sunflower Seed",
        "Candy Sunflower",
        1.5,
        "Legendary",
        3268187175,
        500,
        0,
        nil
    },
    {
        "Candy Blossom Seed",
        "Candy Blossom",
        10,
        "Divine",
        3268187638,
        8000,
        0,
        nil
    },
    {
        "Peach Seed",
        "Peach",
        10,
        "Rare",
        0,
        10000,
        0,
        nil
    },
    {
        "Raspberry Seed",
        "Raspberry",
        10,
        "Rare",
        0,
        10000,
        0,
        nil
    },
    {
        "Pineapple Seed",
        "Pineapple",
        10,
        "Rare",
        0,
        10000,
        0,
        nil
    },
    {
        "Papaya Seed",
        "Papaya",
        10,
        "Rare",
        3265927598,
        10000,
        0,
        nil
    },
    {
        "Banana Seed",
        "Banana",
        10,
        "Rare",
        3269001250,
        8000,
        0,
        nil
    },
    {
        "Passionfruit Seed",
        "Passionfruit",
        10,
        "Rare",
        3265927598,
        10000,
        0,
        nil
    },
    {
        "Soul Fruit Seed",
        "Soul Fruit",
        10000000,
        "Robux",
        1,
        0,
        0,
        nil
    },
    {
        "Cursed Fruit Seed",
        "Cursed Fruit",
        10000000,
        "Robux",
        1,
        0,
        0,
        nil
    },
    {
        "Cranberry Seed",
        "Cranberry",
        10,
        "Rare",
        0,
        10000,
        0,
        nil
    },
    {
        "Durian Seed",
        "Durian",
        2,
        "Common",
        0,
        50,
        3,
        nil
    },
    {
        "Lotus Seed",
        "Lotus",
        2,
        "Common",
        0,
        50,
        3,
        nil
    },
    {
        "Venus Fly Trap Seed",
        "Venus Fly Trap",
        10,
        "Rare",
        0,
        10000,
        0,
        nil
    },
    {
        "Nightshade Seed",
        "Nightshade",
        2,
        "Rare",
        0,
        50,
        3,
        nil
    },
    {
        "Glowshroom Seed",
        "Glowshroom",
        2,
        "Rare",
        0,
        50,
        3,
        nil
    },
    {
        "Mint Seed",
        "Mint",
        2,
        "Rare",
        0,
        50,
        3,
        nil
    },
    {
        "Moonflower Seed",
        "Moonflower",
        2,
        "Rare",
        0,
        50,
        3,
        nil
    },
    {
        "Starfruit Seed",
        "Starfruit",
        2,
        "Rare",
        0,
        50,
        3,
        nil
    },
    {
        "Moonglow Seed",
        "Moonglow",
        2,
        "Rare",
        0,
        50,
        3,
        nil
    },
    {
        "Moon Blossom Seed",
        "Moon Blossom",
        2,
        "Rare",
        0,
        50,
        3,
        nil
    },
    {
        "Mega Mushroom Seed",
        "Mega Mushroom",
        10,
        "Divine",
        0,
        10000,
        0,
        nil
    },
    {
        "Mushroom Seed",
        "Mushroom",
        10,
        "Rare",
        3273973729,
        10000,
        0,
        3273973524
    },
    {
        "Succulent Seed",
        "Succulent",
        2,
        "Common",
        0,
        50,
        3,
        nil
    },
    {
        "Lemon Seed",
        "Lemon",
        4,
        "Rare",
        0,
        800,
        1,
        nil
    },
    {
        "Cherry Blossom Seed",
        "Cherry Blossom",
        2,
        "Common",
        0,
        50,
        3,
        nil
    },
    {
        "Avocado Seed",
        "Avocado",
        2,
        "Rare",
        0,
        50,
        3,
        nil
    },
    {
        "Pink Tulip Seed",
        "Pink Tulip",
        15,
        "Common",
        3265927598,
        100,
        0,
        nil
    },
    {
        "Crocus Seed",
        "Crocus",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Crimson Vine Seed",
        "Crimson Vine",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Moon Melon Seed",
        "Moon Melon",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Blood Banana Seed",
        "Blood Banana",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Moon Mango Seed",
        "Moon Mango",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Celestiberry Seed",
        "Celestiberry",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Purple Dahlia Seed",
        "Purple Dahlia",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Pink Lily Seed",
        "Pink Lily",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Hive Fruit Seed",
        "Hive Fruit",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Sunflower Seed",
        "Sunflower",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Rose Seed",
        "Rose",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Foxglove Seed",
        "Foxglove",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Bee Balm Seed",
        "Bee Balm",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Noble Flower Seed",
        "Noble Flower",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Honeysuckle Seed",
        "Honeysuckle",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Nectar Thorn Seed",
        "Nectar Thorn",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Dandelion Seed",
        "Dandelion",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Manuka Flower Seed",
        "Manuka Flower",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Lavender Seed",
        "Lavender",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Nectarine Seed",
        "Nectarine",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Ember Lily Seed",
        "Ember Lily",
        10,
        "Common",
        3300984139,
        100,
        0,
        3300985820
    },
    {
        "Nectarshade Seed",
        "Nectarshade",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Lumira Seed",
        "Lumira",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Suncoil Seed",
        "Suncoil",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Prickly Pear Seed",
        "Prickly Pear",
        10,
        "Common",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Green Apple Seed",
        "Green Apple",
        10,
        "Legendary",
        3265927895,
        100,
        0,
        nil
    },
    {
        "Sugar Apple Seed",
        "Sugar Apple",
        10,
        "Legendary",
        3304968889,
        100,
        0,
        3304969010
    },
    {
        "Dragon Pepper Seed",
        "Dragon Pepper",
        10,
        "Legendary",
        0,
        100,
        0,
        0
    },
    {
        "Cocovine Seed",
        "Cocovine",
        10,
        "Legendary",
        0,
        100,
        0,
        0
    },
    {
        "Loquat Seed",
        "Loquat",
        10,
        "Legendary",
        0,
        100,
        0,
        0
    },
    {
        "Ice Cream Bean Seed",
        "Ice Cream Bean",
        10,
        "Legendary",
        0,
        100,
        0,
        0
    }
}

-- Data multiplier varian (variant name, dropChance, multiplier)
local variants = {
    {"Normal", 1000, 1},
    {"Gold", 10, 20},
    {"Rainbow", 1, 50}
}

function module.Return_All_Data()
    return allPlants
end

function module.Return_Data(itemName)
    for _, data in ipairs(allPlants) do
        if data[1] == itemName then
            return data
        end
    end
end

function module.Return_Multiplier(variantName)
    for _, v in ipairs(variants) do
        if v[1] == variantName then
            return v[3]
        end
    end
    return 1
end

function module.Return_All_Seeds()
    return allSeeds
end

return module
