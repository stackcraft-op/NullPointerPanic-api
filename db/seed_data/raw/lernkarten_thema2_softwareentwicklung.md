# Thema 2: Softwareentwicklung & Programmierung

Lernkarten mit Thema, Inhalt und einer Multiple-Choice-Frage (Schwierigkeit: Leicht/Schwer).

---

## Karte 1: Compiler- vs. Interpretersprachen
**Inhalt:** Compilersprachen (z. B. C, Java) übersetzen den kompletten Quellcode vor der Ausführung in Maschinencode – schnell, aber plattformabhängig. Interpretersprachen (z. B. Python, PHP) werden zur Laufzeit übersetzt – plattformunabhängig, aber weniger performant.

**Frage (Leicht):** Welche Aussage trifft auf eine Interpretersprache zu?
A) Der Code wird zur Laufzeit übersetzt und ausgeführt
B) Der Code wird komplett vor der Ausführung in Maschinencode übersetzt
C) Interpretersprachen sind grundsätzlich plattformabhängig
D) Interpretersprachen benötigen keinen Quellcode
**Lösung:** A

---

## Karte 2: Java als Runtime-Environment-Sprache
**Inhalt:** Java nimmt eine Zwischenstellung ein: Der Code wird zu plattformunabhängigem Bytecode kompiliert, der von der JVM (Java Virtual Machine) ausgeführt wird. Dafür muss eine passende JRE (Java Runtime Environment) installiert sein.

**Frage (Schwer):** Warum gilt Java weder als reine Compiler- noch als reine Interpretersprache?
A) Java-Code wird nie kompiliert, sondern nur interpretiert
B) Java-Code wird zu plattformunabhängigem Bytecode kompiliert, den die JVM zur Laufzeit ausführt
C) Java erzeugt direkt plattformspezifischen Maschinencode wie C
D) Java benötigt keinerlei Laufzeitumgebung
**Lösung:** B

---

## Karte 3: JDK, JRE und JVM
**Inhalt:** Die JVM führt den Bytecode aus, die JRE enthält die JVM plus Klassenbibliotheken zum Ausführen von Programmen, das JDK enthält zusätzlich Entwicklerwerkzeuge wie den Compiler javac.

**Frage (Schwer):** Was unterscheidet das JDK von der JRE?
A) JDK und JRE sind identisch
B) Die JRE enthält mehr Werkzeuge als das JDK
C) Das JDK enthält zusätzlich Entwicklungswerkzeuge wie den Compiler, die JRE dient nur der Ausführung
D) Die JVM ist nur im JDK enthalten, nicht in der JRE
**Lösung:** C

---

## Karte 4: Programmierparadigmen
**Inhalt:** Imperative Programmierung arbeitet mit Schritt-für-Schritt-Anweisungen, objektorientierte Programmierung bündelt Daten und Funktionen in Objekten, funktionale Programmierung behandelt Funktionen als Werte ohne Seiteneffekte. Python ist ein Multiparadigma-Beispiel.

**Frage (Leicht):** Welches Paradigma bündelt Daten und Verhalten gemeinsam in Objekten?
A) Imperativ
B) Deklarativ
C) Funktional
D) Objektorientiert
**Lösung:** D

---

## Karte 5: Statische vs. dynamische Typisierung
**Inhalt:** Bei statischer Typisierung (z. B. Java) wird der Datentyp einer Variable bei der Deklaration festgelegt und bleibt bestehen. Bei dynamischer Typisierung (z. B. Python) ergibt sich der Typ automatisch aus dem zugewiesenen Wert und kann sich ändern.

**Frage (Leicht):** Welche Sprache nutzt typischerweise dynamische Typisierung?
A) Python
B) C
C) Java
D) C++
**Lösung:** A

---

## Karte 6: Modulo-Operator
**Inhalt:** Der Modulo-Operator (%) liefert den Rest einer Division. Er ist besonders nützlich, um Teilbarkeit zu prüfen: x % 2 == 0 bedeutet, dass x gerade ist, x % n == 0 bedeutet, dass x durch n teilbar ist.

**Frage (Leicht):** Was ergibt 17 % 5?
A) 3
B) 2
C) 5
D) 12
**Lösung:** B

---

## Karte 7: Bitweise Operatoren
**Inhalt:** Bit-Operatoren arbeiten direkt auf der Bitebene: & (Und), | (Oder), ^ (XOR), ~ (Negation), << (Verschiebung links, entspricht ×2) und >> (Verschiebung rechts, entspricht ÷2). Wichtig für Flags und Bitmasken.

**Frage (Schwer):** Welchen Effekt hat eine Bit-Verschiebung nach links (<<) auf eine Ganzzahl?
A) Sie halbiert den Wert
B) Sie negiert alle Bits
C) Sie verdoppelt den Wert (pro Verschiebung um 1 Bit)
D) Sie hat keinen Effekt auf den Zahlenwert
**Lösung:** C

---

## Karte 8: Datenstrukturen – Liste vs. Tupel
**Inhalt:** Eine Liste ist eine indexsortierte, veränderbare Sammlung (Index beginnt bei 0). Ein Tupel funktioniert wie eine Liste, ist aber unveränderlich – ideal für feste Datensätze, die nicht verändert werden sollen.

**Frage (Leicht):** Was unterscheidet ein Tupel grundlegend von einer Liste?
A) Ein Tupel kann keine Zahlen enthalten
B) Ein Tupel kann nur ein Element enthalten
C) Ein Tupel hat keinen Index
D) Ein Tupel ist nach der Erstellung unveränderlich
**Lösung:** D

---

## Karte 9: Mengen (Sets)
**Inhalt:** Eine Menge (Set) ist eine Sammlung ohne Duplikate und ohne feste Reihenfolge. Wichtige Operationen sind Vereinigung (∪), Schnittmenge (∩) und Differenzmenge, nützlich für Enthält-Prüfungen.

**Frage (Schwer):** Was passiert, wenn man versucht, ein bereits enthaltenes Element erneut zu einer Menge (Set) hinzuzufügen?
A) Es passiert nichts, da Sets keine Duplikate erlauben
B) Das Element wird ein zweites Mal gespeichert
C) Es wird ein Fehler ausgelöst
D) Die Menge wird automatisch geleert
**Lösung:** A

---

## Karte 10: Dictionary (Schlüssel-Wert-Paare)
**Inhalt:** Ein Dictionary speichert Schlüssel-Wert-Paare, wobei Schlüssel eindeutig sein müssen. Der Zugriff erfolgt über den Schlüssel, nicht über einen numerischen Index wie bei Listen.

**Frage (Leicht):** Worüber erfolgt der Zugriff auf einen Wert in einem Dictionary?
A) Über einen numerischen Index beginnend bei 0
B) Über den zugehörigen Schlüssel
C) Über die alphabetische Reihenfolge
D) Über die Speicheradresse
**Lösung:** B

---

## Karte 11: Kontrollstrukturen – While vs. Do-While
**Inhalt:** Eine WHILE-Schleife (kopfgesteuert) prüft die Bedingung vor jedem Durchlauf und kann daher 0-mal ausgeführt werden. Eine DO-WHILE-Schleife (fußgesteuert) prüft die Bedingung erst nach dem Durchlauf und wird daher mindestens einmal ausgeführt.

**Frage (Schwer):** Wie oft wird eine DO-WHILE-Schleife mindestens ausgeführt, selbst wenn die Bedingung von Anfang an falsch ist?
A) 0-mal
B) 2-mal
C) 1-mal
D) Unendlich oft
**Lösung:** C

---

## Karte 12: FOR-Schleife
**Inhalt:** Die FOR-Schleife ist eine Sonderform der Zählschleife für eine bekannte Anzahl von Durchläufen. Sie kann als klassische Zählschleife oder als Iterator über eine Sammlung (foreach) verwendet werden.

**Frage (Leicht):** Wann eignet sich eine FOR-Schleife besonders gut?
A) Nur bei rekursiven Funktionen
B) Wenn die Bedingung erst nach dem ersten Durchlauf geprüft werden soll
C) Wenn niemals eine Bedingung geprüft werden muss
D) Wenn die Anzahl der Durchläufe im Vorhinein bekannt ist
**Lösung:** D

---

## Karte 13: Break vs. Continue
**Inhalt:** BREAK bricht die gesamte Schleife sofort ab, CONTINUE überspringt nur den aktuellen Durchlauf und setzt die Schleife mit dem nächsten Durchlauf fort.

**Frage (Leicht):** Was bewirkt die Anweisung CONTINUE innerhalb einer Schleife?
A) Der aktuelle Durchlauf wird abgebrochen, die Schleife läuft mit dem nächsten Durchlauf weiter
B) Die gesamte Schleife wird sofort beendet
C) Das Programm wird komplett beendet
D) Die Schleife wird von vorne neu gestartet
**Lösung:** A

---

## Karte 14: Parameter vs. Argument
**Inhalt:** Ein Parameter ist die Variable in der Funktionsdefinition (Platzhalter), ein Argument ist der konkrete Wert, der beim Funktionsaufruf übergeben wird.

**Frage (Leicht):** Was bezeichnet man als "Argument" bei einem Funktionsaufruf?
A) Den Namen der Funktion
B) Den konkreten Wert, der beim Aufruf übergeben wird
C) Den Rückgabewert der Funktion
D) Die Variable in der Funktionsdefinition
**Lösung:** B

---

## Karte 15: Rückgabewert und void-Funktionen
**Inhalt:** RETURN beendet eine Funktion sofort und gibt einen Wert zurück. Funktionen ohne RETURN geben implizit nichts zurück (void bzw. None in Python).

**Frage (Schwer):** Was gibt eine Python-Funktion ohne explizites `return` standardmäßig zurück?
A) 0
B) Einen leeren String
C) None
D) Einen Fehler
**Lösung:** C

---

## Karte 16: Exception Handling
**Inhalt:** Laufzeitfehler werden als Exceptions bezeichnet. Nicht abgefangene Exceptions führen zum Programmabbruch. Mit TRY/CATCH (bzw. try/except) lassen sich Fehler wie Division durch 0 oder ungültige Werte kontrolliert behandeln.

**Frage (Leicht):** Welcher Codeblock fängt eine mögliche Ausnahme (Exception) ab?
A) IF/ELSE
B) SWITCH/CASE
C) FOR/WHILE
D) TRY/CATCH
**Lösung:** D

---

## Karte 17: Klassen und Objekte
**Inhalt:** Eine Klasse ist ein Bauplan, der Attribute und Methoden definiert. Ein Objekt (Instanz) ist ein konkretes Exemplar dieser Klasse. Variablen (Referenzen) liegen im Stack, die eigentlichen Objekte im Heap.

**Frage (Schwer):** Wo werden Objekte in Java typischerweise gespeichert, während die Referenzvariable im Stack liegt?
A) Im Heap
B) Im Cache
C) Im ROM
D) In der Registerdatei der CPU
**Lösung:** A

