local players = game:GetService("Players")

local onPlayerAdded = function(player)
    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = player

    local points = Instance.new("IntValue")
    points.Name = "Points"
    points.Parent = leaderstats
    points.Value = 0
end

local addPoints = function(player)
    local characterName = player.Name
    local character = workspace:WaitForChild(characterName)
    local humanoid = character:WaitForChild("Humanoid")
    if humanoid.Health == 0 then
        player.leaderstats.Points.Value = 0
    else
        player.leaderstats.Points.Value += 1
    end
end

players.PlayerAdded:Connect(onPlayerAdded)

while true do
    task.wait(1)
    local playerList = players:GetPlayers()
    for currentPlayer = 1, #playerList do
        addPoints(playerList[currentPlayer])
    end
end