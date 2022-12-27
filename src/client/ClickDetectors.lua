local ClickDetectors = {game.Workspace.CookingSystem.Coffee["Coffee Cup Large"].Handle.ClickDetector}

for i,v in ClickDetectors do 
	v.Parent.TouchInterest:Destroy()
	v.MouseClick:Connect(function(Player)
		local New_Tool = v.Parent.Parent:Clone()
		New_Tool.Parent = Player.Backpack
	end)
end

