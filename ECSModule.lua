--[[
    Date of creation: DD/MM/YYYY (DD/MM/YYYY)
    Author: Potato
    Purpose: This ECS module handles...
]]

-- Variables
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local modules = ReplicatedStorage.Modules
local infoModules = modules.InfoModules
local utilityModules = modules.UtilityModules

-- eg. local ExampleModule = require(utilityModules.ExampleModule)

local entityIndex = 0

local ECSModule = {}

-- Creates components
local components = {
    -- eg. ["speed"] = {}
}

-- Function to create new entity
local function createEntity() : number
    entityIndex += 1
    local id = entityIndex
    return id
end

-- Function to set a component
local function setComponent(id : number, componentName : string, value : any)
    local currentComponent = components[componentName]

    currentComponent[id] = value
end

-- Add system here
-- eg. function accelerateCars()
--     for id, _ in components["speed"] do
--         components["speed"][id] += 25
--     end
-- end

return ECSModule