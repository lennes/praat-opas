# Build pdf and html documents from tex in this directory
pdflatex praat
makeindex praat
bibtex praat
pdflatex praat
pdflatex praat
latex2html -split 4 -title "Praat-opas" -iso_language FI -link 5 -toc_depth 2 -mkdir -discard -no_footnode -noinfo -image_type gif -white -antialias -local_icons -images -nosubdir -short_index -show_section_numbers praat

perl -i -p -e 's {/home/lennes/praat-opas/kuvat/} {kuvat/};' *.html

cp *.html /home/lennes/praatweb/
cp *.png /home/lennes/praatweb/
cp praat.pdf /home/lennes/praatweb/
cp praat.css /home/lennes/praatweb/
cp /home/lennes/praat-opas/kuvat/* /home/lennes/praatweb/kuvat/

rm /home/lennes/praat-opas/*.html
rm /home/lennes/praatweb/WARNINGS

rm /home/lennes/praatweb.zip
cd /home/lennes/praatweb
zip -r /home/lennes/praatweb.zip *


# Rebuild pdf with nice tildes in the URLs:
cd /home/lennes/praat-opas
perl -i -p -e 's {\~{}} {~};' praat.tex

pdflatex praat
acroread praat.pdf &
