form Write tier text to a text file
comment Which tier do you want to write out?
integer Tier 1
comment Where do you want to save the file?
sentence Folder /home/lennes/tmp/
endform

# The file will have a name according to the selected TextGrid object:
filename$ = selected$ ("TextGrid", 1)
# and an extension .txt will be added to the file name:
filepath$ = "'folder$''filename$'.txt"

numberOfIntervals = Get number of intervals... tier

# Loop through the intervals of the selected tier
for interval from 1 to numberOfIntervals

	line$ = ""

	line$ = Get label of interval... tier interval

	# Only non-empty interval text will be appended to the file:
	if line$ <> "" 
		line$ = "'line$'" + "'newline$'"
			fileappend "'filepath$'" 'line$'
	endif

endfor
