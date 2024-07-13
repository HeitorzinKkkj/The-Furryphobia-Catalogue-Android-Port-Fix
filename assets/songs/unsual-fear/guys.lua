function onCreate()

makeAnimatedLuaSprite('gay', 'characters/gay2', -150, 550)
    addAnimationByPrefix('gay','gay2','gay',24,true)
	objectPlayAnimation('gay','gay',false)
     addLuaSprite('gay', true)
     scaleObject('gay', 1.0, 1.0)
     setProperty('gay.visible', true)
end

function onStepHit()
  if curStep == 0 then -- around 0:00 
      addLuaSprite('gay.visible', true);
end
end

