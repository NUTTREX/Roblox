local Player = game:GetService("Players").LocalPlayer
local Input = Player:GetMouse()

local function Create_Tween(Object, Goal, Direction, Style, Time, WaitForTween)
    Style = Style or {}
    local Tween = game:GetService("TweenService"):Create(Object, TweenInfo.new(Time, Style, Direction), Goal)
    Tween:Play()
    if WaitForTween then
        Tween.Completed:wait()
    end
end

local function Create_Sound(Object, Volume, WaitForSound)
    local Sound = Instance.new("Sound")
    Sound.Parent = game:GetService("Workspace")
    Sound.Volume = Volume or 1
    Sound.SoundId = getsynasset(Object)
    Sound:Play()
	if WaitForSound then
		Sound.Ended:Wait()
	end
end

local function IsHoveringOverObject(Object)
    local TX = Object.AbsolutePosition.X
    local TY = Object.AbsolutePosition.Y
    local BX = TX + Object.AbsoluteSize.X
    local BY = TY + Object.AbsoluteSize.Y
    if Input.X >= TX and Input.Y >= TY and Input.X <= BX and Input.Y <= BY then
        return true
    end
end

if not isfile("Assets") then
    makefolder("Assets")
end

if not isfile('Assets/SKULL_LAUGH.ogg') then
    writefile('Assets/SKULL_LAUGH.ogg', game:HttpGet('https://freesound.org/data/previews/574/574887_12983016-lq.ogg'))
end

if not isfile('Assets/SKULL_OUT.ogg') then
    writefile('Assets/SKULL_OUT.ogg', game:HttpGet('https://freesound.org/data/previews/575/575485_12983016-lq.ogg'))
end

if not isfile('Assets/SKULL_IN.ogg') then
    writefile('Assets/SKULL_IN.ogg', game:HttpGet('https://freesound.org/data/previews/575/575486_12983016-lq.ogg'))
end

if not isfile('Assets/SKULL_TOP_V2.png') then
    writefile('Assets/SKULL_TOP_V2.png', game:HttpGet('https://i.imgur.com/FjJdME6.png'))
end

if not isfile('Assets/SKULL_BOT_V2.png') then
    writefile('Assets/SKULL_BOT_V2.png', game:HttpGet('https://i.imgur.com/vfu8xXJ.png'))
end

local ScreenGui = Instance.new("ScreenGui")

local Instances = {
    ["Button"] = Instance.new("TextButton"),
    ["TopSide"] = Instance.new("ImageLabel"),
    ["BotSide"] = Instance.new("ImageLabel"),
    ["Text"] = Instance.new("TextLabel"),
    ["Stroke"] = Instance.new("UIStroke"),
    ["Frame"] = Instance.new("Frame"),
    ["BlueTop"] = Instance.new("ImageLabel"),
    ["BlueBot"] = Instance.new("ImageLabel"),
    ["RedTop"] = Instance.new("ImageLabel"),
    ["RedBot"] = Instance.new("ImageLabel"),
}

if syn then
    syn.protect_gui(ScreenGui)
end

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.DisplayOrder = 2147483647
ScreenGui.ResetOnSpawn = false

Instances.Frame.Parent = ScreenGui
Instances.Frame.Active = true
Instances.Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Instances.Frame.BackgroundTransparency = 1
Instances.Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.Frame.BorderSizePixel = 3
Instances.Frame.ClipsDescendants = true
Instances.Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.Frame.Size = UDim2.new(0, 0, 0, 0)
Instances.Frame.SizeConstraint = Enum.SizeConstraint.RelativeYY
Instances.Frame.ZIndex = 10

