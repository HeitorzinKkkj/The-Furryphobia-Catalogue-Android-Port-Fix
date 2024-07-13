function onCreate()
	if getPropertyFromClass('ClientPrefs','middleScroll') then
		bottomscreen = screenHeight-screenHeight/4
	else
		bottomscreen = screenHeight/2
	end

	makeLuaText('lyric', '', 1000, 150, 570)
	setTextSize('lyric',35);
	setTextAlignment('lyric','center');
	setObjectCamera('lyric', 'other')
        setTextFont('lyric', 'VCR_OSD_MONO_1.001.ttf')
	addLuaText('lyric');
end

function onEvent(name, value1, value2)
	if name == 'reggie talk' then
		setTextString('lyric', value1)
		if value2 == "" then
			setTextColor('lyric', 'ffffff')
		else
			setTextColor('lyric', value2)
		end
	end
end

