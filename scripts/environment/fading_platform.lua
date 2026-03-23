local platform = script.Parent
local isTouched = false

local function fade()
    if isTouched == false then
        isTouched = true
        for i = 0, 1, 0.05 do
            platform.Transparency = i
            task.wait(0.05)
        end
        platform.CanCollide = false
        task.wait(3)
        platform.CanCollide = true
        platform.Transparency = 0
        isTouched = false
    end
end

platform.Touched:Connect(fade)