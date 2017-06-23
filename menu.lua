module(..., package.seeall)

function new()

	local menuGroup = display.newGroup();
	
		local background = display.newImage("graphics/menu_screen.png")
	
		local recipe1 = display.newImage("graphics/recipeButton.png")
		recipe1:setReferencePoint(display.TopLeftReferencePoint);
		recipe1.x = 27; 
		recipe1.y = 98;
		recipe1.scene = "recipe1";
		
		local recipe2 = display.newImage("graphics/recipeButton.png")
		recipe2:setReferencePoint(display.TopLeftReferencePoint);
		recipe2.x = 166; 
		recipe2.y = 98;
		recipe2.scene = "recipe2";
		
		local recipe3 = display.newImage("graphics/recipeButton.png")
		recipe3:setReferencePoint(display.TopLeftReferencePoint);
		recipe3.x = 27; 
		recipe3.y = 162;
		recipe3.scene = "recipe3";
		
		local recipe4 = display.newImage("graphics/recipeButton.png")
		recipe4:setReferencePoint(display.TopLeftReferencePoint);
		recipe4.x = 167; 
		recipe4.y = 162;
		recipe4.scene = "recipe4";
		
		local recipe5 = display.newImage("graphics/recipeButton.png")
		recipe5:setReferencePoint(display.TopLeftReferencePoint);
		recipe5.x = 27; 
		recipe5.y = 272;
		recipe5.scene = "recipe5";
		
		local recipe6 = display.newImage("graphics/recipeButton.png")
		recipe6:setReferencePoint(display.TopLeftReferencePoint);
		recipe6.x = 167; 
		recipe6.y = 272;
		recipe6.scene = "recipe6";
		
		local recipe7 = display.newImage("graphics/recipeButton.png")
		recipe7:setReferencePoint(display.TopLeftReferencePoint);
		recipe7.x = 95; 
		recipe7.y = 405;
		recipe7.scene = "recipe7";
		
		
		menuGroup:insert(background);
		menuGroup:insert(recipe1);
		menuGroup:insert(recipe2);
		menuGroup:insert(recipe3);
		menuGroup:insert(recipe4);
		menuGroup:insert(recipe5);
		menuGroup:insert(recipe6);
		menuGroup:insert(recipe7);
	
		recipe1:addEventListener("touch", changeScene);
		recipe2:addEventListener("touch", changeScene);
		recipe3:addEventListener("touch", changeScene);
		recipe4:addEventListener("touch", changeScene);
		recipe5:addEventListener("touch", changeScene);
		recipe6:addEventListener("touch", changeScene);
		recipe7:addEventListener("touch", changeScene);

		
	return menuGroup;

end
