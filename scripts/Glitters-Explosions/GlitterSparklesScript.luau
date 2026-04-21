-- This script makes glitter sparkles appear when the GlitterPart is touched
-- Set the for cycle to just 1 to have just 1 sparkle.
-- The script also sounds an explosion sound
-- Put this script in ServerScriptService and make sure there is a part called GlitterPart in the workspace (or change in the code line below its name)

local glitterPart = workspace.GlitterPart
local Debris = game:GetService("Debris")

-- Create explosion sound inside the GlitterPart
local explosionSound = Instance.new("Sound")
explosionSound.Name = "ExplosionSound"
explosionSound.SoundId = "rbxassetid://142082166" -- Explosion sound
explosionSound.Volume = 2
explosionSound.Parent = glitterPart

local function createSparkles(position)
	for i = 1, 1 do
		local sparkle = Instance.new("Part")
		sparkle.Size = Vector3.new(1, 5, 1)
		sparkle.Color = Color3.new(1, 0, 0) -- Yellow color
		sparkle.Material = Enum.Material.Neon
		sparkle.Anchored = false
		sparkle.CanCollide = false
		sparkle.Position = position + Vector3.new(
			math.random(-0, 0),
			math.random(0, 0),
			math.random(-0, 0)
		)
		sparkle.Parent = workspace
		
		-- Add some random velocity for sparkle effect
		sparkle.AssemblyLinearVelocity = Vector3.new(
			math.random(-5, 5),
			math.random(1, 1),
			math.random(-5, 5)
		)
		
		-- Clean up after 2 seconds
		Debris:AddItem(sparkle, 2)
	end
end

local debounce = {}

local function onTouch(otherPart)
	local character = otherPart.Parent
	local humanoid = character and character:FindFirstChildOfClass("Humanoid")
	
	if humanoid and not debounce[character] then
		debounce[character] = true
		createSparkles(glitterPart.Position)
		
		-- Play the explosion sound
		explosionSound:Play()
		
		task.wait(0.5) -- Cooldown to prevent too many sparkles
		debounce[character] = nil
	end
end

-- Connect the touch event
if glitterPart then
	glitterPart.Touched:Connect(onTouch)
else
	warn("GlitterPart not found in workspace!")
end