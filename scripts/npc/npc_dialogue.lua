-- Insert an NPC model into the Workspace.

-- Find the NPC's Head part in the Explorer. Click the ⊕ icon and add a Dialog object. (Set its InitialPrompt property to something like: "Hello traveler! Need a potion?").

-- Click the ⊕ icon on the Dialog object and add a DialogChoice. (Set its UserDialog to "Yes, please!" and ResponseDialog to "Here you go!").

-- Click the ⊕ icon on the Dialog object (not the choice) and add a standard Script. Paste the code below.

local dialog = script.Parent

-- This function runs whenever a player selects a dialog choice
local function onChoiceSelected(player, choice)
    -- Check if the player picked a specific DialogChoice
    if choice.Name == "DialogChoice" then
        print(player.Name .. " agreed to the dialogue!")
        
        -- Example: Heal the player as a reward
        local character = player.Character
        if character then
            local humanoid = character:FindFirstChild("Humanoid")
            if humanoid then
                humanoid.Health = humanoid.MaxHealth
                print("Player fully healed!")
            end
        end
    end
end

-- Connect the built-in event to our function
dialog.DialogChoiceSelected:Connect(onChoiceSelected)