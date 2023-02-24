function onUpdate()
        if curBeat == 315 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 3.5, 2.6,'expoIn');
        end
        if curBeat == 324 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
                makeLuaSprite('vignette', 'stress', 0, 0)
                setProperty('vignette.alpha', 0)
                setObjectOrder('vignette', 100);
                setObjectCamera('vignette', 'camOther')

            doTweenAlpha('vignettefade', 'vignette', 0.3, 1.5, 'smoothStepInOut')

            function opponentNoteHit()
                health = getProperty('health')
                    if getProperty('health') > 0.05 then
                        setProperty('health', health- 0.015);
                    end
            end
        end
        if curBeat == 356 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenAlpha('vignettefade', 'vignette', 0.5, 2, 'smoothStepInOut')

            function opponentNoteHit()
                health = getProperty('health')
                    if getProperty('health') > 0.05 then
                        setProperty('health', health- 0.025);
                    end
            end
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
