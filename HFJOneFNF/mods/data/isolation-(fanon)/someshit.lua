function onCreate()
    if difficulty == 0 then
		canFloat = true
		floatX = false --if you want your char to float left and right set this to true
		bfFloat = false -- if bf floats
		speedY = 2 --how fast it will go up and down
		speedX = 2 --how fast it will go left and right
		amplitudeY = 50 --how far up and down it will go in pixels
		amplitudeX = 50 --how far left and right  it will go in pixels
		ofs = 0 --how far up or down you want the character to be
		yy = 0 --dont change this
		xx = 0 --or this
		bf_xx = 0 --or this
		bf_yy = 0 --or this
		--[[
		MADE BY MAYO78!!!!! (https://github.com/ShadowMario/FNF-PsychEngine/discussions/5197) Here's the place I found it
		]]

		function onCreatePost()
			yy = getProperty('dad.y')+ofs
			xx = getProperty('dad.x')
		  bf_yy = getProperty('boyfriend.y')+ofs
			bf_xx = getProperty('boyfriend.x')
			canFloat = true
		end

		function onUpdate()
			songPos = getSongPosition()
			local currentBeat = (songPos/5000)*(curBpm/60)
			if canFloat then
				if floatX then
					setProperty('dad.x', amplitudeX*math.cos(currentBeat*speedX)+xx)
		      if bfFloat then
		        setProperty('boyfriend.x', (amplitudeX*math.cos(currentBeat*speedX)+bf_xx)*-1)
		      end
				end
		    setProperty('dad.y', amplitudeY*math.sin(currentBeat*speedY)+yy)
		    if bfFloat then
		  		setProperty('boyfriend.y', (amplitudeY*math.sin(currentBeat*speedY)+bf_yy)*-1)
		    end
			end
		end
		function onStepHit()
			if curstep == 1000 then
				canFloat = false
			end
		end
	end
end    

campointx = 0
campointy = 0
bfturn = false

function onMoveCamera(focus)

    if focus == 'boyfriend' then
        campointx = getProperty('camFollow.x')
        campointy = getProperty('camFollow.y')
        bfturn = true
    elseif focus == 'dad' then
        campointx = getProperty('camFollow.x')
        campointy = getProperty('camFollow.y')
        bfturn = false
        setProperty('cameraSpeed', 5)    
    end
end