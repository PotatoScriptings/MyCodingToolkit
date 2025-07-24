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
local FrameWorkModules = Modules:WaitForChild("FrameworkModules")
local CoreModule = require(Modules:WaitForChild("CoreModule"))
-- Add more modules as needed in alphabetical order

-- Variables --
local Camera = workspace.CurrentCamera
-- Add more variables as needed

-- Constants --
local CURRENT_CORE_NAME = "ServerScriptTemplate" -- The name of the current core module
-- Add more constants as needed

-- Core Info --
local CurrentCore = CoreModule[CURRENT_CORE_NAME]

-- If the current core is not enabled, exit the script
if not CurrentCore.Enabled or not CurrentCore["Server"].Enabled then
    return
end