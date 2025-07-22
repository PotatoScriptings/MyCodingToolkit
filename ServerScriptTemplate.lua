--[[
    Date of creation: DD/MM/YYYY (DD/MM/YYYY)
    Author: Potato
    Purpose: Insert purpose here.
]]

-- Services --
local Players = game:GetService("Players")
local ServerScripts = game:GetService("ServerScriptService")
local DataStoreService = game:GetService("DataStoreService")
local HttpService = game:GetService("HttpService")
local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")
local RS = game:GetService("ReplicatedStorage")
local TS = game:GetService("TweenService")

-- Modules --
local Modules = RS:WaitForChild("Modules")
local InfoModules = Modules:WaitForChild("InfoModules")
local UtilityModules = Modules:WaitForChild("UtilityModules")
local CoreModule = require(Modules:WaitForChild("CoreModule"))
-- Add more modules as needed

-- Variables --
-- Add any necessary variables here

-- Constants --
local CURRENT_CORE_NAME = "ServerScriptTemplate"
-- Add more constants as needed

-- Core Info --
local CurrentCore = CoreModule[CURRENT_CORE_NAME]

-- If the current core is not enabled, exit the script
if not CurrentCore.Enabled then
    return
end