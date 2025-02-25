-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'gf fade' then
		duration = tonumber(value1);
		if duration < 0 then
			duration = 0;
		end

		targetAlpha = tonumber(value2);
		if duration == 0 then
			ssetProperty('gf.alpha', targetAlpha);
		else
			doTweenAlpha('gfFadeEventTween', 'gf',  targetAlpha, duration, 'linear');
		end
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end