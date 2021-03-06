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

local Services = {}

Services.MarketplaceService = game:GetService('MarketplaceService')
Services.CollectionService = game:GetService('CollectionService')
Services.ReplicatedStorage = game:GetService('ReplicatedStorage')
Services.UserInputService = game:GetService('UserInputService')
Services.ReplicatedFirst = game:GetService('ReplicatedStorage')
Services.TweenService = game:GetService('TweenService')
Services.HttpService = game:GetService('HttpService')
Services.RunService = game:GetService('RunService')
Services.WorkSpace = game:GetService('Workspace')
Services.Lighting = game:GetService('Lighting')
Services.Players = game:GetService('Players')
Services.CoreGui = game:GetService('CoreGui')
Services.Debris = game:GetService('Debris')
Services.Player = Services.Players.LocalPlayer

return Services
