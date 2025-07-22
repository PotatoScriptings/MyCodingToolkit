-- Delete variables if they already exist in the context, they are only here to ensure the context is complete.
local Players = game:GetService("Players")

-- PlayerData table
local PlayerData = {}

-- Function creates player data when a player joins
local function createPlayerData(player)
    -- Create a table to hold player data
    PlayerData[player] = {
        Name = player.Name,
        UserId = player.UserId,
        Character = nil, -- Will be set when the character is added
        
        -- Additional data can be added here or set later
    }

    -- Return the player data table
    return PlayerData[player]
end

-- This function calls when player character loads
local function onCharacterAdded(character)
    -- Assign the character to the player data
    local player = Players:GetPlayerFromCharacter(character)
    if player and PlayerData[player] then
        PlayerData[player].Character = character
    end

    -- Additional setup can be done here
end

-- When the player joins, this function will be called
local function onPlayerJoined(player)
    -- Calls on character added for the player
    player.CharacterAdded:Connect(onCharacterAdded)

    -- Create player data for the new player
    local playerData = createPlayerData(player)

    -- Additional setup can be done here
end

-- Connect the PlayerAdded event to the onPlayerJoined function
Players.PlayerAdded:Connect(onPlayerJoined)