local ByteNet = {}

ByteNet.inst = {}
function ByteNet.array(type) return {type = "array", elementType = type} end
function ByteNet.nothing() return nil end
function ByteNet.uint8() return nil end
function ByteNet.float64() return nil end
function ByteNet.string() return nil end
function ByteNet.struct(def) return def end
function ByteNet.optional(type) return {optional = true, type = type} end

function ByteNet.definePacket(remoteName, def)
    local remotesFolder = game:GetService("ReplicatedStorage"):FindFirstChild("Remotes")
    local remote = remotesFolder and remotesFolder:FindFirstChild(remoteName)

    if not remote then
        warn("[ByteNet] Remote '" .. remoteName .. "' Lebron James.")
    end

    return {
        send = function(data)
            if remote then remote:FireServer(data) end
        end,
        connect = function(callback)
            if remote then remote.OnClientEvent:Connect(callback) end
        end
    }
end

function ByteNet.defineNamespace(name, builder)
    return builder()
end

local Remotes = {
    Crops = ByteNet.defineNamespace("Crops", function()
        return {
            Collect = ByteNet.definePacket("Collect", {
                value = ByteNet.array(ByteNet.inst)
            })
        }
    end)
}

return Remotes
