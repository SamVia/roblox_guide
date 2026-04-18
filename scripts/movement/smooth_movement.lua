--To use this go to 
-- Explorer -> StarterPlayer -> StarterCharacterScripts   and add this file inside of it

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- == CHANGE THESE SETTINGS TO CHANGE HOW HE MOVES==
local MAX_SPEED = 16          -- The absolute top speed (Roblox default is 16)
local START_SPEED = 2         -- The speed they start at when they begin moving
local ACCELERATION = 50        -- How quickly they reach max speed (lower = slower)
local DECELERATION = 50       -- How quickly they slow down when they let go of the keys

local currentSpeed = START_SPEED

RunService.Heartbeat:Connect(function(deltaTime)
	-- Check if the player is holding down movement keys (W, A, S, D or Joystick)
	if humanoid.MoveDirection.Magnitude > 0 then
		-- Increase speed smoothly over time
		currentSpeed = currentSpeed + (ACCELERATION * deltaTime)
		
		-- Cap the speed so it doesn't go over MAX_SPEED
		if currentSpeed > MAX_SPEED then
			currentSpeed = MAX_SPEED
		end
	else
		-- Player stopped pressing keys, slow them down increasingly
		currentSpeed = currentSpeed - (DECELERATION * deltaTime)
		
		-- Don't let speed drop below the starting speed
		if currentSpeed < START_SPEED then
			currentSpeed = START_SPEED
		end
	end
	
	-- Apply the calculated speed to the character
	humanoid.WalkSpeed = currentSpeed
end)
