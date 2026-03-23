local prompt = script.Parent
local door = prompt.Parent
local isOpen = false

local function toggleDoor()
    if isOpen == false then
        -- Open the door (invisible and players can walk through)
        door.Transparency = 1
        door.CanCollide = false
        isOpen = true
    else
        -- Close the door (solid and visible)
        door.Transparency = 0
        door.CanCollide = true
        isOpen = false
    end
end

prompt.Triggered:Connect(toggleDoor)