---

## Karte 18: Konstruktor
**Inhalt:** Ein Konstruktor ist eine spezielle Methode ohne Rückgabetyp, die den Namen der Klasse trägt und bei der Objekterstellung zur Initialisierung aufgerufen wird. Ohne expliziten Konstruktor wird ein Default-Konstruktor mit Standardwerten verwendet.

**Frage (Leicht):** Wann wird der Konstruktor einer Klasse aufgerufen?
A) Beim Kompilieren des Programms
B) Beim Erstellen einer neuen Instanz der Klasse
C) Nur beim Programmende
D) Bei jedem Methodenaufruf
**Lösung:** B

---

## Karte 19: Kapselung (Encapsulation)
**Inhalt:** Kapselung bündelt Daten und Methoden in einem Objekt und schränkt den direkten Zugriff von außen ein. Attribute sind meist private, der kontrollierte Zugriff erfolgt über öffentliche Getter- und Setter-Methoden – das ermöglicht Validierung.

**Frage (Schwer):** Warum werden Attribute in der OOP häufig als "private" deklariert und nur über Getter/Setter zugänglich gemacht?
A) Um Speicherplatz zu sparen
B) Weil private Attribute schneller sind
C) Um kontrollierten Zugriff und Validierung zu ermöglichen (z. B. keine negativen Werte)
D) Weil public-Attribute in den meisten Sprachen technisch nicht erlaubt sind
**Lösung:** C

---

## Karte 20: Vererbung – Grundprinzip
**Inhalt:** Vererbung beschreibt eine "Ist-ein"-Beziehung: Eine Subklasse leitet sich von einer Superklasse ab und übernimmt deren Attribute und Methoden, kann aber eigene Erweiterungen hinzufügen. In Java kann eine Klasse nur von genau einer Superklasse erben.

**Frage (Leicht):** Welches Java-Schlüsselwort wird verwendet, damit eine Klasse von einer anderen erbt?
A) implements
B) super
C) inherits
D) extends
**Lösung:** D

---

## Karte 21: super und this
**Inhalt:** Das Schlüsselwort `super` ruft den Konstruktor oder Methoden der Superklasse auf, `this` bezieht sich auf die aktuelle Instanz und wird genutzt, um Instanzvariablen von gleichnamigen Parametern zu unterscheiden.

**Frage (Schwer):** Wofür wird `super()` typischerweise als erste Anweisung im Konstruktor einer Subklasse verwendet?
A) Um den Konstruktor der Superklasse aufzurufen und deren Initialisierung sicherzustellen
B) Um die Subklasse zu löschen
C) Um eine neue Instanz der Subklasse zu erzeugen
D) Um alle Methoden der Subklasse zu überschreiben
**Lösung:** A

---

## Karte 22: Methoden überschreiben (@Override)
**Inhalt:** Subklassen können geerbte Methoden neu definieren, um spezialisiertes Verhalten zu implementieren. Die Annotation @Override zeigt dem Compiler an, dass eine Methode bewusst überschrieben wird.

**Frage (Leicht):** Wozu dient die Annotation @Override in Java?
A) Sie erstellt automatisch eine neue Methode
B) Sie zeigt an, dass eine Methode bewusst eine Methode der Superklasse überschreibt
C) Sie verhindert das Überschreiben von Methoden
D) Sie macht eine Methode privat
**Lösung:** B

---

## Karte 23: Polymorphie
**Inhalt:** Polymorphie erlaubt es, eine Referenzvariable der Superklasse zu nutzen, um Objekte verschiedener Subklassen zu halten. Programme werden dadurch erweiterbar, ohne den konkreten Subtyp zu kennen. `instanceof` prüft zur Laufzeit den tatsächlichen Typ.

**Frage (Schwer):** Welchen praktischen Vorteil bietet Polymorphie beim Verarbeiten einer Liste unterschiedlicher Fahrzeugtypen (PKW, LKW)?
A) Polymorphie funktioniert nur bei primitiven Datentypen
B) Polymorphie verhindert, dass unterschiedliche Klassen in einer Liste gespeichert werden
C) Man kann alle Objekte über die gemeinsame Superklasse behandeln, ohne den konkreten Subtyp zu kennen
D) Polymorphie ersetzt die Notwendigkeit von Methoden vollständig
**Lösung:** C

---

## Karte 24: Abstrakte Klassen
**Inhalt:** Eine abstrakte Klasse dient als allgemeine Vorlage, von der keine direkten Instanzen erzeugt werden können. Sie kann abstrakte Methoden (ohne Implementierung) enthalten, die konkrete Unterklassen zwingend selbst implementieren müssen.

**Frage (Schwer):** Warum kann von einer abstrakten Klasse kein direktes Objekt erstellt werden?
A) Weil sie nur in Interfaces verwendet werden dürfen
B) Weil abstrakte Klassen keine Attribute besitzen dürfen
C) Weil abstrakte Klassen technisch keine Methoden enthalten dürfen
D) Weil sie zu allgemein/unvollständig ist, um ein konkretes Objekt sinnvoll zu repräsentieren
**Lösung:** D

---

## Karte 25: Interface vs. abstrakte Klasse
**Inhalt:** Eine abstrakte Klasse beschreibt, was ein Objekt IST (kann Zustand/Attribute besitzen). Ein Interface beschreibt, was ein Objekt KANN (reiner Methodenvertrag, meist zustandslos). Eine Klasse kann mehrere Interfaces implementieren, aber nur von einer Klasse erben.

**Frage (Schwer):** Wie löst Java das Problem der fehlenden Mehrfachvererbung bei Klassen?
A) Durch die Möglichkeit, mehrere Interfaces gleichzeitig zu implementieren
B) Java erlaubt tatsächlich Mehrfachvererbung von Klassen
C) Durch das Verbot jeglicher Vererbung
D) Durch automatische Zusammenführung aller Superklassen
**Lösung:** A

---

## Karte 26: UML Use-Case-Diagramm
**Inhalt:** Ein Use-Case-Diagramm beschreibt, WAS ein System tut (nicht wie). Es besteht aus Akteuren (externe Nutzer/Systeme), Anwendungsfällen (Ovale) und einer Systemgrenze, die definiert, was zum System gehört.

**Frage (Leicht):** Wie werden Akteure in einem UML-Use-Case-Diagramm typischerweise dargestellt?
A) Als Rechteck
B) Als Strichmännchen
C) Als Raute
D) Als Oval
**Lösung:** B

---

## Karte 27: Include vs. Extend im Use-Case-Diagramm
**Inhalt:** Die «include»-Beziehung zeigt eine zwingende Abhängigkeit (z. B. "Geld abheben" schließt "Identität prüfen" immer ein). Die «extend»-Beziehung zeigt eine optionale Erweiterung unter bestimmten Bedingungen (z. B. optionaler Bon-Druck).

**Frage (Schwer):** Was unterscheidet die «extend»-Beziehung von der «include»-Beziehung im Use-Case-Diagramm?
A) «extend» beschreibt eine zwingende Abhängigkeit, «include» eine optionale Erweiterung
B) Beide Beziehungen sind identisch
C) «extend» beschreibt eine optionale Erweiterung, «include» eine zwingende Abhängigkeit
D) «extend» wird nur bei Akteuren verwendet
**Lösung:** C

---

## Karte 28: UML Aktivitätsdiagramm
**Inhalt:** Ein Aktivitätsdiagramm zeigt den zeitlichen Ablauf einzelner Schritte eines Prozesses. Wichtige Elemente sind Startknoten (schwarzer Kreis), Aktionen (abgerundete Rechtecke), Entscheidungen (Raute) und Endknoten.

**Frage (Leicht):** Welches Symbol markiert im UML-Aktivitätsdiagramm eine Verzweigung/Entscheidung?
A) Ein schwarzer Kreis
B) Ein abgerundetes Rechteck
C) Ein Kreis mit Punkt
D) Eine Raute
**Lösung:** D

---

## Karte 29: Fork und Join (Parallelität)
**Inhalt:** Im Aktivitätsdiagramm teilt ein Fork (dicker Balken) einen Ablauf in mehrere parallele Pfade auf, ein Join führt diese Pfade wieder zusammen und wartet, bis alle abgeschlossen sind – nützlich für atomare Transaktionen.

**Frage (Schwer):** Wofür wird ein Fork/Join-Konstrukt im UML-Aktivitätsdiagramm typischerweise verwendet?
A) Um parallele Abläufe zu modellieren, die untrennbar zusammengehören (Atomarität)
B) Um eine einfache Sequenz von Schritten darzustellen
C) Um eine Schleife zu beenden
D) Um einen Akteur zu definieren
**Lösung:** A

---

## Karte 30: UML Klassendiagramm – Aufbau
**Inhalt:** Eine Klasse wird als Rechteck mit drei Bereichen dargestellt: oben der Klassenname, mittig die Attribute, unten die Methoden. Sichtbarkeiten werden durch Symbole markiert: + (public), - (private), # (protected), ~ (package).

**Frage (Leicht):** Welches Symbol kennzeichnet in einem UML-Klassendiagramm ein privates Attribut?
A) +
B) -
C) #
D) ~
**Lösung:** B

---

## Karte 31: Aggregation vs. Komposition
**Inhalt:** Aggregation (leere Raute) beschreibt eine "Hat-ein"-Beziehung, bei der die Teile auch unabhängig vom Ganzen existieren können. Komposition (volle Raute) beschreibt eine stärkere "Besteht-aus"-Beziehung, bei der die Teile untrennbar zum Ganzen gehören.

**Frage (Schwer):** Was unterscheidet Komposition von Aggregation in UML-Klassendiagrammen?
A) Es gibt keinen inhaltlichen Unterschied zwischen beiden
B) Aggregation wird durch eine volle Raute dargestellt, Komposition durch eine leere
C) Bei Komposition können die Teile nicht unabhängig vom Ganzen existieren, bei Aggregation schon
D) Komposition beschreibt ausschließlich Vererbungsbeziehungen
**Lösung:** C

---

## Karte 32: String-Vergleich in Java
**Inhalt:** Strings sollten in Java nicht mit `==` verglichen werden, da dies nur die Speicherreferenz vergleicht, sondern mit `.equals()` für den inhaltlichen Vergleich. `.contains()` prüft auf einen Teilstring.

**Frage (Schwer):** Warum liefert `string1 == string2` in Java bei inhaltlich gleichen, aber separat erzeugten String-Objekten oft `false`?
A) Strings können in Java nicht verglichen werden
B) Java unterstützt grundsätzlich keinen String-Vergleich
C) `==` funktioniert nur bei Zahlen
D) `==` vergleicht die Speicherreferenz, nicht den Inhalt der Strings
**Lösung:** D

---

