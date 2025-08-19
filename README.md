# Webbserverprogrammering 1 - Övning 1
Första exempel och övningar i kursen Webbserverprogrammering 1 på NTI Gymnasiet Johanneberg. 
Efter genomgång görs övningar nedan i par.

* Ladda ner zip-filen https://github.com/ntijoh-ola-lindberg/wsp-1/archive/refs/heads/main.zip eller repositoriet (`git clone https://github.com/ntijoh-ola-lindberg/wsp-1.git`) till mappen Webbserverprogramering på din dator.
* Installera: `bundle`
* Köra: `rake dev`
* Surfa till: http://localhost:9292

## Uppgifter i par
1. Utöka *Is it Friday?* (routen `/friday`) så den även kan skriva ut vilken dag det är idag som t.ex. "No it is Monday".
2. Lägg till så alla 12 månader funkar i routen `/num_to_month/:num`
3. Skriv ut hur många månader det är kvar på året ifrån månaden `:num`
4. Utöka räknaren så den t.ex. kan fler räknesätt
5. Bygg en rövarspråksgenerator på routen: `/rovarsprak/:word`
