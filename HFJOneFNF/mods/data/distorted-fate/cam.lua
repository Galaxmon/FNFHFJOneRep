misskill = false

function noteMiss()
    if misskill == true then
        health = getProperty('health')
        setProperty('health', health- 500);
    end
end

function onUpdate()
        if curBeat == 256 then
            doTweenAlpha('theaa', 'aa', 1, 0.1, 'linear')
        end
        if curStep == 1028 then
        doTweenAlpha('killfade', 'slaughter', 1, 0.2, 'linear')
        end
        if curStep == 1030 then
            doTweenAlpha('himfade', 'airy', 1, 0.2, 'linear')
        end
        if curBeat == 259 then
            doTweenAlpha('theaa', 'aa', 0, 0.2, 'linear')
            doTweenAlpha('killfade', 'slaughter', 0, 0.2, 'linear')
            doTweenAlpha('himfade', 'airy', 0, 0.2, 'linear')

            function opponentNoteHit()
                health = getProperty('health')
                    if getProperty('health') > 0.05 then
                        setProperty('health', health- 0.010);
                    end
            end
        end
        if curBeat == 260 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenAlpha('vignettefade', 'vignette', 0.2, 1.5, 'smoothStepInOut')
            misskill = true
            doTweenAlpha('uhoh', 'nomissallow', 0.25, 0.5, 'linear')
        end
        if curBeat == 315 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 3.5, 2.6,'expoIn');
        end
        if curBeat == 324 then
            doTweenAlpha('vignettefade', 'vignette', 0.3, 1.5, 'smoothStepInOut')
            misskill = false
            doTweenAlpha('uhoh', 'nomissallow', 0, 1, 'linear')
        end
        if curBeat == 356 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenAlpha('vignettefade', 'vignette', 0.5, 2, 'smoothStepInOut')
        end
        if curBeat == 420 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenAlpha('vignettefade', 'vignette', 0.25, 5, 'smoothStepInOut')

            function opponentNoteHit()
                health = getProperty('health')
                    if getProperty('health') > 0.05 then
                        setProperty('health', health- 0.015);
                    end
            end
        end
end