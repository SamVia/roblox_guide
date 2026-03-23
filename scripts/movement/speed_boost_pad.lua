local speedPad = script.Parent
local isActive = true

local function boostSpeed(otherPart)
    local character = otherPart.Parent
    local humanoid = character:FindFirstChild("Humanoid")

    if humanoid and isActive then
        isActive = false
        humanoid.WalkSpeed = 32 
        
        task.wait(5)
        
        humanoid.WalkSpeed = 16 
        isActive = true
    end
end

speedPad.Touched:Connect(boostSpeed)