## Karte 33: ArrayList vs. LinkedList
**Inhalt:** Eine ArrayList basiert auf einem dynamischen Array mit schnellem Indexzugriff, aber langsamem Einfügen/Löschen in der Mitte. Eine LinkedList nutzt verkettete Knoten mit schnellem Einfügen/Löschen, aber langsamerem Indexzugriff.

**Frage (Schwer):** Wann ist eine LinkedList gegenüber einer ArrayList vorteilhaft?
A) Wenn sehr häufig Elemente am Anfang oder in der Mitte der Liste eingefügt/entfernt werden
B) Wenn hauptsächlich per Index auf Elemente zugegriffen wird
C) LinkedLists sind in allen Fällen schneller als ArrayLists
D) LinkedLists benötigen grundsätzlich weniger Speicher
**Lösung:** A

---

## Karte 34: Algorithmus – Definition
**Inhalt:** Ein Algorithmus ist eine schrittweise Anleitung zur Lösung eines Problems. Er muss eindeutig, endlich und ausführbar sein und folgt dem Schema Eingabe → Verarbeitung → Ausgabe.

**Frage (Leicht):** Welche Eigenschaft muss ein Algorithmus laut Definition zwingend erfüllen?
A) Er muss in Python geschrieben sein
B) Er muss endlich sein (nach endlich vielen Schritten terminieren)
C) Er darf keine Verzweigungen enthalten
D) Er muss grafisch dargestellt werden
**Lösung:** B

---

## Karte 35: Darstellungsformen von Algorithmen
**Inhalt:** Algorithmen können in Alltagssprache, als Flussdiagramm, als Nassi-Shneiderman-Struktogramm, als Pseudocode oder als UML dargestellt werden. Struktogramme zeigen Schleifen und Entscheidungen oft übersichtlicher als Flussdiagramme.

**Frage (Schwer):** Welche Darstellungsform eines Algorithmus gilt als besonders geeignet, um Schleifen und Verschachtelungen klar sichtbar zu machen?
A) Alltagssprache
B) UML-Sequenzdiagramm
C) Nassi-Shneiderman-Struktogramm
D) Bytecode
**Lösung:** C

---

## Karte 36: Euklidischer Algorithmus (GGT)
**Inhalt:** Der Euklid'sche Algorithmus berechnet den größten gemeinsamen Teiler (GGT) sehr effizient: Solange n ungleich 0 ist, wird (m, n) durch (n, m % n) ersetzt. Er ist über 2000 Jahre alt und benötigt keine Vorab-Bestimmung, welche Zahl größer ist.

**Frage (Schwer):** Was ist das Ergebnis von GGT(24, 18) nach dem Euklid'schen Algorithmus?
A) 3
B) 12
C) 9
D) 6
**Lösung:** D

---

## Karte 37: Bubblesort
**Inhalt:** Bubblesort vergleicht benachbarte Elemente und vertauscht sie bei falscher Reihenfolge, bis keine Vertauschung mehr nötig ist. Die Komplexität liegt bei O(N²) – einfach zu verstehen, aber ineffizient bei großen Datenmengen.

**Frage (Leicht):** Welche Komplexität hat der Bubblesort-Algorithmus im Worst Case?
A) O(N²)
B) O(log N)
C) O(N)
D) O(N · log N)
**Lösung:** A

---

## Karte 38: Quicksort
**Inhalt:** Quicksort nutzt das "Teile und herrsche"-Prinzip: Ein Pivot-Element teilt die Liste in kleinere und größere Elemente, die rekursiv weiter sortiert werden. Durchschnittliche Komplexität O(N·log N), Worst Case O(N²).

**Frage (Schwer):** Wodurch entsteht bei Quicksort im ungünstigsten Fall eine Komplexität von O(N²) statt O(N·log N)?
A) Durch die Verwendung von Rekursion an sich
B) Durch eine ungeschickte Pivot-Wahl, die die Liste sehr ungleichmäßig aufteilt
C) Quicksort hat niemals eine schlechtere Komplexität als O(N·log N)
D) Durch zu wenige Vergleichsoperationen
**Lösung:** B

---

## Karte 39: Lineare vs. binäre Suche
**Inhalt:** Die lineare Suche prüft jedes Element nacheinander (O(N), keine Voraussetzung). Die binäre Suche benötigt eine sortierte Liste, halbiert den Suchbereich bei jedem Schritt und erreicht dadurch O(log N).

**Frage (Leicht):** Welche Voraussetzung muss für eine binäre Suche erfüllt sein?
A) Die Liste muss Duplikate enthalten
B) Die Liste darf maximal 10 Elemente enthalten
C) Die Liste muss sortiert sein
D) Es sind keine Voraussetzungen nötig
**Lösung:** C

---

## Karte 40: Rekursion
**Inhalt:** Bei Rekursion ruft sich eine Funktion selbst mit veränderten Parametern auf. Sie braucht immer eine Abbruchbedingung, sonst entsteht unendliche Rekursion. Rekursion ist oft eleganter, benötigt aber mehr Speicher (Aufrufstapel) als Iteration.

**Frage (Schwer):** Was passiert, wenn einer rekursiven Funktion die Abbruchbedingung fehlt?
A) Die Funktion optimiert sich automatisch
B) Der Compiler verhindert das Kompilieren
C) Die Funktion wird automatisch iterativ ausgeführt
D) Es entsteht eine Endlosrekursion, die typischerweise zu einem Stack Overflow führt
**Lösung:** D

---

## Karte 41: Stack (LIFO) vs. Queue (FIFO)
**Inhalt:** Ein Stack arbeitet nach dem LIFO-Prinzip (Last In, First Out) mit Push/Pop-Operationen. Eine Queue arbeitet nach dem FIFO-Prinzip (First In, First Out) mit Enqueue/Dequeue-Operationen.

**Frage (Leicht):** Welches Prinzip beschreibt eine Queue-Datenstruktur?
A) FIFO – First In, First Out
B) LIFO – Last In, First Out
C) Zufällige Reihenfolge
D) Sortierte Reihenfolge nach Wert
**Lösung:** A

---

## Karte 42: Binärbaum
**Inhalt:** Ein Binärbaum hat pro Knoten maximal zwei Nachfolger (links, rechts). In einem geordneten Binärbaum ist die linke Seite kleiner als der aktuelle Wert, die rechte größer oder gleich. Ein In-Order-Traversal gibt alle Werte sortiert aus.

**Frage (Schwer):** Was erreicht man durch ein In-Order-Traversal eines geordneten Binärbaums?
A) Eine zufällige Reihenfolge der Werte
B) Eine aufsteigend sortierte Ausgabe aller Werte
C) Nur die Ausgabe der Blattknoten
D) Eine absteigend sortierte Ausgabe
**Lösung:** B

---

## Karte 43: Graph – Grundbegriffe
**Inhalt:** Ein Graph besteht aus Knoten (Vertices) und Kanten (Edges) und ist flexibler als ein Baum, da Zyklen und mehrere Vorgänger möglich sind. Es gibt gerichtete, ungerichtete und gewichtete Graphen.

**Frage (Leicht):** Was unterscheidet einen gerichteten Graphen (Digraph) von einem ungerichteten?
A) Ungerichtete Graphen haben immer Gewichte
B) Gerichtete Graphen dürfen keine Zyklen enthalten
C) Gerichtete Graphen haben Kanten mit einer festgelegten Richtung (Pfeilen)
D) Es gibt keinen Unterschied
**Lösung:** C

---

## Karte 44: Tiefensuche (DFS) vs. Breitensuche (BFS)
**Inhalt:** DFS nutzt einen Stack (LIFO) und verfolgt jeden Weg bis zum Ende, findet aber nicht garantiert den kürzesten Pfad. BFS nutzt eine Queue (FIFO), geht Ebene für Ebene vor und findet garantiert den kürzesten Pfad.

**Frage (Schwer):** Warum findet die Breitensuche (BFS) garantiert den kürzesten Pfad, die Tiefensuche (DFS) aber nicht?
A) BFS verwendet eine Priority Queue statt einer normalen Queue
B) BFS verwendet mehr Speicher als DFS
C) DFS kann grundsätzlich keine Zielknoten finden
D) BFS untersucht alle Knoten einer Ebene, bevor sie zur nächsten übergeht, wodurch der erste gefundene Pfad automatisch der kürzeste ist
**Lösung:** D

---

## Karte 45: A*-Suche
**Inhalt:** Die A*-Suche ist eine informierte Suche, die eine Priority Queue nutzt und Kosten des bisherigen Weges plus eine geschätzte Restdistanz (Heuristik, z. B. euklidischer Abstand) berücksichtigt. Sie findet bei zulässiger Heuristik den optimalen Pfad.

**Frage (Schwer):** Welche Datenstruktur verwendet die A*-Suche für die Frontier, im Gegensatz zu Stack bei DFS oder Queue bei BFS?
A) Priority Queue
B) Verkettete Liste
C) Binärbaum
D) Hash-Tabelle
**Lösung:** A

---

## Karte 46: Constraint Satisfaction Problem (CSP)
**Inhalt:** Ein CSP besteht aus Variablen, Domänen (möglichen Werten) und Bedingungen (Constraints), die alle gleichzeitig erfüllt sein müssen (z. B. Sudoku). Backtracking löst CSPs, indem es bei einem Widerspruch zur vorherigen Variable zurückkehrt.

**Frage (Leicht):** Was passiert beim Backtracking, wenn kein Wert mehr zu einer Variable passt?
A) Das Programm bricht sofort komplett ab
B) Es wird zur vorherigen Variable zurückgegangen und ein anderer Wert probiert
C) Alle Variablen werden auf 0 zurückgesetzt
D) Die Bedingungen werden ignoriert
**Lösung:** B

---

## Karte 47: Komplexitätsklassen
**Inhalt:** Komplexitätsklassen beschreiben den Rechenaufwand im Worst Case: O(1) konstant, O(log N) logarithmisch, O(N) linear, O(N·log N) linearithmisch, O(N²) quadratisch, O(N!) faktoriell (z. B. alle Permutationen).

**Frage (Schwer):** Welche Komplexitätsklasse beschreibt einen Algorithmus, der alle möglichen Permutationen einer Menge durchprobiert?
A) O(N)
B) O(N²)
C) O(N!)
D) O(log N)
**Lösung:** C

---

## Karte 48: Logische Gatter
**Inhalt:** Grundlegende logische Gatter sind AND (beide Eingänge wahr), OR (mindestens ein Eingang wahr), NOT (Negation), sowie die daraus abgeleiteten NAND, NOR und XOR. NAND und NOR gelten als die "natürlicheren" elektronischen Bausteine.

**Frage (Schwer):** Welches logische Gatter liefert nur dann eine 1, wenn genau einer der beiden Eingänge 1 ist?
A) AND
B) OR
C) NAND
D) XOR
**Lösung:** D

