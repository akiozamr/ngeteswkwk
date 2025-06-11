-- Versi ringan Remotes.lua tanpa require()

local ByteNet = {}

-- Simulasi type system (tidak berfungsi penuh, hanya placeholder)
ByteNet.inst = {}
function ByteNet.array(type) return {type = "array", elementType = type} end
function ByteNet.nothing() return nil end
function ByteNet.uint8() return nil end
function ByteNet.float64() return nil end
function ByteNet.string() return nil end
function ByteNet.struct(def) return def end
function ByteNet.optional(type) return {optional = true, type = type} end

-- Define packet: mock RemoteEvent
function ByteNet.definePacket(def)
    -- Cari RemoteEvent di dalam game.ReplicatedStorage.Remotes
    local remoteName = debug.info(2, "n") or "UnnamedPacket"
    local remote = game:GetService("ReplicatedStorage"):FindFirstChild("Remotes")
    remote = remote and remote:FindFirstChild(remoteName)

    if not remote then
        warn("[ByteNet] Remote '" .. remoteName .. "' tidak ditemukan.")
    end

    return {
        send = function(data)
            if remote then
                remote:FireServer(data)
            end
        end,
        connect = function(callback)
            if remote then
                remote.OnClientEvent:Connect(callback)
            end
        end
    }
end

-- Define namespace
function ByteNet.defineNamespace(name, builder)
    return builder()
end

-- Simulasi Remotes
local Remotes = {
    Crops = ByteNet.defineNamespace("Crops", function()
        return {
            Collect = ByteNet.definePacket({
                value = ByteNet.array(ByteNet.inst)
            })
        }
    end),

    DailyQuests = ByteNet.defineNamespace("DailyQuests", function()
        return {
            Claim = ByteNet.definePacket({
                value = ByteNet.nothing
            })
        }
    end),

    SeedPack = ByteNet.defineNamespace("SeedPack", function()
        return {
            SpinFinished = ByteNet.definePacket({value = ByteNet.nothing}),
            Open = ByteNet.definePacket({value = ByteNet.string}),
            Result = ByteNet.definePacket({
                value = ByteNet.struct({
                    seedPackType = ByteNet.string,
                    resultIndex = ByteNet.uint8
                })
            })
        }
    end)
}

return Remotes
