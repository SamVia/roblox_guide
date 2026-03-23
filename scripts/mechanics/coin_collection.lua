local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local coinsFolder = Workspace.World.Coins
local coins = coinsFolder:GetChildren()
local COOLDOWN = 10

local function onCoinTouched(otherPart, coin)
    if coin:GetAttribute("Enabled") then
        local character = otherPart.Parent
        local player = Players:GetPlayerFromCharacter(character)
        if player then
            coin.Transparency = 1
            coin:SetAttribute("Enabled", false)
            print("Player collected coin")
            task.wait(COOLDOWN)
            coin.Transparency = 0
            coin:SetAttribute("Enabled", true)
        end
    end
end

for _, coin in coins do
    coin:SetAttribute("Enabled", true)
    coin.Touched:Connect(function(otherPart)
        onCoinTouched(otherPart, coin)
    end)
end