function onCreate()
    precacheImage('stress')
    addCharacterToList('distortedfatedeath')
    addCharacterToList('scaredairy')

    makeLuaSprite('vignette', 'stress', 0, 0)
    setProperty('vignette.alpha', 0)
    setObjectOrder('vignette', 99);
    setObjectCamera('vignette', 'camOther')

    makeLuaSprite('aa', 'black', 0, 0)
    setProperty('aa.alpha', 0)
    setObjectCamera('aa', 'camOther')
    setObjectOrder('aa', 50)

    makeLuaText('slaughter', 'Kill', 1250, -137, 250)
    setTextFont('slaughter', 'PintassilgoPrints - Plunct.otf')
    setTextAlignment('slaughter', 'Center')
    addLuaText('slaughter')
    setProperty('slaughter.alpha', 0)
    setTextSize('slaughter', 137)
    setTextString('slaughter', 'Kill')
    setTextColor('slaughter', 'FFFFFF')
    setObjectOrder('slaughter', 101)
    setObjectCamera('slaughter', 'camOther')

    makeLuaText('airy', 'Him.', 1250, 137, 250)
    setTextAlignment('airy', 'Center')
    addLuaText('airy')
    setTextFont('airy', 'PintassilgoPrints - Plunct.otf')
    setProperty('airy.alpha', 0)
    setTextSize('airy', 137)
    setTextString('airy', 'Him.')
    setTextColor('airy', 'FFFFFF')
    setObjectOrder('airy', 102)
    setObjectCamera('airy', 'camOther')

    makeLuaText('nomissallow', "Don't Miss.", 1250, 0, 250)
    setTextAlignment('nomissallow', 'Center')
    addLuaText('nomissallow')
    setProperty('nomissallow.alpha', 0)
    setTextFont('nomissallow', 'PintassilgoPrints - Plunct.otf')
    setTextSize('nomissallow', 100)
    setTextString('nomissallow', "Don't Miss.")
    setTextColor('nomissallow', 'FF0000')
    setObjectOrder('nomissallow', 90)
    setObjectCamera('nomissallow', 'camHUD')
end

--i didn't know any other way to do this lmao
--KYS TWEEN
function onUpdatePost()
    if curBeat == 4 then
        cancelTween('boyfriendtween')
    end
    if curBeat == 8 then
        cancelTween('boyfriendtween')
    end
    if curBeat == 12 then
        cancelTween('boyfriendtween')
    end
    if curBeat == 16 then
        cancelTween('boyfriendtween')
    end
    if curBeat == 20 then
        cancelTween('boyfriendtween')
    end
    if curBeat == 24 then
        cancelTween('boyfriendtween')
    end
    if curBeat == 28 then
        cancelTween('boyfriendtween')
    end
    if curBeat == 32 then
        cancelTween('boyfriendtween')
    end
    if curBeat == 260 then
        triggerEvent('Change Character', 'spookedairy', 'scaredairy')

        bfx = 100;
        bfy = -200;
        local zoomshit = 0;
        local bfs = 3
        function onUpdate(elapsed)
            zoomshit = (getProperty('camGame.zoom')/0.55);
            zoomshit2 = (getProperty('camGame.zoom')/0.75);
            setCharacterX('boyfriend',bfx*zoomshit)
            setCharacterY('boyfriend',bfy*zoomshit)
            setProperty('boyfriend.scale.x',bfs*zoomshit2)
            setProperty('boyfriend.scale.y',bfs*zoomshit2)
        end
    end
end

function onSongStart()
    doTweenZoom('hi', 'camGame', 0.58, 7, 'smoothStepInOut')
    setProperty('defaultCamZoom', 0.58)
end    

function onMoveCamera(focus)
    if focus == 'dad' then
        setProperty('defaultCamZoom', 0.8)
        doTweenAlpha('boyfriendtween', 'boyfriend', 0.3, 1, 'expoOut')
        runTimer('idfk', 2)
    elseif focus == 'boyfriend' then 
        setProperty('defaultCamZoom', 0.58)
        doTweenAlpha('boyfriendtween', 'boyfriend', 1, 1, 'expoOut')
    end
end

function onGameOver()
    triggerEvent('Change Character', 'spookedairy', 'distortedfatedeath')
    cameraSetTarget('dadGroup');
    setProperty('cameraSpeed', 1000000)
    setProperty('defaultCamZoom', 0.63)
    doTweenZoom('deathcamidk', 'camGame', 0.63, 0.00000000000001, 'linear')
    zoomshit = 0
    zoomshit2 = 0
    bfx = defaultBoyfriendX
    bfy = defaultBoyfriendY
    return Function_Continue
end

-- BY TPOSEJANK (LITERALLY A LIFE SAVER TY)

local off = {15, 15} -- x and y movement force
local opponentNotes = true -- change this to false if you dont want to trigger when opponent notes
local bfNotes = true -- change this to false if you want to trigger when player notes
local xy = {{-off[1], 0}, {0, off[2]}, {0, -off[2]}, {off[1], 0}} -- table which has the applied movement force

function goodNoteHit(i, d, n, s)
    if bfNotes then resetCam(d) end
end
function opponentNoteHit(i, d, n, s)
    if opponentNotes then resetCam(d) end
end

function resetCam(d)
    runHaxeCode('game.moveCameraSection();')
    setProperty('camFollow.x', getProperty('camFollow.x') + xy[d+1][1])
    setProperty('camFollow.y', getProperty('camFollow.y') + xy[d+1][2])
end

bfx = 100;
bfy = -200;
local zoomshit = 0;
local bfs = 3

function onUpdate(elapsed)
for i=0,3 do
   noteTweenAlpha('dieaaa'..i, i, 0, 0.0000000000001, 'linear')
end
for i = 4, 7 do
   noteTweenAlpha('die'..i, i, 0.5, 1, 'linear')
end
    zoomshit = (getProperty('camGame.zoom')/0.55);
    zoomshit2 = (getProperty('camGame.zoom')/0.75);
    setCharacterX('boyfriend',bfx*zoomshit)
    setCharacterY('boyfriend',bfy*zoomshit)
    setProperty('boyfriend.scale.x',bfs*zoomshit2)
    setProperty('boyfriend.scale.y',bfs*zoomshit2)
end