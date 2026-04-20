-- YOU NEED TO COPY THE ALL THE TOOLS IN YOUR GAME IN A "Tools" FOLDER IN THE ReplicatedStorage
-- YOU NEED TO GO TO  file, security, enable api access TO MAKE IT WORK IN ROBLOX STUDIO PLAYTESTING.

local DataStoreService = game:GetService("DataStoreService")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")


local backpackStore = DataStoreService:GetDataStore("PlayerBackpacks")
local toolsFolder = ReplicatedStorage:WaitForChild("Tools")

print("[BackpackSave] Script loaded successfully")

-- Save a player's backpack contents
local function saveBackpack(player)
	if not player then return end

	local character = player.Character
	if not character then return end

	local backpack = player:FindFirstChild("Backpack")
	if not backpack then return end

	local toolsData = {}

	for _, item in backpack:GetChildren() do
		if item:IsA("Tool") then
			local toolData = {
				Name = item.Name,
				ClassName = item.ClassName
			}
			table.insert(toolsData, toolData)
		end
	end

	-- Also save tools currently equipped (in character)
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if humanoid then
		for _, item in character:GetChildren() do
			if item:IsA("Tool") then
				local toolData = {
					Name = item.Name,
					ClassName = item.ClassName
				}
				table.insert(toolsData, toolData)
			end
		end
	end

	local success, err = pcall(function()
		backpackStore:SetAsync(player.UserId, toolsData)
	end)

	if success then
		print("Saved " .. #toolsData .. " tools for " .. player.Name)
	else
		warn("Failed to save backpack for " .. player.Name .. ": " .. tostring(err))
	end
end

-- Load a player's backpack contents
local function loadBackpack(player)
	if not player then return end

	local toolsData
	local success, err = pcall(function()
		toolsData = backpackStore:GetAsync(player.UserId)
	end)

	if not success then
		warn("Failed to load backpack for " .. player.Name .. ": " .. tostring(err))
		return
	end

	if not toolsData then 
		print("No saved backpack data for " .. player.Name)
		return 
	end

	print("Loading " .. #toolsData .. " tools for " .. player.Name)

	local backpack = player:FindFirstChild("Backpack")
	if not backpack then return end

	-- Wait a moment for the player to fully load
	task.wait(0.5)

	for _, toolData in toolsData do
		-- Find the tool template in ReplicatedStorage.Tools
		local toolTemplate = toolsFolder:FindFirstChild(toolData.Name)

		if toolTemplate and toolTemplate:IsA("Tool") then
			-- Clone the tool template
			local tool = toolTemplate:Clone()
			tool.Parent = backpack
		else
			warn("Tool template not found: " .. toolData.Name .. " - skipping")
		end
	end
end

-- Save when player leaves
Players.PlayerRemoving:Connect(function(player)
	saveBackpack(player)
end)

-- Also save when the game is shutting down
game:BindToClose(function()
	for _, player in Players:GetPlayers() do
		saveBackpack(player)
	end
	task.wait(2) -- Give time for saves to complete
end)

-- Save when character dies (before tools are cleared)
--local function onCharacterDied(player, character)
--	local humanoid = character:FindFirstChildOfClass("Humanoid")
--	if humanoid then
--		humanoid.Died:Connect(function()
--			saveBackpack(player)
--		end)
--	end
--end

-- Clear when character dies (before tools are cleared)
local function onCharacterDied(player, character)
	print("[BackpackSave] Setting up death listener for: " .. player.Name)
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if humanoid then
		print("[BackpackSave] Humanoid found, connecting Died event")
		humanoid.Died:Connect(function()
			print("[BackpackSave] " .. player.Name .. " died! Clearing saved backpack...")
			backpackStore:RemoveAsync(player.UserId)
			print("[BackpackSave] Backpack cleared for " .. player.Name)
		end)
	else
		warn("[BackpackSave] No Humanoid found for " .. player.Name)
	end
end

-- Load when player joins
local function onPlayerAdded(player)
	print("[BackpackSave] Player added: " .. player.Name)
	
	player.CharacterAdded:Connect(function(character)
		print("[BackpackSave] Character added for: " .. player.Name)
		loadBackpack(player)
		onCharacterDied(player, character) -- Set up death reset
	end)

	-- If character already exists (rare but possible)
	if player.Character then
		print("[BackpackSave] Character already exists for: " .. player.Name)
		loadBackpack(player)
		onCharacterDied(player, player.Character)
	end
end

-- Handle players already in game
for _, player in Players:GetPlayers() do
	print("[BackpackSave] Processing existing player: " .. player.Name)
	onPlayerAdded(player)
end

-- Handle new players joining
Players.PlayerAdded:Connect(function(player)
	print("[BackpackSave] PlayerAdded event fired for: " .. player.Name)
	onPlayerAdded(player)
end)

print("[BackpackSave] All events connected, ready for players")