---

## Karte 49: Halb- und Volladdierer
**Inhalt:** Ein Halbaddierer addiert zwei Bits (Sum = XOR, Carry = AND), kann aber keinen eingehenden Übertrag verarbeiten. Ein Volladdierer besteht aus zwei Halbaddierern und verarbeitet zusätzlich einen Carry-in.

**Frage (Schwer):** Warum benötigt man für ein mehrstelliges Addierwerk Volladdierer statt nur Halbaddierer (außer für die niedrigste Stelle)?
A) Volladdierer können zusätzlich einen eingehenden Übertrag (Carry-in) aus der vorherigen Stelle verarbeiten
B) Volladdierer sind schneller als Halbaddierer
C) Halbaddierer können keine Bits addieren
D) Volladdierer benötigen keine Transistoren
**Lösung:** A

---

## Karte 50: Turingmaschine
**Inhalt:** Die 1936 von Alan Turing entwickelte Turingmaschine ist das leistungsfähigste theoretische Automatenmodell: Ein unbegrenztes Band, ein Schreib-/Lesekopf und eine Zustandsmenge bestimmen das Verhalten. Sie gilt als Referenz für Turing-Vollständigkeit.

**Frage (Leicht):** Wer entwickelte 1936 das theoretische Modell der Turingmaschine?
A) Kurt Gödel
B) Alan Turing
C) Claude Shannon
D) John von Neumann
**Lösung:** B

---

## Karte 51: Das Halteproblem
**Inhalt:** Das Halteproblem fragt, ob ein Programm bei gegebener Eingabe jemals terminiert. Turing bewies, dass dies nicht allgemein algorithmisch entscheidbar ist – ein fundamentales Ergebnis der theoretischen Informatik.

**Frage (Schwer):** Was besagt das von Turing bewiesene Halteproblem?
A) Nur rekursive Programme können nicht terminieren
B) Alle Programme terminieren garantiert nach endlicher Zeit
C) Es gibt keinen allgemeinen Algorithmus, der für jedes Programm/jede Eingabe entscheiden kann, ob es terminiert
D) Das Halteproblem wurde inzwischen algorithmisch gelöst
**Lösung:** C

---

## Karte 52: Gödels Unvollständigkeitssätze
**Inhalt:** Kurt Gödel zeigte 1931, dass in jedem hinreichend komplexen formalen System wahre, aber unbeweisbare Sätze existieren und dass ein solches System seine eigene Widerspruchsfreiheit nicht beweisen kann.

**Frage (Schwer):** Was besagen Gödels Unvollständigkeitssätze von 1931 im Kern?
A) Jedes formale System ist vollständig beweisbar
B) Turingmaschinen können jedes Problem lösen
C) Mathematik ist grundsätzlich widerspruchsfrei beweisbar
D) In jedem hinreichend komplexen formalen System gibt es wahre, aber unbeweisbare Aussagen
**Lösung:** D

---

## Karte 53: Datentypen und Speicherbedarf (C)
**Inhalt:** In klassischen C-nahen Sprachen belegt ein INT typischerweise 4 Byte (32 Bit), ein BOOL 1 Byte, ein CHAR 1 Byte (als ASCII-Wert codiert) und ein FLOAT 4 Byte mit einfacher Präzision.

**Frage (Leicht):** Wie viel Speicher belegt ein klassischer INT-Datentyp typischerweise?
A) 4 Byte
B) 2 Byte
C) 1 Byte
D) 8 Byte
**Lösung:** A

---

## Karte 54: Arrays – Grundprinzip
**Inhalt:** Ein Array speichert mehrere Werte gleichen Typs unter einer einzigen Speicheradresse und spart dadurch Speicherverwaltungsaufwand gegenüber einzelnen Variablen. Der Index beginnt bei 0 und geht bis Anzahl der Elemente − 1.

**Frage (Schwer):** Warum spart die Verwendung eines Arrays gegenüber einzelnen Variablen Verwaltungsaufwand?
A) Arrays benötigen grundsätzlich keinen Speicherplatz
B) Alle Werte des Arrays teilen sich eine gemeinsame Basis-Speicheradresse statt einzelner Adressen
C) Arrays können nur einen einzigen Wert enthalten
D) Arrays werden nicht im RAM, sondern nur im Cache gespeichert
**Lösung:** B

---

## Karte 55: Mehrdimensionale Arrays
**Inhalt:** Ein zweidimensionales Array (z. B. `array[3][2]`) besteht aus einem äußeren Array, dessen Elemente wiederum Arrays sind. Der Zugriff erfolgt über zwei Indizes, z. B. `array[1][2]`.

**Frage (Leicht):** Wie greift man in einem zweidimensionalen Array typischerweise auf ein Element zu?
A) Mit einem einzigen Index
B) Nur über den Namen der Variable
C) Mit zwei Indizes, z. B. array[zeile][spalte]
D) Mehrdimensionale Arrays existieren nicht
**Lösung:** C

---

## Karte 56: Wahrheitstabelle
**Inhalt:** Eine Wahrheitstabelle visualisiert alle möglichen Ergebnisse einer logischen Bedingung (UND, ODER, XOR) für alle Kombinationen von wahr/falsch der Eingabewerte – hilfreich bei der Programmplanung.

**Frage (Schwer):** Bei welcher Kombination liefert die logische Verknüpfung XOR (A^B) den Wert "wahr"?
A) Wenn beide Werte wahr sind
B) Wenn beide Werte falsch sind
C) XOR liefert immer wahr
D) Wenn genau einer der beiden Werte wahr ist
**Lösung:** D

---

## Karte 57: Programmablaufplan (PAP)
**Inhalt:** Ein Programmablaufplan (PAP), auch Flussdiagramm genannt, ist eine grafische Darstellung eines Algorithmus mit Start/Ende, Arbeitsschritten, Entscheidungen und Ein-/Ausgabe, verbunden durch Pfeile, die den Programmfluss zeigen.

**Frage (Leicht):** Welches Symbol markiert in einem Programmablaufplan üblicherweise eine Ja/Nein-Entscheidung?
A) Raute
B) Rechteck
C) Parallelogramm
D) Abgerundetes Rechteck
**Lösung:** A

---

## Karte 58: Schreibtischtest
**Inhalt:** Ein Schreibtischtest ist eine manuelle Code-Überprüfung: Der Ablauf eines Programms wird anhand konkreter Eingaben Schritt für Schritt im Kopf oder auf Papier durchgespielt, um Fehler zu finden, ohne den Code tatsächlich auszuführen.

**Frage (Schwer):** Was ist der Hauptzweck eines Schreibtischtests bei der Softwareentwicklung?
A) Automatisiertes Kompilieren des Codes
B) Manuelle, schrittweise Nachverfolgung des Programmablaufs zur Fehlersuche ohne Ausführung
C) Lasttest der fertigen Anwendung
D) Automatische Generierung von Testfällen
**Lösung:** B

---

## Karte 59: Python – dynamische Typisierung und PEP 8
**Inhalt:** Python erkennt Datentypen automatisch ohne explizite Deklaration. Der Styleguide PEP 8 empfiehlt unter anderem 4 Leerzeichen zur Einrückung sowie snake_case für Variablennamen.

**Frage (Leicht):** Wie viele Leerzeichen empfiehlt der Python-Styleguide PEP 8 standardmäßig zur Einrückung?
A) 2
B) 8
C) 4
D) Tabulatoren statt Leerzeichen
**Lösung:** C

---

## Karte 60: Python f-Strings
**Inhalt:** f-Strings (f"Text {variable}") sind der moderne Weg, Variablen und Ausdrücke direkt in Python-Strings einzubetten. Mit Formatangaben wie {wert:.2f} lässt sich z. B. die Anzeige auf 2 Nachkommastellen begrenzen.

**Frage (Schwer):** Was ist der Unterschied zwischen `round(preis, 2)` und der Formatierung `f"{preis:.2f}"` in Python?
A) Es gibt keinen funktionalen Unterschied
B) Beide Methoden verändern den Variablenwert dauerhaft
C) `round()` funktioniert nur mit Ganzzahlen
D) `round()` verändert den tatsächlichen Variablenwert, das f-String-Format verändert nur die Anzeige
**Lösung:** D

---

## Karte 61: Python Type Casting
**Inhalt:** In Python wandeln int(), float(), str() und bool() Werte explizit in einen anderen Datentyp um. Bei bool() gilt: alles "Leere" (0, "", [], None) wird zu False, der Rest zu True.

**Frage (Schwer):** Was gibt `bool("")` in Python zurück?
A) False
B) True
C) None
D) Einen Fehler
**Lösung:** A

---

## Karte 62: Python match/case
**Inhalt:** Die match/case-Anweisung ist eine effizientere Alternative zu vielen aufeinanderfolgenden if-Abfragen. Der Unterstrich `_` fungiert als Default-Fall, mehrere Werte lassen sich mit `|` kombinieren.

**Frage (Leicht):** Was bewirkt der Unterstrich `_` in einer Python match/case-Anweisung?
A) Er beendet das Programm
B) Er fungiert als Default-Fall, wenn kein anderer Case passt
C) Er löscht die Variable
D) Er wiederholt den letzten Case
**Lösung:** B

---

## Karte 63: Python random-Modul
**Inhalt:** Das Modul `random` bietet Funktionen wie random.random() (Zufallszahl 0.0–1.0), random.randint(a, b) (Ganzzahl inklusive beider Grenzen) und random.choice(liste) (zufälliges Element einer Liste).

**Frage (Schwer):** Welchen Wertebereich deckt `random.randint(1, 10)` in Python ab?
A) 1 bis 9 (10 exklusiv)
B) 0 bis 10
C) 1 bis 10 (beide Grenzen inklusive)
D) 2 bis 10
**Lösung:** C

---

## Karte 64: Namenskonventionen in Java
**Inhalt:** Java-Namenskonventionen: camelCase für Variablen und Methoden (kundenName), PascalCase für Klassen (BankKonto), SCREAMING_SNAKE_CASE für Konstanten (MAX_WERT).

**Frage (Leicht):** Welche Namenskonvention wird in Java üblicherweise für Klassennamen verwendet?
A) camelCase
B) SCREAMING_SNAKE_CASE
C) snake_case
D) PascalCase
**Lösung:** D

---

## Karte 65: Sichtbarkeitsmodifikatoren (Access Modifiers)
**Inhalt:** public ist von überall zugänglich, private nur innerhalb der eigenen Klasse, protected innerhalb der Klasse und ihrer Unterklassen. Package-private (Standard ohne Schlüsselwort) gilt nur innerhalb desselben Pakets.

**Frage (Schwer):** Welcher Sichtbarkeitsmodifikator erlaubt Zugriff sowohl innerhalb der eigenen Klasse als auch aus Unterklassen, aber nicht von außenstehenden Klassen?
A) protected
B) private
C) public
D) package-private
**Lösung:** A

