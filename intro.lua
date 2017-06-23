module(..., package.seeall)
	_G.c1=0;
	_G.c2=0;
	_G.c3=0;
	
	_G.c4=0;
	_G.c5=0;
	_G.c6=0;
	
	_G.c7=0;
	_G.c8=0;
	_G.c9=0;
	
	_G.c10=0;
	_G.c11=0;
	
	_G.c12=0;
	_G.c13=0;
	_G.c14=0;
	_G.c15=0;
	_G.c16=0;
	
	_G.c17=0;
	_G.c18=0;
	
	_G.c19=0;

	_G.alarm=audio.loadSound("graphics/alarmSound.wav");
	
function new()

	local introGroup = display.newGroup();
	
		local background = display.newImage("graphics/main_screen.png",true);
		background.x = display.contentWidth / 2;
		background.y = display.contentHeight / 2;

		local begin=display.newImage("graphics/button1.png");
		begin.x = display.contentWidth / 2;
		begin.y = display.contentHeight / 1.3;
		begin.scene = "menu"
		
		introGroup:insert(background);
		introGroup:insert(begin);
	
		begin:addEventListener("touch", changeScene);
		
	return introGroup;

end
