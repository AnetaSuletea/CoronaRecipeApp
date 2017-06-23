module(..., package.seeall)
function new()
	local start1Flag,start2Flag,start3Flag,start4Flag,start5Flag;
	local pause1Flag, pause2Flag,pause3Flag,pause4Flag, pause5Flag;
	local stop1Flag, stop2Flag, stop3Flag,stop4Flag, stop5Flag;
	local setTimerFlag, timer1Flag, timer2Flag, timer3Flag,timer4Flag, timer5Flag;
	start1Flag=0; 
	start2Flag=0; 
	start3Flag=0;
	start4Flag=0; 
	start5Flag=0;
	pause1Flag=0;
	pause2Flag=0;
	pause3Flag=0;
	pause4Flag=0;
	pause5Flag=0;
	stop1Flag=0;
	stop2Flag=0;
	stop3Flag=0;
	stop4Flag=0;
	stop5Flag=0;
	setTimerFlag=0;
	timer1Flag=0;
	timer2Flag=0;
	timer3Flag=0;
	timer4Flag=0;
	timer5Flag=0;
	local group1 = display.newGroup();
		
		display.setStatusBar(display.HiddenStatusBar)
		local slideView = require("Zunware_SlideView")

		local images = {
			"graphics/Transylv soup 1.png",
			"graphics/Transylv soup 2.png",
			"graphics/Transylv soup 3.png",
			"graphics/Transylv soup 4.png",
			"graphics/Transylv soup 5.png",
			"graphics/Transylv soup 6.png",
			"graphics/Transylv soup 7.png",
			"graphics/Transylv soup 8.png"
		}

		local a = slideView.new(images, nil)
		
		local alarm12=display.newImage("graphics/alarm12.png");
		alarm12.x = 160;
		alarm12.y = 200;
		alarm12.isVisible=false;
		
		local alarm13=display.newImage("graphics/alarm13.png");
		alarm13.x = 160;
		alarm13.y = 200;
		alarm13.isVisible=false;
		
		local alarm14=display.newImage("graphics/alarm14.png");
		alarm14.x = 160;
		alarm14.y = 200;
		alarm14.isVisible=false;
		
		local alarm15=display.newImage("graphics/alarm15.png");
		alarm15.x = 160;
		alarm15.y = 200;
		alarm15.isVisible=false;
		
		local alarm16=display.newImage("graphics/alarm16.png");
		alarm16.x = 160;
		alarm16.y = 200;
		alarm16.isVisible=false;
		

		
		local backToIng=display.newImage("graphics/backToIngButton.png");
		backToIng.x = 60;
		backToIng.y = display.contentHeight / 1;
		backToIng.scene = "recipe5"
		backToIng:addEventListener("touch", changeScene);

		local timerButton=display.newImage("graphics/TimerButton.png");
		timerButton.x = 160;
		timerButton.y = display.contentHeight / 1;
		
		
		local timer1=display.newImage("graphics/step1.png");
		timer1.x = 53;
		timer1.y = 418;
		timer1.isVisible=false
		
		local timer2=display.newImage("graphics/step2.png");
		timer2.x = 160;
		timer2.y = 418;
		timer2.isVisible=false
		
		local timer3=display.newImage("graphics/step4.png");
		timer3.x = 267
		timer3.y = 418
		timer3.isVisible=false
		
		local timer4=display.newImage("graphics/step5.png");
		timer4.x = 53;
		timer4.y = 381;
		timer4.isVisible=false
		
		local timer5=display.newImage("graphics/step7.png");
		timer5.x = 160
		timer5.y = 381
		timer5.isVisible=false
		
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
		
		local timer4Menu=display.newImage("graphics/buttonBG.png");
		timer4Menu.x = 53;
		timer4Menu.y = 283;
		timer4Menu.isVisible=false
		
		local start4=display.newImage("graphics/TMStartButton.png");
		start4.x = 53;
		start4.y = 243;
		start4.isVisible=false
		
		local stop4=display.newImage("graphics/TMStopButton.png");
		stop4.x = 53;
		stop4.y = 331;
		stop4.isVisible=false
		
		local pause4=display.newImage("graphics/TMPauseButton.png");
		pause4.x = 53;
		pause4.y = 288;
		pause4.isVisible=false
		
		local timer5Menu=display.newImage("graphics/buttonBG.png");
		timer5Menu.x = 160;
		timer5Menu.y = 283;
		timer5Menu.isVisible=false
		
		local start5=display.newImage("graphics/TMStartButton.png");
		start5.x = 160;
		start5.y = 243;
		start5.isVisible=false
		
		local stop5=display.newImage("graphics/TMStopButton.png");
		stop5.x = 160;
		stop5.y = 331;
		stop5.isVisible=false
		
		local pause5=display.newImage("graphics/TMPauseButton.png");
		pause5.x = 160;
		pause5.y = 288;
		pause5.isVisible=false
		
	local function handleTimerButton (event)
		if ( event.phase == "began" ) then
			if(setTimerFlag == 0) then
				timer1.isVisible=true;
				if(c12 == 0) then
					_G.clockText12 = display.newText("45:00", 120, -20, native.systemFontBold, 20)
					c12=1;
				else
					clockText12 = display.newText(clockText12.text, 120, -20, native.systemFontBold, 20)
					start1Flag=1;
				end
				clockText12.x=65;
				clockText12.y=420;
				clockText12:setFillColor( 225, 126, 38 )
				timer2.isVisible=true;
				if(c13 ==0) then
					_G.clockText13 = display.newText("10:00", 120, -20, native.systemFontBold, 20)
					c13=1;
				else
					clockText13 = display.newText(clockText13.text, 120, -20, native.systemFontBold, 20)
					start2Flag=1;
				end
				clockText13:setFillColor( 225, 126, 38 )
				clockText13.x=170;
				clockText13.y=420;
				
				timer3.isVisible=true;
				if(c14 == 0) then
					_G.clockText14 = display.newText("20:00", 120, -20, native.systemFontBold, 20)
					c14=1;
				else
					clockText14 = display.newText(clockText14.text, 120, -20, native.systemFontBold, 20)
					start3Flag=1;
				end
				clockText14:setFillColor( 225, 126, 38 )
				clockText14.x=276;
				clockText14.y=420;
				
				timer4.isVisible=true;
				if(c15 == 0) then
					_G.clockText15 = display.newText("5:00", 120, -20, native.systemFontBold, 20)
					c15=1;
				else
					clockText15 = display.newText(clockText15.text, 120, -20, native.systemFontBold, 20)
					start4Flag=1;
				end
				clockText15:setFillColor( 225, 126, 38 )
				clockText15.x=65;
				clockText15.y=383;
				
				timer5.isVisible=true;
				if(c16 == 0) then
					_G.clockText16 = display.newText("10:00", 120, -20, native.systemFontBold, 20)
					c16=1;
				else
					clockText16 = display.newText(clockText16.text, 120, -20, native.systemFontBold, 20)
					start5Flag=1;
				end
				clockText16:setFillColor( 225, 126, 38 )
				clockText16.x=170;
				clockText16.y=383;
				
				setTimerFlag=1;
			else 
				timer1.isVisible=false;
				timer2.isVisible=false;
				timer3.isVisible=false;
				timer4.isVisible=false;
				timer5.isVisible=false;
				
				clockText12.isVisible=false;
				clockText13.isVisible=false;
				clockText14.isVisible=false;
				clockText15.isVisible=false;
				clockText16.isVisible=false;
			
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
				
				timer4Menu.isVisible=false;
				start4.isVisible=false;
				stop4.isVisible=false;
				pause4.isVisible=false;
				
				timer5Menu.isVisible=false;
				start5.isVisible=false;
				stop5.isVisible=false;
				pause5.isVisible=false;
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
				
				timer4Menu.isVisible=false;
				start4.isVisible=false;
				stop4.isVisible=false;
				pause4.isVisible=false;
				clockText15.isVisible=false;
				timer4.isVisible=false;
				
				timer5Menu.isVisible=false;
				start5.isVisible=false;
				stop5.isVisible=false;
				pause5.isVisible=false;
				
				timer1Flag=1;
				timer2Flag=0;
				timer3Flag=0;
				timer4Flag=0;
				timer5Flag=0;
				
			else
				clockText15.isVisible=true;
				timer4.isVisible=true;
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
				
				timer4Menu.isVisible=false;
				start4.isVisible=false;
				stop4.isVisible=false;
				pause4.isVisible=false;
				
				timer5Menu.isVisible=false;
				start5.isVisible=false;
				stop5.isVisible=false;
				pause5.isVisible=false;
				clockText16.isVisible=false;
				timer5.isVisible=false;
				
				timer1Flag=0;
				timer2Flag=1;
				timer3Flag=0;
				timer4Flag=0;
				timer5Flag=0;
			else
				clockText16.isVisible=true;
				timer5.isVisible=true;
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
				
				timer4Menu.isVisible=false;
				start4.isVisible=false;
				stop4.isVisible=false;
				pause4.isVisible=false;
				
				timer5Menu.isVisible=false;
				start5.isVisible=false;
				stop5.isVisible=false;
				pause5.isVisible=false;
				
				timer1Flag=0;
				timer2Flag=0;
				timer3Flag=1;
				timer4Flag=0;
				timer5Flag=0;
			else
				timer3Menu.isVisible=false;
				start3.isVisible=false;
				stop3.isVisible=false;
				pause3.isVisible=false;
				timer3Flag=0;
			end
		end
	end
	
	local function handleTimer4 (event)
		if ( event.phase == "began" ) then
			if(timer4Flag==0) then
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
				
				timer4Menu.isVisible=true;
				start4.isVisible=true;
				stop4.isVisible=true;
				pause4.isVisible=true;
				
				timer5Menu.isVisible=false;
				start5.isVisible=false;
				stop5.isVisible=false;
				pause5.isVisible=false;
				
				timer1Flag=0;
				timer2Flag=0;
				timer3Flag=0;
				timer4Flag=1;
				timer5Flag=0;
			else
				timer4Menu.isVisible=false;
				start4.isVisible=false;
				stop4.isVisible=false;
				pause4.isVisible=false;
				timer4Flag=0;
			end
		end
	end
	local function handleTimer5 (event)
		if ( event.phase == "began" ) then
			if(timer5Flag==0) then
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
				
				timer4Menu.isVisible=false;
				start4.isVisible=false;
				stop4.isVisible=false;
				pause4.isVisible=false;
				
				timer5Menu.isVisible=true;
				start5.isVisible=true;
				stop5.isVisible=true;
				pause5.isVisible=true;
				
				timer1Flag=0;
				timer2Flag=0;
				timer3Flag=0;
				timer4Flag=0;
				timer5Flag=1;
			else
				timer5Menu.isVisible=false;
				start5.isVisible=false;
				stop5.isVisible=false;
				pause5.isVisible=false;
				timer5Flag=0;
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
				local secondsLeft = 45 * 60 
					local function updateTime()
						-- decrement the number of seconds
						secondsLeft = secondsLeft - 1
						-- time is tracked in seconds.  We need to convert it to minutes and seconds
						local minutes = math.floor( secondsLeft / 60 )
						local seconds = secondsLeft % 60	
						-- make it a string using string format.  
						local timeDisplay = string.format( "%02d:%02d", minutes, seconds )
						clockText12.text = timeDisplay
						if(secondsLeft  == 0) then
							audio.play(alarm);
							alarm12.isVisible=true;
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
				local secondsLeft = 10 * 60 
				local function updateTime()
					-- decrement the number of seconds
					secondsLeft = secondsLeft - 1
					-- time is tracked in seconds.  We need to convert it to minutes and seconds
					local minutes = math.floor( secondsLeft / 60 )
					local seconds = secondsLeft % 60
					-- make it a string using string format.  
					local timeDisplay = string.format( "%02d:%02d", minutes, seconds )
					clockText13.text = timeDisplay
					if(secondsLeft  == 0) then
						audio.play(alarm);
						alarm13.isVisible=true;
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
				local secondsLeft = 20 * 60
				local function updateTime()
					-- decrement the number of seconds
					secondsLeft = secondsLeft - 1
					-- time is tracked in seconds.  We need to convert it to minutes and seconds
					local minutes = math.floor( secondsLeft / 60 )
					local seconds = secondsLeft % 60
					-- make it a string using string format.  
					local timeDisplay = string.format( "%02d:%02d", minutes, seconds )
					clockText14.text = timeDisplay
					if(secondsLeft  == 0) then
						audio.play(alarm);
						alarm14.isVisible=true;
						end
				end
			 countDownTimer3 = timer.performWithDelay( 1000, updateTime, secondsLeft )		
			end;
		end
	end
	
	local function startTimer4( event )
		if ( event.phase == "began" ) then
			if(start4Flag == 1 and pause4Flag == 1 and stop4Flag == 0) then
				timer.resume(countDownTimer4);
				pause4Flag=0;
			else
				start4Flag=1;
				stop4Flag=0;
				local secondsLeft = 5 * 60
				local function updateTime()
					-- decrement the number of seconds
					secondsLeft = secondsLeft - 1
					-- time is tracked in seconds.  We need to convert it to minutes and seconds
					local minutes = math.floor( secondsLeft / 60 )
					local seconds = secondsLeft % 60
					-- make it a string using string format.  
					local timeDisplay = string.format( "%02d:%02d", minutes, seconds )
					clockText15.text = timeDisplay
					if(secondsLeft  == 0) then
						audio.play(alarm);
						alarm15.isVisible=true;
					end
				end
			 countDownTimer4 = timer.performWithDelay( 1000, updateTime, secondsLeft )		
			end;
		end
	end
	
	local function startTimer5( event )
		if ( event.phase == "began" ) then
			if(start5Flag == 1 and pause5Flag == 1 and stop5Flag == 0) then
				timer.resume(countDownTimer5);
				pause5Flag=0;
			else
				start5Flag=1;
				stop5Flag=0;
				local secondsLeft = 10 * 60
				local function updateTime()
					-- decrement the number of seconds
					secondsLeft = secondsLeft - 1
					-- time is tracked in seconds.  We need to convert it to minutes and seconds
					local minutes = math.floor( secondsLeft / 60 )
					local seconds = secondsLeft % 60
					-- make it a string using string format.  
					local timeDisplay = string.format( "%02d:%02d", minutes, seconds )
					clockText16.text = timeDisplay
					if(secondsLeft  == 0) then
						audio.play(alarm);
						alarm16.isVisible=true;
					end
				end
			 countDownTimer5 = timer.performWithDelay( 1000, updateTime, secondsLeft )		
			end;
		end
	end
	
	
	local function stopTimer1 (event)
		if ( event.phase == "began" ) then
			if(start1Flag == 1) then
				stop1Flag=1;
				timer.cancel(countDownTimer1);
				clockText12:removeSelf();
				clockText12 = display.newText("45:00", 120, -20, native.systemFontBold, 20)
				clockText12.x=65;
				clockText12.y=420;
				clockText12:setFillColor( 225, 126, 38 )
			end
		end
	end
	local function stopTimer2 (event)
		if ( event.phase == "began" ) then
			if(start2Flag == 1) then
				stop2Flag=1;
				timer.cancel(countDownTimer2);
				clockText13:removeSelf();
				clockText13 = display.newText("10:00", 120, -20, native.systemFontBold, 20)
				clockText13:setFillColor( 225, 126, 38 )
				clockText13.x=170;
				clockText13.y=420;
			end
		end
	end
	local function stopTimer3 (event)
		if ( event.phase == "began" ) then
			if(start3Flag == 1) then
				stop3Flag=1;
				timer.cancel(countDownTimer3);
				clockText14:removeSelf();
				clockText14 = display.newText("20:00", 120, -20, native.systemFontBold, 20)
				clockText14:setFillColor( 225, 126, 38 )
				clockText14.x=276;
				clockText14.y=420;
			end
		end
	end
	local function stopTimer4 (event)
		if ( event.phase == "began" ) then
			if(start4Flag == 1) then
				stop4Flag=1;
				timer.cancel(countDownTimer4);
				clockText15:removeSelf();
				clockText15 = display.newText("5:00", 120, -20, native.systemFontBold, 20)
				clockText15:setFillColor( 225, 126, 38 )
				clockText15.x=65;
				clockText15.y=383;
			end
		end
	end
	local function stopTimer5 (event)
		if ( event.phase == "began" ) then
			if(start5Flag == 1) then
				stop5Flag=1;
				timer.cancel(countDownTimer5);
				clockText16:removeSelf();
				clockText16 = display.newText("10:00", 120, -20, native.systemFontBold, 20)
				clockText16:setFillColor( 225, 126, 38 )
				clockText16.x=170;
				clockText16.y=383;
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
	local function pauseTimer4 (event)
		if ( event.phase == "began" ) then
			if(start4Flag == 1) then
				pause4Flag =1;
				timer.pause(countDownTimer4);
			end
		end
	end
	local function pauseTimer5 (event)
		if ( event.phase == "began" ) then
			if(start5Flag == 1) then
				pause5Flag =1;
				timer.pause(countDownTimer5);
			end
		end
	end
	
	local function closeMenus(event)
		if(event.phase == "began" ) then
			if(pause1Flag==1 or stop1Flag ==1) then
				clockText12.text="45:00"
			end
			if(pause2Flag==1 or stop2Flag ==1) then
				clockText13.text="10:00"
			end
			if(pause3Flag==1 or stop3Flag ==1) then
				clockText14.text="20:00"
			end
			if(pause4Flag==1 or stop4Flag ==1) then
				clockText15.text="5:00"
			end
			if(pause5Flag==1 or stop5Flag ==1) then
				clockText16.text="10:00"
			end
			timer1.isVisible=false;
			timer2.isVisible=false;
			timer3.isVisible=false;
			timer4.isVisible=false;
			timer5.isVisible=false;
				
			clockText12.isVisible=false;
			clockText13.isVisible=false;
			clockText14.isVisible=false;
			clockText15.isVisible=false;
			clockText16.isVisible=false;
			
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
			
			timer4Menu.isVisible=false;
			start4.isVisible=false;
			stop4.isVisible=false;
			pause4.isVisible=false;
				
			timer5Menu.isVisible=false;
			start5.isVisible=false;
			stop5.isVisible=false;
			pause5.isVisible=false;
			
			setTimerFlag=0;
		end
	end
	
	local function stopAlarm12(event)
		if(event.phase == "began" ) then
			alarm12.isVisible=false;
		end
	end
	
	local function stopAlarm13(event)
		if(event.phase == "began" ) then
			alarm13.isVisible=false;
		end
	end
	
	local function stopAlarm14(event)
		if(event.phase == "began" ) then
			audio.stop();
			alarm14.isVisible=false;
		end
	end
	
	local function stopAlarm15(event)
		if(event.phase == "began" ) then
			audio.stop();
			alarm15.isVisible=false;
		end
	end
	
	local function stopAlarm16(event)
		if(event.phase == "began" ) then
			audio.stop();
			alarm16.isVisible=false;
		end
	end
	
	alarm12:addEventListener("touch",stopAlarm12)
	alarm13:addEventListener("touch",stopAlarm13)
	alarm14:addEventListener("touch",stopAlarm14)
	alarm15:addEventListener("touch",stopAlarm15)
	alarm16:addEventListener("touch",stopAlarm16)
	
	timerButton:addEventListener( "touch", handleTimerButton )
	
	timer1:addEventListener( "touch", handleTimer1)
	timer2:addEventListener( "touch", handleTimer2)
	timer3:addEventListener( "touch", handleTimer3)
	timer4:addEventListener( "touch", handleTimer4)
	timer5:addEventListener( "touch", handleTimer5)
	
	start1:addEventListener( "touch", startTimer1)
	start2:addEventListener( "touch", startTimer2)
	start3:addEventListener( "touch", startTimer3)
	start4:addEventListener( "touch", startTimer4)
	start5:addEventListener( "touch", startTimer5)
	
	pause1:addEventListener("touch",pauseTimer1)
	pause2:addEventListener("touch",pauseTimer2)
	pause3:addEventListener("touch",pauseTimer3)
	pause4:addEventListener("touch",pauseTimer4)
	pause5:addEventListener("touch",pauseTimer5)
	
	stop1:addEventListener("touch",stopTimer1)
	stop2:addEventListener("touch",stopTimer2)
	stop3:addEventListener("touch",stopTimer3)
	stop4:addEventListener("touch",stopTimer4)
	stop5:addEventListener("touch",stopTimer5)
	
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
