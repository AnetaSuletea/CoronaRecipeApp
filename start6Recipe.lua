module(..., package.seeall)
function new()
	local start1Flag, start2Flag;
	local pause1Flag, pause2Flag;
	local stop1Flag, stop2Flag;
	local setTimerFlag, timer1Flag, timer2Flag;
	start1Flag=0; 
	start2Flag=0; 

	pause1Flag=0;
	pause2Flag=0;

	stop1Flag=0;
	stop2Flag=0;

	setTimerFlag=0;
	timer1Flag=0;
	timer2Flag=0;

	local group1 = display.newGroup();
		
		display.setStatusBar(display.HiddenStatusBar)
		local slideView = require("Zunware_SlideView")

		local images = {
			"graphics/Burta soup 1.png",
			"graphics/Burta soup 2.png",
			"graphics/Burta soup 3.png",
			"graphics/Burta soup 4.png",
			"graphics/Burta soup 5.png",
			"graphics/Burta soup 6.png"
		}

		local a = slideView.new(images, nil)
		
		local alarm17=display.newImage("graphics/alarm17.png");
		alarm17.x = 160;
		alarm17.y = 200;
		alarm17.isVisible=false;
		
		local alarm18=display.newImage("graphics/alarm18.png");
		alarm18.x = 160;
		alarm18.y = 200;
		alarm18.isVisible=false;
		
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
		
		local timer2=display.newImage("graphics/step4.png");
		timer2.x = 160;
		timer2.y = 418;
		timer2.isVisible=false
		
		
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
		
		local timer2Menu=display.newImage("graphics/buttonBG.png");
		timer2Menu.x = 160;
		timer2Menu.y = 320;
		timer2Menu.isVisible=false
		
		local start2=display.newImage("graphics/TMStartButton.png");
		start2.x = 160;
		start2.y = 280;
		start2.isVisible=false
		
		local stop2=display.newImage("graphics/TMStopButton.png");
		stop2.x = 160;
		stop2.y = 368;
		stop2.isVisible=false
		
		local pause2=display.newImage("graphics/TMPauseButton.png");
		pause2.x = 160;
		pause2.y = 325;
		pause2.isVisible=false
		
		
	local function handleTimerButton (event)
		if ( event.phase == "began" ) then
			if(setTimerFlag == 0) then
				timer1.isVisible=true;
				if(c17 == 0) then
					_G.clockText17 = display.newText("180:00", 120, -20, native.systemFontBold, 20)
					c17=1;
				else
					clockText17 = display.newText(clockText17.text, 120, -20, native.systemFontBold, 20)
					start1Flag=1;
				end
				clockText17.x=65;
				clockText17.y=420;
				clockText17:setFillColor( 225, 126, 38 )
				timer2.isVisible=true;
				if(c18 ==0) then
					_G.clockText18 = display.newText("3:00", 120, -20, native.systemFontBold, 20)
					c18=1;
				else
					clockText18 = display.newText(clockText18.text, 120, -20, native.systemFontBold, 20)
					start2Flag=1;
				end
				clockText18:setFillColor( 225, 126, 38 )
				clockText18.x=170;
				clockText18.y=420;
				
				setTimerFlag=1;
			else 
				timer1.isVisible=false;
				timer2.isVisible=false;
				
				clockText17.isVisible=false;
				clockText18.isVisible=false;
			
				timer1Menu.isVisible=false;
				start1.isVisible=false;
				stop1.isVisible=false;
				pause1.isVisible=false;
				
				timer2Menu.isVisible=false;
				start2.isVisible=false;
				stop2.isVisible=false;
				pause2.isVisible=false;
				
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
				
				timer2Menu.isVisible=false;
				start2.isVisible=false;
				stop2.isVisible=false;
				pause2.isVisible=false;
				
				timer1Flag=1;
				timer2Flag=0;
			else
				timer1Menu.isVisible=false;
				start1.isVisible=false;
				stop1.isVisible=false;
				pause1.isVisible=false;
				timer1Flag=0;
			end
		end
	end
	local function handleTimer2 (event)
		if ( event.phase == "began" ) then
			if(timer2Flag == 0) then
				timer1Menu.isVisible=false;
				start1.isVisible=false;
				stop1.isVisible=false;
				pause1.isVisible=false;
				
				timer2Menu.isVisible=true;
				start2.isVisible=true;
				stop2.isVisible=true;
				pause2.isVisible=true;
				
				timer1Flag=0;
				timer2Flag=1;
			else
				timer2Menu.isVisible=false;
				start2.isVisible=false;
				stop2.isVisible=false;
				pause2.isVisible=false;
				timer2Flag=0;
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
				local secondsLeft = 180 * 60 
					local function updateTime()
						-- decrement the number of seconds
						secondsLeft = secondsLeft - 1
						-- time is tracked in seconds.  We need to convert it to minutes and seconds
						local minutes = math.floor( secondsLeft / 60 )
						local seconds = secondsLeft % 60	
						-- make it a string using string format.  
						local timeDisplay = string.format( "%02d:%02d", minutes, seconds )
						clockText17.text = timeDisplay
						if(secondsLeft  == 0) then
							audio.play(alarm);
							alarm17.isVisible=true;
						end
					end
				countDownTimer1 = timer.performWithDelay( 1000, updateTime, secondsLeft )
			
				
			end
		end
	end
	local function startTimer2( event )
		if ( event.phase == "began" ) then
			if(start2Flag == 1 and pause2Flag == 1 and stop2Flag == 0) then
				timer.resume(countDownTimer2);
				pause2Flag=0;
			else
				start2Flag=1;
				stop2Flag=0;	
				local secondsLeft = 3 * 60; 
				local function updateTime()
					-- decrement the number of seconds
					secondsLeft = secondsLeft - 1
					-- time is tracked in seconds.  We need to convert it to minutes and seconds
					local minutes = math.floor( secondsLeft / 60 )
					local seconds = secondsLeft % 60
					-- make it a string using string format.  
					local timeDisplay = string.format( "%02d:%02d", minutes, seconds )
					clockText18.text = timeDisplay
					if(secondsLeft  == 0) then
						audio.play(alarm);
						alarm18.isVisible=true;
						end
				end
			 countDownTimer2 = timer.performWithDelay( 1000, updateTime, secondsLeft )	
			end
		end
	end
	
	local function stopTimer1 (event)
		if ( event.phase == "began" ) then
			if(start1Flag == 1) then
				stop1Flag=1;
				timer.cancel(countDownTimer1);
				clockText17:removeSelf();
				clockText17 = display.newText("180:00", 120, -20, native.systemFontBold, 20)
				clockText17.x=65;
				clockText17.y=420;
				clockText17:setFillColor( 225, 126, 38 )
			end
		end
	end
	local function stopTimer2 (event)
		if ( event.phase == "began" ) then
			if(start2Flag == 1) then
				stop2Flag=1;
				timer.cancel(countDownTimer2);
				clockText18:removeSelf();
				clockText18 = display.newText("3:00", 120, -20, native.systemFontBold, 20)
				clockText18:setFillColor( 225, 126, 38 )
				clockText18.x=170;
				clockText18.y=420;
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
	local function pauseTimer2 (event)
		if ( event.phase == "began" ) then
			if(start2Flag == 1) then
				pause2Flag =1;
				timer.pause(countDownTimer2);
			end
		end
	end
	
	local function closeMenus(event)
		if(event.phase == "began" ) then
			if(pause1Flag==1 or stop1Flag ==1) then
				clockText17.text="180:00"
			end
			if(pause2Flag==1 or stop2Flag ==1) then
				clockText18.text="3:00"
			end
			
			timer1.isVisible=false;
			timer2.isVisible=false;
				
			clockText17.isVisible=false;
			clockText18.isVisible=false;
			
			timer1Menu.isVisible=false;
			start1.isVisible=false;
			stop1.isVisible=false;
			pause1.isVisible=false;
			
			timer2Menu.isVisible=false;
			start2.isVisible=false;
			stop2.isVisible=false;
			pause2.isVisible=false;
			
			setTimerFlag=0;
		end
	end
	
	local function stopAlarm17(event)
		if(event.phase == "began" ) then
			audio.stop();
			alarm17.isVisible=false;
		end
	end
	
	local function stopAlarm18(event)
		if(event.phase == "began" ) then
			audio.stop();
			alarm18.isVisible=false;
		end
	end
	
	alarm17:addEventListener("touch",stopAlarm17)
	alarm18:addEventListener("touch",stopAlarm18)
	
	timerButton:addEventListener( "touch", handleTimerButton )
	
	timer1:addEventListener( "touch", handleTimer1)
	timer2:addEventListener( "touch", handleTimer2)
	
	start1:addEventListener( "touch", startTimer1)
	start2:addEventListener( "touch", startTimer2)
	
	pause1:addEventListener("touch",pauseTimer1)
	pause2:addEventListener("touch",pauseTimer2)
	
	stop1:addEventListener("touch",stopTimer1)
	stop2:addEventListener("touch",stopTimer2)
	
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
