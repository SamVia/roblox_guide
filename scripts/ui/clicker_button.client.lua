local button = script.Parent
local clickCount = 0

-- Set the starting text
button.Text = "Clicks: 0"

local function onButtonClicked()
    clickCount = clickCount + 1
    button.Text = "Clicks: " .. clickCount
end

button.MouseButton1Click:Connect(onButtonClicked)