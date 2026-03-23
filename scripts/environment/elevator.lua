--- Create a standard Part in the Workspace to act as your elevator platform.

--- Click the ⊕ icon on the part and add an Attachment inside the part's mesh, renaming it to MoveAttachment.

--- Click the ⊕ icon on the part again and add a LinearVelocity constraint.

--- In the LinearVelocity properties, assign Attachment0 to the MoveAttachment you just created.

--- Set the LineDirection property to 0, 1, 0 so the movement is restricted strictly to the vertical Y-axis.

--- Set MaxForce to a very high number (e.g., 50000 Rowtons) so the elevator has enough physical force to overcome gravity and friction when carrying multiple players.

--- Click the ⊕ icon on the part, add a Script, and paste the code below.

local platform = script.Parent
local linearVelocity = platform:WaitForChild("LinearVelocity")

-- Configure elevator settings
local SPEED = 15 -- Speed is measured in studs per second
local TRAVEL_TIME = 4 -- How many seconds it takes to reach the next floor
local PAUSE_TIME = 3 -- How long the elevator waits for players to board

local function runElevator()
    while true do
        -- Move Up
        linearVelocity.LineVelocity = SPEED
        task.wait(TRAVEL_TIME)
        
        -- Stop at the Top
        linearVelocity.LineVelocity = 0
        task.wait(PAUSE_TIME)
        
        -- Move Down (Negative velocity reverses the direction)
        linearVelocity.LineVelocity = -SPEED
        task.wait(TRAVEL_TIME)
        
        -- Stop at the Bottom
        linearVelocity.LineVelocity = 0
        task.wait(PAUSE_TIME)
    end
end

-- Start the elevator loop
runElevator()