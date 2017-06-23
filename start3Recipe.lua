module(..., package.seeall)
function new()
	local start1Flag, start2Flag,start3Flag;
	local pause1Flag, pause2Flag,pause3Flag;
	local stop1Flag, stop2Flag, stop3Flag;
	local setTimerFlag, timer1Flag, timer2Flag, timer3Flag;
	start1Flag=0; 
	start2Flag=0; 
	start3Flag=0;
	pause1Flag=0;
	pause2Flag=0;
	pause3Flag=0;
	stop1Flag=0;
	stop2Flag=0;
	stop3Flag=0;
	setTimerFlag=0;
	timer1Flag=0;
	timer2Flag=0;
	timer3Flag=0;
	local group1 = display.newGroup();
		
		display.setStatusBar(display.HiddenStatusBar)
		local slideView = require("Zunware_SlideView")

		local images = {
			"graphics/Fasole carnati 1.png",
			"graphics/Fasole carnati 2.png",
			"graphics/Fasole carnati 3.png",
			"graphics/Fasole carnati 4.png",
			"graphics/Fasole carnati 5.png",
			"graphics/Fasole carnati 6.png"
		}

		local a = slideView.new(images, nil)
		
		local alarm7=display.newImage("graphics/alarm7.png");
		alarm7.x = 160;
		alarm7.y = 200;
		alarm7.isVisible=false;
		
		local alarm8=display.newImage("graphics/alarm8.png");
		alarm8.x = 160;
		alarm8.y = 200;
		alarm8.isVisible=false;
		
		local alarm9=display.newImage("graphics/alarm9.png");
		alarm9.x = 160;
		alarm9.y = 200;
		alarm9.isVisible=false;
		
		local backToIng=display.newImage("graphics/backToIngButton.png");
		backToIng.x = 60;
		backToIng.y = display.contentHeight / 1;
		backToIng.scene = "recipe3"
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
		
		local timer3=display.newImage("graphics/step6.png");
		timer3.x = 267
		timer3.y = 418
		timer3.isVisible=false
		
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
		
		local timer3Menu=display.newImage("graphics/buttonBG.png");
		timer3Menu.x = 267;
		timer3Menu.y = 320;
		timer3Menu.isVisible=false
		
		local start3=display.newImage("graphics/TMStartButton.png");
		start3.x = 267;
		start3.y = 280;
		start3.isVisible=false
		
		local stop3=display.newImage("graphics/TMStopButton.png");
		stop3.x = 267;
		stop3.y = 368;
		stop3.isVisible=false
		
		local pause3=display.newImage("graphics/TMPauseButton.png");
		pause3.x = 267;
		pause3.y = 325;
		pause3.isVisible=false
		
	local function handleTimerButton (event)
		if ( event.phase == "began" ) then
			if(setTimerFlag == 0) then
				timer1.isVisible=true;
				if(c7 == 0) then
					_G.clockText7 = display.newText("10:00", 120, -20, native.systemFontBold, 20)
					c7=1;
				else
					clockText7 = display.newText(clockText7.text, 120, -20, native.systemFontBold, 20)
					start1Flag=1;
				end
				clockText7.x=65;
				clockText7.y=420;
				clockText7:setFillColor( 225, 126, 38 )
				timer2.isVisible=true;
				if(c8 ==0) then
					_G.clockText8 = display.newText("7:00", 120, -20, native.systemFontBold, 20)
					c8=1;
				else
					clockText8 = display.newText(clockText8.text, 120, -20, native.systemFontBold, 20)
					start2Flag=1;
				end
				clockText8:setFillColor( 225, 126, 38 )
				clockText8.x=170;
				clockText8.y=420;
				timer3.isVisible=true;
				if(c9 == 0) then
					_G.clockText9 = display.newText("40:00", 120, -20, native.systemFontBold, 20)
					c9=1;
				else
					clockText9 = display.newText(clockText9.text, 120, -20, native.systemFontBold, 20)
					start3Flag=1;
				end
				clockText9:setFillColor( 225, 126, 38 )
				clockText9.x=276;
				clockText9.y=420;
				setTimerFlag=1;
			else 
				timer1.isVisible=false;
				timer2.isVisible=false;
				timer3.isVisible=false;
				
				clockText7.isVisible=false;
				clockText8.isVisible=false;
				clockText9.isVisible=false;
			
				timer1Menu.isVisible=false;
				start1.isVisible=false;
				stop1.isVisible=false;
				pause1.isVisible=false;
				
				timer2Menu.isVisible=false;
				start2.isVisible=false;
				stop2.isVisible=false;
				pause2.isVisible=false;
				
				timer3Menu.isVisible=false;
				start3.isVisible=false;
				stop3.isVisible=false;
				pause3.isVisible=false;
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
				
				timer3Menu.isVisible=false;
				start3.isVisible=false;
				stop3.isVisible=false;
				pause3.isVisible=false;
				timer1Flag=1;
				timer2Flag=0;
				timer3Flag=0;
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
				
				timer3Menu.isVisible=false;
				start3.isVisible=false;
				stop3.isVisible=false;
				pause3.isVisible=false;
				timer1Flag=0;
				timer2Flag=1;
				timer3Flag=0;
			else
				timer2Menu.isVisible=false;
				start2.isVisible=false;
				stop2.isVisible=false;
				pause2.isVisible=false;
				timer2Flag=0;
			end
		end
	end
	local function handleTimer3 (event)
		if ( event.phase == "began" ) then
			if(timer3Flag==0) then
				timer1Menu.isVisible=false;
				start1.isVisible=false;
				stop1.isVisible=false;
				pause1.isVisible=false;
				
				timer2Menu.isVisible=false;
				start2.isVisible=false;
				stop2.isVisible=false;
				pause2.isVisible=false;
				
				timer3Menu.isVisible=true;
				start3.isVisible=true;
				stop3.isVisible=true;
				pause3.isVisible=true;
				timer1Flag=0;
				timer2Flag=0;
				timer3Flag=1;
			else
				timer3Menu.isVisible=false;
				start3.isVisible=false;
				stop3.isVisible=false;
				pause3.isVisible=false;
				timer3Flag=0;
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
				local secondsLeft = 10 * 60 
					local function updateTime()
						-- decrement the number of seconds
						secondsLeft = secondsLeft - 1
						-- time is tracked in seconds.  We need to convert it to minutes and seconds
						local minutes = math.floor( secondsLeft / 60 )
						local seconds = secondsLeft % 60	
						-- make it a string using string format.  
						local timeDisplay = string.format( "%02d:%02d", minutes, seconds )
						clockText7.text = timeDisplay
						if(secondsLeft  == 0) then
							audio.play(alarm);
							alarm7.isVisible=true;
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
				local secondsLeft = 7 * 60 
				local function updateTime()
					-- decrement the number of seconds
					secondsLeft = secondsLeft - 1
					-- time is tracked in seconds.  We need to convert it to minutes and seconds
					local minutes = math.floor( secondsLeft / 60 )
					local seconds = secondsLeft % 60
					-- make it a string using string format.  
					local timeDisplay = string.format( "%02d:%02d", minutes, seconds )
					clockText8.text = timeDisplay
					if(secondsLeft  == 0) then
						audio.play(alarm);
						alarm8.isVisible=true;
					end
				end
			 countDownTimer2 = timer.performWithDelay( 1000, updateTime, secondsLeft )	
			end
		end
	end
	
	local function startTimer3( event )
		if ( event.phase == "began" ) then
			if(start3Flag == 1 and pause3Flag == 1 and stop3Flag == 0) then
				timer.resume(countDownTimer3);
				pause3Flag=0;
			else
				start3Flag=1;
				stop3Flag=0;
				local secondsLeft = 40 * 60
				local function updateTime()
					-- decrement the number of seconds
					secondsLeft = secondsLeft - 1
					-- time is tracked in seconds.  We need to convert it to minutes and seconds
					local minutes = math.floor( secondsLeft / 60 )
					local seconds = secondsLeft % 60
					-- make it a string using string format.  
					local timeDisplay = string.format( "%02d:%02d", minutes, seconds )
					clockText9.text = timeDisplay
					if(secondsLeft  == 0) then
						audio.play(alarm);
						alarm9.isVisible=true;
					end
				end
			 countDownTimer3 = timer.performWithDelay( 1000, updateTime, secondsLeft )		
			end;
		end
	end
	
	
	local function stopTimer1 (event)
		if ( event.phase == "began" ) then
			if(start1Flag == 1) then
				stop1Flag=1;
				timer.cancel(countDownTimer1);
				clockText7:removeSelf();
				clockText7 = display.newText("10:00", 120, -20, native.systemFontBold, 20)
				clockText7.x=65;
				clockText7.y=420;
				clockText7:setFillColor( 225, 126, 38 )
			end
		end
	end
	local function stopTimer2 (event)
		if ( event.phase == "began" ) then
			if(start2Flag == 1) then
				stop2Flag=1;
				timer.cancel(countDownTimer2);
				clockText8:removeSelf();
				clockText8 = display.newText("7:00", 120, -20, native.systemFontBold, 20)
				clockText8:setFillColor( 225, 126, 38 )
				clockText8.x=170;
				clockText8.y=420;
			end
		end
	end
	local function stopTimer3 (event)
		if ( event.phase == "began" ) then
			if(start3Flag == 1) then
				stop3Flag=1;
				timer.cancel(countDownTimer3);
				clockText9:removeSelf();
				clockText9 = display.newText("40:00", 120, -20, native.systemFontBold, 20)
				clockText9:setFillColor( 225, 126, 38 )
				clockText9.x=276;
				clockText9.y=420;
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
	local function pauseTimer3 (event)
		if ( event.phase == "began" ) then
			if(start3Flag == 1) then
				pause3Flag =1;
				timer.pause(countDownTimer3);
			end
		end
	end
	
	local function closeMenus(event)
		if(event.phase == "began" ) then
			if(pause1Flag==1 or stop1Flag ==1) then
				clockText7.text="10:00"
			end
			if(pause2Flag==1 or stop2Flag ==1) then
				clockText8.text="7:00"
			end
			if(pause3Flag==1 or stop3Flag ==1) then
				clockText9.text="40:00"
			end
			timer1.isVisible=false;
			timer2.isVisible=false;
			timer3.isVisible=false;
				
			clockText7.isVisible=false;
			clockText8.isVisible=false;
			clockText9.isVisible=false;
			
			timer1Menu.isVisible=false;
			start1.isVisible=false;
			stop1.isVisible=false;
			pause1.isVisible=false;
			
			timer2Menu.isVisible=false;
			start2.isVisible=false;
			stop2.isVisible=false;
			pause2.isVisible=false;
				
			timer3Menu.isVisible=false;
			start3.isVisible=false;
			stop3.isVisible=false;
			pause3.isVisible=false;
			
			setTimerFlag=0;
		end
	end
	
	local function stopAlarm7(event)
		if(event.phase == "began" ) then
			audio.stop();
			alarm7.isVisible=false;
		end
	end
	
	local function stopAlarm8(event)
		if(event.phase == "began" ) then
			audio.stop();
			alarm8.isVisible=false;
		end
	end
	
	local function stopAlarm9(event)
		if(event.phase == "began" ) then
			audio.stop();
			alarm9.isVisible=false;
		end
	end
	
	alarm7:addEventListener("touch",stopAlarm7)
	alarm8:addEventListener("touch",stopAlarm8)
	alarm9:addEventListener("touch",stopAlarm9)
	
	timerButton:addEventListener( "touch", handleTimerButton )
	
	timer1:addEventListener( "touch", handleTimer1)
	timer2:addEventListener( "touch", handleTimer2)
	timer3:addEventListener( "touch", handleTimer3)
	
	start1:addEventListener( "touch", startTimer1)
	start2:addEventListener( "touch", startTimer2)
	start3:addEventListener( "touch", startTimer3)
	
	pause1:addEventListener("touch",pauseTimer1)
	pause2:addEventListener("touch",pauseTimer2)
	pause3:addEventListener("touch",pauseTimer3)
	
	stop1:addEventListener("touch",stopTimer1)
	stop2:addEventListener("touch",stopTimer2)
	stop3:addEventListener("touch",stopTimer3)
	
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
