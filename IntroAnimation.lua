local ScreenGui = Instance.new("ScreenGui")

local Instances = {
    ["TextButton_1"] = Instance.new("TextButton"),
    ["ImageLabel_1"] = Instance.new("ImageLabel"),
    ["ImageLabel_2"] = Instance.new("ImageLabel"),
    ["TextLabel_1"] = Instance.new("TextLabel"),
    ["UIStroke_1"] = Instance.new("UIStroke"),
    ["Frame_1"] = Instance.new("Frame"),
}

if syn then
    syn.protect_gui(ScreenGui)
end

ScreenGui.DisplayOrder = 2147483647
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Instances.Frame_1.Parent = ScreenGui
Instances.Frame_1.Active = true
Instances.Frame_1.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.Frame_1.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Instances.Frame_1.BackgroundTransparency = 0.10000000149012
Instances.Frame_1.BorderColor3 = Color3.new(0, 0, 0)
Instances.Frame_1.BorderSizePixel = 3
Instances.Frame_1.ClipsDescendants = true
Instances.Frame_1.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.Frame_1.Size = UDim2.new(0.30000001192093, 0, 0.30000001192093, 0)
Instances.Frame_1.SizeConstraint = Enum.SizeConstraint.RelativeYY

Instances.UIStroke_1.Parent = Instances.Frame_1
Instances.UIStroke_1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Instances.UIStroke_1.Color = Color3.new(0.313726, 0.313726, 0.313726)
Instances.UIStroke_1.LineJoinMode = Enum.LineJoinMode.Miter
Instances.UIStroke_1.Thickness = 2

Instances.TextButton_1.Parent = Instances.Frame_1
Instances.TextButton_1.Font = Enum.Font.SourceSans
Instances.TextButton_1.Text = ''
Instances.TextButton_1.TextColor3 = Color3.new(0, 0, 0)
Instances.TextButton_1.TextSize = 14
Instances.TextButton_1.TextTransparency = 1
Instances.TextButton_1.Active = false
Instances.TextButton_1.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.TextButton_1.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.TextButton_1.BackgroundTransparency = 1
Instances.TextButton_1.BorderColor3 = Color3.new(0, 0, 0)
Instances.TextButton_1.BorderSizePixel = 0
Instances.TextButton_1.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.TextButton_1.Size = UDim2.new(1, 0, 1, 0)

Instances.TextLabel_1.Parent = Instances.Frame_1
Instances.TextLabel_1.Font = Enum.Font.SourceSans
Instances.TextLabel_1.TextColor3 = Color3.new(0, 0, 0)
Instances.TextLabel_1.TextSize = 14
Instances.TextLabel_1.AnchorPoint = Vector2.new(0.5, 1)
Instances.TextLabel_1.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.TextLabel_1.BackgroundTransparency = 1
Instances.TextLabel_1.BorderColor3 = Color3.new(0, 0, 0)
Instances.TextLabel_1.BorderSizePixel = 0
Instances.TextLabel_1.Position = UDim2.new(0.5, 0, 1, 0)
Instances.TextLabel_1.Size = UDim2.new(1, 0, 0, 30)

Instances.ImageLabel_1.Parent = Instances.Frame_1
Instances.ImageLabel_1.Image = 'http://www.roblox.com/asset/?id=6924552858'
Instances.ImageLabel_1.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.ImageLabel_1.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.ImageLabel_1.BackgroundTransparency = 1
Instances.ImageLabel_1.BorderColor3 = Color3.new(0, 0, 0)
Instances.ImageLabel_1.BorderSizePixel = 0
Instances.ImageLabel_1.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.ImageLabel_1.Size = UDim2.new(0.80000001192093, 0, 0.80000001192093, 0)
Instances.ImageLabel_1.SizeConstraint = Enum.SizeConstraint.RelativeYY
Instances.ImageLabel_1.Name = 'ImageLabel2'

Instances.ImageLabel_2.Parent = Instances.Frame_1
Instances.ImageLabel_2.Image = 'http://www.roblox.com/asset/?id=6924553183'
Instances.ImageLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.ImageLabel_2.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.ImageLabel_2.BackgroundTransparency = 1
Instances.ImageLabel_2.BorderColor3 = Color3.new(0, 0, 0)
Instances.ImageLabel_2.BorderSizePixel = 0
Instances.ImageLabel_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Instances.ImageLabel_2.Size = UDim2.new(0.80000001192093, 0, 0.80000001192093, 0)
Instances.ImageLabel_2.SizeConstraint = Enum.SizeConstraint.RelativeYY
Instances.ImageLabel_2.Name = 'ImageLabel1'
