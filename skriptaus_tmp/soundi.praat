# Mitä tämä skripti tekee?

Create Sound... sine300 0 1 22050 1/2 * sin(2*pi*300*x)
Create Sound... sine1800 0 1 22050 1/2 * sin(2*pi*1800*x)
Create Sound... sine2400 0 1 22050 1/2 * sin(2*pi*2400*x)

select Sound sine300
plus Sound sine1800
plus Sound sine2400
Write to AIFF file... ../soundi.aiff

Remove

Read from file... ../soundi.aiff
Play