---

## Karte 66: Interfaces und Mehrfachimplementierung
**Inhalt:** Ein Interface definiert Methodensignaturen ohne Implementierung. Eine Klasse implementiert ein Interface mit dem Schlüsselwort `implements` und muss dabei alle vorgegebenen Methoden umsetzen.

**Frage (Leicht):** Welches Java-Schlüsselwort wird verwendet, um ein Interface in einer Klasse einzubinden?
A) extends
B) implements
C) interface
D) inherits
**Lösung:** B

---

## Karte 67: Getter und Setter
**Inhalt:** Getter (z. B. getAttribut()) geben den Wert eines privaten Attributs zurück, Setter (z. B. setAttribut(wert)) setzen ihn – oft mit eingebauter Validierung, um ungültige Zustände (z. B. negativer Kontostand) zu verhindern.

**Frage (Leicht):** Wozu dient eine Setter-Methode in der objektorientierten Programmierung?
A) Sie liest ausschließlich den Wert eines Attributs aus
B) Sie erzeugt automatisch neue Objekte
C) Sie ermöglicht kontrolliertes, ggf. validiertes Setzen eines privaten Attributwerts
D) Sie löscht ein Attribut vollständig
**Lösung:** C

---

## Karte 68: Slicing bei Strings und Listen
**Inhalt:** Slicing extrahiert einen Teilbereich einer Liste oder eines Strings über die Syntax `[start:ende]`, wobei der Endindex exklusiv ist. Beispiel: `liste[1:3]` liefert die Elemente an Index 1 und 2.

**Frage (Schwer):** Was liefert der Ausdruck `text[0:6]` bei `text = "Python Programmierung"`?
A) Den kompletten String
B) "Python "
C) "Progra"
D) "Python"
**Lösung:** D

---

## Karte 69: Deklarieren, Definieren, Initialisieren
**Inhalt:** Deklarieren reserviert Speicherplatz mit einem Namen und Datentyp. Definieren weist einen Wert zu. Die gleichzeitige Deklaration und Definition nennt man Initialisieren (z. B. `int a = 12;`).

**Frage (Leicht):** Wie nennt man den Vorgang, wenn Deklaration und Wertzuweisung einer Variable gleichzeitig erfolgen?
A) Initialisieren
B) Kompilieren
C) Casting
D) Debuggen
**Lösung:** A

---

## Karte 70: Konstanten
**Inhalt:** Eine Konstante wird auf einen unveränderlichen Wert festgesetzt, der im weiteren Programmverlauf nicht mehr verändert werden kann (z. B. `const pi = 3.141`).

**Frage (Leicht):** Was passiert, wenn versucht wird, einer als Konstante deklarierten Variable im Programmverlauf einen neuen Wert zuzuweisen?
A) Der neue Wert wird ohne Probleme übernommen
B) Dies führt zu einem Fehler, da Konstanten unveränderlich sind
C) Die Variable wird automatisch gelöscht
D) Der alte und neue Wert werden addiert
**Lösung:** B

---

## Karte 71: Modularisierung durch Funktionen
**Inhalt:** Funktionen kapseln wiederverwendbare Logik. Sie empfangen Eingabeparameter, verarbeiten diese und geben optional über RETURN ein Ergebnis zurück – nach dem Muster f(x) → Verarbeitung → Output.

**Frage (Leicht):** Was beschreibt das Konzept "f(x) → Verarbeitung → Output" bei Funktionen?
A) Funktionen dürfen keine Rückgabewerte haben
B) Eine Funktion kann niemals Parameter entgegennehmen
C) Eine Funktion verarbeitet eine Eingabe und liefert ein Ergebnis
D) f(x) beschreibt ausschließlich mathematische Notation ohne Bezug zur Programmierung
**Lösung:** C

---

## Karte 72: Default-Parameter
**Inhalt:** Default-Parameter erhalten einen Standardwert, der verwendet wird, wenn beim Funktionsaufruf kein Argument übergeben wird (z. B. `def berechne_netto(brutto, steuer=0.19)`).

**Frage (Schwer):** Was passiert, wenn eine Funktion mit Default-Parameter `steuer=0.19` ohne Angabe des Steuerwerts aufgerufen wird?
A) Es wird automatisch ein Fehler ausgelöst
B) Der Steuerwert wird auf 0 gesetzt
C) Die Funktion kann nicht aufgerufen werden
D) Der Standardwert 0.19 wird verwendet
**Lösung:** D

---

## Karte 73: Scope von Variablen
**Inhalt:** Variablen, die innerhalb einer Funktion definiert werden, sind "lokal" (lokaler Scope) und von außerhalb der Funktion nicht sichtbar oder zugreifbar.

**Frage (Leicht):** Was bedeutet es, dass eine Variable "lokalen Scope" hat?
A) Sie ist nur innerhalb der Funktion sichtbar, in der sie definiert wurde
B) Sie ist im gesamten Programm sichtbar
C) Sie wird automatisch global gespeichert
D) Sie kann nur einmal im Programm existieren
**Lösung:** A

---

## Karte 74: Interpreterausführung und Ressourcenbedarf
**Inhalt:** Interpretersprachen wie Python oder PHP benötigen zur Ausführung mehr Ressourcen (RAM) und sind weniger performant als kompilierte Sprachen, bieten dafür aber Plattformunabhängigkeit und geringeren Wartungsaufwand.

**Frage (Schwer):** Welchen Nachteil haben Interpretersprachen typischerweise gegenüber Compilersprachen?
A) Sie sind grundsätzlich plattformabhängig
B) Sie benötigen mehr Ressourcen und sind weniger performant
C) Sie können nicht objektorientiert sein
D) Sie unterstützen keine Variablen
**Lösung:** B

---

## Karte 75: Von-Neumann-Registermaschine (Virtueller Prozessor)
**Inhalt:** Eine vereinfachte Registermaschine nutzt Register (A, B als Rechenregister, C als Statusregister, S als Stack Pointer) und Befehle wie MOV, ADD, CMP, JMP, PUSH/POP zur Simulation von Maschinencode-Ausführung.

**Frage (Schwer):** Wofür wird der Befehl `CMP` in einer einfachen Registermaschine typischerweise verwendet?
A) Zum Kopieren eines Werts in ein Register
B) Zum Beenden des Programms
C) Zum Vergleich zweier Operanden, wobei Statusflags gesetzt werden
D) Zum Definieren einer Sprungmarke
**Lösung:** C

---

## Karte 76: Stack Overflow durch Rekursion
**Inhalt:** Da jeder rekursive Aufruf einen neuen Stack-Frame anlegt, kann fehlerhafte oder zu tiefe Rekursion den Aufrufstapel (Stack) zum Überlaufen bringen – ein Stack Overflow, der das Programm abstürzen lässt.

**Frage (Schwer):** Warum verbraucht Rekursion tendenziell mehr Speicher als eine äquivalente iterative Lösung?
A) Es gibt keinen Speicherunterschied zwischen Rekursion und Iteration
B) Rekursive Funktionen benötigen grundsätzlich mehr CPU-Zyklen als Schleifen
C) Rekursion verwendet immer globale Variablen
D) Jeder rekursive Aufruf legt einen eigenen Stack-Frame mit lokalen Variablen an, die bis zur Rückkehr erhalten bleiben
**Lösung:** D

---

## Karte 77: Primzahlprüfung (Algorithmus-Muster)
**Inhalt:** Eine einfache Primzahlprüfung testet für eine Zahl n, ob sie durch eine Zahl zwischen 2 und n−1 ohne Rest teilbar ist. Ist n kleiner als 2, ist es keine Primzahl. Findet sich kein Teiler, ist n eine Primzahl.

**Frage (Schwer):** Warum liefert eine Primzahlprüfung für n=1 immer "keine Primzahl" zurück, unabhängig von der Teilerschleife?
A) Weil die Bedingung n < 2 bereits vorab False zurückgibt, bevor die Teilerschleife überhaupt läuft
B) Weil 1 immer durch alle Zahlen teilbar ist
C) Weil die Schleife bei n=1 unendlich oft läuft
D) Weil 1 als einzige Zahl übersprungen wird
**Lösung:** A

---

## Karte 78: Werte tauschen mit Hilfsvariable
**Inhalt:** Um zwei Variablenwerte zu vertauschen, wird klassischerweise eine Hilfsvariable benötigt (hilfe = a; a = b; b = hilfe), da sonst beim direkten Zuweisen ein Wert überschrieben und verloren ginge.

**Frage (Leicht):** Warum benötigt man beim klassischen Vertauschen zweier Variablenwerte üblicherweise eine dritte Hilfsvariable?
A) Weil Programmiersprachen grundsätzlich keine direkte Zuweisung erlauben
B) Um zu verhindern, dass ein Wert vor dem Zuweisen überschrieben und dadurch verloren geht
C) Um Speicherplatz zu sparen
D) Weil sonst ein Syntaxfehler entsteht
**Lösung:** B

---

## Karte 79: Iteration über Arrays (Foreach)
**Inhalt:** Die Foreach-Schleife (z. B. `for (Fahrzeug a : fuhrpark)`) iteriert direkt über die Elemente einer Sammlung, ohne dass ein manueller Index verwaltet werden muss.

**Frage (Leicht):** Welchen Vorteil bietet eine Foreach-Schleife gegenüber einer klassischen indexbasierten For-Schleife?
A) Sie ist grundsätzlich schneller in der Ausführung
B) Sie kann nur bei Zahlen verwendet werden
C) Es muss kein manueller Index verwaltet werden
D) Sie funktioniert nur bei sortierten Listen
**Lösung:** C

---

## Karte 80: Speicherverhalten von Strings (Immutability)
**Inhalt:** Strings sind sowohl in Java als auch in Python immutable (unveränderlich) – jede scheinbare Änderung erzeugt tatsächlich ein neues String-Objekt im Speicher, statt das bestehende zu verändern.

**Frage (Schwer):** Was passiert intern, wenn in Python oder Java ein bestehender String scheinbar verändert wird (z. B. durch Verkettung)?
A) Der ursprüngliche String wird direkt im Speicher überschrieben
B) Der Vorgang schlägt grundsätzlich mit einem Fehler fehl
C) Strings können in beiden Sprachen gar nicht verändert werden, auch nicht über Neuzuweisung
D) Es wird ein komplett neues String-Objekt im Speicher erzeugt
**Lösung:** D

---

## Karte 81: Bedeutung von Kommentaren im Code
**Inhalt:** Kommentare sind Erläuterungen im Quellcode, die vom Compiler/Interpreter nicht ausgeführt werden. Sie dienen der Dokumentation und Verständlichkeit, ohne das Programmverhalten zu beeinflussen.

