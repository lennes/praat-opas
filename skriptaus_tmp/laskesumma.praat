# T�m� skripti laskee kahden luvun summan ja tulostaa sen joko
# Info-ikkunaan tai komentorivilt� suoritettaessa konsoli-ikkunaan.

# T�ss� on lomakeosio, jossa kysyt��n mitk� luvut ynn�t��n:
form Laske kahden luvun summa
   real Luku1 
   real Luku2 
endform

# Lasketaan luvut yhteen ja talletetaan tulos summa-nimiseen muuttujaan:
summa = luku1 + luku2

# Tulostetaan lopputulos eli summa-muuttujan sis�lt� ruudulle:
printline Lukujen summa on 'summa'
