form Make frequency dictionary
   sentence Text_file words.txt
   sentence Result_file word_frequencies.txt
endform

Read Strings from raw text file... 'text_file$'
Sort
To Distributions
Rename... frequencies
printline Sorting frequency list...
Sort by label... 1 0
Sort by column... 1 0
Write to headerless spreadsheet file... 'result_file$'