**Frage (Leicht):** Welchen Einfluss haben Kommentare auf die Ausführung eines Programms?
A) Sie haben keinen Einfluss auf die Programmausführung
B) Sie werden ausgeführt wie normaler Code
C) Sie verlangsamen zwingend die Laufzeit
D) Sie werden nur bei Compilersprachen ignoriert
**Lösung:** A

---

## Karte 82: Standardbibliotheken in C (#include)
**Inhalt:** In C bindet `#include` standardisierte Bibliotheken ein, z. B. `<stdio.h>` für Ein-/Ausgabe (printf, scanf), `<math.h>` für mathematische Funktionen (sqrt), `<string.h>` für String-Funktionen (strlen).

**Frage (Schwer):** Welche Header-Datei muss in C eingebunden werden, um die Funktion `sqrt()` zur Berechnung der Quadratwurzel nutzen zu können?
A) stdio.h
B) math.h
C) string.h
D) stdlib.h
**Lösung:** B

---

## Karte 83: Interfaces und Polymorphie kombiniert
**Inhalt:** Arrays oder Listen vom Typ eines Interfaces (z. B. `Druckbar[]`) können Objekte völlig unterschiedlicher Klassen enthalten, solange diese das Interface implementieren – beim Durchlaufen wird die Interface-Methode aufgerufen, ohne den konkreten Typ zu kennen.

**Frage (Schwer):** Welchen Vorteil bietet Interface-Polymorphie beim Verarbeiten eines Arrays vom Typ `Druckbar[]`, das Autos und Dokumente enthält?
A) Interfaces verhindern grundsätzlich die Verwendung von Arrays
B) Nur Objekte derselben Klasse dürfen im Array gespeichert werden
C) Beide Objekttypen können einheitlich über die gemeinsame Interface-Methode behandelt werden, ohne ihren konkreten Typ zu kennen
D) Die Methode muss für jeden Objekttyp manuell unterschieden aufgerufen werden
**Lösung:** C

---

## Karte 84: Datentyp Boolean und Bedingungen
**Inhalt:** Eine IF-Abfrage benötigt immer eine Bedingung, die einen booleschen Wert (true/false) liefert. Vergleichsoperatoren wie ==, !=, <, > geben grundsätzlich einen Wahrheitswert zurück.

**Frage (Leicht):** Welchen Datentyp muss die Bedingung in einer IF-Abfrage liefern?
A) Integer
B) String
C) Float
D) Boolean
**Lösung:** D

---

## Karte 85: Compiler-Workflow bei Java
**Inhalt:** Der Java-Workflow läuft in drei Schritten ab: Quellcode schreiben (.java) → Kompilieren zu plattformunabhängigem Bytecode (.class) → Ausführung durch die JVM auf der jeweiligen Plattform.

**Frage (Schwer):** Warum ist Java-Bytecode plattformunabhängig, obwohl er zuvor kompiliert wurde?
A) Der Bytecode wird nicht in Maschinencode einer bestimmten Plattform übersetzt, sondern von der JVM auf jeder Plattform interpretiert/ausgeführt
B) Java-Bytecode ist identisch mit nativem Maschinencode
C) Java verzichtet komplett auf Kompilierung
D) Jede Plattform benötigt eine eigene Version des Bytecodes
**Lösung:** A

---

## Karte 86: Polymorphie zur Vermeidung redundanter Auswahlstrukturen
**Inhalt:** Polymorphie ("Vielgestaltigkeit") erlaubt es, dass Objekte unterschiedlicher, aber verwandter Klassen auf denselben Methodenaufruf jeweils ihre eigene, überschriebene Implementierung ausführen. Statt einer zentralen switch/if-Struktur, die für jeden Typ separat unterscheidet, ruft der Code einheitlich dieselbe Methode auf – die konkrete Klasse entscheidet zur Laufzeit, welches Verhalten ausgeführt wird. Das verbessert die Wartbarkeit, da neue Typen ergänzt werden können, ohne bestehenden Code zu ändern.

**Frage (Schwer):** Eine Klasse "Besucher" hat für drei Typen (STANDARD, PREMIUM, VIP) jeweils eine Tabelle mit Rückgabewerten in einer Methode statt echter Vererbung. Welche Verbesserung schlägt Polymorphie hierfür vor?
A) Jede Tabelle durch eine noch größere switch-Anweisung ersetzen
B) Für jeden Typ eine Unterklasse mit überschriebener Methode erstellen und die Basisklasse abstrakt machen
C) Alle drei Typen in einer einzigen Methode ohne Fallunterscheidung zusammenfassen
D) Die Instanzvariable "typ" durch zusätzliche globale Variablen ersetzen
**Lösung:** B

---

## Karte 87: Fabrikmethode (Factory Method)
**Inhalt:** Eine statische Fabrikmethode (z. B. createBesucher) kapselt die Objekterzeugung: Je nach übergebenem Typ-Parameter liefert sie die passende Instanz einer Unterklasse zurück, ohne dass der aufrufende Code die konkrete Klasse selbst kennen oder mit "new" instanziieren muss. Das entkoppelt den Client-Code von konkreten Klassen und erleichtert spätere Erweiterungen um neue Typen.

**Frage (Leicht):** Was ist der Hauptzweck einer statischen Fabrikmethode?
A) Sie ersetzt alle Attribute einer Klasse durch statische Variablen
B) Sie verhindert, dass Objekte überhaupt erzeugt werden können
C) Sie kapselt die Objekterzeugung und liefert je nach Parameter die passende Instanz zurück
D) Sie dient ausschließlich der Speicherbereinigung
**Lösung:** C

---

## Karte 88: Aggregation vs. Komposition (UML) – IoT-Beispiel
**Inhalt:** Beide sind spezielle "Hat-ein"-Beziehungen zwischen Klassen. Bei der Aggregation (offene Raute) können die Teile unabhängig vom Ganzen existieren – z. B. gehört ein Sensor zu einem Beet, könnte aber auch in ein anderes Beet versetzt werden. Bei der Komposition (gefüllte Raute) ist das Teil existenziell an das Ganze gebunden – wird das Ganze zerstört, wird auch das Teil zerstört.

**Frage (Schwer):** Welches Beispiel beschreibt am ehesten eine Komposition statt einer Aggregation?
A) Ein Kunde und seine Bestellungen bei verschiedenen Händlern
B) Ein Mitarbeiter und die Abteilung, der er zugeordnet ist
C) Ein Buch und die Bibliothek, in der es ausgeliehen wird
D) Ein Auto und sein Motor, der beim Verschrotten des Autos ebenfalls entsorgt wird
**Lösung:** D

---

## Karte 89: Zustandsdiagramm (State Machine)
**Inhalt:** Ein UML-Zustandsdiagramm beschreibt die möglichen Zustände eines Objekts und die Übergänge (Transitionen) zwischen ihnen, ausgelöst durch Ereignisse oder Bedingungen. Ein Startzustand wird als ausgefüllter Kreis dargestellt, Übergänge als Pfeile mit optionaler Bedingung/Trigger-Beschriftung. Beispiel: eine Ampel mit den Zuständen Grün, Orange und Rot, die je nach Auslastungsprozentsatz wechselt.

**Frage (Leicht):** Was stellt ein Zustandsdiagramm primär dar?
A) Die möglichen Zustände eines Objekts und die Übergänge zwischen ihnen
B) Die zeitliche Reihenfolge von Methodenaufrufen zwischen Objekten
C) Die statische Vererbungshierarchie von Klassen
D) Die Datenbankstruktur einer Anwendung
**Lösung:** A

---

## Karte 90: Array-Durchlauf mit Grenzwert-Zähler
**Inhalt:** Ein häufiges Muster ist das Durchlaufen eines Arrays fester Größe (z. B. 24 Stundenwerte) mit einer for-Schleife, wobei pro Element geprüft wird, ob ein Schwellwert überschritten ist, und ein Zähler entsprechend erhöht wird. Am Ende wird der Zähler mit einem Grenzwert verglichen, um eine Meldung auszulösen (z. B. Warnung, wenn die CPU-Last an mehr als 18 von 24 Stunden über 80 % lag).

**Frage (Schwer):** Ein Array mit 24 Stundenwerten soll gezählt werden, wie oft ein Wert über 80 liegt. Welches Codemuster ist dafür korrekt?
A) Eine einzelne if-Abfrage auf das erste Array-Element ohne Schleife
B) Eine for-Schleife über alle Indizes mit einem Zähler, der bei Überschreitung erhöht wird
C) Eine while-Schleife, die nur einmal durchläuft
D) Eine rekursive Funktion ohne Abbruchbedingung
**Lösung:** B

---

## Karte 91: Funktionale vs. nichtfunktionale Anforderungen
**Inhalt:** Funktionale Anforderungen beschreiben, WAS ein System tun soll – konkrete Funktionen und Verhaltensweisen (z. B. "Nutzer können Tickets online buchen"). Nichtfunktionale Anforderungen beschreiben WIE GUT das System dies tun soll – Qualitätsmerkmale wie Performance, Sicherheit, Benutzerfreundlichkeit oder Skalierbarkeit (z. B. "die App muss auch bei 10.000 gleichzeitigen Nutzern reagieren").

**Frage (Leicht):** Welches Beispiel ist eine nichtfunktionale Anforderung?
A) Der Nutzer kann eine Eintrittskarte online kaufen
B) Der Nutzer kann sein Passwort zurücksetzen
C) Die App muss auch bei hoher Last innerhalb von 2 Sekunden antworten
D) Die App zeigt eine Liste verfügbarer Termine an
**Lösung:** C

---

## Karte 92: Qualitätsmerkmale nach ISO/IEC 9126
**Inhalt:** Die Norm ISO/IEC 9126 definiert Softwarequalitätsmerkmale wie Functionality (Funktionalität), Reliability (Zuverlässigkeit), Usability (Benutzbarkeit), Efficiency (Effizienz), Maintainability (Wartbarkeit, "capability of the software product to be modified") und Portability (Übertragbarkeit).

**Frage (Schwer):** Welches ISO/IEC-9126-Qualitätsmerkmal beschreibt, wie leicht sich eine Software an neue Anforderungen anpassen oder korrigieren lässt?
A) Usability
B) Efficiency
C) Portability
D) Maintainability
**Lösung:** D

---

## Karte 93: Struktogramm (Nassi-Shneiderman) für Fallunterscheidungen
**Inhalt:** Ein Struktogramm stellt Auswahlstrukturen als in Spalten geteilte Kästen dar, wobei jede Spalte einem möglichen Fall entspricht (z. B. STANDARD/PREMIUM/VIP), und darunter die jeweilige Rückgabe oder Aktion. Es eignet sich besonders gut zur Pseudocode-nahen Dokumentation von Auswahlstrukturen in Prüfungsaufgaben.
   
