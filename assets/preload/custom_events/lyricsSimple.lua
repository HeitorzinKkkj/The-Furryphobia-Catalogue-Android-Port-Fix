function onCreate()
	if getPropertyFromClass('ClientPrefs','middleScroll') then
		bottomscreen = screenHeight-screenHeight/4
	else
		bottomscreen = screenHeight/2
	end

	makeLuaText('captions', '', 1000, 150, 320)
	setTextSize('captions',80);
	setTextAlignment('captions','center');
	setObjectCamera('captions', 'other')
        setTextFont('captions', 'HelpMe.ttf')
	addLuaText('captions');
end

function onEvent(name, value1, value2)
	if name == 'lyricsSimple' then
		setTextString('captions', value1)
		if value2 == "" then
			setTextColor('captions', 'ffffff')
		else
			setTextColor('captions', value2)
		end
	end
end

