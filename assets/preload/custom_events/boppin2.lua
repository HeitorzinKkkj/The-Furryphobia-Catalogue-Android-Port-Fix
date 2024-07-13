function onEvent(eventName, value1, value2)
    if eventName == 'boppin2' then
        doTweenAngle('angletw','camGame',360*value1,value2,'expoInOut')
        doTweenZoom('zoomtw','camGame',2,value2,'expoInOut')
        doTweenAlpha('alphatw','camHUD',1,value2/2,'expoInOut')
        runTimer('eventtime',value2,1)
    end

end
function onTweenCompleted(tag)
    if tag == 'zoomtw' then
        doTweenZoom('zoomtw2','camGame',getProperty('defaultCamZoom'),crochet/1000,'quadInOut')
        doTweenAlpha('alphatw2','camHUD',1,crochet/1000,'expoInOut')
        setProperty('camGame.angle',0)
    end
end