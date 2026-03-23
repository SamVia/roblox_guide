local TeleportService = game:GetService("TeleportService")
local portal = script.Parent
local destinationPlaceID = 1234567890 -- Replace with the target Place ID

local function teleportToGame(otherPart)
    local character = otherPart.Parent
    local player = game.Players:GetPlayerFromCharacter(character)

    if player then
        -- TeleportService requires the specific Player object, not the character model
        TeleportService:TeleportAsync(destinationPlaceID, {player})
    end
end

portal.Touched:Connect(teleportToGame)