local dialogueCount = 0
local allowCountdown = false;

function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if dialogueCount == 0 and not allowCountdown and isStoryMode then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 2);
		dialogueCount = dialogueCount + 1
		return Function_Stop;
	elseif dialogueCount == 1 and isStoryMode then
		setProperty('dialoguescene2.alpha', 1)
		removeLuaSprite('dialoguescene1')
		runTimer('land', 1.2)
		runTimer('startDialogue2', 2.5);
		dialogueCount = dialogueCount + 1
		return Function_Stop;
	elseif dialogueCount == 2 and isStoryMode then
		doTweenAlpha('ass', 'dialoguescene4', 1, 1, 'smoothStepInOut')
		runTimer('startDialogue3', 2);
		dialogueCount = dialogueCount + 1
		allowCountdown = true
		return Function_Stop;
	end

	doTweenAlpha('asss', 'dialoguescene4', 0, 1, 'smoothStepInOut')
	doTweenAlpha('aaaa', 'healthBar', 1, 1, 'smoothStepInOut')
	doTweenAlpha('aaaaa', 'healthBarBG', 1, 1, 'smoothStepInOut')
	doTweenAlpha('aaaaaa', 'healthText', 1, 1, 'smoothStepInOut')
	doTweenAlpha('aaa', 'iconP2', 1, 1, 'smoothStepInOut')
	doTweenAlpha('a', 'iconP1', 1, 1, 'smoothStepInOut')
	doTweenAlpha('abbdasdwqwdq', 'scoreTxt', 1, 1, 'smoothStepInOut')

	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue1', 'dialogue');
		speak(1)
	end
	if tag == 'land' then
		setProperty('dialoguescene3.alpha', 1)
		removeLuaSprite('dialoguescene2')
	end
	if tag == 'startDialogue2' then -- Timer completed, play dialogue
		startDialogue('dialogue2', 'dialogue');
	end
	if tag == 'startDialogue3' then -- Timer completed, play dialogue
		startDialogue('dialogue3', 'dialogue');
		removeLuaSprite('dialoguescene3')
	end
	if tag == 'startPostDialogue' then -- Timer completed, play dialogue
		startDialogue('postdialogue1', 'dialogue');
	end
	if tag == 'startPostDialogue2' then -- Timer completed, play dialogue
		startDialogue('postdialogue2', 'dialogue');
	end
	if tag == 'blackscreen' then
		setProperty('black.alpha', 1)
	end
	if tag == 'scenefade' then
		setProperty('dialoguescene6.alpha', 1)
		doTweenAlpha('blacktween', 'black', 0, 1, 'smoothStepInOut')
	end
	if tag == 'fivemonths' then
		doTweenAlpha('piss', 'dialoguescene7', 1, 1, 'smoothStepInOut')
	end
	if tag == 'startPostDialogue3' then -- Timer completed, play dialogue
		startDialogue('postdialogue3', 'dialogue');
	end
	if tag == 'startPostDialogue4' then -- Timer completed, play dialogue
		startDialogue('postdialogue4', 'dialogue');
	end
	if tag == 'dissapearin' then
		setProperty('dialoguescenewhat.alpha', 1)
	end
	if tag == 'startPostDialogueaa' then -- Timer completed, play dialogue
		startDialogue('postdialogueaa', 'dialogue');
	end
	if tag == 'goback' then
		setProperty('dialoguescene8.alpha', 1)
	end
	if tag == 'startPostDialogue5' then -- Timer completed, play dialogue
		startDialogue('postdialogue5', 'dialogue');

	end
end

function onEndSong()
	if dialogueCount == 3 and isStoryMode then
		runTimer('startPostDialogue', 1)
		dialogueCount = dialogueCount + 1

		doTweenAlpha('aaaa', 'healthBar', 0, 1, 'smoothStepInOut')
		doTweenAlpha('aaaaa', 'healthBarBG', 0, 1, 'smoothStepInOut')
		doTweenAlpha('aaaaaa', 'healthText', 0, 1, 'smoothStepInOut')
		doTweenAlpha('aaa', 'iconP2', 0, 1, 'smoothStepInOut')
		doTweenAlpha('a', 'iconP1', 0, 1, 'smoothStepInOut')
		doTweenAlpha('abbdasdwqwdq', 'scoreTxt', 0, 1, 'smoothStepInOut')

		for i=0,7 do
	    	noteTweenAlpha('dieaaa'..i, i, 0, 1, 'smoothStepInOut')
	    end

		return Function_Stop;	
	elseif dialogueCount == 4 and isStoryMode then
		runTimer('startPostDialogue2', 2);
		doTweenAlpha('assa', 'dialoguescenebefore5', 1, 1, 'smoothStepInOut')

		doTweenAlpha('abbdasd', 'bars', 0, 1, 'smoothStepInOut')

		dialogueCount = dialogueCount + 1
		return Function_Stop;
	elseif dialogueCount == 5 and isStoryMode then
		setProperty('dialoguescene5.alpha', 1)
		playSound('carcrash')
		runTimer('blackscreen', 1.7)
		runTimer('scenefade', 3)
		runTimer('startPostDialogue3', 7);
		dialogueCount = dialogueCount + 1
		return Function_Stop;
	elseif dialogueCount == 6 and isStoryMode then
		setProperty('lol.alpha', 1)
		removeLuaSprite('dialoguescene6')
		removeLuaSprite('dialoguescene5')
		removeLuaSprite('dialoguescene4')
		removeLuaSprite('dialoguescene1')
		runTimer('fivemonths', 2)
		runTimer('startPostDialogue4', 4);
		dialogueCount = dialogueCount + 1
		return Function_Stop;
	elseif dialogueCount == 7 and isStoryMode then
		runTimer('dissapearin', 2.91)
		playSound('radioteleport')
		runTimer('startPostDialogueaa', 4);
		dialogueCount = dialogueCount + 1
		return Function_Stop;
	elseif dialogueCount == 8 and isStoryMode then
		setProperty('dialoguesceneradio.alpha', 1)
		runTimer('goback', 2.91)
		playSound('radioteleport')
		runTimer('startPostDialogue5', 4);
		dialogueCount = dialogueCount + 1
		return Function_Stop;
	end
	return Function_Continue;