**Frage (Leicht):** Wofür wird ein Struktogramm (Nassi-Shneiderman-Diagramm) typischerweise eingesetzt?
A) Zur übersichtlichen Darstellung von Kontrollstrukturen wie Fallunterscheidungen und Schleifen
B) Zur Darstellung der Netzwerktopologie
C) Zur Darstellung von Datenbanktabellen
D) Zur Visualisierung von Serverauslastung
**Lösung:** A

---

## Karte 94: Turingmaschine
**Inhalt:** Eine Turingmaschine ist ein theoretisches Rechenmodell mit einem Lese-/Schreibkopf, der sich über ein potenziell unendliches Band bewegt, Symbole liest, überschreibt und abhängig vom aktuellen Zustand nach links oder rechts wandert. Sie dient in der theoretischen Informatik als formales Modell zur Definition von Berechenbarkeit.

**Frage (Schwer):** Wofür wird das Modell der Turingmaschine in der theoretischen Informatik vor allem verwendet?
A) Zur physischen Beschleunigung moderner Prozessoren
B) Zur Definition von Berechenbarkeit und zum formalen Nachweis, ob ein Problem algorithmisch lösbar ist
C) Zur grafischen Darstellung von Datenbankbeziehungen
D) Als Netzwerkprotokoll für die Datenübertragung
**Lösung:** B

---

## Karte 95: O-Notation
**Inhalt:** Die O-Notation beschreibt das asymptotische Laufzeitverhalten eines Algorithmus für große Eingabemengen N. Eine Funktion f(N) gehört zur Komplexitätsklasse O(g(N)), wenn f(N) für hinreichend große N nach oben durch g(N) beschränkt ist.

**Frage (Schwer):** Welche Aussage über die O-Notation für die Komplexität von Algorithmen trifft zu?
A) f(N) gehört zu O(g(N)), wenn für große N gilt: f(N) = g(N)
B) f(N) gehört zu O(g(N)), wenn für große N gilt: f(N) < g(N)
C) f(N) gehört zu O(g(N)), wenn für große N gilt: f(N) ≤ g(N)
D) f(N) gehört zu O(g(N)), wenn für große N gilt: f(N) ≥ g(N)
**Lösung:** C

---

## Karte 96: Method Resolution Order in Python
**Inhalt:** Bei der Mehrfachvererbung in Python bestimmt die Method Resolution Order (MRO), welche geerbte Methode tatsächlich aufgerufen wird. Bei "class C(B, A)" mit "class B(A)" wird zuerst in C, dann in B und erst danach in A nach der Methode gesucht.

**Frage (Schwer):** Was gibt folgendes Python-Skript aus?
```
class A:
    def output(self):
        print("Ich bin A.")
class B(A):
    def output(self):
        print("Ich bin B.")
class C(B, A):
    pass
c = C()
c.output()
```
A) Ich bin A.
B) Es tritt ein Laufzeitfehler auf
C) Ich bin A. gefolgt von Ich bin B.
D) Ich bin B.
**Lösung:** D

---

## Karte 97: Präfix- und Postfix-Operator in Java
**Inhalt:** Beim Präfix-Operator (++a) wird der Wert vor der Verwendung im Ausdruck erhöht, beim Postfix-Operator (b++) wird der aktuelle Wert im Ausdruck verwendet und erst danach erhöht.

**Frage (Schwer):** Welchen Wert hat "result" nach "int a = 7; int b = 9; int result = ++a + b++;" in Java?
A) 17
B) 18
C) 15
D) 16
**Lösung:** A

---

## Karte 98: String-Vergleich in Java
**Inhalt:** In Java vergleicht der Operator == bei Objekten (wie String) die Referenzidentität, nicht den Inhalt. Um zu prüfen, ob zwei Strings denselben Inhalt haben, muss die Methode equals() verwendet werden.

**Frage (Leicht):** Wie prüfen Sie in Java, ob die beiden Strings str1 und str2 denselben Inhalt haben?
A) str1 == str2
B) str1.equals(str2)
C) str1 = str2
D) str1 - str2 == 0
**Lösung:** B

---

## Karte 99: Greedy-Quantifizierer in RegEx
**Inhalt:** Die Quantifizierer * und + in regulären Ausdrücken sind standardmäßig "gierig" (greedy): Sie passen auf die maximal mögliche Anzahl von Zeichen. Für die kleinstmögliche Übereinstimmung muss die "nicht gierige" Variante mit einem zusätzlichen ? (z. B. *? oder +?) verwendet werden.

**Frage (Schwer):** Wie erreicht man in einem regulären Ausdruck, dass ein Quantifizierer wie * nur die kleinstmögliche Anzahl von Zeichen matcht?
A) Das ist mit Quantifizierern grundsätzlich nicht möglich
B) Indem man den Stern durch ein Pluszeichen ersetzt
C) Indem man ein zusätzliches Fragezeichen anhängt (z. B. *?)
D) Indem man die Zeichenklasse in geschweifte statt eckige Klammern setzt
**Lösung:** C

---

## Karte 100: Negierte Zeichenklasse in RegEx
**Inhalt:** Die Zeichenklasse [^abc] steht für ein beliebiges Zeichen außer den in der Liste genannten. Der Ausdruck [^M]aus passt zum Beispiel auf "Haus" und "raus", aber nicht auf "Maus".

**Frage (Leicht):** Wofür steht die Zeichenklasse [^abc] in einem regulären Ausdruck?
A) Für genau eines der Zeichen a, b oder c
B) Für die Zeichenfolge "abc" selbst
C) Für eine optionale Wiederholung von a, b oder c
D) Für ein beliebiges Zeichen außer a, b oder c
**Lösung:** D

---

## Karte 101: Flussdiagramm vs. Struktogramm
**Inhalt:** Vor der eigentlichen Implementierung wird ein Algorithmus oft in einer Nicht-Code-Darstellung erarbeitet, etwa als Flussdiagramm oder Nassi-Shneiderman-Struktogramm. Ein wichtiger Nachteil von Flussdiagrammen ist, dass sie Fallentscheidungen und Schleifen nicht klar unterscheiden – ein Struktogramm bildet die Programmstruktur hier deutlicher ab.

**Frage (Schwer):** Welchen Nachteil besitzt ein klassisches Flussdiagramm gegenüber einem Nassi-Shneiderman-Struktogramm?
A) Es unterscheidet Fallentscheidungen und Schleifen nicht klar
B) Es darf keine Verzweigungen enthalten
C) Es ist ausschließlich für objektorientierte Sprachen geeignet
D) Es kann keine Start- oder Endpunkte darstellen
**Lösung:** A

---

## Karte 102: Halbaddierer vs. Volladdierer
**Inhalt:** Ein Halbaddierer kann zwei einzelne Bits addieren und liefert Summe und Übertrag, empfängt aber selbst keinen Eingabeübertrag aus einer vorherigen Stelle. Ein Volladdierer erweitert dies um einen zusätzlichen Übertragseingang, wodurch mehrstellige Binäraddition durch Verkettung möglich wird.

**Frage (Schwer):** Welche Einschränkung besitzt ein Halbaddierer gegenüber einem Volladdierer?
A) Er gibt keinen Übertrag aus
B) Er empfängt keinen Eingabeübertrag
C) Er kann nur eine feste Anzahl von Bits gleichzeitig addieren
D) Er kann keine Subtraktion durchführen
**Lösung:** B

---

## Karte 103: RS-Flip-Flop
**Inhalt:** Ein RS-Flip-Flop ist ein einfaches elektronisches Speicherelement mit den Eingängen Set (S) und Reset (R). Wird an S dauerhaft der Wert 1 angelegt, liefert der Ausgang Q so lange den Wert 1, wie diese 1 an S anliegt.

**Frage (Schwer):** Bei einem RS-Flip-Flop wird an S der Spannungswert 1 angelegt. Was geschieht?
A) Q liefert dauerhaft den Wert 0
B) Q bleibt unverändert
C) Q liefert den Wert 1, solange die 1 an S anliegt
D) Q liefert den Wert 0, solange die 1 an S anliegt
**Lösung:** C

---

## Karte 104: Logische UND-Schaltung
**Inhalt:** Ein logisches Und lässt sich elektrisch durch zwei in Reihe geschaltete Schalter realisieren: Nur wenn beide Schalter gleichzeitig geschlossen sind, fließt Strom. Zwei parallel geschaltete Schalter realisieren dagegen ein logisches Oder.

**Frage (Leicht):** Wie müssen zwei Schalter angeordnet werden, um ein logisches Und zu erhalten?
A) Parallel
B) Über Kreuz
C) Logisches Und lässt sich elektrisch nicht realisieren
D) In Reihe
**Lösung:** D

---

## Karte 105: Escaping von Sonderzeichen in RegEx
**Inhalt:** Zeichen mit besonderer Bedeutung in regulären Ausdrücken (z. B. . + ? * ( ) [ ] { } | ^ $) müssen mit einem Backslash maskiert werden, wenn sie als literales Zeichen gesucht werden sollen, statt ihre spezielle RegExp-Funktion auszuüben.

**Frage (Leicht):** Wie wird in einem regulären Ausdruck ein Sonderzeichen wie der Punkt als literales Zeichen gesucht?
A) Durch Voranstellen eines Backslashs (z. B. \.)
B) Durch Verdopplung des Zeichens (z. B. ..)
C) Durch Einschließen in doppelte Anführungszeichen
D) Sonderzeichen können in RegExp nie literal gesucht werden
**Lösung:** A

---

## Karte 106: JDK, JRE und JVM
**Inhalt:** Die JVM (Java Virtual Machine) führt den kompilierten Bytecode aus. Die JRE (Java Runtime Environment) enthält die JVM plus Klassenbibliotheken, um Java-Programme auszuführen. Das JDK (Java Development Kit) enthält zusätzlich die JRE sowie Entwicklerwerkzeuge wie den Compiler javac, um Java-Programme zu schreiben und zu übersetzen.

**Frage (Leicht):** Welche Komponente wird zwingend benötigt, um Java-Quellcode selbst zu kompilieren?
A) Nur die JVM
B) Das JDK
C) Nur die JRE
D) Nur der Bytecode
**Lösung:** B

---

## Karte 107: Getter und Setter
**Inhalt:** Bei der Kapselung werden Attribute üblicherweise als private deklariert und sind damit nur innerhalb der eigenen Klasse direkt zugänglich. Öffentliche Getter- und Setter-Methoden ermöglichen kontrollierten Zugriff von außen, wodurch z. B. verhindert werden kann, dass ein Attribut auf einen ungültigen Wert gesetzt wird.

**Frage (Leicht):** Wozu dienen Getter- und Setter-Methoden bei der Kapselung?
A) Zur Beschleunigung der Programmausführung
B) Zur automatischen Übersetzung des Quellcodes
C) Zum kontrollierten, validierbaren Zugriff auf private Attribute von außen
D) Zur Speicherung von Attributen im Heap statt im Stack
**Lösung:** C

