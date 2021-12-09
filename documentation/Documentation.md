# Kompletny projekt systemu CinemaDGS

## Udokumentowane wymagania
### Wymagania funkcjonalne
|               Nazwa                 |               Opis                |
|-------------------------------------|-----------------------------------|
|Utworzenie konta                     |Użytkownik ma możliwość utworzenia konta przy użyciu swoich danych (Imię, Nazwisko, Username, Hasło)
|Logowanie                            |Użytkownik ma możliwość zalogowania się przy użyciu swojej nazwy użytkownika oraz hasła
|Nadanie stanowiska                   |Właściciel/Manager/Kierownik ma możliwość nadania stanowiska użytkowniku, który nie ma żadnego
|Zmiana stanowiska                    |Właściciel/Menager ma możliwość awansowania lub zdegradowania pracownika (Manager nie może Managera)
|Kategorie pracowników                |Pracownicy są kategoryzowanie według stanowisk (Właściciel/Owner, Manadżer/Manager, Kierownik/Superviser, Cashier/Kasjer, Brak stanowiska/Null
|Przeglądanie pracowników             |Menadżer ma możliwość przeglądania listy pracowników wraz z informacjami na ich temat
|Usuwanie pracowników                 |Menadżer ma możliwość usunięcia danego pracownika
|Dodawanie/usuwanie filmów            |Osoby o podwyższonych uprawnieniach mają możliwość dodawania oraz usuwania filmów
|Przeglądanie filmów                  |Pracownicy mają możliwość przeglądania filmów wraz z informacjami na ich temat
|Kategorie filmów                     |Filmy są kategoryzowane według gatunku
|Dodawanie/edytowanie/usuwanie sal    |Osoby o podwyższonych uprawnieniach mają możliwość dodawania, edytowania oraz usuwania sal
|Przeglądanie sal                     |Osoby o podwyższonych uprawnieniach mają możliwość przeglądania sal
|Dodawanie/edytowanie/usuwanie seansów|Osoby o podwyższonych uprawnieniach mają możliwość dodawania, edytowania oraz usuwania seansów
|Rezerwacja/sprzedaż biletów          |Osoby o konkretnych uprawieniach mają możliwość rezerwacji i sprzedaży biletów
|Limit sprzedaży biletów              |Pracownik nie może sprzedać więcej biletów niż jest wolnych miejsc na dany seans
### Wymagania niefunkcjonalne
|               Nazwa                 |               Opis                |
|-------------------------------------|-----------------------------------|
|Dostępność                           |Aplikacja będzie dostępna całodobowo oprócz przerw technicznych, które najczęściej realizowane będą  w godzinach nocnych
|Wydajność                            |Maksymalna ilość użytkowników korzystających z aplikacji będzie zdecydowanie przewyższać ilość aktualnych pracowników
|Wsparcie                             |Monitoring aplikacji??? Max czas naprawy Użytkownicy mogą zgłaszać błędy poprzez kontakt mailowy xD
|Bezpieczeństwo                       |Najważniejszym zagrożeniem, na które może być narażona aplikacja to wyciek danych. Sposoby zabezpieczenia
## Lista wykorzystywanych technologii
|             Technologia             |            Uzasadnienie           |
|-------------------------------------|-----------------------------------|
|Python                               |wybraliśmy Python, ponieważ ma dosyć nowoczesną składnię języka, umożliwiwa korzystania z różnych paradygmatów programowania (obiektowego, funkcyjnego, reaktywnego) i jest duża ilość odpowiedzi na pytania na StackOverflow.
|Django (framework Pythona)           |wybraliśmy Django, ponieważ oferuje szybkie efekty (umożliwiając bardzo szybkie tworzenie aplikacji internetowych) i bezpieczeństwo (posiada wiele wbudowanych bibliotek dbających o bezpieczeństwo programu).
|PostgreSQL                           |wybraliśmy PostgreSQL, ponieważ zapewnia relacyjny model baz danych łącznie z obiektowym (dając najlepsze rozwiązania dla obu modeli), niezawodność, otwarte oprogramowanie.
|React (framework JavaScripta)        |wybraliśmy React, ponieważ jest jednym z najlepszych narzędzi do dynamicznego wyświetlania zawartości, a także zabezpiecza łatwą komunikację z backendem.
|SCSS (preprocesor CSSa)              |wybraliśmy SCSS, ponieważ jest bardziej rozszerzona wersją CSS, więc jest więcej dodatków w nim, a co najważniejsze mniej problemów przy Cross-Browser Testing).
## Use-cases
![This is a alt text.](useCase.png)
## Prawa dostępu
![This is a alt text.](prawa-dostepu-diagram.png)
