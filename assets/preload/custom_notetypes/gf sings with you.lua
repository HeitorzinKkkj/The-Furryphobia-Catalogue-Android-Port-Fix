function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'gf sings with you' then
			--setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/player notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'gf sings with you' then
		if noteData == 0 then
			characterPlayAnim('gf','singLEFT', true)
		end
		if noteData == 1 then
			characterPlayAnim('gf','singDOWN', true)
		end
		if noteData == 2 then
			characterPlayAnim('gf','singUP', true)
		end
		if noteData == 3 then
			characterPlayAnim('gf','singRIGHT', true)
		end
	end
end