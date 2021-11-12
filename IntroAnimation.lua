local Library = {}

Library.ScreenGui = Instance.new("ScreenGui")

Library.Instances = {
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

Library.ScreenGui.Parent = game:GetService("CoreGui")
Library.ScreenGui.DisplayOrder = 2147483647
Library.ScreenGui.ResetOnSpawn = false
Library.ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Library.Instances.Frame_1.Parent = ScreenGui
Library.Instances.Frame_1.Active = true
Library.Instances.Frame_1.AnchorPoint = Vector2.new(0.5, 0.5)
Library.Instances.Frame_1.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Library.Instances.Frame_1.BackgroundTransparency = 0.10000000149012
Library.Instances.Frame_1.BorderColor3 = Color3.new(0, 0, 0)
Library.Instances.Frame_1.BorderSizePixel = 3
Library.Instances.Frame_1.ClipsDescendants = true
Library.Instances.Frame_1.Position = UDim2.new(0.5, 0, 0.5, 0)
Library.Instances.Frame_1.Size = UDim2.new(0.30000001192093, 0, 0.30000001192093, 0)
Library.Instances.Frame_1.SizeConstraint = Enum.SizeConstraint.RelativeYY

Library.Instances.UIStroke_1.Parent = Library.Instances.Frame_1
Library.Instances.UIStroke_1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Library.Instances.UIStroke_1.Color = Color3.new(0.313726, 0.313726, 0.313726)
Library.Instances.UIStroke_1.LineJoinMode = Enum.LineJoinMode.Miter
Library.Instances.UIStroke_1.Thickness = 2

Library.Instances.TextButton_1.Parent = Library.Instances.Frame_1
Library.Instances.TextButton_1.Font = Enum.Font.SourceSans
Library.Instances.TextButton_1.Text = ''
Library.Instances.TextButton_1.TextColor3 = Color3.new(0, 0, 0)
Library.Instances.TextButton_1.TextSize = 14
Library.Instances.TextButton_1.TextTransparency = 1
Library.Instances.TextButton_1.Active = false
Library.Instances.TextButton_1.AnchorPoint = Vector2.new(0.5, 0.5)
Library.Instances.TextButton_1.BackgroundColor3 = Color3.new(0, 0, 0)
Library.Instances.TextButton_1.BackgroundTransparency = 1
Library.Instances.TextButton_1.BorderColor3 = Color3.new(0, 0, 0)
Library.Instances.TextButton_1.BorderSizePixel = 0
Library.Instances.TextButton_1.Position = UDim2.new(0.5, 0, 0.5, 0)
Library.Instances.TextButton_1.Size = UDim2.new(1, 0, 1, 0)

Library.Instances.TextLabel_1.Parent = Library.Instances.Frame_1
Library.Instances.TextLabel_1.Font = Enum.Font.SourceSans
Library.Instances.TextLabel_1.TextColor3 = Color3.new(0, 0, 0)
Library.Instances.TextLabel_1.TextSize = 14
Library.Instances.TextLabel_1.AnchorPoint = Vector2.new(0.5, 1)
Library.Instances.TextLabel_1.BackgroundColor3 = Color3.new(0, 0, 0)
Library.Instances.TextLabel_1.BackgroundTransparency = 1
Library.Instances.TextLabel_1.BorderColor3 = Color3.new(0, 0, 0)
Library.Instances.TextLabel_1.BorderSizePixel = 0
Library.Instances.TextLabel_1.Position = UDim2.new(0.5, 0, 1, 0)
Library.Instances.TextLabel_1.Size = UDim2.new(1, 0, 0, 30)

Library.Instances.ImageLabel_1.Parent = Library.Instances.Frame_1
Library.Instances.ImageLabel_1.Image = 'http://www.roblox.com/asset/?id=6924552858'
Library.Instances.ImageLabel_1.AnchorPoint = Vector2.new(0.5, 0.5)
Library.Instances.ImageLabel_1.BackgroundColor3 = Color3.new(0, 0, 0)
Library.Instances.ImageLabel_1.BackgroundTransparency = 1
Library.Instances.ImageLabel_1.BorderColor3 = Color3.new(0, 0, 0)
Library.Instances.ImageLabel_1.BorderSizePixel = 0
Library.Instances.ImageLabel_1.Position = UDim2.new(0.5, 0, 0.5, 0)
Library.Instances.ImageLabel_1.Size = UDim2.new(0.80000001192093, 0, 0.80000001192093, 0)
Library.Instances.ImageLabel_1.SizeConstraint = Enum.SizeConstraint.RelativeYY
Library.Instances.ImageLabel_1.Name = 'ImageLabel2'

Library.Instances.ImageLabel_2.Parent = Library.Instances.Frame_1
Library.Instances.ImageLabel_2.Image = 'http://www.roblox.com/asset/?id=6924553183'
Library.Instances.ImageLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
Library.Instances.ImageLabel_2.BackgroundColor3 = Color3.new(0, 0, 0)
Library.Instances.ImageLabel_2.BackgroundTransparency = 1
Library.Instances.ImageLabel_2.BorderColor3 = Color3.new(0, 0, 0)
Library.Instances.ImageLabel_2.BorderSizePixel = 0
Library.Instances.ImageLabel_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Library.Instances.ImageLabel_2.Size = UDim2.new(0.80000001192093, 0, 0.80000001192093, 0)
Library.Instances.ImageLabel_2.SizeConstraint = Enum.SizeConstraint.RelativeYY
Library.Instances.ImageLabel_2.Name = 'ImageLabel1'


return Library
