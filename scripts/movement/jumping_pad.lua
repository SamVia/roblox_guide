local jump = script.Parent

local function jump_pad(otherPart)
    local hrp = otherPart.Parent:FindFirstChild('HumanoidRootPart')
    local bodyVel = hrp:FindFirstChildWhichIsA('BodyVelocity')
    if hrp and not bodyVel then
        local newVel = Instance.new('BodyVelocity')
        newVel.Velocity = Vector3.new(0,100,0)
        newVel.MaxForce = Vector3.new(10000,10000,10000)
        newVel.P = 5000
        newVel.Parent = hrp
        wait(1)
        newVel:Destroy()
    end
end

jump.Touched:Connect(jump_pad)