---

## Karte 108: Abstrakte Klasse vs. Interface
**Inhalt:** Eine abstrakte Klasse beschreibt, was ein Objekt ist (Identität), kann Zustand (Attribute) besitzen und auch bereits implementierte Methoden enthalten. Ein Interface beschreibt dagegen, was ein Objekt kann (Fähigkeit), ist meist zustandslos und enthält in der Regel nur Methodensignaturen ohne Implementierung.

**Frage (Schwer):** Was ist ein wesentlicher Unterschied zwischen einer abstrakten Klasse und einem Interface?
A) Nur Interfaces können Attribute besitzen
B) Abstrakte Klassen können niemals Methoden enthalten
C) Interfaces können nicht von mehreren Klassen gleichzeitig implementiert werden
D) Eine abstrakte Klasse kann Zustand speichern, ein Interface ist meist zustandslos
**Lösung:** D

---

## Karte 109: Mehrfachvererbung durch Interfaces
**Inhalt:** Da eine Klasse in Java nur von genau einer Superklasse erben kann, lösen Interfaces das Problem der fehlenden Mehrfachvererbung: Eine Klasse kann mehrere Interfaces gleichzeitig implementieren und dadurch mehrere unterschiedliche "Verträge" gleichzeitig erfüllen.

**Frage (Leicht):** Wie löst Java das Fehlen echter Mehrfachvererbung von Klassen?
A) Durch die Möglichkeit, mehrere Interfaces gleichzeitig zu implementieren
B) Durch das Schlüsselwort super
C) Durch die Verwendung mehrerer Konstruktoren
D) Java unterstützt tatsächlich Mehrfachvererbung von Klassen
**Lösung:** A

---

## Karte 110: Use-Case-Diagramm
**Inhalt:** Ein Use-Case-Diagramm beschreibt, was ein System tut, nicht wie. Es besteht aus Akteuren (Personen oder externe Systeme, dargestellt als Strichmännchen), Anwendungsfällen (Ovale, die ein Ziel des Akteurs darstellen) und einer Systemgrenze, die festlegt, was zum System gehört.

**Frage (Leicht):** Was stellt ein Use-Case-Diagramm primär dar?
A) Den zeitlichen Ablauf einzelner Programmschritte
B) Was ein System leisten soll, nicht wie es das tut
C) Die physische Verkabelung eines Netzwerks
D) Die genaue Speicherbelegung eines Programms
**Lösung:** B

---

## Karte 111: Include-Beziehung im Use-Case-Diagramm
**Inhalt:** Die include-Beziehung im Use-Case-Diagramm zeigt eine zwingende Abhängigkeit: Ein Anwendungsfall schließt einen anderen immer mit ein (z. B. schließt "Geld abheben" immer "Identität prüfen" ein). Die extend-Beziehung markiert dagegen eine nur optionale Erweiterung.

**Frage (Schwer):** Was bedeutet eine "include"-Beziehung zwischen zwei Anwendungsfällen?
A) Der eingeschlossene Anwendungsfall wird nur unter bestimmten Bedingungen optional ausgeführt
B) Beide Anwendungsfälle schließen sich gegenseitig aus
C) Der eine Anwendungsfall schließt den anderen zwingend mit ein
D) Es besteht überhaupt keine Beziehung zwischen den Anwendungsfällen
**Lösung:** C

---

## Karte 112: Entscheidung im Aktivitätsdiagramm
**Inhalt:** In einem Aktivitätsdiagramm markiert eine leere Raute eine Entscheidung (Verzweigung), wobei die jeweilige Bedingung in eckigen Klammern angegeben wird (z. B. [PIN richtig]). Ein schwarzer Kreis markiert den Startknoten, ein Kreis mit Punkt darin den Endknoten.

**Frage (Leicht):** Welches Symbol stellt in einem UML-Aktivitätsdiagramm eine Entscheidung dar?
A) Ein abgerundetes Rechteck
B) Ein schwarzer ausgefüllter Kreis
C) Ein dicker horizontaler Balken
D) Eine leere Raute
**Lösung:** D

---

## Karte 113: Swimlanes im Aktivitätsdiagramm
**Inhalt:** Swimlanes unterteilen ein Aktivitätsdiagramm in Spalten, die jeweils ein System oder eine Klasse (z. B. Kunde, Automat, Bank-Server) repräsentieren. Dadurch wird sichtbar, welcher Akteur oder welches Teilsystem für welche Aktion zuständig ist.

**Frage (Schwer):** Wozu dienen Swimlanes in einem Aktivitätsdiagramm?
A) Zur Anzeige, welcher Akteur oder welches Teilsystem für welche Aktion zuständig ist
B) Zur Definition von Klassenattributen
C) Zur Berechnung der Laufzeitkomplexität eines Algorithmus
D) Zur Darstellung paralleler Programmschleifen
**Lösung:** A

---

## Karte 114: Fork und Join
**Inhalt:** Ein Fork (dicker Balken) teilt in einem Aktivitätsdiagramm einen Ablauf in mehrere gleichzeitig ablaufende Pfade auf. Ein Join führt diese Pfade wieder zusammen und wartet, bis alle abgeschlossen sind – nützlich zur Modellierung atomarer, untrennbarer Vorgänge.

**Frage (Schwer):** Wofür wird ein "Join" in einem UML-Aktivitätsdiagramm verwendet?
A) Zum Verzweigen eines Ablaufs in mehrere parallele Pfade
B) Zum Zusammenführen mehrerer paralleler Pfade, nachdem alle abgeschlossen sind
C) Zur Kennzeichnung des Startpunkts eines Diagramms
D) Zum Verbinden zweier völlig unabhängiger Diagramme
**Lösung:** B

---

## Karte 115: UML-Sichtbarkeitssymbole
**Inhalt:** In UML-Klassendiagrammen markiert ein Pluszeichen (+) öffentliche (public), ein Minuszeichen (-) private, eine Raute (#) protected und eine Tilde (~) paketweit sichtbare (package) Attribute und Methoden.

**Frage (Leicht):** Welches Symbol kennzeichnet in einem UML-Klassendiagramm ein privates Attribut?
A) Plus (+)
B) Raute (#)
C) Minus (-)
D) Tilde (~)
**Lösung:** C

---

## Karte 116: Generalisierung in UML
**Inhalt:** Die Generalisierung (Vererbung) wird in UML-Klassendiagrammen durch einen Pfeil mit einer leeren, geschlossenen Spitze dargestellt, der von der Unterklasse zur Basisklasse zeigt und eine "Ist-ein"-Beziehung ausdrückt.

**Frage (Schwer):** Wie wird eine Vererbungsbeziehung (Generalisierung) in einem UML-Klassendiagramm dargestellt?
A) Als gestrichelte Linie mit offenem Pfeil
B) Als volle Raute an der Basisklasse
C) Als einfache Linie ohne Pfeilspitze
D) Als Pfeil mit leerer, geschlossener Spitze von der Unter- zur Basisklasse
**Lösung:** D

---

## Karte 117: Stärken der ArrayList
**Inhalt:** Eine ArrayList basiert intern auf einem dynamischen Array und bietet sehr schnellen indexbasierten Zugriff (Random Access). Das Einfügen oder Löschen von Elementen in der Mitte ist dagegen langsam, da nachfolgende Elemente im Speicher verschoben werden müssen.

**Frage (Leicht):** Was ist eine Stärke der ArrayList gegenüber der LinkedList?
A) Sehr schneller Zugriff auf Elemente über einen Index
B) Geringerer Speicherverbrauch bei sehr vielen Löschvorgängen
C) Automatische Sortierung der gespeicherten Elemente
D) Sehr schnelles Einfügen in der Mitte der Liste
**Lösung:** A

---

## Karte 118: Schwäche der LinkedList
**Inhalt:** Eine LinkedList basiert auf einer doppelt verketteten Liste, bei der jeder Knoten Referenzen auf den vorherigen und nächsten Knoten speichert. Einfügen und Löschen an beliebiger Stelle ist dadurch sehr schnell, der indexbasierte Zugriff auf ein Element ist dagegen langsam, da die Liste durchlaufen werden muss.

**Frage (Schwer):** Warum ist der indexbasierte Zugriff auf ein Element bei einer LinkedList langsamer als bei einer ArrayList?
A) Weil LinkedLists grundsätzlich mehr Elemente enthalten
B) Weil die Liste vom Anfang oder Ende an durchlaufen werden muss, bis das Element gefunden ist
C) Weil LinkedLists keine Indizes unterstützen
D) Weil jede LinkedList automatisch sortiert werden muss
**Lösung:** B

---

## Karte 119: Das Schlüsselwort super
**Inhalt:** Das Schlüsselwort super ruft in Java den Konstruktor der Superklasse auf (meist als erste Anweisung im Konstruktor der Subklasse) und ermöglicht zudem den Zugriff auf Methoden der Superklasse, selbst wenn diese in der Subklasse überschrieben wurden.

**Frage (Leicht):** Wozu dient das Schlüsselwort super in Java?
A) Zum Erzeugen eines neuen Objekts der aktuellen Klasse
B) Zur Deklaration einer Konstante
C) Zum Aufruf des Konstruktors bzw. der Methoden der Superklasse
D) Zur Prüfung, ob ein Objekt zu einer bestimmten Klasse gehört
**Lösung:** C

---

## Karte 120: Sichtbarkeit protected
**Inhalt:** Der Zugriffsmodifikator protected macht Attribute und Methoden für die eigene Klasse und alle Klassen innerhalb der Vererbungshierarchie (Subklassen) sichtbar, für alle anderen, außenstehenden Klassen bleiben sie jedoch unzugänglich.

**Frage (Schwer):** Für wen sind als "protected" markierte Attribute in Java sichtbar?
A) Ausschließlich für die exakt gleiche Klasse
B) Für alle Klassen im gesamten Programm ohne Einschränkung
C) Nur für Klassen in einem völlig anderen Package
D) Für die eigene Klasse und alle davon abgeleiteten Subklassen
**Lösung:** D

---

## Karte 121: Observer-Entwurfsmuster
**Inhalt:** Beim Observer-Entwurfsmuster registrieren sich beobachtende Objekte (Observer) bei einem Subjekt. Ändert sich der Zustand des Subjekts, benachrichtigt es automatisch alle registrierten Observer (z. B. über eine notifyObservers-Methode), die daraufhin ihre eigene update-Methode ausführen.

**Frage (Schwer):** Was passiert beim Observer-Entwurfsmuster, wenn sich der Zustand des beobachteten Subjekts ändert?
A) Alle registrierten Observer werden automatisch benachrichtigt und aktualisieren sich
B) Das Subjekt wird automatisch gelöscht
C) Nur der zuerst registrierte Observer wird informiert
D) Es passiert nichts, bis ein Observer aktiv nachfragt
**Lösung:** A
