# Tämä skripti laskee kahden luvun summan ja tulostaa sen joko
# Info-ikkunaan tai komentoriviltä suoritettaessa konsoli-ikkunaan.

# Tässä on lomakeosio, jossa kysytään mitkä luvut ynnätään:
form Laske kahden luvun summa
   real Luku1 
   real Luku2 
endform

# Lasketaan luvut yhteen ja talletetaan tulos summa-nimiseen muuttujaan:
summa = luku1 + luku2

# Tulostetaan lopputulos eli summa-muuttujan sisältö ruudulle:
printline Lukujen summa on 'summa'
