local WebHookLog = {}
local AllRequest = http_request or request or HttpPost or syn.request

local FruitList = {
    "Gravity Fruit",
    "Dough Fruit",
    "Shadow Fruit",
    "Venom Fruit",
    "Control Fruit",
    "Spirit Fruit",
    "Dragon Fruit",
    "Leopard Fruit",
    "Mammoth Fruit",
    "Kitsune Fruit",
    "T-Rex Fruit",
    "Yeti Fruit",
    "Gas Fruit"
}

function WebHookLog:WebHookKaiTanSend(WebHookUrl)
    local MentionText = ""  
    local FruitName = ""
    local StoreSuccess = true
    local NotificationChecked = false
    local Timeout = 0.5 -- Timeout untuk menunggu notifikasi (dalam detik)

    -- Cari buah di dalam Backpack
    for _, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if v.Name:find("Fruit") then
            FruitName = v.Name 

            for _, fruit in pairs(FruitList) do
                if v.Name == fruit then
                    MentionText = "@everyone"
                    break
                end
            end
            break
        end
    end

    -- Periksa notifikasi penyimpanan
    local StartTime = tick()
    while not NotificationChecked and (tick() - StartTime) < Timeout do
        wait()
        for _, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
            if v.Name == "NotificationTemplate" and string.find(v.Text, "You can only store") then
                StoreSuccess = false
                NotificationChecked = true
                break
            end
        end
    end

    -- Jika waktu habis tanpa notifikasi, anggap sukses
    if not NotificationChecked then
        NotificationChecked = true
        StoreSuccess = true
    end

    -- Set status pesan
    local StatusMessage = StoreSuccess and ("Successfully Stored Fruit: " .. FruitName) or ("Failed to Store Fruit: " .. FruitName .. " (Storage Full)")

    -- Data embed untuk webhook
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

    -- Data pesan untuk webhook
    local Message = {
        ['username'] = "THUNDER Z FRUIT FINDER",
        ["avatar_url"] = "https://cdn.discordapp.com/attachments/962302731308105758/1071360247781924955/THUNDERZ_HUB_4.png",
        ["content"] = MentionText,
        ["embeds"] = Embeds,
    }

    -- Kirim data melalui webhook
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
