--[[
             /$$   /$$ /$$   /$$ /$$$$$$$$ /$$$$$$$  /$$$$$$$$ /$$   /$$
            | $$$ | $$| $$  | $$|__  $$__/| $$__  $$| $$_____/| $$  / $$
            | $$$$| $$| $$  | $$   | $$   | $$  \ $$| $$      |  $$/ $$/
            | $$ $$ $$| $$  | $$   | $$   | $$$$$$$/| $$$$$    \  $$$$/ 
            | $$  $$$$| $$  | $$   | $$   | $$__  $$| $$__/     >$$  $$ 
            | $$\  $$$| $$  | $$   | $$   | $$  \ $$| $$       /$$/\  $$
            | $$ \  $$|  $$$$$$/   | $$   | $$  | $$| $$$$$$$$| $$  \ $$
            |__/  \__/ \______/    |__/   |__/  |__/|________/|__/  |__/
--]]

local Services = loadstring(game:HttpGet('https://raw.githubusercontent.com/NUTTREX/Roblox/main/Services.lua'))()

local Functions = {}

Functions.Generate_String = function(Number)
    local String
    for Index = 0, Number, 1 do
        String = String..tostring(utf8.char(math.random(63744, 64109)))
    end
    return String
end

Functions.Create_Tween = function(Object, Goal, Direction, Style, Time, WaitForTween)
    Style = Style or {}
    local Tween = Services.TweenService:Create(Object, TweenInfo.new(Time, Style, Direction), Goal)
    Tween:Play()
    if WaitForTween then
        Tween.Completed:wait()
    end
end

Functions.Create_Sound = function(Object, Volume, WaitForSound)
    local Sound = Instance.new("Sound")
    Sound.Parent = Services.CoreGui
    Sound.Volume = Volume or 1
    Sound.SoundId = getsynasset(Object)
    Sound:Play()

	if WaitForSound then
		Sound.Ended:Wait()
        Services.Debris:AddItem(Sound, 1)
	end
    task.spawn(function()
        Sound.Ended:Wait()
        Services.Debris:AddItem(Sound, 1)
    end)
end

return Functions
