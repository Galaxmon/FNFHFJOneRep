function onBeatHit()
    turnvalue = 0 -- the icon shit
    if curBeat % 2 == 0 then
    turnvalue = 0
    end

    setProperty('iconP2.angle',-0)
    setProperty('iconP1.angle',0)

    doTweenAngle('iconTween1','iconP1',0,crochet/0,'circOut')
    doTweenAngle('iconTween2','iconP2',0,crochet/0,'circOut')
end