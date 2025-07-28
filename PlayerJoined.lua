-- Delete variables if they already exist in the context, they are only here to ensure the context is complete.
local Players = game:GetService("Players")
local PlayerDatas = require(script:WaitForChild("PlayerData")) -- This module will most likely not exist, at least in this location.
-- It is used to manage player data in this context.

-- This function calls when player character loads
local function onCharacterAdded(character)
    -- Variables
    local player = Players:GetPlayerFromCharacter(character)
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local Root = character:FindFirstChild("HumanoidRootPart")
    local playerData = PlayerDatas[player.UserId]

    -- Assign the character to the player data
    if player and playerData then
        playerData.Character = character
    end

    -- Additional setup can be done here
end

-- When the player joins, this function will be called
local function onPlayerJoined(player)
    -- Calls on character added for the player
    player.CharacterAdded:Connect(onCharacterAdded)

    -- Create player data for the new player
    local playerData = PlayerDatas.new(player.UserId)

    -- Additional setup can be done here
end

-- Connect the PlayerAdded event to the onPlayerJoined function
Players.PlayerAdded:Connect(onPlayerJoined)