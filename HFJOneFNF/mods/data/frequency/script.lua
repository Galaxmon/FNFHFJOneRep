function onCreatePost( ... )
	startVideo('bitch')
	setProperty('inCutscene',false)
end

function onUpdate()
	if curBeat == 44 then
		doTweenZoom('camzoom', 'camGame', 1.1, 1.5, 'expoIn')
	end
end