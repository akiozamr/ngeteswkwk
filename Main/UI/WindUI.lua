function a.r()
        local b = a.load'a'
        local e = b.New
        local f = b.Tween
        local g = {}
        local h = false
        function g.New(i, j)
            local k = {
                __type = "Slider",
                Title = j.Title or "Slider",
                Desc = j.Desc or nil,
                Locked = j.Locked or nil,
                Value = j.Value or {},
                Step = j.Step or 1,
                Callback = j.Callback or function()
                end,
                UIElements = {},
                IsFocusing = false,
            }
            local n
            local o
            local p
            local q = k.Value.Default or k.Value.Min or 0
            local r = q
            local s = (q - (k.Value.Min or 0)) / ((k.Value.Max or 100) - (k.Value.Min or 0))
            local t = true
            local u = k.Step % 1 ~= 0
            local function FormatValue(v)
                if u then
                    return string.format("%.2f", v)
                else
                    return tostring(math.floor(v + 0.5))
                end
            end
            local function CalculateValue(v)
                if u then
                    return math.floor(v / k.Step + 0.5) * k.Step
                else
                    return math.floor(v / k.Step + 0.5) * k.Step
                end
            end
            k.SliderFrame = a.load'm'{
                Title = k.Title,
                Desc = k.Desc,
                Parent = j.Parent,
                TextOffset = 0,
                Hover = false,
            }
            k.UIElements.SliderIcon = b.NewRoundFrame(99, "Squircle", {
                ImageTransparency = .95,
                Size = UDim2.new(1, - 68, 0, 4),
                Name = "Frame",
                ThemeTag = {
                    ImageColor3 = "Text",
                },
            }, {
                b.NewRoundFrame(99, "Squircle", {
                    Name = "Frame",
                    Size = UDim2.new(s, 0, 1, 0),
                    ImageTransparency = .1,
                    ThemeTag = {
                        ImageColor3 = "Button",
                    },
                }, 
                
                {
                    b.NewRoundFrame(99, "Squircle", {
                        Size = UDim2.new(0, 13, 0, 13),
                        Position = UDim2.new(1, 0, 0.5, 0),
                        AnchorPoint = Vector2.new(0.5, 0.5),
                        ThemeTag = {
                            ImageColor3 = "Text",
                        },
                    })
                })
            })
            k.UIElements.SliderContainer = e("Frame", {
                Size = UDim2.new(1, 0, 0, 0),
                AutomaticSize = "Y",
                Position = UDim2.new(0, 0, 0, 0),
                BackgroundTransparency = 1,
                Parent = k.SliderFrame.UIElements.Container,
            }, {
                e("UIListLayout", {
                    Padding = UDim.new(0, 8),
                    FillDirection = "Horizontal",
                    VerticalAlignment = "Center",
                }),
                k.UIElements.SliderIcon,
                e("TextBox", {
                    Size = UDim2.new(0, 60, 0, 0),
                    TextXAlignment = "Left",
                    Text = FormatValue(q),
                    ThemeTag = {
                        TextColor3 = "Text"
                    },
                    TextTransparency = .4,
                    AutomaticSize = "Y",
                    TextSize = 15,
                    FontFace = Font.new(b.Font, Enum.FontWeight.Medium),
                    BackgroundTransparency = 1,
                    LayoutOrder = - 1,
                })
            })
            function k.Lock(v)
                t = false
                return k.SliderFrame:Lock()
            end
            function k.Unlock(v)
                t = true
                return k.SliderFrame:Unlock()
            end
            if k.Locked then
                k:Lock()
            end
            function k.Set(v, w, x)
                if t then
                    if not k.IsFocusing and not h and (not x or (x.UserInputType == Enum.UserInputType.MouseButton1 or x.UserInputType == Enum.UserInputType.Touch)) then
                        w = math.clamp(w, k.Value.Min or 0, k.Value.Max or 100)
                        local y = math.clamp((w - (k.Value.Min or 0)) / ((k.Value.Max or 100) - (k.Value.Min or 0)), 0, 1)
                        w = CalculateValue(k.Value.Min + y * (k.Value.Max - k.Value.Min))
                        if w ~= r then
                            f(k.UIElements.SliderIcon.Frame, 0.08, {
                                Size = UDim2.new(y, 0, 1, 0)
                            }):Play()
                            k.UIElements.SliderContainer.TextBox.Text = FormatValue(w)
                            k.Value.Default = FormatValue(w)
                            r = w
                            b.SafeCallback(k.Callback, FormatValue(w))
                        end
                        if x then
                            n = (x.UserInputType == Enum.UserInputType.Touch)
                            k.SliderFrame.Parent.ScrollingEnabled = false
                            h = true
                            o = game:GetService"RunService".RenderStepped:Connect(function()
                                local z = n and x.Position.X or game:GetService"UserInputService":GetMouseLocation().X
                                local A = math.clamp((z - k.UIElements.SliderIcon.AbsolutePosition.X) / k.UIElements.SliderIcon.AbsoluteSize.X, 0, 1)
                                w = CalculateValue(k.Value.Min + A * (k.Value.Max - k.Value.Min))
                                if w ~= r then
                                    f(k.UIElements.SliderIcon.Frame, 0.08, {
                                        Size = UDim2.new(A, 0, 1, 0)
                                    }):Play()
                                    k.UIElements.SliderContainer.TextBox.Text = FormatValue(w)
                                    k.Value.Default = FormatValue(w)
                                    r = w
                                    b.SafeCallback(k.Callback, FormatValue(w))
                                end
                            end)
                            p = game:GetService"UserInputService".InputEnded:Connect(function(z)
                                if (z.UserInputType == Enum.UserInputType.MouseButton1 or z.UserInputType == Enum.UserInputType.Touch) and x == z then
                                    o:Disconnect()
                                    p:Disconnect()
                                    h = false
                                    k.SliderFrame.Parent.ScrollingEnabled = true
                                end
                            end)
                        end
                    end
                end
            end
            b.AddSignal(k.UIElements.SliderContainer.TextBox.FocusLost, function(v)
                if v then
                    local w = tonumber(k.UIElements.SliderContainer.TextBox.Text)
                    if w then
                        k:Set(w)
                    else
                        k.UIElements.SliderContainer.TextBox.Text = FormatValue(r)
                    end
                end
            end)
            b.AddSignal(k.UIElements.SliderContainer.InputBegan, function(v)
                k:Set(q, v)
            end)
            return k.__type, k
        end
        return g
    end
