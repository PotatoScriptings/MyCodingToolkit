--[[
    Date of creation: DD/MM/YYYY (DD/MM/YYYY)
    Author: Potato
    Purpose: This is a subclass of... and is used for...
]]

-- Variables
local higherClass = require(script.Parent)

-- Creates subclass (rename)
local subClass = setmetatable({}, higherClass)
subClass.__index = subClass

-- Subclass Variables
-- eg. subClass.className = "subClass"

-- Function to create new object in subclass
function subClass.new(info : {}) : {}
    -- Creates new object (rename)
    local newObject = setmetatable({}, subClass)
    newObject.__index = newObject

    -- Creates values
    for index, value in pairs(info) do
        newObject[index] = value
    end

    return newObject
end

-- Class Methods
-- eg. function subClass:sayName()
--     print(self.name)
-- end

return subClass