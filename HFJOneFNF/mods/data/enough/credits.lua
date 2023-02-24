--made by me fury1012!!!! if used, please credit me and the golden one mod


artistname = "Jamie"

composename = "Jamie"

codername = "Fury1012"

chartername = "Soup"

function onSongStart()
	runTimer('waittt1', 1)
end

function onCreatePost()
	makeLuaSprite('sillyblack', '', -442, 0)
	setObjectCamera('sillyblack', 'camOther')
	setProperty('sillyblack.alpha', 0.6)
    makeGraphic('sillyblack',400,720,'000000')
    addLuaSprite('sillyblack', true)

    makeLuaText('credits1', "Credits", 1100, -800, 10)
    setTextAlignment('credits1', 'Center')
    addLuaText('credits1')
    setTextSize('credits1', 60)
    setTextColor('credits1', 'FFFFFF')
    setObjectCamera('credits1', 'camOther')

    makeLuaText('credits2', "Artist", 1100, -800, 110)
    setTextAlignment('credits2', 'Center')
    addLuaText('credits2')
    setTextSize('credits2', 30)
    setTextColor('credits2', 'FFFFFF')
    setObjectCamera('credits2', 'camOther')

    makeLuaText('credits3', "Composer", 1100, -800, 260)
    setTextAlignment('credits3', 'Center')
    addLuaText('credits3')
    setTextSize('credits3', 30)
    setTextColor('credits3', 'FFFFFF')
    setObjectCamera('credits3', 'camOther')

    makeLuaText('credits4', "Coder", 1100, -800, 410)
    setTextAlignment('credits4', 'Center')
    addLuaText('credits4')
    setTextSize('credits4', 30)
    setTextColor('credits4', 'FFFFFF')
    setObjectCamera('credits4', 'camOther')

    makeLuaText('credits5', "Charter", 1100, -800, 560)
    setTextAlignment('credits5', 'Center')
    addLuaText('credits5')
    setTextSize('credits5', 30)
    setTextColor('credits5', 'FFFFFF')
    setObjectCamera('credits5', 'camOther')

    makeLuaText('name1', artistname, 1100, -800, 170)
    setTextAlignment('name1', 'Center')
    addLuaText('name1')
    setTextFont('name1', 'ONE.V3.SEMI-BOLD.ttf')
    setTextSize('name1', 45)
    setTextColor('name1', 'FFFFFF')
    setObjectCamera('name1', 'camOther')

    makeLuaText('name2', composename, 1100, -800, 320)
    setTextAlignment('name2', 'Center')
    addLuaText('name2')
    setTextFont('name2', 'ONE.V3.SEMI-BOLD.ttf')
    setTextSize('name2', 45)
    setTextColor('name2', 'FFFFFF')
    setObjectCamera('name2', 'camOther')

    makeLuaText('name3', codername, 1100, -800, 475)
    setTextAlignment('name3', 'Center')
    addLuaText('name3')
    setTextFont('name3', 'ONE.V3.SEMI-BOLD.ttf')
    setTextSize('name3', 45)
    setTextColor('name3', 'FFFFFF')
    setObjectCamera('name3', 'camOther')

    makeLuaText('name4', chartername, 1100, -800, 620)
    setTextAlignment('name4', 'Center')
    addLuaText('name4')
    setTextFont('name4', 'ONE.V3.SEMI-BOLD.ttf')
    setTextSize('name4', 45)
    setTextColor('name4', 'FFFFFF')
    setObjectCamera('name4', 'camOther')
end

function onTimerCompleted(tag)
	if tag == 'waittt1' then
		doTweenX('move1', 'credits1', -358, 1, 'expoOut')
		doTweenX('move2', 'credits2', -358, 1, 'expoOut')
		doTweenX('move3', 'credits3', -358, 1, 'expoOut')
		doTweenX('move4', 'credits4', -358, 1, 'expoOut')
		doTweenX('movee5', 'credits5', -358, 1, 'expoOut')
		doTweenX('movee6', 'sillyblack', 0, 1, 'expoOut')
		doTweenX('moveaa5', 'name1', -358, 1, 'expoOut')
		doTweenX('moves5', 'name2', -358, 1, 'expoOut')
		doTweenX('movxe5', 'name3', -358, 1, 'expoOut')
		doTweenX('movez5', 'name4', -358, 1, 'expoOut')

		runTimer('waittt2', 4)
	end
	if tag == 'waittt2' then
		doTweenX('movea1', 'credits1', -800, 1, 'expoIn')
		doTweenX('movea2', 'credits2', -800, 1, 'expoIn')
		doTweenX('movea3', 'credits3', -800, 1, 'expoIn')
		doTweenX('movea4', 'credits4', -800, 1, 'expoIn')
		doTweenX('movea5', 'credits5', -800, 1, 'expoIn')
		doTweenX('movea6', 'sillyblack', -442, 1, 'expoIn')
		doTweenX('moveaa5', 'name1', -800, 1, 'expoIn')
		doTweenX('moveaaa5', 'name2', -800, 1, 'expoIn')
		doTweenX('moveaaaa5', 'name3', -800, 1, 'expoIn')
		doTweenX('moveaaaaaa5', 'name4', -800, 1, 'expoIn')

		runTimer('waittt3', 2)
	end
	if tag == 'waittt3' then
		removeLuaText('credits1', destroy == true)
		removeLuaText('credits2', destroy == true)
		removeLuaText('credits3', destroy == true)
		removeLuaText('credits4', destroy == true)
		removeLuaText('credits5', destroy == true)
		removeLuaSprite('sillyblack')
		removeLuaText('name1', destroy == true)
		removeLuaText('name2', destroy == true)
		removeLuaText('name3', destroy == true)
		removeLuaText('name4', destroy == true)
	end
end