module(..., package.seeall)
function new()
	local start1Flag;
	local pause1Flag;
	local stop1Flag;
	local setTimerFlag, timer1Flag;
	start1Flag=0;  

	pause1Flag=0;

	stop1Flag=0;

	setTimerFlag=0;
	timer1Flag=0;
	local group1 = display.newGroup();
		
		display.setStatusBar(display.HiddenStatusBar)
		local slideView = require("Zunware_SlideView")
		
		local images = {
			"graphics/Papanasi 1.png",
			"graphics/Papanasi 2.png",
			"graphics/Papanasi 3.png",
			"graphics/Papanasi 4.png",
			"graphics/Papanasi 5.png",
			"graphics/Papanasi 6.png",
			"graphics/Papanasi 7.png"
		}

		local a = slideView.new(images, nil)
		
		local alarm19=display.newImage("graphics/alarm19.png");
		alarm19.x = 160;
		alarm19.y = 200;
		alarm19.isVisible=false;
		
		local backToIng=display.newImage("graphics/backToIngButton.png");
		backToIng.x = 60;
		backToIng.y = display.contentHeight / 1;
		backToIng.scene = "recipe4"
		backToIng:addEventListener("touch", changeScene);

		local timerButton=display.newImage("graphics/TimerButton.png");
		timerButton.x = 160;
		timerButton.y = display.contentHeight / 1;
		
		local timer1=display.newImage("graphics/step2.png");
		timer1.x = 53;
		timer1.y = 418;
		timer1.isVisible=false
		
		local timer1Menu=display.newImage("graphics/buttonBG.png");
		timer1Menu.x = 53;
		timer1Menu.y = 320;
		timer1Menu.isVisible=false
		
		local start1=display.newImage("graphics/TMStartButton.png");
		start1.x = 53;
		start1.y = 280;
		start1.isVisible=false
		
		local stop1=display.newImage("graphics/TMStopButton.png");
		stop1.x = 53;
		stop1.y = 368;
		stop1.isVisible=false
		
		local pause1=display.newImage("graphics/TMPauseButton.png");
		pause1.x = 53;
		pause1.y = 325;
		pause1.isVisible=false
			

	local function handleTimerButton (event)
		if ( event.phase == "began" ) then
			if(setTimerFlag == 0) then
				timer1.isVisible=true;
				if(c19 == 0) then
					_G.clockText19 = display.newText("15:00", 120, -20, native.systemFontBold, 20)
					c19=1;
				else
					clockText19 = display.newText(clockText19.text, 120, -20, native.systemFontBold, 20)
					start1Flag=1;
				end
				clockText19.x=65;
				clockText19.y=420;
				clockText19:setFillColor( 225, 126, 38 )
				
				setTimerFlag=1;
			else 
				timer1.isVisible=false;
				
				clockText19.isVisible=false;
			
				timer1Menu.isVisible=false;
				start1.isVisible=false;
				stop1.isVisible=false;
				pause1.isVisible=false;
				
				setTimerFlag=0;
			end
		end
	end
	
	local function handleTimer1 (event)
		if ( event.phase == "began" ) then
			if(timer1Flag == 0) then
				timer1Menu.isVisible=true;
				start1.isVisible=true;
				stop1.isVisible=true;
				pause1.isVisible=true;
				
				timer1Flag=1;
			else
				timer1Menu.isVisible=false;
				start1.isVisible=false;
				stop1.isVisible=false;
				pause1.isVisible=false;
				timer1Flag=0;
			end
		end
	end

	local function startTimer1( event)
		if ( event.phase == "began" ) then
			if(start1Flag == 1 and pause1Flag == 1 and stop1Flag ==0) then
				timer.resume(countDownTimer1);
				pause1Flag=0;
			else
				start1Flag=1;
				stop1Flag=0;
				local secondsLeft = 6;
					local function updateTime()
						-- decrement the number of seconds
						secondsLeft = secondsLeft - 1
						-- time is tracked in seconds.  We need to convert it to minutes and seconds
						local minutes = math.floor( secondsLeft / 60 )
						local seconds = secondsLeft % 60	
						-- make it a string using string format.  
						local timeDisplay = string.format( "%02d:%02d", minutes, seconds )
						clockText19.text = timeDisplay
						if(secondsLeft  == 0) then
							audio.play(alarm);
							alarm19.isVisible=true;
						end
					end
				countDownTimer1 = timer.performWithDelay( 1000, updateTime, secondsLeft )
				end
		end
	end
	
	local function stopTimer1 (event)
		if ( event.phase == "began" ) then
			if(start1Flag == 1) then
				stop1Flag=1;
				timer.cancel(countDownTimer1);
				clockText19:removeSelf();
				clockText19 = display.newText("15:00", 120, -20, native.systemFontBold, 20)
				clockText19.x=65;
				clockText19.y=420;
				clockText19:setFillColor( 225, 126, 38 )
			end
		end
	end
	
	local function pauseTimer1 (event)
		if ( event.phase == "began" ) then
			if(start1Flag == 1) then
				pause1Flag =1;
				timer.pause(countDownTimer1);
			end
		end
	end
	
	local function closeMenus(event)
		if(event.phase == "began" ) then
			if(pause1Flag==1 or stop1Flag ==1) then
				clockText19.text="15:00"
			end
			
			timer1.isVisible=false;
				
			clockText19.isVisible=false;
			
			timer1Menu.isVisible=false;
			start1.isVisible=false;
			stop1.isVisible=false;
			pause1.isVisible=false;
			
			setTimerFlag=0;
		end
	end
	local function stopAlarm19(event)
		if(event.phase == "began" ) then
			alarm19.isVisible=false;
			audio.stop();
		end
	end
	
	timerButton:addEventListener( "touch", handleTimerButton )
	timer1:addEventListener( "touch", handleTimer1)
	start1:addEventListener( "touch", startTimer1)
	pause1:addEventListener("touch",pauseTimer1)
	stop1:addEventListener("touch",stopTimer1)
	alarm19:addEventListener("touch",stopAlarm19)
	
		local backToMM=display.newImage("graphics/backToMMButton.png");
		backToMM.x = 260;
		backToMM.y = display.contentHeight / 1;
		backToMM.scene = "menu"
		backToMM:addEventListener("touch", changeScene);
		
		backToMM:addEventListener("touch", closeMenus);
		backToIng:addEventListener("touch", closeMenus);
			
		group1:insert(a);
		group1:insert(backToIng);
		group1:insert(backToMM);
		group1:insert(timerButton);
	
		
	return group1;

end
