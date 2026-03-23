-- Create a Tool (like a sword or a magic wand) and place it inside ServerStorage (not StarterPack). Name it exactly MagicWand.

-- Create a Part in the Workspace to act as the vendor's shop counter.

-- Add a ProximityPrompt to the Part and change its ActionText to "Buy Wand (10 Coins)".

-- Add a Script to the ProximityPrompt and paste the code below.

local prompt = script.Parent
local ServerStorage = game:GetService("ServerStorage")

-- Configure the shop
local ITEM_NAME = "MagicWand"
local ITEM_COST = 10

local function buyItem(player)
    -- 1. Find the player's leaderstats and coins
    local leaderstats = player:FindFirstChild("leaderstats")
    if leaderstats then
        local coins = leaderstats:FindFirstChild("Coins")
        
        if coins then
            -- 2. Check if the player has enough money
            if coins.Value >= ITEM_COST then
                
                -- 3. Check if the item actually exists in ServerStorage
                local itemToGive = ServerStorage:FindFirstChild(ITEM_NAME)
                
                if itemToGive then
                    -- Subtract the cost
                    coins.Value = coins.Value - ITEM_COST
                    
                    -- Clone the item and put it in the player's Backpack
                    local clonedItem = itemToGive:Clone()
                    clonedItem.Parent = player.Backpack
                    
                    print(player.Name .. " successfully bought " .. ITEM_NAME)
                else
                    warn("Error: Item " .. ITEM_NAME .. " not found in ServerStorage!")
                end
                
            else
                -- Not enough money
                print(player.Name .. " does not have enough coins. They need " .. ITEM_COST)
            end
        end
    end
end

-- The .Triggered event automatically passes the Player who interacted with it
prompt.Triggered:Connect(buyItem)