Instances.RedTop.Parent = Instances.Frame
Instances.RedTop.Image = getsynasset('Assets/SKULL_TOP_V2.png')
Instances.RedTop.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.RedTop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instances.RedTop.BackgroundTransparency = 1
Instances.RedTop.ImageTransparency = 0
Instances.RedTop.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.RedTop.BorderSizePixel = 0
Instances.RedTop.ImageColor3 = Color3.fromRGB(255, 0, 0)
Instances.RedTop.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.RedTop.Size = UDim2.new(0, 0, 0, 0)
Instances.RedTop.SizeConstraint = Enum.SizeConstraint.RelativeYY
Instances.RedTop.Name = 'ImageLabel1'
Instances.RedTop.ZIndex = 20

Instances.RedBot.Parent = Instances.Frame
Instances.RedBot.ImageColor3 = Color3.fromRGB(255, 0, 0)
Instances.RedBot.Image = getsynasset('Assets/SKULL_BOT_V2.png')
Instances.RedBot.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.RedBot.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instances.RedBot.BackgroundTransparency = 1
Instances.RedBot.ImageTransparency = 0
Instances.RedBot.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.RedBot.BorderSizePixel = 0
Instances.RedBot.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.RedBot.Size = UDim2.new(0, 0, 0, 0)
Instances.RedBot.SizeConstraint = Enum.SizeConstraint.RelativeYY
Instances.RedBot.Name = 'ImageLabel1'
Instances.RedBot.ZIndex = 20

Instances.BlueTop.Parent = Instances.Frame
Instances.BlueTop.Image = getsynasset('Assets/SKULL_TOP_V2.png')
Instances.BlueTop.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.BlueTop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instances.BlueTop.BackgroundTransparency = 1
Instances.BlueTop.ImageTransparency = 0
Instances.BlueTop.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.BlueTop.BorderSizePixel = 0
Instances.BlueTop.ImageColor3 = Color3.fromRGB(0, 255, 255)
Instances.BlueTop.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.BlueTop.Size = UDim2.new(0, 0, 0, 0)
Instances.BlueTop.SizeConstraint = Enum.SizeConstraint.RelativeYY
Instances.BlueTop.Name = 'ImageLabel1'
Instances.BlueTop.ZIndex = 20

Instances.BlueBot.Parent = Instances.Frame
Instances.BlueBot.ImageColor3 = Color3.fromRGB(0, 255, 255)
Instances.BlueBot.Image = getsynasset('Assets/SKULL_BOT_V2.png')
Instances.BlueBot.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.BlueBot.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instances.BlueBot.BackgroundTransparency = 1
Instances.BlueBot.ImageTransparency = 0
Instances.BlueBot.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.BlueBot.BorderSizePixel = 0
Instances.BlueBot.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.BlueBot.Size = UDim2.new(0, 0, 0, 0)
Instances.BlueBot.SizeConstraint = Enum.SizeConstraint.RelativeYY
Instances.BlueBot.Name = 'ImageLabel1'
Instances.BlueBot.ZIndex = 20

Instances.Text.Parent = Instances.Frame
Instances.Text.Text = "Welcome, "..tostring(game:GetService("Players").LocalPlayer.Name)
Instances.Text.Font = Enum.Font.SourceSansLight
Instances.Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Instances.Text.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
Instances.Text.TextSize = 14
Instances.Text.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.Text.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instances.Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.Text.BorderSizePixel = 0
Instances.Text.Position = UDim2.new(0.5, 0, 1, 0)
Instances.Text.Size = UDim2.new(1, 0, 0, 30)
Instances.Text.BackgroundTransparency = 1
Instances.Text.TextTransparency = 1
Instances.Text.TextStrokeTransparency = 1
Instances.Text.ZIndex = 20
Instances.Text.TextWrapped = true
Instances.Text.TextScaled = true

Instances.TopSide.Parent = Instances.Frame
Instances.TopSide.Image = getsynasset('Assets/SKULL_TOP_V2.png')
Instances.TopSide.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.TopSide.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instances.TopSide.BackgroundTransparency = 1
Instances.TopSide.ImageTransparency = 0
Instances.TopSide.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.TopSide.BorderSizePixel = 0
Instances.TopSide.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.TopSide.Size = UDim2.new(0, 0, 0, 0)
Instances.TopSide.SizeConstraint = Enum.SizeConstraint.RelativeYY
Instances.TopSide.Name = 'ImageLabel2'
Instances.TopSide.ZIndex = 30

