local allowCountdown = false;
local playDialogue = false;
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		startVideo('PreIsolationCutscene');
		allowCountdown = true;
		return Function_Stop;
	end
	runTimer('start', 4)
end


function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startPostDialogue' then -- Timer completed, play dialogue
		startDialogue('postdialogue', 'dialogue');
		speak(1)
	end
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
end

function speak(shit)
	stopSound('sound')
	stopSound('sound1')
	stopSound('sound2')
	stopSound('sound3')
	playSound('isolation/' ..shit,1,'your sound')
	playSound('isolation/' ..shit,1,'your sound')
	playSound('isolation/' ..shit,1,'your sound')
	playSound('isolation/' ..shit,1,'your sound')
end

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



function onUpdate()
	if curBeat == 128 then
        for i = 0, 3 do
          noteTweenAlpha('die'..i, i, 0, 0.5, 'linear')
        end
    end
    if curBeat == 160 then
        for i = 0, 3 do
          noteTweenAlpha('die'..i, i, 1, 1, 'linear')
        end
    end
end