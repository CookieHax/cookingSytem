-- This code defines a table called "ClickDetectors" that contains three objects:
-- the ClickDetector objects of three different coffee cups in the game.
local ClickDetectors = {game.Workspace.CookingSystem.Coffee["Coffee Cup Large"].Handle.ClickDetector,
game.Workspace.CookingSystem.Coffee["Coffee Cup Medium"].Handle.ClickDetector,
game.Workspace.CookingSystem.Coffee["Coffee Cup Small"].Handle.ClickDetector }

-- This loop iterates over each object in the "ClickDetectors" table.
-- "i" is the index of the object in the table and "v" is the object itself.
for i,v in ClickDetectors do
   -- This line destroys the "TouchInterest" object of the parent of the current object in the loop (a coffee cup).
   -- The "TouchInterest" object is a part that automatically gives the player the tool when they touch it, which is what we don't want. 
   v.Parent.TouchInterest:Destroy()

   -- This line connects a function to the "MouseClick" event of the current object in the loop (a ClickDetector).
   -- The function will be called whenever the ClickDetector is clicked (when the player left clicks on it).
   v.MouseClick:Connect(function(Player)
   -- This line creates a new copy of the parent of the current object in the loop (a coffee cup).
   local New_Tool = v.Parent.Parent:Clone()

   -- This loop iterates over each object in the children of the newly cloned coffee cup.
   -- "i" is the index of the object in the table and "v" is the object itself.
   for i,v in ipairs(New_Tool:GetChildren()) do
      -- This line sets the "Anchored" property of the current object in the loop to "false".
      -- This makes the object able to move and be affected by physics.
      v.Anchored = false
   end

   -- This line sets the parent of the cloned coffee cup to the player's backpack.
   -- This  makes the cloned cup a tool that the player can use.
   New_Tool.Parent = Player.Backpack
   end)
end