Instances.BotSide.Parent = Instances.Frame
Instances.BotSide.Image = getsynasset('Assets/SKULL_BOT_V2.png')
Instances.BotSide.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.BotSide.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instances.BotSide.BackgroundTransparency = 1
Instances.BotSide.ImageTransparency = 0
Instances.BotSide.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.BotSide.BorderSizePixel = 0
Instances.BotSide.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.BotSide.Size = UDim2.new(0, 0, 0, 0)
Instances.BotSide.SizeConstraint = Enum.SizeConstraint.RelativeYY
Instances.BotSide.Name = 'ImageLabel1'
Instances.BotSide.ZIndex = 30

Instances.Button.Parent = Instances.Frame
Instances.Button.Font = Enum.Font.SourceSans
Instances.Button.Text = ''
Instances.Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Instances.Button.TextSize = 14
Instances.Button.TextTransparency = 1
Instances.Button.Active = false
Instances.Button.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instances.Button.BackgroundTransparency = 1
Instances.Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Instances.Button.BorderSizePixel = 0
Instances.Button.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.Button.Size = UDim2.new(1, 0, 1, 0)
Instances.Button.ZIndex = 50

Instances.Stroke.Parent = Instances.Frame
Instances.Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Instances.Stroke.Color = Color3.fromRGB(80, 80, 80)
Instances.Stroke.LineJoinMode = Enum.LineJoinMode.Miter
Instances.Stroke.Thickness = 2
Instances.Stroke.Transparency = 1

task.wait(1)
Create_Tween(Instances.Frame, {BackgroundTransparency = 0}, Enum.EasingDirection.In, Enum.EasingStyle.Quad, 1, false)
Create_Tween(Instances.Stroke, {Transparency = 0.0}, Enum.EasingDirection.In, Enum.EasingStyle.Quad, 1, false)
Create_Tween(Instances.Frame, {Size = UDim2.new(0, 0, 0, 100)}, Enum.EasingDirection.In, Enum.EasingStyle.Quad  , 0.3, true)
task.wait(0.3)
Create_Tween(Instances.Frame, {Size = UDim2.new(0, 300, 0, 100)}, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)
Create_Tween(Instances.Text, {Position = UDim2.new(0.5, 0, 0.5, 0)}, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, false)
Create_Tween(Instances.Text, {TextStrokeTransparency = 0}, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.5, false)
Create_Tween(Instances.Text, {TextTransparency = 0}, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.5, true)
task.wait(1)
Create_Tween(Instances.Text, {TextStrokeTransparency = 1}, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.5, false)
Create_Tween(Instances.Text, {TextTransparency = 1}, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.5, true)
Instances.Text.Text = "UI | NUTREX"
Create_Tween(Instances.Text, {TextStrokeTransparency = 0}, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.5, false)
Create_Tween(Instances.Text, {TextTransparency = 0}, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.5, true)
task.wait(1)
Create_Tween(Instances.Text, {TextStrokeTransparency = 1}, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.5, false)
Create_Tween(Instances.Text, {TextTransparency = 1}, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.5, false)
Create_Tween(Instances.Text, {Position = UDim2.new(0.5, 0, 1, 0)}, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)
Create_Tween(Instances.Frame, {Size = UDim2.new(0, 300, 0, 300)}, Enum.EasingDirection.Out, Enum.EasingStyle.Quad , 0.3, true)

Instances.BotSide.Size = UDim2.new(0.8, 0, 0.8, 0) -- This is because of synapse x getsynasset being a buggy mess :-)
Instances.BotSide.Position = UDim2.new(0.5, 0, 1.5, 0)
Instances.BotSide.ImageTransparency = 1

Instances.TopSide.Size = UDim2.new(0.8, 0, 0.8, 0)
Instances.TopSide.Position = UDim2.new(0.5, 0, -1, 0)
Instances.TopSide.ImageTransparency = 1

