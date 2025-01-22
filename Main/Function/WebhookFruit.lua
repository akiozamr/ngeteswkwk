local WebHookLog = {}
local AllRequest = http_request or request or HttpPost or syn.request

local FruitList = {
    "Gravity-Gravity",
    "Dough-Dough",
    "Venom-Venom",
    "Shadow-Shadow",
    "Control-Control",
    "Soul-Soul",
    "Dragon-Dragon",
    "Leopard-Leopard",
    "Mammoth-Mammoth",
    "T-Rex-T-Rex",
    "Kitsune-Kitsune",
    "Yeti-Yeti",
    "Gas-Gas"
}

function WebHookLog:WebHookKaiTanSend(WebHookUrl)

    local MentionText = ""  
    local FruitName = ""
    local StoreSuccess = true


    for _, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if v.Name:find("Fruit") then
            FruitName = v.Name 

            for _, fruit in pairs(FruitList) do
                if v.Name == fruit then
                    MentionText = "@everyone "
                    break
                end
            end
            break
        end
    end

 
    for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
        if v.Name == "NotificationTemplate" then
            if string.find(v.Text, "You can only store") then
                StoreSuccess = false
                break
            end
        end
    end


    local StatusMessage = "Successfully Stored Fruit: " .. FruitName
    if not StoreSuccess then
        StatusMessage = "Failed to Store Fruit: " .. FruitName .. " (Storage Full)"
    end

 
    local Embeds = {{
        ["title"] = "**Fruit Storage Status**",
        ["color"] = tonumber(0xD936FF),
        ["fields"] = {
            {
                ["name"] = "[ 🍇 ] You Got Fruit :",
                ["value"] = FruitName
            },
            {
                ["name"] = "[ 🛠 ] Status :",
                ["value"] = StatusMessage
            }
        },
        ["footer"] = {
            ["text"] = ""..os.date("%c").." ("..os.date("%X")..")"
        },
    }}


    local Message = {
        ['username'] = "THUNDER Z FRUIT FINDER",
        ["avatar_url"] = "https://cdn.discordapp.com/attachments/962302731308105758/1071360247781924955/THUNDERZ_HUB_4.png",
        ["content"] = MentionText,
        ["embeds"] = Embeds,
    }


    local DataCallBack = AllRequest({
        Url = WebHookUrl,
        Method = 'POST',
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode(Message)
    })
    return DataCallBack
end

return WebHookLog
