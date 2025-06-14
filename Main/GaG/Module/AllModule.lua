-- AllModules.lua

local AllModules = {}

AllModules.ItemModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/GaG/Module/ItemModule.lua"))()
AllModules.MutationHandler = loadstring(game:HttpGet("https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/GaG/Module/MutationHandler.lua"))()
AllModules.PetList = loadstring(game:HttpGet("https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/GaG/Module/PetList.lua"))()
AllModules.PetEggs = loadstring(game:HttpGet("https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/GaG/Module/PetEggs.lua"))()
AllModules.NumberUtil = loadstring(game:HttpGet("https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/GaG/Module/NumberUtil.lua"))()
AllModules.PetUtilities = loadstring(game:HttpGet("https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/GaG/Module/PetUtilities.lua"))()

return AllModules