Instances.BlueTop.Size = UDim2.new(0.8, 0, 0.8, 0) -- This is because of synapse x getsynasset being a buggy mess :-)
Instances.BlueTop.Position = UDim2.new(0.5, 0, -1, 0)
Instances.BlueTop.ImageTransparency = 1

Instances.BlueBot.Size = UDim2.new(0.8, 0, 0.8, 0) -- This is because of synapse x getsynasset being a buggy mess :-)
Instances.BlueBot.Position = UDim2.new(0.5, 0, 1.5, 0)
Instances.BlueBot.ImageTransparency = 1

Instances.RedTop.Size = UDim2.new(0.8, 0, 0.8, 0) -- This is because of synapse x getsynasset being a buggy mess :-)
Instances.RedTop.Position = UDim2.new(0.5, 0, -1, 0)
Instances.RedTop.ImageTransparency = 1

Instances.RedBot.Size = UDim2.new(0.8, 0, 0.8, 0) -- This is because of synapse x getsynasset being a buggy mess :-)
Instances.RedBot.Position = UDim2.new(0.5, 0, 1.5, 0)
Instances.RedBot.ImageTransparency = 1

Create_Sound('Assets/SKULL_IN.ogg', 1, false)
Create_Tween(Instances.BotSide, {ImageTransparency = 0}, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.8, false)
Create_Tween(Instances.TopSide, {ImageTransparency = 0}, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.8, false)

Instances.BlueBot.ImageTransparency = 0
Instances.BlueTop.ImageTransparency = 0
Instances.RedBot.ImageTransparency = 0
Instances.RedTop.ImageTransparency = 0

Create_Tween(Instances.TopSide, {Position = UDim2.new(0.5, 0, 0.5, 0)}, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.8, false)
Create_Tween(Instances.BotSide, {Position = UDim2.new(0.5, 0, 0.5, 0)}, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.8, false)
task.wait(1)
for _=1, 15 do
    Create_Tween(Instances.BlueTop, {Position = UDim2.new(0.5, math.random(-20, 10), 0.5, math.random(-20, 10))}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, false)
    Create_Tween(Instances.BlueBot, {Position = UDim2.new(0.5, math.random(-20, 10), 0.5, math.random(-20, 10))}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, false)

    Create_Tween(Instances.RedTop, {Position = UDim2.new(0.5, math.random(-10, 20), 0.5, math.random(-10, 20))}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, false)
    Create_Tween(Instances.RedBot, {Position = UDim2.new(0.5, math.random(-10, 20), 0.5, math.random(-10, 20))}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, false)

    Create_Tween(Instances.TopSide, {Position = UDim2.new(0.5, math.random(-20, 20), 0.5,  math.random(-20, 20))}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, false)
    Create_Tween(Instances.BotSide, {Position = UDim2.new(0.5, math.random(-20, 20), 0.5,  math.random(-20, 20))}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, true)

    Create_Tween(Instances.TopSide, {Position = UDim2.new(0.5, 0, 0.5, 0)}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, false)
    Create_Tween(Instances.BlueTop, {Position = UDim2.new(0.5, 0, 0.5, 0)}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, false)
    Create_Tween(Instances.RedBot, {Position = UDim2.new(0.5, 0, 0.5, 0)}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, false)
    Create_Tween(Instances.RedTop, {Position = UDim2.new(0.5, 0, 0.5, 0)}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, false)
    Create_Tween(Instances.BlueBot, {Position = UDim2.new(0.5, 0, 0.5, 0)}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, false)
    Create_Tween(Instances.BotSide, {Position = UDim2.new(0.5, 0, 0.5, 0)}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, true)

    Create_Tween(Instances.BlueTop, {Position = UDim2.new(0.5, math.random(-20, 10), 0.5, math.random(-20, 10))}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, false)
    Create_Tween(Instances.BlueBot, {Position = UDim2.new(0.5, math.random(-20, 10), 0.5, math.random(-20, 10))}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, false)

    Create_Tween(Instances.RedTop, {Position = UDim2.new(0.5, math.random(-10, 20), 0.5, math.random(-10, 20))}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, false)
    Create_Tween(Instances.RedBot, {Position = UDim2.new(0.5, math.random(-10, 20), 0.5, math.random(-10, 20))}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, false)

    Create_Tween(Instances.TopSide, {Position = UDim2.new(0.5, math.random(-20, 20), 0.5,  math.random(-20, 20))}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, false)
    Create_Tween(Instances.BotSide, {Position = UDim2.new(0.5, math.random(-20, 20), 0.5,  math.random(-20, 20))}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, true)

    Create_Tween(Instances.TopSide, {Position = UDim2.new(0.5, 0, 0.5, 0)}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, false)
    Create_Tween(Instances.BlueBot, {Position = UDim2.new(0.5, 0, 0.5, 0)}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, false)
    Create_Tween(Instances.RedBot, {Position = UDim2.new(0.5, 0, 0.5, 0)}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, false)
    Create_Tween(Instances.RedTop, {Position = UDim2.new(0.5, 0, 0.5, 0)}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, false)
    Create_Tween(Instances.BlueTop, {Position = UDim2.new(0.5, 0, 0.5, 0)}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, false)
    Create_Tween(Instances.BotSide, {Position = UDim2.new(0.5, 0, 0.5, 0)}, Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.01, true)

