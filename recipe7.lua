module(..., package.seeall)

function new()

	local recipeGroup = display.newGroup();

		local scrollView = require("scrollView")
		local util = require("util")
		local topBoundary = display.screenOriginY
		local bottomBoundary = display.screenOriginY
		local scrollView = scrollView.new{top=topBoundary,bottom=bottomBoundary}
		
		local recipe7 = display.newImage("graphics/recipe7.png")

		local backButton = display.newImage("graphics/backButton.png")
		backButton.x = 40;
		backButton.y = 28;
		backButton.scene = "menu";
		
		local startButton = display.newImage("graphics/startButt.png")
		startButton.x=280;
		startButton.y = 28;
		startButton.scene="start7Recipe";
		
		scrollView:insert(recipe7)
		recipeGroup:insert(scrollView);
		recipeGroup:insert(backButton);
		recipeGroup:insert(startButton);
		
		backButton:addEventListener("touch", changeScene);
		startButton:addEventListener("touch", changeScene);
		
		
		
		
	return recipeGroup;

end
