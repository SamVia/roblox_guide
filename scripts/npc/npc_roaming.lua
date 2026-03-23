-- 1. Place your rigged NPC or animal model in the Workspace.

-- 2. Create two standard Parts in the Workspace to act as your targets. Name one WaypointA and the other WaypointB.

-- 3. Anchor both waypoints and set their Transparency to 1 so they are invisible to players.

-- 4. Hover over your NPC model in the Explorer, click the ⊕ icon, and add a Script.

local npc = script.Parent
local humanoid = npc:WaitForChild("Humanoid")

-- Locate the invisible waypoint parts in the Workspace
local waypointA = workspace:WaitForChild("WaypointA")
local waypointB = workspace:WaitForChild("WaypointB")

local function patrol()
    while true do
        -- Command the NPC to walk to the first waypoint
        humanoid:MoveTo(waypointA.Position)
        
        -- Yield the script until the NPC actually reaches the destination
        humanoid.MoveToFinished:Wait() 
        
        -- Pause for a moment before moving again
        task.wait(2) 
        
        -- Command the NPC to walk to the second waypoint
        humanoid:MoveTo(waypointB.Position)
        humanoid.MoveToFinished:Wait()
        
        task.wait(2)
    end
end

-- Start the endless patrol loop
patrol()