-- 
-- Abstract: Scroll View sample app
--  
-- Version: 1.0
-- 
-- Sample code is MIT licensed, see http://developer.anscamobile.com/code/license
-- Copyright (C) 2010 ANSCA Inc. All Rights Reserved.
--
-- Demonstrates how to make text and graphics move up and down on touch,
-- or scroll, using the scrollView.lua methods.

module(..., package.seeall)

function new()

	
		
	local gameGroup = display.newGroup();
		
		
		--display.setStatusBar( display.HiddenStatusBar ) 

		--import the scrolling classes
		local scrollView = require("scrollView")
		local util = require("util")

		-- Setup a scrollable content group
		local topBoundary = display.screenOriginY
		local bottomBoundary = display.screenOriginY
		local scrollView = scrollView.new{ top=topBoundary, bottom=bottomBoundary }
		
		local scrollBackground = display.newRect(0, 0, display.contentWidth, scrollView.height+300)
		scrollBackground:setFillColor(255, 255, 255)
		scrollView:insert(scrollBackground)
		scrollView:addScrollBar()
		gameGroup:insert(scrollBackground);
		
		local recipe1 = display.newImage("carbonara2.jpg")
		recipe1:setReferencePoint(display.TopCenterReferencePoint);
		recipe1.x = 160; 
		recipe1.y = 60;
		scrollView:insert(recipe1)

		local topMenuBar = display.newImage("topMenuBar.png")
		topMenuBar:setReferencePoint(display.TopLeftReferencePoint);
		topMenuBar.x = 0; 
		topMenuBar.y = display.screenOriginY;
		
		local backButton = display.newImage("backButton.png")
		backButton.x = 35;
		backButton.y = display.screenOriginY + 23;
		backButton.scene = "menu";
		backButton:addEventListener("touch", changeScene);
		
		gameGroup:insert(scrollView);
		gameGroup:insert(topMenuBar);
		gameGroup:insert(backButton);
		
		

	return gameGroup;

end
