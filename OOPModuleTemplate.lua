--[[
    Date of creation: DD/MM/YYYY (DD/MM/YYYY)
    Author: Potato
    Purpose: This module is used to create classes, for example player information like name and character.
]]

-- Variables -- (Change names to match your project)
local Classes = {}
local ClassTemplate = {}

-- Set ClassTemplate properties (these can be customized and deleted as needed)
ClassTemplate["Name"] = "ClassTemplate"
ClassTemplate["Description"] = "Insert description here."
ClassTemplate["Author"] = "Potato"
ClassTemplate["DateCreated"] = "DD/MM/YYYY"

ClassTemplate.__index = ClassTemplate

-- Methods (this is a placeholder, change as needed)
function ClassTemplate:DoSomething()
    print("Doing something in " .. self.Name)
end

-- Function that creates a new class (Identifier can be changed to match your project)
function Classes.new(Identifier)
    -- Creates a new metatable for the new class
    local NewClass = {}
    setmetatable(NewClass, ClassTemplate)

    -- Class variables can be set here, but it's optional. (This is a placeholder, change as needed.)
    NewClass.Name = "Player's Name"
    NewClass.Description = "Insert description here."

    -- Adds the new class to the Classes table
    Classes[Identifier] = NewClass

    return NewClass
end

return Classes