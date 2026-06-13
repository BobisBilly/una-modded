local Card = require("una.card").CardAPI
local Bob = require("una.card").Bob

local Modding = {}

local count = 0

---@param type string
---@param iconUV Vector2|nil
function Modding.newCard(type, iconUV)
	Bob.index2type[#Bob.index2type+1] = type:upper()
	Bob.iconUV[#Bob.iconUV+1] = iconUV ~= nil and iconUV or vec(64,-16) + vec(count * 9, 0)

	count = count + 1

	Bob.updateIndexes()
	Bob.updateCardList()
end

return Modding