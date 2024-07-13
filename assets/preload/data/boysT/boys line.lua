function onCreate()

 makeLuaSprite('line2', 'stages/line2', 770, 500)
    setObjectOrder('line2', getObjectOrder('boys') + 1)
    setLuaSpriteScrollFactor('line2', 1, 1)
	scaleObject('line2', 3.0, 3.0);
        setProperty('line2.visible', false)

end


function onStepHit()
	if curStep == 0 then -- around 35 
        addLuaSprite('line2', true);
        setProperty('line2.visible', true)
        setProperty('chucker.visible', false)
end
end