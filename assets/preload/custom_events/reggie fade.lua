-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'reggie fade' then
		duration = tonumber(value1);
		if duration < 0 then
			duration = 0;
		end

		targetAlpha = tonumber(value2);
		if duration == 0 then
			setProperty('reggieE.alpha', targetAlpha);
		else
			doTweenAlpha('dadFadeEventTween', 'reggieE', targetAlpha, duration, 'linear');
		end
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end