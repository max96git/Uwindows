local RunService = game:GetService("RunService")

local image = script.Parent

RunService.RenderStepped:Connect(function(dt)
	image.Rotation += 12.5
end)
