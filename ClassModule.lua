--[[
    Date of creation: DD/MM/YYYY (DD/MM/YYYY)
    Author: Potato
    Purpose: This class is used for...
]]

-- Creates class (rename)
local newClass = {}
newClass.__index = newClass

-- Class Variables
-- eg. newClass.className = "newClass"

-- Function to create new object in class
function newClass.new(info : {}) : {}
    -- Creates new object (rename)
    local newObject = setmetatable({}, newClass)
    newObject.__index = newObject

    -- Creates values
    for index, value in pairs(info) do
        newObject[index] = value
    end

    return newObject
end

-- Class Methods
-- eg. function newClass:sayName()
--     print(self.name)
-- end

return newClass