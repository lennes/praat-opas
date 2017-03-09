# This script calculates Pitch analyses from utterances in a Sound object
# and saves all pitch points to a simple text file.
#
# One Sound object must be selected in the object window.
# 
# This script is distributed under the GNU General Public License.
# Copyright Mietta Lennes 6.9.2002

form Draw F0 histogram from Sound object
   comment Give the F0 analysis parameters:
	positive Minimum_pitch_(Hz) 80
	positive Maximum_pitch_(Hz) 400
	positive Time_step_(s) 0.01
   comment Save F0 point data to text files in directory:
	text directory 
   comment Number of "bars" in the histogram:
	integer Number_of_bins 30
	choice Pitch_scale_for_drawing 1
		button Hertz
		button semitones re 100 Hz
endform

soundname$ = selected$ ("Sound")
filename$ = directory$ + "f0points_'soundname$'.txt"

if fileReadable(filename$)
	pause Do you want to overwrite the old file 'filename$'?
	filedelete 'filename$'
endif

# Calculate F0 values
To Pitch... time_step minimum_pitch maximum_pitch
numberOfFrames = Get number of frames

# Loop through all frames in the Pitch object:
select Pitch 'soundname$'

for iframe to numberOfFrames
	timepoint = Get time from frame... iframe
	f0 = Get value in frame... iframe Hertz
	if f0 <> undefined
		fileappend 'filename$' 'f0''newline$'
	endif
endfor

# Read the saved pitch points as a Matrix object:
Read Matrix from raw text file... 'filename$'

# Draw the Histogram
Draw distribution... 0 0 0 0 minimum_pitch maximum_pitch number_of_bins 0 0 yes

