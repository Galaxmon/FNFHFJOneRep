function onUpdate()
        if curBeat == 231 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 1.25, 0.5,'backIn');
            setProperty('defaultCamZoom', 1.5);
            triggerEvent('Camera Follow Pos','850','630')
            doTweenAlpha('thingy', 'thing', 1, 0.5, 'expoOut')
        end
end
