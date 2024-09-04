# Webbserverprogrammering 1
Första exempel och övningar i kursen Webbserverprogrammering 1 på NTI Gymnasiet Johanneberg. 
Efter genomgång görs övningar nedan i par.

* Ladda ner zip-filen https://github.com/ntijoh-ola-lindberg/wsp-1/archive/refs/heads/main.zip eller repositoriet (`git clone https://github.com/ntijoh-ola-lindberg/wsp-1.git`) till mappen Webbserverprogramering på din dator.
* Installera: `bundle install`
* Köra: `rake dev`
* Surfa till: http://localhost:9292

## Uppgifter i par
1. Skapa en *Is it Friday?* Utgå från routen `/friday`. Gör även "no it's monday / tuesday / wednesday / ... today".
2. Lägg till så alla 12 månader funkar i routen `/num_to_month/:num`
3. Skriv ut hur många månader det är kvar på året ifrån månaden `:num`
4. Utöka räknaren så den t.ex. kan fler räknesätt
5. Bygg en rövarspråksgenerator på routen: `/rovarsprak/:word`
