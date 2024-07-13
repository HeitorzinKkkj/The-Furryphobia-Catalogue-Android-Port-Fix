function onCreate()
	if getPropertyFromClass('ClientPrefs','middleScroll') then
		bottomscreen = screenHeight-screenHeight/4
	else
		bottomscreen = screenHeight/2
	end

	makeLuaText('captions', '', 1000, 150, 610)
	setTextSize('captions',35);
	setTextAlignment('captions','center');
	setObjectCamera('captions', 'other')
        setTextFont('captions', 'VCR_OSD_MONO_1.001.ttf')
	addLuaText('captions');
end

function onEvent(name, value1, value2)
	if name == 'mark talk' then
		setTextString('captions', value1)
		if value2 == "" then
			setTextColor('captions', 'ffffff')
		else
			setTextColor('captions', value2)
		end
	end
end

