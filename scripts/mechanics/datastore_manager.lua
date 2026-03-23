local DataStoreService = game:GetService("DataStoreService")
local myDataStore = DataStoreService:GetDataStore("PlayerSaveData")

-- 1. Create Leaderstats and Load Data when a player joins
game.Players.PlayerAdded:Connect(function(player)
    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = player

    local coins = Instance.new("IntValue")
    coins.Name = "Coins"
    coins.Parent = leaderstats
    coins.Value = 0 -- Default value

    -- Create the unique key for this specific player
    local playerKey = "Player_" .. player.UserId

    -- Load the data
    local success, savedData = pcall(function()
        return myDataStore:GetAsync(playerKey)
    end)

    if success and savedData ~= nil then
        coins.Value = savedData
        print("Data loaded for " .. player.Name)
    else
        print("No previous data found or error loading for " .. player.Name)
    end
end)

-- 2. Save Data when a player leaves
game.Players.PlayerRemoving:Connect(function(player)
    local playerKey = "Player_" .. player.UserId
    local currentCoins = player.leaderstats.Coins.Value

    local success, errorMessage = pcall(function()
        myDataStore:SetAsync(playerKey, currentCoins)
    end)

    if success then
        print("Data successfully saved for " .. player.Name)
    else
        warn("Failed to save data for " .. player.Name .. ": " .. errorMessage)
    end
end)