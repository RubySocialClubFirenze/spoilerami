#language: it

Funzionalità: Deve essere presente la pagina di disclaimer
  Contesto:
    Quando mi connetto al sito

  Scenario: Mi connetto e vedo il disclaimer
    Allora visualizzo la pagina di disclaimer

  Scenario: Mi connetto e non vedo gli spoilers
    Allora non visualizzo la pagina di spoiler

  Scenario: Il disclaimer ha il link per uscire dal sito
    Allora visualizzo il link "Esci"

  @javascript
  Scenario: se clicco sul link esci mi redirige su google
    Quando clicco sul link "Esci"
    Allora visualizzo "Google"

  Scenario: se clicco sul link entra visualizzo l'index degli spoiler
    Quando clicco sul link "Entra"
    Allora visualizzo "Spoiler"
    E visualizzo "Inserisci nuovo spoiler"
