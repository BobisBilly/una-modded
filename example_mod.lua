local Modding = require("una.bob.modding")

local bobColorList = {
	type = 6,
	blacklist = {
		2,
		3,
		4,
		5,
		6,
		7,
		8,
		9,
		10,
		11,
		12,
		13,
		14
	},
	whitelist = {
		2
	}
}

Modding.newCard("Bob")
Modding.newColor("Bob", nil, bobColorList)