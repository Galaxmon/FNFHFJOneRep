function onSongStart()
    doTweenAngle('screenTilt','camGame', 5, 0.000001, 'linear')
end    
function onUpdate()
        if curBeat == 1 then
            doTweenAngle('screenTilt', 'camGame', -10, 0.000001, 'linear')
        end
        if curBeat == 2 then
            doTweenAngle('screenTilt', 'camGame', 20, 0.000001, 'linear')
        end
        if curBeat == 3 then
            doTweenAngle('screenTilt', 'camGame', -30, 0.000001, 'linear')
        end
        if curBeat == 4 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 0.76, 0.5,'expoOut');
             setProperty('defaultCamZoom', 0.76)
             doTweenAngle('screenTilt', 'camGame', 0, 1, 'expoOut')
        end

        if curBeat == 36 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 0.6, 0.5,'expoOut');
             setProperty('defaultCamZoom', 0.6)
        end

        if curBeat == 68 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 0.82, 0.5,'expoOut');
             setProperty('defaultCamZoom', 0.82)
        end

        if curBeat == 100 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 0.8, 0.5,'expoOut');
             setProperty('defaultCamZoom', 0.8)
        end

        if curBeat == 132 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 0.65, 1,'expoOut');
             setProperty('defaultCamZoom', 0.65)
        end

        if curBeat == 164 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 0.76 , 0.5,'circOut');
             setProperty('defaultCamZoom', 0.76)
        end

        if curStep == 752 then
            doTweenZoom('screenZoom','camGame', 0.8 , 0.5,'circOut');
             setProperty('defaultCamZoom', 0.8)
        end

        if curStep == 758 then
            doTweenZoom('screenZoom','camGame', 0.85 , 0.5,'circOut');
             setProperty('defaultCamZoom', 0.85)
        end

        if curStep == 764 then
            doTweenZoom('screenZoom','camGame', 0.9 , 0.5,'circOut');
             setProperty('defaultCamZoom', 0.9)
        end

        if curBeat == 192 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 0.76, 1.5,'expoOut');
             setProperty('defaultCamZoom', 0.76)
        end

        if curBeat == 195 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 0.7, 0.5,'expoOut');
             setProperty('defaultCamZoom', 0.7)
        end

        if curStep == 790 then
            doTweenZoom('screenZoom','camGame', 0.8 , 0.5,'circOut');
             setProperty('defaultCamZoom', 0.8)
        end

        if curStep == 796 then
            doTweenZoom('screenZoom','camGame', 0.85 , 0.5,'circOut');
             setProperty('defaultCamZoom', 0.85)
        end

        if curStep == 763 then
            doTweenZoom('screenZoom','camGame', 0.9 , 0.5,'circOut');
             setProperty('defaultCamZoom', 0.9)
        end

        if curBeat == 200 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 0.65, 1.5,'expoOut');
             setProperty('defaultCamZoom', 0.65)
        end

        if curBeat == 203 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 0.7, 0.5,'expoOut');
             setProperty('defaultCamZoom', 0.7)
        end

        if curBeat == 204 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 0.8, 1.5,'expoIn');
             setProperty('defaultCamZoom', 0.8)
        end

        if curBeat == 208 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 0.65, 1.5,'expoOut');
             setProperty('defaultCamZoom', 0.65)
        end

        if curBeat == 260 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 0.8 , 0.5,'expoOut');
             setProperty('defaultCamZoom', 0.8)
        end

        if curBeat == 264 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 0.9 , 0.5,'expoOut');
             setProperty('defaultCamZoom', 0.9)
        end
        if curBeat == 268 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 1 , 0.5,'expoOut');
             setProperty('defaultCamZoom', 1)
        end
        if curBeat == 270 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 1.05 , 0.5,'expoOut');
             setProperty('defaultCamZoom', 1.05)
        end
        if curBeat == 271 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 1.1 , 0.5,'expoOut');
             setProperty('defaultCamZoom', 1.1)
        end
        if curBeat == 272 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 0.7 , 1,'expoOut');
             setProperty('defaultCamZoom', 0.7)
        end
        if curBeat == 304 then
            --doTweenAngle('TAG','VARIABLE',ANGLE VALUE,DURATION,'EASING TYPE');
            --doTweenZoom('TAG','VARIABLE',ZOOM VALUE,DURATION,'EASING TYPE');
            doTweenZoom('screenZoom','camGame', 0.65 , 0.5,'expoOut');
             setProperty('defaultCamZoom', 0.65)
        end
end