local Debris = game:GetService("Debris") --automatic disappear
game.ReplicatedStorage.Render.OnServerEvent:Connect(function(_, start, end,)
    --when calling the event start and end should be a Vector3 value such as position
    local bulletsize = 0.2 --should be less than 1
    local bullettime = 0.1 --ideally best to keep it below 0.5
		local distance = (start-end).magnitude
		local p = Instance.new("Part")
		p.Anchored = true
		p.CanCollide = false
		p.Size = Vector3.new(bulletsize, bulletsize, distance)
		p.CFrame = CFrame.new(start, end)*CFrame.new(0, 0, -(distance/2))
		p.BrickColor = BrickColor.new("Camo")
		p.Parent = workspace.Bullet
		p.Material = Enum.Material.Neon
		p.CastShadow = false
		Debris:AddItem(p, 0.1) --automatic deletion
end)