end

spawn(function()
Instances.BlueBot.ImageTransparency = 1
Instances.BlueTop.ImageTransparency = 1
Instances.RedBot.ImageTransparency = 1
Instances.RedTop.ImageTransparency = 1
end)

if IsHoveringOverObject(Instances.Button) then -- Checks For If the mouse is hovering before object renders
    Create_Tween(Instances.Frame, {BorderColor3 = Color3.fromRGB(0, 150, 255)}, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.15, false)
end

Instances.Button.MouseEnter:Connect(function()
    Create_Tween(Instances.Frame, {BorderColor3 = Color3.fromRGB(0, 150, 255)}, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.15, false)
end)

Instances.Button.MouseLeave:Connect(function()
    Create_Tween(Instances.Frame, {BorderColor3 = Color3.fromRGB(0, 0, 0)}, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.15, false)
end)
local IsLoaded = false
Instances.Button.MouseButton1Click:Connect(function()
    if not IsLoaded then
        IsLoaded = true
        Create_Sound('Assets/SKULL_LAUGH.ogg', 1)
        for _= 1, 10 do
            Create_Tween(Instances.BotSide, {Position = UDim2.new(0.5, 0, 0.55, 0)}, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1741, true)
            Create_Tween(Instances.BotSide, {Position = UDim2.new(0.5, 0, 0.5, 0)}, Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.1741, true)
        end
        task.wait(0.478)
        Instances.Frame.ClipsDescendants = false
        Create_Sound('Assets/SKULL_OUT.ogg', 1)
        Create_Tween(Instances.BotSide, {Size = UDim2.new(1, -150, 1, -150)}, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.2, false)
		Create_Tween(Instances.TopSide, {Size = UDim2.new(1, -150, 1, -150)}, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.2, true) -- BACK
        Create_Tween(Instances.Stroke, {Transparency = 1}, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.2, false)
		Create_Tween(Instances.BotSide, {Size = UDim2.new(1000, 0, 1000, 0)}, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.2, false)
		Create_Tween(Instances.TopSide, {Size = UDim2.new(1000, 0, 1000, 0)}, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.2, false) -- FRONT
		Create_Tween(Instances.BotSide, {ImageTransparency = 1}, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.2, false)
		Create_Tween(Instances.TopSide, {ImageTransparency = 1}, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.2, false)
        Create_Tween(Instances.Frame, {Size = UDim2.new(0, 0, 0, 0)}, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1, false)
		Create_Tween(Instances.Frame, {BackgroundTransparency = 1}, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1, false)
        task.wait(1)
        Instances.Frame.Visible = false
    end
end)

task.wait(8)
ScreenGui:Destroy()
