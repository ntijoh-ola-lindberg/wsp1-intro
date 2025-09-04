# Webbserverprogrammering 1 - Övning 1
Första exempel och övningar i kursen Webbserverprogrammering 1 på NTI Gymnasiet Johanneberg. 
Efter genomgång görs övningar nedan i par.

* Ladda ner zip-filen https://github.com/ntijoh-ola-lindberg/wsp-1/archive/refs/heads/main.zip eller repositoriet (`git clone https://github.com/ntijoh-ola-lindberg/wsp-1.git`) till mappen Webbserverprogramering på din dator.
* Installera: `bundle`
* Köra: `rake dev`
* Surfa till: http://localhost:9292

## Uppgifter i par
1. Skapa en *Is it Friday?* Utgå från routen `/friday`. Gör även "no it's monday / tuesday / wednesday / ... today".
2. Lägg till så alla 12 månader funkar i routen `/num_to_month/:num` Skriv även ut hur många månader det är kvar på året ifrån månaden `:num`
4. Routen `/add/:first/:second` är en enkel räknare som kan subtraktion. Bygg räknare för fler räknesätt.
5. Bygg en rövarspråksgenerator på routen: `/rovarsprak/:word`

### Fortsätt experimentera
När ni är färdiga med övningarna fortsätt experimentera och utöka. Några förslag på routes att lägga till:
* `/palindrome/:word` Kontrollera om ordet är ett palindrom (t.ex. “level”), skriv ut “Yes” eller “No”.
* `/count_vowels/:word` Räkna antal vokaler i ordet och skriv ut.
* `/random_quote` Skapa en lista med tex. 5 citat. Varje gång routen anropas skrivs ett slumpmässigt citat ut.
* `/temperature/:celsius` Konvertera Celsius till Fahrenheit och Kelvin.
* `/word_count/:sentence` Räkna antalet ord i en mening.