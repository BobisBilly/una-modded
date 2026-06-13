local Card = require("una.card").CardAPI
local Bob = require("una.card").Bob

local Modding = {}

local customCardCount = 0
local customColorCount = 0

---@param type string
---@param iconUV Vector2?
function Modding.newCard(type, iconUV)
	Bob.index2type[#Bob.index2type+1] = type:upper()
	Bob.iconUV[#Bob.iconUV+1] = iconUV ~= nil and iconUV or vec(64,-16) + vec(customCardCount * 9, 0)

	customCardCount = customCardCount + 1

	Bob.updateIndexes()
	Bob.updateCardList()
end

---@param type string
---@param colorUV Vector2?
---@param controlList table
function Modding.newColor(type, colorUV, controlList)
	Bob.index2color[#Bob.index2color+1] = type:upper()
	Bob.colorUV[#Bob.colorUV+1] = colorUV ~= nil and colorUV or vec(64, 32) + vec(customColorCount * 11, 0)

	customColorCount = customColorCount + 1

	Bob.updateIndexes()
	Bob.updateCardList(controlList)
end

return Modding