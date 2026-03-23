local pad = script.Parent
local destination = workspace:WaitForChild("DestinationPad")
local canTeleport = true

local function teleport(otherPart)
    local character = otherPart.Parent
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

    -- Check if it's a player, and if the pad is ready to be used
    if humanoidRootPart and canTeleport then
        canTeleport = false -- Trigger debounce
        
        -- Move the player to the destination, adding 5 studs on the Y axis
        humanoidRootPart.CFrame = destination.CFrame + Vector3.new(0, 5, 0)
        
        -- Reset the teleporter after a short delay
        task.wait(1)
        canTeleport = true
    end
end

pad.Touched:Connect(teleport)