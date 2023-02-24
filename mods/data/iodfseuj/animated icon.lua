function onCreate()
	makeLuaText('bot', '', 512, 10, 650)
	addLuaText('bot')
	setTextAlignment('bot', 'left')
		makeAnimatedLuaSprite('animatedicon', 'icons/abstractyhat', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('animatedicon', 'normal', 'a1', 24, true)
		addAnimationByPrefix('animatedicon', 'losing', 'a2', 24, true)
		addAnimationByPrefix('animatedicon', 'winning', 'a1', 24, true)
		setProperty('animatedicon.alpha', 0)
		setScrollFactor('animatedicon', 0, 0)
		setObjectCamera('animatedicon', 'other')
		addLuaSprite('animatedicon', true)
		setObjectOrder('animatedicon', 99)
		objectPlayAnimation('animatedicon', 'normal', false)

		makeAnimatedLuaSprite('icon2what', 'icons/abstractyliam', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('icon2what', 'normal', 'a1', 24, true)
		addAnimationByPrefix('icon2what', 'losing', 'a2', 24, true)
		addAnimationByPrefix('icon2what', 'winning', 'a1', 24, true)
		setScrollFactor('icon2what', 0, 0)
		setObjectCamera('icon2what', 'other')
		addLuaSprite('icon2what', true)
		setObjectOrder('icon2what', 100)
		objectPlayAnimation('icon2what', 'normal', false)
		setProperty('icon2what.alpha', 0)

		makeAnimatedLuaSprite('iconn3aa', 'icons/abstractbryce', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('iconn3aa', 'normal', 'bryceidle', 24, true)
		addAnimationByPrefix('iconn3aa', 'losing', 'brycelosing', 24, true)
		addAnimationByPrefix('iconn3aa', 'winning', 'bryceidle', 24, true)
		setScrollFactor('iconn3aa', 0, 0)
		setObjectCamera('iconn3aa', 'other')
		addLuaSprite('iconn3aa', true)
		setObjectOrder('iconn3aa', 100)
		objectPlayAnimation('iconn3aa', 'normal', false)
		setProperty('iconn3aa.alpha', 0)
end

function onUpdate(elapsed)
		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatedicon', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedicon', 'winning', false)
		else
			objectPlayAnimation('animatedicon', 'normal', false)
		end

		if getProperty('health') > 1.6 then
			objectPlayAnimation('icon2what', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('icon2what', 'winning', false)
		else
			objectPlayAnimation('icon2what', 'normal', false)
		end

		if getProperty('health') > 1.6 then
			objectPlayAnimation('iconn3aa', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('iconn3aa', 'winning', false)
		else
			objectPlayAnimation('iconn3aa', 'normal', false)
		end

	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatedicon.x', getProperty('iconP2.x'))
	setProperty('animatedicon.angle', getProperty('iconP2.angle'))
	setProperty('animatedicon.y', getProperty('iconP2.y') + 0)
	setProperty('animatedicon.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicon.scale.y', getProperty('iconP2.scale.y'))

	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('icon2what.x', getProperty('iconP2.x'))
	setProperty('icon2what.angle', getProperty('iconP2.angle'))
	setProperty('icon2what.y', getProperty('iconP2.y') + 0)
	setProperty('icon2what.scale.x', getProperty('iconP2.scale.x'))
	setProperty('icon2what.scale.y', getProperty('iconP2.scale.y'))

	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('iconn3aa.x', getProperty('iconP2.x'))
	setProperty('iconn3aa.angle', getProperty('iconP2.angle'))
	setProperty('iconn3aa.y', getProperty('iconP2.y') + 0)
	setProperty('iconn3aa.scale.x', getProperty('iconP2.scale.x'))
	setProperty('iconn3aa.scale.y', getProperty('iconP2.scale.y'))

	--[[
	for i=0,4,1 do
		setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_assets_3D')
		--setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets_3D')
	end
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets_3D'); --Change texture
		end
	end
	]]
end

function onSongStart()
	doTweenAlpha('iconappear','animatedicon', 1, 0.5, 'smoothStepInOut')
end

function onUpdatePost()
	if curBeat == 104 then
            doTweenAlpha('iconfade', 'animatedicon', 0, 1, 'linear');
        end
        if curBeat == 128 then
            doTweenAlpha('iconfade2', 'icon2what', 1, 2, 'linear');
        end
        if curBeat == 232 then
            doTweenAlpha('iconfade2323', 'icon2what', 0, 1, 'linear');
            doTweenAlpha('iconfade23232323', 'animatedicon', 0, 1, 'linear');
        end
        if curBeat == 256 then
            doTweenAlpha('iconfade', 'iconn3aa', 1, 2, 'linear');
        end
        if curBeat == 388 then
            doTweenAlpha('iconfade', 'iconn3aa', 0, 2, 'linear');
            doTweenAlpha('icon123123', 'icon2what', 0, 1, 'linear');
            doTweenAlpha('icon123123123123213123213123213123', 'animatedicon', 0, 1, 'linear');
        end
end