end

function onNextDialogue(count)
	speak(count+1)
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
	stopSound('sound31')
	stopSound('sound32')
	stopSound('sound33')
	stopSound('sound34')
	stopSound('sound35')
	stopSound('sound36')
	stopSound('sound37')
	stopSound('sound38')
	stopSound('sound39')
	stopSound('sound40')
	stopSound('sound41')
	stopSound('sound42')
	stopSound('sound43')
	stopSound('sound44')
	stopSound('sound45')
	stopSound('sound46')
	stopSound('sound47')
	stopSound('sound48')
	stopSound('sound49')
	stopSound('sound50')
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
	stopSound('sound31')
	stopSound('sound32')
	stopSound('sound33')
	stopSound('sound34')
	stopSound('sound35')
	stopSound('sound36')
	stopSound('sound37')
	stopSound('sound38')
	stopSound('sound39')
	stopSound('sound40')
	stopSound('sound41')
	stopSound('sound42')
	stopSound('sound43')
	stopSound('sound44')
	stopSound('sound45')
	stopSound('sound46')
	stopSound('sound47')
	stopSound('sound48')
	stopSound('sound49')
	stopSound('sound50')
	playSound('carnitas/' ..shit,1,'your sound')
	playSound('carnitas/' ..shit,1,'your sound1')
	playSound('carnitas/' ..shit,1,'your sound2')
	playSound('carnitas/' .. shit,1,'your sound3')
	playSound('carnitas/' .. shit,1,'your sound4')
	playSound('carnitas/' .. shit,1,'your sound5') 
	playSound('carnitas/' .. shit,1,'your sound6')
	playSound('carnitas/' ..shit,1,'your sound7')
	playSound('carnitas/' ..shit,1,'your sound8')
	playSound('carnitas/' .. shit,1,'your sound9')
	playSound('carnitas/' .. shit,1,'your sound10')
	playSound('carnitas/' .. shit,1,'your sound11') 
	playSound('carnitas/' .. shit,1,'your sound12')
	playSound('carnitas/' ..shit,1,'your sound13')
	playSound('carnitas/' ..shit,1,'your sound14')
	playSound('carnitas/' .. shit,1,'your sound15')
	playSound('carnitas/' .. shit,1,'your sound16')
	playSound('carnitas/' .. shit,1,'your sound17') 
	playSound('carnitas/' .. shit,1,'your sound18')
	playSound('carnitas/' ..shit,1,'your sound19')
	playSound('carnitas/' ..shit,1,'your sound20')
	playSound('carnitas/' .. shit,1,'your sound21')
	playSound('carnitas/' .. shit,1,'your sound22')
	playSound('carnitas/' .. shit,1,'your sound23') 
	playSound('carnitas/' .. shit,1,'your sound24')
	playSound('carnitas/' ..shit,1,'your sound25')
	playSound('carnitas/' ..shit,1,'your sound26')
	playSound('carnitas/' ..shit,1,'your sound27')
	playSound('carnitas/' ..shit,1,'your sound28')
	playSound('carnitas/' .. shit,1,'your sound29')
	playSound('carnitas/' .. shit,1,'your sound30')
	playSound('carnitas/' .. shit,1,'your sound31')
	playSound('carnitas/' .. shit,1,'your sound32') 
	playSound('carnitas/' .. shit,1,'your sound33')
	playSound('carnitas/' ..shit,1,'your sound34')
	playSound('carnitas/' ..shit,1,'your sound35')
	playSound('carnitas/' .. shit,1,'your sound36')
	playSound('carnitas/' .. shit,1,'your sound37')
	playSound('carnitas/' .. shit,1,'your sound38') 
	playSound('carnitas/' .. shit,1,'your sound39')
	playSound('carnitas/' ..shit,1,'your sound40')
	playSound('carnitas/' ..shit,1,'your sound41')
	playSound('carnitas/' ..shit,1,'your sound42')
	playSound('carnitas/' ..shit,1,'your sound43')
	playSound('carnitas/' .. shit,1,'your sound44')
	playSound('carnitas/' .. shit,1,'your sound45')
	playSound('carnitas/' ..shit,1,'your sound46')
	playSound('carnitas/' ..shit,1,'your sound47')
	playSound('carnitas/' ..shit,1,'your sound48')
	playSound('carnitas/' .. shit,1,'your sound49')
	playSound('carnitas/' .. shit,1,'your sound50')
end

function onCreatePost()
	setProperty('healthBar.alpha', 0)
    setProperty('healthBarBG.alpha', 0)
    setProperty('iconP2.alpha', 0)
    setProperty('iconP1.alpha', 0)
    setProperty('scoreTxt.alpha', 0)
end