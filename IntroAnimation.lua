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

local ScreenGui = Instance.new("ScreenGui")

local Instances = {
    ["Button"] = Instance.new("TextButton"),
    ["TopSide"] = Instance.new("ImageLabel"),
    ["BotSide"] = Instance.new("ImageLabel"),
    ["Text"] = Instance.new("TextLabel"),
    ["Stroke"] = Instance.new("UIStroke"),
    ["Frame"] = Instance.new("Frame"),
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
Instances.Frame.BackgroundColor3 = Color3.new(30, 30, 30)
Instances.Frame.BackgroundTransparency = 0.1
Instances.Frame.BorderColor3 = Color3.new(0, 0, 0)
Instances.Frame.BorderSizePixel = 3
Instances.Frame.ClipsDescendants = true
Instances.Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.Frame.Size = UDim2.new(0, 0, 0, 0)
Instances.Frame.SizeConstraint = Enum.SizeConstraint.RelativeYY
Instances.Frame.ZIndex = 10

Instances.Text.Parent = Instances.Frame
Instances.Text.Font = Enum.Font.SourceSans
Instances.Text.TextColor3 = Color3.new(0, 0, 0)
Instances.Text.TextSize = 14
Instances.Text.AnchorPoint = Vector2.new(0.5, 1)
Instances.Text.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.Text.BorderColor3 = Color3.new(0, 0, 0)
Instances.Text.BorderSizePixel = 0
Instances.Text.Position = UDim2.new(0.5, 0, 1, 0)
Instances.Text.Size = UDim2.new(1, 0, 0, 30)
Instances.Text.BackgroundTransparency = 1
Instances.Text.TextStrokeTransparency = 1
Instances.Text.ZIndex = 20

Instances.TopSide.Parent = Instances.Frame
Instances.TopSide.Image = getsynasset('Assets/SKULL_TOP_V2.png')
Instances.TopSide.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.TopSide.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.TopSide.BackgroundTransparency = 1
Instances.TopSide.BorderColor3 = Color3.new(0, 0, 0)
Instances.TopSide.BorderSizePixel = 0
Instances.TopSide.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.TopSide.Size = UDim2.new(0.8, 0, 0.8, 0)
Instances.TopSide.SizeConstraint = Enum.SizeConstraint.RelativeYY
Instances.TopSide.Name = 'ImageLabel2'
Instances.TopSide.ZIndex = 30

Instances.BotSide.Parent = Instances.Frame
Instances.BotSide.Image = getsynasset('Assets/SKULL_BOT_V2.png')
Instances.BotSide.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.BotSide.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.BotSide.BackgroundTransparency = 1
Instances.BotSide.BorderColor3 = Color3.new(0, 0, 0)
Instances.BotSide.BorderSizePixel = 0
Instances.BotSide.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.BotSide.Size = UDim2.new(0.8, 0, 0.8, 0)
Instances.BotSide.SizeConstraint = Enum.SizeConstraint.RelativeYY
Instances.BotSide.Name = 'ImageLabel1'
Instances.BotSide.ZIndex = 30

Instances.Button.Parent = Instances.Frame
Instances.Button.Font = Enum.Font.SourceSans
Instances.Button.Text = ''
Instances.Button.TextColor3 = Color3.new(0, 0, 0)
Instances.Button.TextSize = 14
Instances.Button.TextTransparency = 1
Instances.Button.Active = false
Instances.Button.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.Button.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.Button.BackgroundTransparency = 1
Instances.Button.BorderColor3 = Color3.new(0, 0, 0)
Instances.Button.BorderSizePixel = 0
Instances.Button.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.Button.Size = UDim2.new(1, 0, 1, 0)
Instances.Button.ZIndex = 50

Instances.Stroke.Parent = Instances.Frame
Instances.Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Instances.Stroke.Color = Color3.new(0, 0, 0)
Instances.Stroke.LineJoinMode = Enum.LineJoinMode.Miter
Instances.Stroke.Thickness = 2

spawn(function()
    wait(1)
    Create_Tween(Frame, {BackgroundTransparency = 0}, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.5, false)
    Create_Tween(Frame, {Size = UDim2.new(0, 0, 0, 100)}, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.5, true)
end)
