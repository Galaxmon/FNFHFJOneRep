local allowCountdown = false

function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and not seenCutscene and isStoryMode then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

local seenlastdialouge = false

function onEndSong()
	if isStoryMode and not seenlastdialouge then
		setProperty('inCutscene', true);
		runTimer('startPostDialogue', 0.8);
		seenlastdialouge = true
		doTweenAlpha('aaaa', 'healthBar', 0, 1, 'smoothStepInOut')
		doTweenAlpha('aaaaa', 'healthBarBG', 0, 1, 'smoothStepInOut')
		doTweenAlpha('aaaaaa', 'healthText', 0, 1, 'smoothStepInOut')
		doTweenAlpha('aaa', 'iconP2', 0, 1, 'smoothStepInOut')
		doTweenAlpha('a', 'iconP1', 0, 1, 'smoothStepInOut')
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
		startDialogue('postdialogue', 'dialogue');
	end
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end

function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
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
	playSound('folder/' ..shit,1,'your sound')
	playSound('folder/' ..shit,1,'your sound1')
	playSound('folder/' ..shit,1,'your sound2')
	playSound('folder/' .. shit,1,'your sound3')
	playSound('folder/' .. shit,1,'your sound4')
	playSound('folder/' .. shit,1,'your sound5') 
	playSound('folder/' .. shit,1,'your sound6')
	playSound('folder/' ..shit,1,'your sound7')
	playSound('folder/' ..shit,1,'your sound8')
	playSound('folder/' .. shit,1,'your sound9')
	playSound('folder/' .. shit,1,'your sound10')
	playSound('folder/' .. shit,1,'your sound11') 
	playSound('folder/' .. shit,1,'your sound12')
	playSound('folder/' ..shit,1,'your sound13')
	playSound('folder/' ..shit,1,'your sound14')
	playSound('folder/' .. shit,1,'your sound15')
	playSound('folder/' .. shit,1,'your sound16')
	playSound('folder/' .. shit,1,'your sound17') 
	playSound('folder/' .. shit,1,'your sound18')
	playSound('folder/' ..shit,1,'your sound19')
	playSound('folder/' ..shit,1,'your sound20')
	playSound('folder/' .. shit,1,'your sound21')
	playSound('folder/' .. shit,1,'your sound22')
	playSound('folder/' .. shit,1,'your sound23') 
	playSound('folder/' .. shit,1,'your sound24')
	playSound('folder/' ..shit,1,'your sound25')
	playSound('folder/' ..shit,1,'your sound26')
	playSound('folder/' ..shit,1,'your sound27')
	playSound('folder/' ..shit,1,'your sound28')
	playSound('folder/' .. shit,1,'your sound29')
	playSound('folder/' .. shit,1,'your sound30')
end

function onCreate()
	addLuaScript('dialogue')
	addLuaScript('postdialogue')

	makeLuaSprite('ad1', 'advertisementlean', 300, 200)
	setObjectCamera('ad1', 'camOther')
	setObjectOrder('ad1', 20)
	setProperty('ad1.alpha', 0)
	scaleObject('ad1', 0.8, 0.8)

	makeLuaSprite('ad2', 'advertisementmilkshake', 100, 400)
	setObjectCamera('ad2', 'camOther')
	setObjectOrder('ad2', 22)
	setProperty('ad2.alpha', 0)
	scaleObject('ad2', 0.8, 0.8)

	makeLuaSprite('ad3', 'advertisementjamie', 500, 100)
	setObjectCamera('ad3', 'camOther')
	setObjectOrder('ad3', 21)
	setProperty('ad3.alpha', 0)
	scaleObject('ad3', 0.8, 0.8)

	makeLuaSprite('ad137', 'advertisement137', 137, 137)
	setObjectCamera('ad137', 'camOther')
	setObjectOrder('ad137', 137)
	setProperty('ad137.alpha', 0)
	scaleObject('ad137', 0.8, 0.8)

end

function  onUpdate()
	if curBeat == 30 then
		setProperty('ad1.alpha', 1)
		playSound('nothing')
	end
	if curBeat == 50 then
		setProperty('ad1.alpha', 0)
		playSound('nothing')
	end
	if curBeat == 86 then
		setProperty('ad2.alpha', 1)
		playSound('nothing')
	end
	if curBeat == 110 then
		setProperty('ad2.alpha', 0)
		playSound('nothing')
	end
	if curBeat == 137 then
		setProperty('ad137.alpha', 1)
		playSound('nothing')
	end
	if curBeat == 160 then
		removeLuaSprite('ad137')
		playSound('nothing')
	end
	if curBeat == 200 then
		setProperty('ad3.alpha', 1)
		playSound('nothing')
	end
	if curBeat == 235 then
		setProperty('ad3.alpha', 0)
		playSound('nothing')
	end
end