local allowCountdown = false
function onCreate()

addLuaScript('dialogue')

end

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

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'dialogue');
		speak(1)
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
	playSound('meditation/' ..shit,1,'your sound')
	playSound('meditation/' ..shit,1,'your sound1')
	playSound('meditation/' ..shit,1,'your sound2')
	playSound('meditation/' .. shit,1,'your sound3')
	playSound('meditation/' .. shit,1,'your sound4')
	playSound('meditation/' .. shit,1,'your sound5') 
	playSound('meditation/' .. shit,1,'your sound6')
	playSound('meditation/' ..shit,1,'your sound7')
	playSound('meditation/' ..shit,1,'your sound8')
	playSound('meditation/' .. shit,1,'your sound9')
	playSound('meditation/' .. shit,1,'your sound10')
	playSound('meditation/' .. shit,1,'your sound11') 
	playSound('meditation/' .. shit,1,'your sound12')
	playSound('meditation/' ..shit,1,'your sound13')
	playSound('meditation/' ..shit,1,'your sound14')
	playSound('meditation/' .. shit,1,'your sound15')
	playSound('meditation/' .. shit,1,'your sound16')
	playSound('meditation/' .. shit,1,'your sound17') 
	playSound('meditation/' .. shit,1,'your sound18')
	playSound('meditation/' ..shit,1,'your sound19')
	playSound('meditation/' ..shit,1,'your sound20')
	playSound('meditation/' .. shit,1,'your sound21')
	playSound('meditation/' .. shit,1,'your sound22')
	playSound('meditation/' .. shit,1,'your sound23') 
	playSound('meditation/' .. shit,1,'your sound24')
	playSound('meditation/' ..shit,1,'your sound25')
end