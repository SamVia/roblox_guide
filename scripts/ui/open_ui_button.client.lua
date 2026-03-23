-- In StarterGui, add a ScreenGui.

-- Inside the ScreenGui, add a TextButton (name it OpenMenuButton).

-- Inside the same ScreenGui, add a Frame (this is your actual menu window). Make it large and place it in the center of the screen.

-- In the Frame's properties, uncheck the Visible box so it hides by default.

-- Click the ⊕ icon on the OpenMenuButton, add a LocalScript, and paste the code below:

local button = script.Parent
-- Go up to the ScreenGui, then find the Frame we created
local screenGui = button.Parent
local menuFrame = screenGui:WaitForChild("Frame")

local function toggleMenu()
    -- Check if the menu is currently visible
    if menuFrame.Visible == true then
        -- If it is open, close it
        menuFrame.Visible = false
        button.Text = "Open Menu"
    else
        -- If it is closed, open it
        menuFrame.Visible = true
        button.Text = "Close Menu"
    end
end

button.MouseButton1Click:Connect(toggleMenu)