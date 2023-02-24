function onUpdate()
        if curBeat == 16 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 1.5, 8,'smootherStepInOut');
            doTweenAlpha('aaa', 'aa', 1, 3.5, 'smoothStepIn')

            function opponentNoteHit()
                health = getProperty('health')
                    if getProperty('health') > 0.05 then
                        setProperty('health', health- 0.019);
                    end
            end
        end
        if curBeat == 32 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 0.55, 4,'expoOut');
            setProperty('aa.alpha', 0)
        end
        if curBeat == 232 then
            doTweenZoom('screenZoom','camGame', 0.9, 0.5,'backIn');

            function onMoveCamera(focus)
                if focus == 'boyfriend' then
                    setProperty('defaultCamZoom', 0.9)
                end
            end
        end
        if curBeat == 236 then
            doTweenZoom('screenZoom','camGame', 0.8, 0.5,'backIn');

            function onMoveCamera(focus)
                if focus == 'boyfriend' then
                    setProperty('defaultCamZoom', 0.8)
                end
            end
        end
        if curBeat == 240 then
            doTweenZoom('screenZoom','camGame', 0.9, 0.5,'backIn');

            function onMoveCamera(focus)
                if focus == 'boyfriend' then
                    setProperty('defaultCamZoom', 0.9)
                end
            end
        end
        if curBeat == 242 then
            doTweenZoom('screenZoom','camGame', 1, 0.5,'backIn');

            function onMoveCamera(focus)
                if focus == 'boyfriend' then
                    setProperty('defaultCamZoom', 1)
                end
            end
        end
        if curBeat == 244 then
            doTweenZoom('screenZoom','camGame', 0.9, 0.5,'backIn');

            function onMoveCamera(focus)
                if focus == 'boyfriend' then
                    setProperty('defaultCamZoom', 0.9)
                end
            end
        end
        if curBeat == 246 then
            doTweenZoom('screenZoom','camGame', 0.9, 0.5,'backIn');

            function onMoveCamera(focus)
                if focus == 'boyfriend' then
                    setProperty('defaultCamZoom', 1)
                end
            end
        end
        if curBeat == 247 then
            doTweenZoom('screenZoom','camGame', 1.35, 0.5,'backIn');

            function onMoveCamera(focus)
                if focus == 'boyfriend' then
                    setProperty('defaultCamZoom', 1.35)
                end
            end
        end
        if curBeat == 248 then
            doTweenZoom('screenZoom','camGame', 0.75, 1,'expoOut');

            function onMoveCamera(focus)
                if focus == 'boyfriend' then
                    setProperty('defaultCamZoom', 0.75)
                end
            end
        end
        if curBeat == 264 then
            function opponentNoteHit()
                health = getProperty('health')
                    if getProperty('health') > 0.05 then
                        setProperty('health', health- 0);
                    end
            end

            doTweenAlpha('staticfade', 'static', 1, 1, 'linear')
        end
        if curBeat == 269 then
            doTweenZoom('screenZoom','camGame', 0.9, 0.2,'backIn');
            setProperty('defaultCamZoom', 0.9)
        end
        if curBeat == 272 then
            doTweenAlpha('staticfade', 'static', 0.05, 1, 'linear')
        end
        if curBeat == 335 then
                    
        end
        if curBeat == 372 then
            doTweenAlpha('staticfade', 'static', 1, 2.5, 'linear')
        end
        if curBeat == 382 then
            doTweenAlpha('staticfade', 'static', 0, 1, 'linear')
            setProperty('ame.alpha', 1)
            setProperty('bry.alpha', 1)
        end
        if curBeat == 383 then
            function opponentNoteHit()
                health = getProperty('health')
                    if getProperty('health') > 0.05 then
                        setProperty('health', health- 0.019);
                    end
            end
        end
        --[[if curBeat == 446 then
            for i = 0, 7 do
              noteTweenAlpha('die'..i, i, 0, 0.000000000001, 'linear')
            end
        end
        if curBeat == 450 then
            for i = 0, 7 do
              noteTweenAlpha('die'..i, i, 1, 0.000000000001, 'linear')
            end
        end]]
        if curStep == 1800 and flashingLights == true then
            setProperty('aa.alpha', 0)
            for i = 0, 7 do
              noteTweenAlpha('die'..i, i, 0, 0.000000000001, 'linear')
            end
        end
        if curStep == 1801 and flashingLights == true then
            setProperty('aa.alpha', 1)
            doTweenZoom('screenZoom','camGame', 1, 0.8,'linear');
            doTweenAngle('screenTilt','camGame', 5, 0.000000000001,'linear');
        end
        if curStep == 1802 and flashingLights == true then
            setProperty('aa.alpha', 0)
        end
        if curStep == 1803 and flashingLights == true then
            setProperty('aa.alpha', 1)
            doTweenAngle('screenTilt','camGame', -10, 0.000000000001,'linear');
        end
        if curStep == 1804 and flashingLights == true then
            setProperty('aa.alpha', 0)
            for i = 0, 7 do
              noteTweenAlpha('die'..i, i, 1, 0.0000000000000000000000000000001, 'linear')
            end
        end
        if curStep == 1805 and flashingLights == true then
            setProperty('aa.alpha', 1)
            doTweenAngle('screenTilt','camGame', 15, 0.000000000001,'linear');
        end
        if curStep == 1806 and flashingLights == true then
            setProperty('aa.alpha', 0)
        end
        if curStep == 1807 and flashingLights == true then
            setProperty('aa.alpha', 1)
        end
        if curStep == 1808 and flashingLights == true then
            setProperty('aa.alpha', 0)
            doTweenZoom('screenZoom','camGame', 0.55, 1,'smoothStepOut');
            doTweenAngle('screenTilt','camGame', 0, 0.2,'expoOut');
        end
        if curStep == 1800 and flashingLights == false then
            for i = 0, 7 do
              noteTweenAlpha('die'..i, i, 0, 0.000000000001, 'linear')
            end
        end
        if curStep == 1801 and flashingLights == false then
            doTweenZoom('screenZoom','camGame', 1, 0.8,'linear');
            doTweenAngle('screenTilt','camGame', 5, 0.000000000001,'linear');
        end
        if curStep == 1803 and flashingLights == false then
            doTweenAngle('screenTilt','camGame', -10, 0.000000000001,'linear');
        end
        if curStep == 1804 and flashingLights == false then
            for i = 0, 7 do
              noteTweenAlpha('die'..i, i, 1, 0.0000000000000000000000000000001, 'linear')
            end
        end
        if curStep == 1805 and flashingLights == false then
            doTweenAngle('screenTilt','camGame', 15, 0.000000000001,'linear');
        end
        if curStep == 1808 and flashingLights == false then
            doTweenZoom('screenZoom','camGame', 0.55, 1,'smoothStepOut');
            doTweenAngle('screenTilt','camGame', 0, 0.2,'expoOut');
        end
end