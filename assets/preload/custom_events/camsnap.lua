function onEvent(n,v1,v2)
	if n == 'Camera Snap' then
		if v1 == 'bf' then
			setProperty("camFollow.x", x)
			setProperty("camFollow.y", y)
			setProperty("camFollowPos.x", 60 x)

			setProperty("camFollowPos.y", y)
		elseif v1 == 'dad' then
			setProperty("camFollow.x", x)
			setProperty("camFollow.y", y)
			setProperty("camFollowPos.x", x) 			setProperty("camFollowPos.y", y)
		end
	end
end