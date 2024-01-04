local ReplicatedFirst = game:GetService("ReplicatedFirst")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local GUI = script:WaitForChild("01")
local plr = Players.LocalPlayer

GUI:Clone().Parent = plr.PlayerGui -- the fix

ReplicatedFirst:RemoveDefaultLoadingScreen()

if not game:IsLoaded() then 
	game.Loaded:Wait() 
end

local tween = TweenService:Create(GUI.Frame, TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
	Position = UDim2.new(0, 0, -1.5, 0)
})

tween:Play()
tween.Completed:Wait()

GUI:Destroy()
