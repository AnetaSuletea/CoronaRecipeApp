function changeScene (e)
	if(e.phase == "ended") then
		director:changeScene(e.target.scene)
	end
end
local beginX
local beginY  
local endX  
local endY
local xDistance  
local yDistance  

local director = require("director");
local mainGroup = display.newGroup();

mainGroup:insert(director.directorView);
director:changeScene("intro");


