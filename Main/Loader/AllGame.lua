repeat wait() until game:IsLoaded()
local PlaceId = game.PlaceId
if PlaceId == 2753915549 or PlaceId == 4442272183 or PlaceId == 7449423635 then
    if not game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled == false then
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ThundarZ/Welcome/main/Main/BloxFruit/Main/PC.lua'))()
    else
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ThundarZ/Welcome/main/Main/BloxFruit/Main/Mobile.lua'))()
    end
elseif PlaceId == 6918802270 or PlaceId == 14979402479 then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ThundarZ/Welcome/main/Main/HazePiece/AllDevices.lua'))()
end
