## Po co są wzorce projektowe

Wzorce projektowe to zbiór najlepszych praktyk z gotowymi rozwiązaniami dla wybranych problemów napotykanych w trakcie
projektowania rozwiązań zorientowanych obiektowo. Zaletami płynącymi ze stosowania wzorców projektowych są m.in.
spójność z koncepcją SOLID, masz pewność, że twoje rozwiązanie pokrywa najlepsze praktyki programowania obiektowego, a
także pozwalają na utrzymanie *Clean code* projektu.

## Rodzaje wzorów projektowych:

- **Kreacyjne** - dotyczą tworzenia klas, metod oraz typów danych np. fabryka, budowniczy
- **Strukturalne** - dotyczą zależności powiązanych ze sobą obiektów np. dekorator, fasada
- **Behawioralne** - dotyczną zachowania współpracujących obiektów np. strategia, obserwator

## Wzorce projektowe:

- **Fabryka** - jest wzorcem, który pozwala tworzyć rodziny spokrewnionych ze sobą obiektów bez określenia ich
  konkretnych klas. Fabryka definiuje interfejs służący tworzeniu poszczególnych produktów, ale pozostawia faktyczne
  tworzenie produktów konkretnym klasom fabrycznym. Każdy typ fabryki odpowiada za konkretny rodzaj produktu.


- **Budowniczy** - jest wzorcem, który daje możliwość tworzenia złożonych obiektów etapami, krok po kroku. Wzorzec ten
  pozwala produkować różne typy oraz reprezentacje obiektu używając tego samego kodu konstrukcyjnego.


- **Strategia** - to wzorzec projektowy zakładający przekształcenie zestawu zachowań w obiekty, 
które można stosować zamiennie w pierwotnym obiekcie.


- **Obserwator** - to wzorzec projektowy pozwalający obiektom powiadamiać inne obiekty o zmianach swojego stanu.


- **Fasada** - to wzorzec projektowy wyposażający złożony system klas, bibliotekę lub framework w uproszczony interfejs.


- **Dekorator** - to wzorzec pozwalający na dodawanie obiektom nowych obowiązków w sposób dynamiczny — poprzez
  “opakowywanie” ich w specjalne obiekty posiadające potrzebną funkcjonalność.

