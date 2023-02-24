function onUpdate()
        if curBeat == 1 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 0.7, 3,'backOut');
            setProperty('defaultCamZoom', 0.7)
        end
        if curBeat == 4 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 0.66, 3,'backOut');
            setProperty('defaultCamZoom', 0.66)
        end
        if curBeat == 101 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 1.6, 2,'smoothStepInOut');
            
        end
        if curBeat == 104 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            setProperty('defaultCamZoom', 1.6)
        end
        if curBeat == 130 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 0.66, 1.9,'smoothStepInOut');
        end
        if curBeat == 132 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            setProperty('defaultCamZoom', 0.66)  
        end
        if curBeat == 232 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 1.6, 2,'smoothStepInOut');
            
        end
        if curBeat == 234 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            setProperty('defaultCamZoom', 1.6)
        end
        if curBeat == 256 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 0.66, 1.5,'smoothStepInOut');
        end
        if curBeat == 258 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            setProperty('defaultCamZoom', 0.66)  
        end
        if curBeat == 388 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 1.6, 1.5,'expoOut'); 
             setProperty('defaultCamZoom', 1.6)  
        end
        if curBeat == 404 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 0.6, 5,'smoothStepInOut');
        end
        if curBeat == 410 then
            setProperty('defaultCamZoom', 0.6)
        end
end