-- A LocalScript inside a tool that toggles a SpotLight when activated by the player.
local tool = script.Parent
local handle = tool:WaitForChild("Handle")
local light = handle:WaitForChild("SpotLight")

local isLightOn = true

local function toggleLight()
    if isLightOn then
        light.Enabled = false
        isLightOn = false
    else
        light.Enabled = true
        isLightOn = true
    end
end

-- The .Activated event triggers when the player clicks while holding the tool
tool.Activated:Connect(toggleLight)