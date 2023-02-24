local allowCountdown = false;
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and dadName == 'liamcast' and isStoryMode then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'dialogue');
		speak(1)
	end
	if tag == 'startPostDialogue' then -- Timer completed, play dialogue
		startDialogue('postdialogue1', 'dialogue');
	end
	if tag == 'idk' then
		setProperty('lol.alpha', 0)
		setProperty('dialoguescene2.alpha', 1)
	end
	if tag == 'startPostDialogue2' then -- Timer completed, play dialogue
		startDialogue('postdialogue2', 'dialogue');
		removeLuaSprite('dialoguescene1')
		removeLuaSprite('lol')
	end
	if tag == 'startPostDialogue3' then -- Timer completed, play dialogue
		startDialogue('postdialogue3', 'dialogue');
		removeLuaSprite('dialoguescene2')
	end
end

local dialogueCount = 0

function onEndSong()
	if dialogueCount == 0 and dadName == 'liamcast' and isStoryMode then
		playDialogue = true
		runTimer('startPostDialogue', 2)
		doTweenAlpha('aaaa', 'healthBar', 0, 1, 'smoothStepInOut')
		doTweenAlpha('aaaaa', 'healthBarBG', 0, 1, 'smoothStepInOut')
		doTweenAlpha('aaaaaa', 'healthText', 0, 1, 'smoothStepInOut')
		doTweenAlpha('aaa', 'iconP2', 0, 1, 'smoothStepInOut')
		doTweenAlpha('a', 'iconP1', 0, 1, 'smoothStepInOut')
		doTweenAlpha('abbdasd', 'bars', 0, 1, 'smoothStepInOut')
		doTweenAlpha('abbdasdwqwdq', 'scoreTxt', 0, 1, 'smoothStepInOut')
		doTweenAlpha('scene1', 'dialoguescene1', 1, 1, 'smoothStepInOut')
		for i=0,7 do
	    	noteTweenAlpha('dieaaa'..i, i, 0, 1, 'smoothStepInOut')
	    end
		dialogueCount = dialogueCount + 1
		return Function_Stop;	
	elseif dialogueCount == 1 and dadName == 'liamcast' and isStoryMode then
		setProperty('lol.alpha', 1)
		setProperty('dialoguescene1.alpha', 0)
		runTimer('idk', 2)
		runTimer('startPostDialogue2', 4);
		playDialogue = false;
		playDialogue2 = true;
		dialogueCount = dialogueCount + 1
		return Function_Stop;
	elseif dialogueCount == 2 and dadName == 'liamcast' and isStoryMode then
		doTweenAlpha('scene3', 'dialoguescene3', 1, 1, 'smoothStepInOut')
		runTimer('startPostDialogue3', 2);
		playDialogue2 = false
		playDialogue3 = true
		seenlastdialouge = true
		dialogueCount = dialogueCount + 1
		return Function_Stop;
	end
	return Function_Continue;
end

function onNextDialogue(count)
	speak(count+1)
	if count == 22 then
		stopSound('sound21')
	end
end

function onSkipDialogue(count)
	stopSound('sound')
	stopSound('sound1')
	stopSound('sound2')
	stopSound('sound3')
	stopSound('sound4')
	stopSound('sound5')
	stopSound('sound6')
	stopSound('sound7')
	stopSound('sound8')
	stopSound('sound9')
	stopSound('sound10')
	stopSound('sound11')
	stopSound('sound12')
	stopSound('sound13')
	stopSound('sound14')
	stopSound('sound15')
	stopSound('sound16')
	stopSound('sound17')
	stopSound('sound18')
	stopSound('sound19')
	stopSound('sound20')
	stopSound('sound21')
	stopSound('sound22')
	stopSound('sound23')
	stopSound('sound24')
	stopSound('sound25')
	stopSound('sound26')
	stopSound('sound27')
	stopSound('sound28')
	stopSound('sound29')
	stopSound('sound30')
end

function speak(shit)
	stopSound('sound')
	stopSound('sound1')
	stopSound('sound2')
	stopSound('sound3')
	stopSound('sound4')
	stopSound('sound5')
	stopSound('sound6')
	stopSound('sound7')
	stopSound('sound8')
	stopSound('sound9')
	stopSound('sound10')
	stopSound('sound11')
	stopSound('sound12')
	stopSound('sound13')
	stopSound('sound14')
	stopSound('sound15')
	stopSound('sound16')
	stopSound('sound17')
	stopSound('sound18')
	stopSound('sound19')
	stopSound('sound20')
	stopSound('sound21')
	stopSound('sound22')
	stopSound('sound23')
	stopSound('sound24')
	stopSound('sound25')
	stopSound('sound26')
	stopSound('sound27')
	stopSound('sound28')
	stopSound('sound29')
	stopSound('sound30')
	playSound('stranded/' ..shit,1,'your sound')
	playSound('stranded/' ..shit,1,'your sound1')
	playSound('stranded/' ..shit,1,'your sound2')
	playSound('stranded/' .. shit,1,'your sound3')
	playSound('stranded/' .. shit,1,'your sound4')
	playSound('stranded/' .. shit,1,'your sound5') 
	playSound('stranded/' .. shit,1,'your sound6')
	playSound('stranded/' ..shit,1,'your sound7')
	playSound('stranded/' ..shit,1,'your sound8')
	playSound('stranded/' .. shit,1,'your sound9')
	playSound('stranded/' .. shit,1,'your sound10')
	playSound('stranded/' .. shit,1,'your sound11') 
	playSound('stranded/' .. shit,1,'your sound12')
	playSound('stranded/' ..shit,1,'your sound13')
	playSound('stranded/' ..shit,1,'your sound14')
	playSound('stranded/' .. shit,1,'your sound15')
	playSound('stranded/' .. shit,1,'your sound16')
	playSound('stranded/' .. shit,1,'your sound17') 
	playSound('stranded/' .. shit,1,'your sound18')
	playSound('stranded/' ..shit,1,'your sound19')
	playSound('stranded/' ..shit,1,'your sound20')
	playSound('stranded/' .. shit,1,'your sound21')
	playSound('stranded/' .. shit,1,'your sound22')
	playSound('stranded/' .. shit,1,'your sound23') 
	playSound('stranded/' .. shit,1,'your sound24')
	playSound('stranded/' ..shit,1,'your sound25')
	playSound('stranded/' ..shit,1,'your sound26')
	playSound('stranded/' ..shit,1,'your sound27')
	playSound('stranded/' ..shit,1,'your sound28')
	playSound('stranded/' .. shit,1,'your sound29')
	playSound('stranded/' .. shit,1,'your sound30')
end