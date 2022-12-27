local CookingSystem = game.Workspace:WaitForChild("CookingSystem")
local CoffeeMachine = CookingSystem.Coffee.CoffeeMachine
local ProxPrompt = CoffeeMachine.Part.ProximityPrompt

ProxPrompt.Triggered:Connect(function(player)
	local equippedTool = player.Character.Humanoid.EquippedTool
    if equippedTool.Name == "Coffee Cup Small" then 
        equippedTool.Name = "Espresso"
    end
end)