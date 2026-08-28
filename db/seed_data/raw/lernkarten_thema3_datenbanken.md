# Thema 3: Datenbanken & Datenanalyse

Lernkarten mit Thema, Inhalt und einer Multiple-Choice-Frage (Schwierigkeit: Leicht/Schwer).

---

## Karte 1: Was ist eine Datenbank?
**Inhalt:** Eine Datenbank ist eine Sammlung von Informationen (Daten), gespeichert als System – eine Datei, verteilt auf mehrere Dateien oder Rechner. Das DBMS (Database Management System) ist das Programm, das diese Daten verwaltet.

**Frage (Leicht):** Wofür steht die Abkürzung DBMS?
A) Data Base Management System
B) Digital Byte Management Service
C) Data Backup Master System
D) Direct Byte Mapping Structure
**Lösung:** A

---

## Karte 2: Zugriffsschutz über das DBMS
**Inhalt:** Üblicherweise greifen Anwendungen und Nutzer nicht direkt auf die Rohdaten einer Datenbank zu, sondern ausschließlich über das DBMS – so werden Zugriffsschutz und Konsistenz sichergestellt.

**Frage (Schwer):** Warum greifen Anwendungen typischerweise nicht direkt auf die Datendateien einer Datenbank zu, sondern über das DBMS?
A) Weil direkter Dateizugriff schneller wäre
B) Damit Zugriffsschutz, Konsistenz und kontrollierte Verwaltung der Daten sichergestellt sind
C) Weil Datenbanken keine eigenen Dateien verwenden
D) Aus rein historischen Gründen ohne technischen Nutzen
**Lösung:** B

---

## Karte 3: Relationale Darstellung – Tabelle, Zeile, Spalte
**Inhalt:** In relationalen Datenbanken wird ein Entitätstyp als Tabelle dargestellt. Zeilen werden auch Datensatz, Tupel oder Entität genannt, Spalten werden als Attribute oder Eigenschaften bezeichnet.

**Frage (Leicht):** Wie wird eine Zeile einer Datenbanktabelle auch bezeichnet?
A) Attribut
B) Domäne
C) Tupel
D) Schema
**Lösung:** C

---

## Karte 4: Atomare Werte
**Inhalt:** Ein Feldinhalt gilt als atomar, wenn er nicht mehr sinnvoll zerlegbar ist – z. B. sollte ein Feld nicht mehrere Artikelnummern gleichzeitig (getrennt durch Kommas) enthalten, sondern nur einen einzelnen Wert.

**Frage (Leicht):** Was bedeutet es, wenn ein Datenbankfeld "atomar" ist?
A) Es enthält nur Zahlen
B) Es ist immer leer (NULL)
C) Es kann beliebig viele Werte gleichzeitig speichern
D) Der Wert ist nicht mehr sinnvoll in kleinere Teile zerlegbar
**Lösung:** D

---

## Karte 5: Natürliche vs. künstliche Attribute
**Inhalt:** Natürliche Attribute (z. B. Nachname) sind oft nicht eindeutig. Künstliche Attribute (z. B. Kundennummer, EAN, IBAN) werden gezielt zur eindeutigen Kennzeichnung eingeführt und dienen häufig als Primärschlüssel.

**Frage (Schwer):** Warum eignet sich der Nachname einer Person in der Regel schlecht als alleiniger Primärschlüssel?
A) Nachnamen sind nicht eindeutig, da mehrere Personen denselben Namen haben können
B) Nachnamen ändern sich nie
C) Nachnamen können technisch nicht in Datenbanken gespeichert werden
D) Nachnamen sind immer künstliche Attribute
**Lösung:** A

---

## Karte 6: Primärschlüssel (Primary Key)
**Inhalt:** Der Primärschlüssel kennzeichnet einen Datensatz einer Tabelle eindeutig und darf nicht NULL (leer) sein. Viele Datenbanksysteme verlangen zwingend die Vergabe eines Primärschlüssels pro Tabelle.

**Frage (Leicht):** Welche Eigenschaft muss ein Primärschlüssel immer erfüllen?
A) Er darf mehrfach in der Tabelle vorkommen
B) Er darf niemals NULL sein und muss eindeutig sein
C) Er muss immer eine fortlaufende Nummer sein
D) Er muss aus mindestens drei Spalten bestehen
**Lösung:** B

---

## Karte 7: Fremdschlüssel (Foreign Key)
**Inhalt:** Ein Fremdschlüssel ist ein aus einer anderen Tabelle übernommener Primärschlüssel, z. B. eine Kundennummer in der Rechnungstabelle als Referenz auf die Kundentabelle – auch sinnvoll im Sinne der Datensparsamkeit.

**Frage (Leicht):** Was ist ein Fremdschlüssel (Foreign Key)?
A) Ein zufällig generierter Wert ohne Bezug zu anderen Tabellen
B) Ein Schlüssel, der niemals eindeutig sein darf
C) Ein aus einer anderen Tabelle übernommener Primärschlüssel zur Verknüpfung
D) Ein Schlüssel, der ausschließlich Text enthalten darf
**Lösung:** C

---

## Karte 8: Sekundärschlüssel / Alternativschlüssel
**Inhalt:** Ein Sekundärschlüssel muss nicht eindeutig sein und dient als zusätzlicher "Suchschlüssel". Er macht die Suche schneller, muss aber wie jeder Index gepflegt werden – was die Neuaufnahme von Daten verlangsamt.

**Frage (Schwer):** Welche Aussage zu Sekundärschlüsseln trifft zu?
A) Sie müssen wie Primärschlüssel immer eindeutig sein
B) Sekundärschlüssel werden nie indiziert
C) Sekundärschlüssel dürfen niemals als Fremdschlüssel genutzt werden
D) Viele Sekundärschlüssel in einer Tabelle verlangsamen die Neuaufnahme von Datensätzen
**Lösung:** D

---

## Karte 9: Verbundschlüssel (kombinierter Schlüssel)
**Inhalt:** Ein Verbundschlüssel (kombinierter Schlüssel) wird aus mehreren Attributen gebildet, z. B. PLZ und Straße gemeinsam. Er kann aus beliebig vielen Spalten bestehen, nicht nur aus maximal zwei.

**Frage (Schwer):** Auf wie viele Spalten ist ein kombinierter Schlüssel (Verbundschlüssel) maximal beschränkt?
A) Es gibt keine feste Obergrenze auf 2 Spalten
B) Maximal 3
C) Genau 2
D) Genau 1
**Lösung:** A

---

## Karte 10: Schlüsselkandidat
**Inhalt:** Ein Schlüsselkandidat ist beim Datenbankentwurf ein Attribut, das potenziell als Primärschlüssel infrage kommt. Index und Schlüssel sind dabei unterschiedliche Konzepte – ein Index dient primär dem schnelleren Suchen.

**Frage (Leicht):** Was bezeichnet man beim Datenbankentwurf als "Schlüsselkandidat"?
A) Einen bereits vergebenen Fremdschlüssel
B) Ein Attribut, das potenziell als Primärschlüssel infrage kommt
C) Einen gelöschten Datensatz
D) Eine fehlerhafte Spalte
**Lösung:** B

---

## Karte 11: Referentielle Integrität
**Inhalt:** Referentielle Integrität besagt, dass die Attributwerte eines Fremdschlüssels den Werten des Primärschlüssels der Mastertabelle entsprechen müssen. Sie verhindert z. B., dass ein Kunde gelöscht wird, obwohl noch Bestellungen existieren.

**Frage (Schwer):** Was stellt referentielle Integrität in einer Datenbank sicher?
A) Dass alle Tabellen denselben Primärschlüssel verwenden
B) Dass alle Felder atomar sind
C) Dass Fremdschlüsselwerte immer einem gültigen Primärschlüsselwert der Mastertabelle entsprechen
D) Dass keine Tabelle mehr als 10 Spalten hat
**Lösung:** C

---

## Karte 12: Kaskadierendes Löschen
**Inhalt:** Kaskadierendes Löschen bedeutet, dass beim Löschen eines Datensatzes in der Mastertabelle automatisch alle zugehörigen Datensätze in verknüpften Detailtabellen mitgelöscht werden (z. B. Kunde löschen → zugehörige Rechnungen werden mitgelöscht).

**Frage (Schwer):** Was passiert beim "kaskadierenden Löschen", wenn ein Kundendatensatz gelöscht wird?
A) Nur der Kundendatensatz wird gelöscht, alle Bestellungen bleiben unverändert bestehen
B) Es wird automatisch ein neuer Kunde mit gleicher ID angelegt
C) Die Datenbank verweigert grundsätzlich das Löschen
D) Alle zugehörigen abhängigen Datensätze (z. B. Bestellungen) werden automatisch mitgelöscht
**Lösung:** D

---

## Karte 13: Restriktives Löschen
**Inhalt:** Beim restriktiven Löschen kann ein Master-Datensatz nicht gelöscht werden, solange noch abhängige Datensätze existieren (z. B. wegen gesetzlicher Aufbewahrungspflichten) – im Gegensatz zum kaskadierenden Löschen.

**Frage (Leicht):** Was verhindert das "restriktive Löschen" in einer Datenbank?
A) Das Löschen von Mastertabellen-Datensätzen, solange abhängige Datensätze existieren
B) Jegliches Löschen in der gesamten Datenbank
C) Das Anlegen neuer Datensätze
D) Das Ändern von Primärschlüsseln
**Lösung:** A

---

## Karte 14: 1:N-Beziehung
**Inhalt:** Bei einer 1:N-Beziehung kann ein Datensatz der Mastertabelle (1) mit beliebig vielen (N) Datensätzen der Detailtabelle verknüpft sein – z. B. ein Kunde hat mehrere Bestellungen, kann aber auch 0 haben (neuer Kunde).

**Frage (Leicht):** Was beschreibt eine 1:N-Beziehung zwischen zwei Tabellen?
A) Jeder Datensatz muss genau einem anderen Datensatz zugeordnet sein
B) Genau ein Datensatz der einen Tabelle kann mit beliebig vielen Datensätzen der anderen verknüpft sein
C) Es dürfen maximal 2 Datensätze verknüpft werden
D) Beide Tabellen müssen identische Primärschlüssel haben
**Lösung:** B

---

## Karte 15: 1:1-Beziehung
**Inhalt:** Bei einer 1:1-Beziehung gehört zu genau einem Datensatz der einen Tabelle genau ein Datensatz der anderen (z. B. ein Mensch – ein Ausweis). Sie wird auch für Tabellensplitting genutzt, etwa um sensible von weniger sensiblen Daten zu trennen.

**Frage (Schwer):** Wofür wird eine 1:1-Beziehung häufig beim "Tabellensplitting" genutzt?
A) Um Performance-Probleme bei sehr großen Tabellen mit Millionen Zeilen zu lösen
B) Um zwei identische Tabellen redundant zu speichern
C) Um sensible Daten (z. B. Gehalt) von weniger sensiblen Daten (z. B. Telefonnummer) in getrennten Tabellen zu speichern
D) Um Fremdschlüssel überflüssig zu machen
**Lösung:** C

---

## Karte 16: M:N-Beziehung und Auflösungstabelle
**Inhalt:** Eine M:N-Beziehung (z. B. mehrere Rechnungen enthalten mehrere Artikel) kann nicht direkt in relationalen Datenbanken abgebildet werden. Sie wird über eine Hilfs- bzw. Zwischentabelle aufgelöst, die Fremdschlüssel aus beiden Mastertabellen enthält.

**Frage (Schwer):** Wie wird eine M:N-Beziehung in einer relationalen Datenbank typischerweise aufgelöst?
A) Durch direkte Verknüpfung ohne Zwischentabelle
B) Durch Löschen einer der beiden beteiligten Tabellen
C) M:N-Beziehungen sind in relationalen Datenbanken technisch unmöglich
D) Durch eine zusätzliche Hilfstabelle mit Fremdschlüsseln aus beiden beteiligten Tabellen
**Lösung:** D

---

## Karte 17: Master-Detail-Beziehung
**Inhalt:** Eine Master-Detail-Beziehung (auch Kopf-Positions-Struktur) besteht zwischen zwei Tabellen – typisch bei Bestellungen: eine Kopftabelle (z. B. Rechnung) und eine Detailtabelle (z. B. Rechnungsposition).

**Frage (Leicht):** Zwischen was besteht eine Master-Detail-Beziehung?
A) Zwischen zwei Tabellen
B) Zwischen zwei Datenbanken
C) Zwischen einer Tabelle und einer Abfrage
D) Zwischen zwei Primärschlüsseln derselben Tabelle
**Lösung:** A

---

## Karte 18: Normalisierung – Vorteile
**Inhalt:** Normalisierung reduziert Redundanz und verbessert die Datenintegrität (z. B. einheitliche Schreibweise von Ortsnamen), da Änderungen nur an einer Stelle vorgenommen werden müssen statt mehrfach.

**Frage (Schwer):** Welchen Vorteil bietet Normalisierung bei der Änderung einer Kundenadresse?
A) Die Adresse muss an mehreren Stellen gleichzeitig geändert werden
B) Die Änderung muss nur an einer zentralen Stelle erfolgen, statt mehrfach redundant vorzukommen
C) Normalisierung verhindert grundsätzlich jede Änderung von Daten
D) Es gibt keinen Vorteil, nur Nachteile
**Lösung:** B

---

## Karte 19: Normalisierung – Nachteile
**Inhalt:** Ein Nachteil der Normalisierung: Je mehr Tabellen entstehen, desto komplexer werden spätere Abfragen (mehr JOINs nötig) – ein Kompromiss zwischen Datenintegrität und Abfrageeinfachheit.

**Frage (Schwer):** Welchen Nachteil bringt eine starke Normalisierung mit vielen Tabellen mit sich?
A) Die Daten werden automatisch inkonsistent
B) Normalisierung verhindert das Speichern von Fremdschlüsseln
C) Abfragen werden komplexer, da mehr Tabellen über JOINs verbunden werden müssen
D) Es entstehen automatisch Duplikate
**Lösung:** C

---

## Karte 20: 1. Normalform (1NF)
**Inhalt:** In Tabellen der 1. Normalform müssen alle Daten atomar vorliegen – also kein Feld darf mehrere Werte gleichzeitig enthalten (z. B. keine kommagetrennte Liste von Artikelnummern in einem Feld).

**Frage (Leicht):** Was ist die zentrale Anforderung der 1. Normalform (1NF)?
A) Alle Daten müssen verschlüsselt sein
B) Es dürfen keine Primärschlüssel vergeben werden
C) Jede Tabelle darf nur eine Spalte haben
D) Alle Feldinhalte müssen atomar (nicht weiter zerlegbar) vorliegen
**Lösung:** D

---

## Karte 21: ERM – Entity-Relationship-Modell
**Inhalt:** Ein Entity-Relationship-Modell (ERM) stellt Tabellen (Entitäten), deren Attribute und die Beziehungen zwischen ihnen grafisch dar, inklusive Kardinalitäten (1, N) und Primär-/Fremdschlüsselkennzeichnung (PK/FK).

**Frage (Leicht):** Wofür steht die Abkürzung "PK" in einem ERM?
A) Primary Key
B) Personal Key
C) Package Key
D) Public Key
**Lösung:** A

---

## Karte 22: Kardinalität in Beziehungen
**Inhalt:** Kardinalitäten geben an, wie viele Datensätze auf jeder Seite einer Beziehung stehen können. "1" steht meist beim Primärschlüssel, "N" (auch ∞ oder Krähenfuß-Notation) bedeutet beliebig viele, auch 0 möglich.

**Frage (Schwer):** Was bedeutet die Kardinalität "N" (bzw. ∞) auf der Detailseite einer 1:N-Beziehung?
A) Es müssen immer mindestens 2 Datensätze vorhanden sein
B) Es können beliebig viele Datensätze existieren, auch 0 (z. B. ein neuer Kunde ohne Bestellung)
C) Es darf niemals mehr als 1 Datensatz existieren
D) N bedeutet, dass die Beziehung ungültig ist
**Lösung:** B

---

## Karte 23: SQL-Verarbeitungsreihenfolge
**Inhalt:** Obwohl SQL syntaktisch in der Reihenfolge SELECT → FROM → WHERE → GROUP BY → HAVING → ORDER BY geschrieben wird, verarbeitet das System die Klauseln tatsächlich in der Reihenfolge FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY.

**Frage (Schwer):** In welcher Reihenfolge verarbeitet ein SQL-System eine Abfrage tatsächlich, obwohl SELECT syntaktisch zuerst geschrieben wird?
A) SELECT wird als Erstes verarbeitet
B) ORDER BY wird immer zuerst verarbeitet
C) FROM wird vor WHERE, GROUP BY, HAVING und SELECT verarbeitet
D) Alle Klauseln werden gleichzeitig verarbeitet
**Lösung:** C

---

## Karte 24: WHERE vs. HAVING
**Inhalt:** WHERE filtert einzelne Zeilen vor der Gruppierung (die "normale" Bedingung), HAVING filtert nach der Gruppierung und wird benötigt, wenn mit Aggregatfunktionen (z. B. SUM, COUNT) gearbeitet wird.

**Frage (Schwer):** Warum kann eine Bedingung mit einer Aggregatfunktion wie SUM() nicht in der WHERE-Klausel stehen?
A) WHERE und HAVING sind vollständig austauschbar
B) WHERE unterstützt grundsätzlich keine Zahlen
C) SUM() darf in SQL überhaupt nicht verwendet werden
D) WHERE filtert einzelne Zeilen vor der Gruppierung, Aggregatfunktionen entstehen aber erst durch die Gruppierung – dafür ist HAVING nötig
**Lösung:** D

---

## Karte 25: DELETE vs. DROP
**Inhalt:** DELETE löscht Datensätze (Zeilen) aus einer Tabelle, die leere Tabellenstruktur bleibt aber erhalten. DROP löscht die gesamte Tabelle inklusive Struktur und allen Inhalten.

**Frage (Leicht):** Was bleibt nach einem DELETE-Befehl (ohne WHERE) auf allen Zeilen einer Tabelle erhalten?
A) Die leere Tabellenstruktur bleibt bestehen
B) Nichts, die Tabelle wird komplett entfernt
C) Nur die erste Zeile bleibt erhalten
D) Nur die Primärschlüssel bleiben erhalten
**Lösung:** A

---

## Karte 26: UPDATE-Befehl
**Inhalt:** UPDATE ändert Werte in einer oder mehreren Spalten bestehender Zeilen, die eine WHERE-Bedingung erfüllen. Beispiel: `UPDATE Artikel SET Einzelpreis = Einzelpreis * 1.05 WHERE Einzelpreis BETWEEN 10 AND 20` erhöht Preise zwischen 10 und 20 um 5 %.

**Frage (Leicht):** Was bewirkt `SET feldname = NULL` in einem UPDATE-Befehl?
A) Das Feld wird auf den Wert 0 gesetzt
B) Das Feld wird geleert (auf NULL gesetzt)
C) Das Feld wird gelöscht (die Spalte entfernt)
D) Es wird ein Fehler ausgelöst
**Lösung:** B

---

## Karte 27: INSERT-Befehl
**Inhalt:** INSERT fügt immer eine komplette neue Zeile in eine Tabelle ein. Mit INSERT-SELECT lassen sich auch Daten direkt von einer Tabelle in eine andere kopieren.

**Frage (Schwer):** Was ermöglicht die Kombination von INSERT und einem SELECT-Unterbefehl (INSERT-SELECT)?
A) Das Erstellen eines neuen Primärschlüssels
B) Das Löschen einer Tabelle
C) Das direkte Kopieren ausgewählter Daten von einer Tabelle in eine andere
D) Das Ändern der Tabellenstruktur
**Lösung:** C

---

## Karte 28: BETWEEN vs. Vergleichsoperatoren
**Inhalt:** `WHERE spalte BETWEEN 5 AND 50` ist NICHT identisch mit `spalte > 5 AND spalte < 50`, da BETWEEN die Grenzwerte 5 und 50 selbst mit einschließt (inklusive), während > und < sie ausschließen (exklusiv).

**Frage (Schwer):** Warum ist `bestellnr BETWEEN 5 AND 50` nicht gleichbedeutend mit `bestellnr > 5 AND bestellnr < 50`?
A) BETWEEN kann nur mit einem einzigen Wert verwendet werden
B) BETWEEN funktioniert nur mit Textwerten
C) Beide Ausdrücke sind in jedem Fall exakt identisch
D) BETWEEN schließt die Grenzwerte 5 und 50 mit ein, > und < schließen sie aus
**Lösung:** D

---

## Karte 29: INNER JOIN
**Inhalt:** Ein INNER JOIN verbindet zwei Tabellen und gibt nur die Zeilen zurück, bei denen es in beiden Tabellen eine Übereinstimmung im Verknüpfungsfeld gibt. Ein klassischer EQUI-Join (WHERE-Bedingung mit Gleichheit) lässt sich durch einen INNER JOIN ersetzen.

**Frage (Schwer):** Kann ein klassischer EQUI-Join (über WHERE-Bedingung mit `=`) durch einen INNER JOIN ersetzt werden?
A) Ja, ein EQUI-Join lässt sich äquivalent als INNER JOIN formulieren
B) Nein, das ist technisch nicht möglich
C) Nur bei genau zwei Tabellen möglich, bei mehr als zwei nicht
D) Nur wenn keine Primärschlüssel vorhanden sind
**Lösung:** A

---

## Karte 30: LEFT JOIN vs. RIGHT JOIN
**Inhalt:** Ein RIGHT JOIN gibt alle Zeilen der rechten Tabelle zurück, auch wenn es keine Übereinstimmung in der linken Tabelle gibt (fehlende Werte werden NULL). Ein LEFT JOIN funktioniert entsprechend umgekehrt für die linke Tabelle.

**Frage (Schwer):** Was passiert bei einem RIGHT JOIN zwischen "bestellungen" und "kunden", wenn ein Kunde noch keine Bestellung getätigt hat?
A) Der Kunde wird komplett aus dem Ergebnis ausgeschlossen
B) Der Kunde wird trotzdem angezeigt, die Bestelldaten erscheinen als NULL/leer
C) Die Abfrage schlägt mit einem Fehler fehl
D) Es wird automatisch eine neue Bestellung angelegt
**Lösung:** B

---

## Karte 31: Kreuzprodukt (Cartesian Product) ohne JOIN-Bedingung
**Inhalt:** Werden mehrere Tabellen in FROM ohne passende JOIN-Verbindung (fehlende WHERE-Bedingung) kombiniert, entsteht ein Kreuzprodukt: jede Zeile der einen Tabelle wird mit jeder Zeile der anderen kombiniert – meist unerwünscht und fehlerhaft.

**Frage (Schwer):** Was ist das Problem bei `SELECT artikelnr, SUM(anzahl*einzelpreis) FROM artikel, bestellungendetails GROUP BY artikelnr;` ohne WHERE-Verknüpfung?
A) GROUP BY kann nicht mit SUM kombiniert werden
B) Die Abfrage ist syntaktisch komplett ungültig und startet gar nicht
C) Es entsteht ein Kreuzprodukt ohne sinnvolle Verbindung der Tabellen, was zu falschen/redundanten Ergebnissen führt
D) Es dürfen niemals zwei Tabellen in FROM stehen
**Lösung:** C

---

## Karte 32: Sub-Selects in DML
**Inhalt:** Sub-Selects (verschachtelte SELECT-Anweisungen) sind auch bei DML-Befehlen wie UPDATE oder DELETE erlaubt, z. B. um einen Wert aus einer anderen Tabelle als Vergleichswert in einer WHERE-Bedingung zu nutzen.

**Frage (Leicht):** Dürfen Sub-Selects (verschachtelte SELECT-Abfragen) bei DML-Befehlen wie UPDATE oder DELETE verwendet werden?
A) Nein, das ist grundsätzlich nicht erlaubt
B) Nur wenn keine WHERE-Klausel verwendet wird
C) Nur bei INSERT, nie bei UPDATE oder DELETE
D) Ja, Sub-Selects sind auch bei DML-Befehlen erlaubt
**Lösung:** D

---

## Karte 33: SQL als Abfrage- UND Manipulationssprache
**Inhalt:** SQL steht zwar für "Structured Query Language" (Strukturierte Abfragesprache), erlaubt aber trotzdem auch Manipulationen der Datenbankinhalte (DML: INSERT/UPDATE/DELETE) und -strukturen (DDL: CREATE/DROP/ALTER).

**Frage (Schwer):** Stimmt die Aussage: "SQL steht für Strukturierte Abfragesprache, daher sind keine Manipulationen der Datenbankinhalte per SQL-Anweisung möglich"?
A) Nein, SQL erlaubt trotz des Namens auch Datenmanipulation (DML) und Strukturänderungen (DDL)
B) Ja, das ist korrekt
C) Nur bei relationalen Datenbanken korrekt
D) Nur bei NoSQL-Datenbanken korrekt
**Lösung:** A

---

## Karte 34: LIKE und Wildcards
**Inhalt:** Die LIKE-Bedingung in SQL erlaubt Mustersuche mit Wildcards, z. B. `WHERE kontaktperson = "HERR%"` würde alle Werte finden, die mit "HERR" beginnen (% steht für beliebig viele Zeichen).

**Frage (Leicht):** Wofür steht das Prozentzeichen (%) in einer SQL LIKE-Bedingung?
A) Für genau ein beliebiges Zeichen
B) Für beliebig viele (auch null) beliebige Zeichen
C) Für einen Prozentwert
D) Es hat in SQL keine besondere Bedeutung
**Lösung:** B

---

## Karte 35: GROUP BY und Aggregatfunktionen
**Inhalt:** GROUP BY fasst Zeilen mit gleichem Wert in der angegebenen Spalte zusammen, sodass Aggregatfunktionen wie SUM(), COUNT(), AVG() pro Gruppe berechnet werden können (z. B. Umsatz pro Artikelkategorie).

**Frage (Leicht):** Wofür wird die GROUP BY-Klausel in SQL typischerweise verwendet?
A) Um Zeilen zu sortieren
B) Um eine Tabelle zu löschen
C) Um Zeilen zu gruppieren und darauf Aggregatfunktionen anzuwenden
D) Um neue Spalten zu erstellen
**Lösung:** C

---

## Karte 36: ORDER BY und LIMIT
**Inhalt:** ORDER BY legt die Sortierreihenfolge fest (DESC für absteigend, Standard ist aufsteigend). LIMIT begrenzt die Anzahl der zurückgegebenen Zeilen und wird meist in Kombination mit ORDER BY verwendet.

**Frage (Schwer):** Warum werden ORDER BY und LIMIT häufig gemeinsam verwendet, um z. B. den billigsten Artikel einer Kategorie zu finden?
A) LIMIT funktioniert nur ohne ORDER BY
B) LIMIT sortiert die Daten, ORDER BY begrenzt die Anzahl
C) Beide Klauseln schließen sich gegenseitig aus
D) ORDER BY sortiert die Ergebnisse, LIMIT beschränkt die Ausgabe auf die gewünschte Anzahl (z. B. nur den ersten Datensatz)
**Lösung:** D

---

## Karte 37: SHOW-Befehle (DDL)
**Inhalt:** DDL-Befehle wie SHOW DATABASES zeigen alle vorhandenen Datenbanken auf dem Server, SHOW TABLES zeigt alle Tabellen einer Datenbank, SHOW COLUMNS zeigt die Spalten einer bestimmten Tabelle.

**Frage (Leicht):** Welcher Befehl zeigt alle Tabellen innerhalb einer bestimmten Datenbank an?
A) SHOW TABLES
B) SHOW DATABASES
C) SHOW COLUMNS
D) SHOW ROWS
**Lösung:** A

---

## Karte 38: ODBC und JDBC
**Inhalt:** ODBC (Open Database Connectivity) und JDBC (Java Database Connectivity) sind Standard-Schnittstellen, über die externe Programme (z. B. Word, Programmiersprachen) auf Datenbanken zugreifen können.

**Frage (Schwer):** Wofür werden ODBC und JDBC typischerweise verwendet?
A) Zur Verschlüsselung von Datenbankinhalten
B) Als Standard-Schnittstellen, damit externe Programme auf Datenbanken zugreifen können
C) Als Ersatz für SQL-Befehle
D) Zur physischen Sicherung von Festplatten
**Lösung:** B

---

## Karte 39: DBMS-Programme im Vergleich
**Inhalt:** Verschiedene DBMS-Produkte (MySQL, MariaDB, MS-SQL-Server, SQLite, Access, PostgreSQL, Oracle) unterscheiden sich u. a. in unterstützter Datenmenge, Anzahl gleichzeitiger Nutzer, Preis und Spezialisierung (z. B. Bilddatenbanken).

**Frage (Leicht):** Wodurch unterscheiden sich verschiedene DBMS-Programme wie MySQL, Oracle oder SQLite hauptsächlich?
A) Nur durch die Farbe der Benutzeroberfläche
B) Es gibt keine relevanten Unterschiede
C) Durch Datenmenge, Nutzeranzahl, Preis und Spezialisierung
D) Nur durch das verwendete Betriebssystem
**Lösung:** C

---

## Karte 40: Stammdaten vs. Bewegungsdaten
**Inhalt:** Stammdaten sind feste Daten mit relativ wenig Änderung (z. B. Kunden, Artikel, Personal). Bewegungsdaten ändern sich häufiger und entstehen im laufenden Geschäftsbetrieb (z. B. Rechnungen, Lieferscheine, Bestellungen).

**Frage (Leicht):** Welche der folgenden Daten zählen typischerweise zu den Stammdaten eines Unternehmens?
A) Rechnungen
B) Mahnbriefe
C) Lieferscheine
D) Kundendaten
**Lösung:** D

---

## Karte 41: Datensparsamkeit (DSGVO-Bezug)
**Inhalt:** Der Grundsatz der Datensparsamkeit besagt, dass nur die Daten gesammelt werden sollen, die zur Erfüllung des Geschäftszwecks tatsächlich erforderlich sind – ein zentraler Aspekt beim Datenbankentwurf im Hinblick auf die DSGVO.

**Frage (Schwer):** Was besagt der Grundsatz der "Datensparsamkeit" beim Entwurf einer Kundendatenbank?
A) Es sollen nur die Daten erhoben werden, die für den Geschäftszweck tatsächlich erforderlich sind
B) Es sollen möglichst viele Daten gesammelt werden, um für die Zukunft gerüstet zu sein
C) Datensparsamkeit bezieht sich ausschließlich auf Speicherplatzoptimierung
D) Der Grundsatz gilt nur für Bilddaten
**Lösung:** A

---

## Karte 42: SVERWEIS in Excel
**Inhalt:** SVERWEIS sucht einen Wert in der ersten Spalte eines Bereichs und gibt einen Wert aus einer definierten Spalte derselben Zeile zurück – typisch eingesetzt, um z. B. anhand einer Kundennummer die zugehörigen Kundendaten anzuzeigen.

**Frage (Leicht):** Wofür wird die Excel-Funktion SVERWEIS typischerweise eingesetzt?
A) Um Zellen farblich zu formatieren
B) Um anhand eines Suchkriteriums einen zugehörigen Wert aus einer Tabelle nachzuschlagen
C) Um Diagramme zu erstellen
D) Um Tabellenblätter umzubenennen
**Lösung:** B

---

## Karte 43: WENNFEHLER + SVERWEIS
**Inhalt:** Die Kombination WENNFEHLER(SVERWEIS(...); "") verhindert, dass Fehlerwerte wie #NV oder #WERT angezeigt werden, wenn ein SVERWEIS keinen passenden Wert findet – stattdessen kann ein leerer String oder Alternativtext ausgegeben werden.

**Frage (Schwer):** Warum wird SVERWEIS häufig mit WENNFEHLER kombiniert?
A) Um die Rechengeschwindigkeit zu erhöhen
B) Um automatisch alle Duplikate zu entfernen
C) Um bei einem nicht gefundenen Suchwert statt eines Fehlerwerts (#NV) eine alternative Ausgabe anzuzeigen
D) WENNFEHLER hat keinen Bezug zu SVERWEIS
**Lösung:** C

---

## Karte 44: ZÄHLENWENN
**Inhalt:** ZÄHLENWENN(Bereich; "Suchkriterien") zählt, wie viele Zellen in einem Bereich ein bestimmtes Kriterium erfüllen – z. B. wie viele Mitarbeiter einer bestimmten Abteilung angehören.

**Frage (Leicht):** Was berechnet die Excel-Funktion ZÄHLENWENN?
A) Die Summe aller Werte in einem Bereich
B) Den größten Wert in einem Bereich
C) Den Durchschnitt aller Werte
D) Die Anzahl der Zellen in einem Bereich, die ein bestimmtes Kriterium erfüllen
**Lösung:** D

---

## Karte 45: SUMMEWENN
**Inhalt:** SUMMEWENN(Bereich; Suchkriterien; Summe_Bereich) summiert Werte aus einem definierten Summenbereich, aber nur für Zeilen, die im Kriterienbereich das gesuchte Kriterium erfüllen – z. B. Gehaltssumme pro Abteilung.

**Frage (Schwer):** Warum liefert SUMMEWENN korrekte Ergebnisse pro Abteilung, auch wenn ein Mitarbeiter im Laufe der Zeit die Abteilung wechselt?
A) Weil die Funktion bei jedem Aufruf neu auf den aktuellen Abteilungswert des Mitarbeiters prüft, statt einen festen Wert zu speichern
B) Weil SUMMEWENN Abteilungswechsel automatisch ignoriert
C) SUMMEWENN kann grundsätzlich keine Abteilungen berücksichtigen
D) Es müssen manuell alle alten Werte gelöscht werden
**Lösung:** A

---

## Karte 46: Bedingte Formatierung
**Inhalt:** Die bedingte Formatierung in Excel ändert automatisch das Aussehen von Zellen (z. B. Hintergrundfarbe), wenn eine definierte Bedingung erfüllt ist – z. B. grüner Hintergrund für alle Gehälter unter 2.000 €.

**Frage (Leicht):** Wozu dient die "bedingte Formatierung" in Excel?
A) Um Formeln automatisch zu berechnen
B) Um das Erscheinungsbild von Zellen automatisch basierend auf einer Bedingung zu ändern
C) Um Tabellenblätter zu schützen
D) Um Diagramme zu erstellen
**Lösung:** B

---

## Karte 47: Mehrstufiges Sortieren in Excel
**Inhalt:** Excel erlaubt das Sortieren nach mehreren Kriterien gleichzeitig, z. B. zuerst nach Nachname (A–Z), bei gleichem Nachnamen zusätzlich nach Vorname (A–Z) als zweites Sortierkriterium.

**Frage (Schwer):** Was passiert, wenn in Excel zwei Sortierkriterien angegeben werden (z. B. Nachname, dann Vorname)?
A) Nur das zweite Kriterium wird tatsächlich angewendet
B) Beide Kriterien werden addiert
C) Zuerst wird nach dem ersten Kriterium sortiert, bei Gleichstand entscheidet das zweite Kriterium
D) Excel unterstützt grundsätzlich nur ein Sortierkriterium
**Lösung:** C

---

## Karte 48: Absolute vs. relative Zellbezüge
**Inhalt:** Ein relativer Zellbezug (z. B. A1) passt sich beim Kopieren einer Formel automatisch an die neue Position an. Ein absoluter Zellbezug (z. B. $A$1) bleibt beim Kopieren unverändert fixiert.

**Frage (Schwer):** Warum benötigt eine "kopierfähige" Formel häufig absolute Zellbezüge (mit $-Zeichen) für bestimmte Zellen?
A) $-Zeichen dienen nur der optischen Kennzeichnung ohne funktionale Bedeutung
B) Absolute Bezüge sind grundsätzlich schneller in der Berechnung
C) Ohne $-Zeichen funktionieren Formeln in Excel überhaupt nicht
D) Damit sich diese Bezüge beim Kopieren der Formel in andere Zellen NICHT automatisch verschieben (z. B. bei einer festen Nachschlagetabelle)
**Lösung:** D

---

## Karte 49: Statistische Grundfunktionen in Excel
**Inhalt:** Wichtige statistische Excel-Funktionen sind SUMME (Gesamtsumme), MAX (höchster Wert), MIN (niedrigster Wert), MITTELWERT (Durchschnitt) und ANZAHL (Anzahl der Werte/Datensätze).

**Frage (Leicht):** Welche Excel-Funktion ermittelt den durchschnittlichen Wert eines Zahlenbereichs?
A) MITTELWERT
B) SUMME
C) ANZAHL
D) MAX
**Lösung:** A

---

## Karte 50: Diagrammtypen und Achsenbeschriftung
**Inhalt:** Bei Diagrammen in Excel (z. B. 3D-Säulendiagramm) werden Kategorien (z. B. Mitarbeiternamen) meist auf der waagerechten Achse und Werte (z. B. Umsatz) auf der senkrechten Achse dargestellt, jeweils mit passender Achsenbeschriftung.

**Frage (Leicht):** Auf welcher Achse eines Säulendiagramms werden typischerweise die numerischen Werte (z. B. Umsätze) dargestellt?
A) Waagerechte Achse
B) Senkrechte Achse
C) Diagonale Achse
D) Es gibt keine feste Konvention
**Lösung:** B

---

## Karte 51: Datenschutz und Fremdschlüssel
**Inhalt:** Die Verwendung von Fremdschlüsseln (nur die ID statt aller Kundendaten in der Rechnungstabelle) unterstützt auch den Datenschutz durch Datensparsamkeit, kann aber spätere SQL-Auswertungen komplexer machen.

**Frage (Schwer):** Welchen Datenschutz-Vorteil bietet die Verwendung eines Fremdschlüssels (z. B. Kundennummer) statt kompletter Kundendaten in der Rechnungstabelle?
A) Fremdschlüssel verhindern jeglichen Zugriff auf Kundendaten
B) Fremdschlüssel verschlüsseln automatisch alle Daten
C) Es werden weniger redundante personenbezogene Daten gespeichert (Datensparsamkeit)
D) Es gibt keinen Datenschutz-Bezug bei Fremdschlüsseln
**Lösung:** C

---

## Karte 52: NULL-Werte in Datenbanken
**Inhalt:** NULL ist ein spezieller Datentyp/Zustand für "leere" oder "unbekannte" Felder in einer Datenbank – er unterscheidet sich von 0 oder einem leeren String und bedeutet "kein Wert vorhanden".

**Frage (Leicht):** Was bedeutet der spezielle Wert NULL in einer Datenbank?
A) Der Wert ist gleich 0
B) NULL ist gleichbedeutend mit "falsch"
C) Der Wert ist ein leerer String
D) Das Feld enthält keinen (unbekannten/leeren) Wert
**Lösung:** D

---

## Karte 53: Rechnungskopf und Rechnungsposition
**Inhalt:** Ein typisches Datenbankmodell für Bestellungen/Rechnungen besteht aus vier Tabellen mit drei Verbindungen: Kunde – Rechnung(-skopf) – Rechnungsposition – Ware/Artikel (Kopf-Detail-Struktur).

**Frage (Schwer):** Welche "Eselsbrücke" beschreibt ein typisches Bestellwesen-Datenmodell mit Kunde, Rechnungskopf, Rechnungsposition und Artikel?
A) 4 Tabellen – 3 Verbindungen
B) 2 Tabellen – 5 Verbindungen
C) 1 Tabelle – 0 Verbindungen
D) 4 Tabellen – 4 Primärschlüssel in einer Tabelle
**Lösung:** A

---

## Karte 54: Kandidaten für Primärschlüssel bei Adressen
**Inhalt:** Bei Adressdaten ist die Kombination aus PLZ und Straße ein Beispiel für einen Verbundschlüssel, da weder PLZ noch Straße allein eindeutig genug sind, um einen Datensatz zu identifizieren.

**Frage (Schwer):** Warum eignet sich PLZ allein oft nicht als Primärschlüssel für eine Adresstabelle?
A) PLZ-Werte sind grundsätzlich immer negativ
B) PLZ ist nicht eindeutig genug, da mehrere unterschiedliche Straßen/Orte dieselbe PLZ haben können
C) PLZ kann in Datenbanken technisch nicht gespeichert werden
D) PLZ ändert sich bei jedem Speichervorgang automatisch
**Lösung:** B

---

## Karte 55: Chaotische Lagerhaltung
**Inhalt:** Bei chaotischer Lagerhaltung werden Waren dort gelagert, wo gerade Platz ist – die Datenbank muss dann exakt erfassen, wo sich welcher Artikel befindet, oft mit zusätzlichen Attributen wie Ablaufdatum und FIFO-Prinzip.

**Frage (Leicht):** Was kennzeichnet "chaotische Lagerhaltung" im Datenbankkontext?
A) Waren werden nach einem festen alphabetischen Schema gelagert
B) Es wird komplett auf Datenerfassung verzichtet
C) Waren werden dort gelagert, wo gerade Platz ist, und die genaue Position muss in der Datenbank erfasst werden
D) Jeder Artikel bekommt einen fest zugewiesenen, unveränderlichen Lagerplatz
**Lösung:** C

---

## Karte 56: MwSt-Kategorien in Datenmodellen
**Inhalt:** In Kassenbon-/Rechnungsmodellen wird oft eine separate MwSt-Tabelle mit MwSt-ID und MwSt-Satz verwendet, damit Artikel unterschiedlichen Steuerkategorien (z. B. A/B) zugeordnet werden können, ohne den Steuersatz redundant in jeder Artikelzeile zu speichern.

**Frage (Schwer):** Warum wird der MwSt-Satz oft in einer eigenen Tabelle statt direkt in der Artikeltabelle gespeichert?
A) Aus rein historischen Gründen ohne praktischen Nutzen
B) Weil MwSt-Sätze niemals in Datenbanken gespeichert werden dürfen
C) Weil Artikeltabellen grundsätzlich keine Zahlen enthalten dürfen
D) Um Änderungen am Steuersatz zentral an einer Stelle vornehmen zu können, statt in jeder Artikelzeile einzeln
**Lösung:** D

---

## Karte 57: EQUI-Join
**Inhalt:** Ein EQUI-Join ist ein JOIN, bei dem die Verknüpfungsbedingung auf Gleichheit (=) zwischen zwei Spalten basiert – die klassischste und häufigste Form von JOINs, meist zwischen Primär- und Fremdschlüssel.

**Frage (Leicht):** Worauf basiert die Verknüpfungsbedingung bei einem EQUI-Join?
A) Auf einer Gleichheitsbedingung (=) zwischen zwei Spalten
B) Auf einer Ungleichheitsbedingung (!=)
C) Auf einer zufälligen Zuordnung
D) Auf alphabetischer Sortierung
**Lösung:** A

---

## Karte 58: Aggregatfunktion COUNT bei RIGHT JOIN
**Inhalt:** `SELECT firma, COUNT(bestellnr) FROM bestellungen RIGHT JOIN kunden ON kundenid=kundennr GROUP BY firma` zeigt ALLE Kunden inklusive der Anzahl ihrer Bestellungen an – auch Kunden ohne jede Bestellung (COUNT ergibt dann 0).

**Frage (Schwer):** Was zeigt ein RIGHT JOIN von "bestellungen" auf "kunden" mit COUNT(bestellnr) und GROUP BY firma für einen Kunden ohne jegliche Bestellung?
A) Der Kunde wird komplett aus dem Ergebnis ausgeschlossen
B) Der Kunde erscheint mit dem Zählwert 0 bei den Bestellungen
C) Es wird ein Fehler ausgelöst
D) Der Kunde erscheint mit COUNT = NULL, was zu einem Absturz führt
**Lösung:** B

---

## Karte 59: Preiserhöhung per UPDATE mit Prozentsatz
**Inhalt:** Eine prozentuale Preisänderung erfolgt in SQL über Multiplikation: `UPDATE artikel SET einzelpreis = einzelpreis * 1.05 WHERE kategorienr = 6` erhöht alle Preise der Kategorie 6 um 5 %.

**Frage (Leicht):** Um welchen Faktor müsste ein SQL-UPDATE multiplizieren, um Preise um 10 % zu erhöhen?
A) 0.10
B) 10
C) 1.10
D) 1.01
**Lösung:** C

---

## Karte 60: Umsatzberechnung mit JOIN und SUM
**Inhalt:** Um den korrekten Gesamtumsatz zu berechnen, müssen Bestellpositionen (Menge, Einzelpreis) über einen JOIN mit der Artikeltabelle verknüpft werden: `SUM(einzelpreis * anzahl)` über die korrekt verbundenen Tabellen, nicht über ein reines Kreuzprodukt.

**Frage (Schwer):** Warum liefert `SELECT SUM(einzelpreis) FROM artikel;` KEINEN korrekten Gesamtumsatz eines Unternehmens?
A) Artikelpreise dürfen nie summiert werden
B) SUM() kann grundsätzlich nicht auf Preise angewendet werden
C) Die Abfrage ist syntaktisch fehlerhaft und würde nicht ausgeführt
D) Es fehlt die Multiplikation mit der verkauften Menge sowie die Verknüpfung mit den tatsächlichen Bestelldaten
**Lösung:** D

---

## Karte 61: Datumsbereich in WHERE-Klauseln
**Inhalt:** Für Datumsbereiche eignen sich `BETWEEN 'Datum1' AND 'Datum2'` oder gleichwertig `> Datum1 AND < entsprechend nächster Tag`. Ein einfacher Gleichheitsvergleich mit `=` funktioniert bei Datumsbereichen (z. B. "ganzer Monat") nicht.

**Frage (Schwer):** Warum eignet sich `WHERE Bestelldatum = "2006-05"` NICHT, um alle Bestellungen aus Mai 2006 zu finden?
A) Ein exakter Gleichheitsvergleich (=) prüft nicht auf einen Zeitraum, sondern nur auf exakte Übereinstimmung des kompletten Datumswerts
B) Das Datumsformat "2006-05" ist in SQL grundsätzlich verboten
C) SQL kann grundsätzlich keine Datumswerte verarbeiten
D) Die Abfrage liefert immer alle Datensätze der Tabelle zurück
**Lösung:** A

---

## Karte 62: Primärschlüssel: künstlich vs. natürlich (Wahr/Falsch-Wissen)
**Inhalt:** Nicht jeder Primärschlüssel muss künstlich sein – manchmal eignet sich auch ein natürliches, aber garantiert eindeutiges Attribut (z. B. ISBN bei Büchern) als Primärschlüssel, auch wenn künstliche Schlüssel häufiger gewählt werden.

**Frage (Schwer):** Stimmt die Aussage: "Primärschlüssel werden immer aus zusätzlichen, künstlichen Attributen erzeugt"?
A) Ja, das trifft uneingeschränkt zu
B) Nein, auch natürliche, aber eindeutige Attribute (z. B. ISBN) können als Primärschlüssel dienen
C) Nur bei NoSQL-Datenbanken korrekt
D) Nur bei Tabellen mit weniger als 10 Zeilen korrekt
**Lösung:** B

---

## Karte 63: Fremdschlüssel als alleiniger Primärschlüssel
**Inhalt:** Ein Fremdschlüsselfeld kann in bestimmten Konstellationen (z. B. bei 1:1-Beziehungen) auch als alleiniges Primärschlüsselfeld der Detailtabelle dienen – dies ist aber nicht die Regel, sondern eine Ausnahme.

**Frage (Schwer):** Stimmt die Aussage: "Ein Fremdschlüsselfeld dient oft auch als alleiniges Primärschlüsselfeld"?
A) Ja, das ist die Regel bei fast allen Tabellenbeziehungen
B) Fremdschlüssel dürfen niemals gleichzeitig Primärschlüssel sein
C) Nein, das ist eher die Ausnahme (z. B. bei speziellen 1:1-Beziehungen), nicht der Regelfall
D) Diese Aussage betrifft ausschließlich M:N-Beziehungen
**Lösung:** C

---

## Karte 64: Primärschlüsselwert über mehrere Tabellen
**Inhalt:** Der konkrete Wert eines Primärschlüssels darf in verschiedenen Tabellen derselben Datenbank durchaus mehrfach vorkommen (z. B. die Zahl 1 als PK sowohl in der Kunden- als auch in der Artikeltabelle) – Eindeutigkeit gilt nur innerhalb der jeweils eigenen Tabelle.

**Frage (Schwer):** Darf der Wert eines Primärschlüssels (z. B. die Zahl 1) innerhalb derselben Datenbank in mehreren unterschiedlichen Tabellen vorkommen?
A) Nein, ein Primärschlüsselwert darf in der gesamten Datenbank nur einmal vorkommen
B) Nur wenn keine Fremdschlüssel verwendet werden
C) Nur bei Tabellen mit identischem Namen erlaubt
D) Ja, Eindeutigkeit gilt nur innerhalb der jeweiligen Tabelle, nicht datenbankweit
**Lösung:** D

---

## Karte 65: Detailtabelle und gültige Fremdschlüsselwerte
**Inhalt:** Ist referentielle Integrität vereinbart, dürfen Fremdschlüsselfelder in der Detailtabelle nur mit Werten befüllt werden, die auch tatsächlich als Primärschlüssel in der zugehörigen Mastertabelle existieren.

**Frage (Leicht):** Was gilt für Fremdschlüsselwerte in der Detailtabelle, wenn referentielle Integrität aktiviert ist?
A) Sie müssen einem gültigen Primärschlüsselwert der Mastertabelle entsprechen
B) Sie dürfen beliebige Werte enthalten, unabhängig von der Mastertabelle
C) Sie müssen immer NULL sein
D) Sie dürfen nur Text enthalten
**Lösung:** A

---

## Karte 66: Excel als datenbankähnliches Werkzeug
**Inhalt:** Excel/Tabellenkalkulation bietet bereits datenbankähnliche Grundfunktionen: strukturiertes Format, Abfragemöglichkeiten (z. B. SVERWEIS) und einen Formular-Editor – ersetzt aber kein vollwertiges DBMS bei komplexen, verknüpften Datenmodellen.

**Frage (Schwer):** Warum wird Excel oft als "datenbankähnlich", aber nicht als vollwertiges DBMS bezeichnet?
A) Excel kann grundsätzlich keine Formeln berechnen
B) Excel bietet zwar strukturierte Daten und Abfragen, aber keine vollständige relationale Verwaltung mit referentieller Integrität über mehrere verknüpfte Tabellen
C) Excel unterstützt keinerlei Formatierung
D) Excel und ein DBMS sind funktional komplett identisch
**Lösung:** B

---

## Karte 67: Primärschlüssel und Musterdatensätze
**Inhalt:** Manche Systeme verwenden einen "0er-Datensatz" als Musterdatensatz (z. B. "Erika Mustermann"/"Max Mustermann") mit einer speziellen Kennung, um Formulare oder Tests durchzuführen, ohne echte Daten zu verwenden.

**Frage (Leicht):** Wozu dient ein sogenannter "Musterdatensatz" (z. B. Max Mustermann) in einer Datenbank?
A) Als echte Kundendaten für den Produktivbetrieb
B) Als Ersatz für den Primärschlüssel
C) Als Platzhalter/Testdatensatz, z. B. zum Testen von Formularen ohne echte Daten
D) Als automatisch generierter Fremdschlüssel
**Lösung:** C

---

## Karte 68: Sortierung von Nummernfolgen (Rechnungs-/Auftragsnummern)
**Inhalt:** Bei Rechnungs- oder Auftragsnummern wird häufig absteigend sortiert, sodass die neueste/aktuellste Nummer zuerst angezeigt wird – sinnvoll, da neue Datensätze meist am relevantesten sind.

**Frage (Leicht):** Warum werden Rechnungs- oder Auftragsnummern in Listen oft absteigend sortiert?
A) Damit die älteste Nummer zuerst erscheint
B) Aus rein zufälliger Konvention ohne praktischen Nutzen
C) Absteigende Sortierung ist in SQL technisch nicht möglich
D) Damit die neueste/aktuellste Nummer zuerst angezeigt wird
**Lösung:** D

---

## Karte 69: Index vs. Schlüssel
**Inhalt:** Index und Schlüssel sind unterschiedliche Konzepte: Ein Schlüssel dient der eindeutigen Identifikation/Beziehung, ein Index dient primär der Beschleunigung von Suchvorgängen (kann aber auf einem Schlüssel aufgebaut sein).

**Frage (Schwer):** Was ist der Hauptunterschied zwischen einem "Schlüssel" und einem "Index" in einer Datenbank?
A) Ein Schlüssel dient der eindeutigen Identifikation/Beziehung, ein Index primär der Beschleunigung von Suchvorgängen
B) Beide Begriffe sind vollständig synonym
C) Ein Index kann niemals auf einem Schlüssel basieren
D) Schlüssel existieren nur bei NoSQL-Datenbanken
**Lösung:** A

---

## Karte 70: Buchungssystem (Hotel) als Datenmodell-Beispiel
**Inhalt:** Ein Hotel-Buchungssystem benötigt typischerweise die Tabellen Kunden, Zimmer, Kategorien (mit Preisen) sowie Buchung (Kopf) und Buchungsdetails (Details mit An-/Abreisedatum je Zimmer) – ein weiteres Beispiel für Kopf-Detail-Struktur.

**Frage (Schwer):** Warum werden in einem Hotel-Buchungssystem üblicherweise separate Tabellen für "Buchung" (Kopf) und "Buchungsdetails" verwendet, statt alles in einer Tabelle zu speichern?
A) Weil SQL grundsätzlich nur eine Tabelle pro Datenbank erlaubt
B) Weil eine Buchung mehrere Zimmer/Zeiträume umfassen kann, was eine 1:N-Struktur erfordert
C) Weil Buchungsdetails niemals Fremdschlüssel enthalten dürfen
D) Aus rein optischen Gründen ohne strukturellen Nutzen
**Lösung:** B

---

## Karte 71: Gefahr nicht normalisierter Daten
**Inhalt:** Liegen Daten nicht normalisiert vor (z. B. Pflanzenname und Beet-Koordinaten redundant in jeder Zeile), entsteht beim Ändern eines Wertes die Gefahr von Inkonsistenzen: Wird z. B. die Koordinate eines Beets nur in einer von mehreren Zeilen aktualisiert, widersprechen sich die Datensätze plötzlich (Update-Anomalie).
   
**Frage (Schwer):** Eine Tabelle enthält "West-Beet" zweimal mit denselben Koordinaten in getrennten Zeilen. Welche Gefahr entsteht, wenn sich die Koordinate ändert?
A) Es entsteht automatisch ein neuer Primärschlüssel
B) Die Tabelle wird automatisch normalisiert
C) Wird nur eine Zeile aktualisiert, widersprechen sich die Koordinatenangaben für dasselbe Beet (Inkonsistenz)
D) SQL verhindert automatisch solche Änderungen
**Lösung:** C

---

## Karte 72: Relationenmodell aus Sensordaten (3. Normalform)
**Inhalt:** Um Sensor-Messwerte (DevEUI, Value, Timestamp) korrekt zu modellieren, werden separate Tabellen für Pflanze/Beet, Sensor und Messwert benötigt: ein Beet kann mehrere Sensoren enthalten (1:N Beet–Sensor), ein Sensor liefert mehrere Messwerte über die Zeit (1:N Sensor–Messwert). Jede Tabelle bekommt einen eigenen Primärschlüssel (PK), Fremdschlüssel (FK) verweisen jeweils auf die übergeordnete Tabelle.
   
**Frage (Schwer):** Welche Kardinalität besteht typischerweise zwischen einem Beet und den darin verbauten Sensoren?
A) 1:1
B) 0:0
C) M:N ohne Zwischentabelle
D) 1:N
**Lösung:** D

---

## Karte 73: SVERWEIS (VLOOKUP) mit exakter Übereinstimmung
**Inhalt:** Die Funktion VLOOKUP/SVERWEIS sucht einen Wert in der ersten Spalte eines Bereichs und liefert den Wert einer angegebenen Spalte derselben Zeile zurück. Für eine exakte (nicht ungefähre) Übereinstimmung muss der vierte Parameter auf FALSE/0 gesetzt werden – sonst können bei unsortierten Daten falsche Treffer entstehen.

**Frage (Schwer):** Warum sollte bei VLOOKUP/SVERWEIS für eine exakte Suche (z. B. nach einem bestimmten Datum) der Parameter für "Bereich_Verweis" auf FALSE gesetzt werden?
A) FALSE erzwingt eine exakte Übereinstimmung statt einer ungefähren, was bei unsortierten Daten falsche Treffer vermeidet
B) FALSE aktiviert automatisch die schnellste Suchmethode
C) FALSE bedeutet, dass gar keine Suche durchgeführt wird
D) Der vierte Parameter hat keinen Einfluss auf das Suchverhalten
**Lösung:** A

---

## Karte 74: WEEKDAY-Funktion zur Wochentagsermittlung
**Inhalt:** Die Funktion WEEKDAY(Datum) liefert eine Zahl für den Wochentag eines gegebenen Datums zurück (je nach Typ-Parameter z. B. 1=Sonntag bis 7=Samstag, oder 1=Montag bis 7=Sonntag). In Kombination mit IF lässt sich damit z. B. ein Rabatt nur für Werktage berechnen.

**Frage (Leicht):** Wofür wird die Tabellenkalkulationsfunktion WEEKDAY typischerweise verwendet?
A) Um ein Datum in einen Text umzuwandeln
B) Um den Wochentag zu einem gegebenen Datum als Zahl zu ermitteln
C) Um die Anzahl der Zeilen einer Tabelle zu zählen
D) Um Zellen farblich zu formatieren
**Lösung:** B

---

## Karte 75: Interne Datumsspeicherung in Tabellenkalkulationen
**Inhalt:** Tabellenkalkulationsprogramme speichern Datumswerte intern als fortlaufende Ganzzahl – z. B. als Anzahl der Tage seit dem 01.01.1900. Das erlaubt Rechenoperationen mit Datumswerten (z. B. Differenz zweier Daten in Tagen) wie mit normalen Zahlen.

**Frage (Schwer):** Warum lässt sich in Excel die Differenz zweier Datumswerte einfach durch Subtraktion berechnen (z. B. Datum2 − Datum1)?
A) Weil Subtraktion bei Datumswerten grundsätzlich nicht möglich ist
B) Weil Excel Datumswerte als reinen Text interpretiert
C) Weil Datumswerte intern als fortlaufende Zahl (Tage seit einem Referenzdatum) gespeichert werden
D) Weil Datumswerte in Excel keine feste interne Darstellung haben
**Lösung:** C

---

## Karte 76: Verweis auf ein anderes Arbeitsblatt
**Inhalt:** Um in einer Formel auf eine Zelle eines anderen Arbeitsblatts zuzugreifen, wird der Blattname vor die Zellreferenz geschrieben, getrennt durch ein Ausrufezeichen, z. B. `Preise!B1` verweist auf Zelle B1 im Arbeitsblatt "Preise".

**Frage (Leicht):** Wie lautet die korrekte Syntax, um in einer Formel auf Zelle B1 des Arbeitsblatts "Preise" zu verweisen?
A) Preise.B1
B) Preise#B1
C) Preise->B1
D) Preise!B1
**Lösung:** D

---

## Karte 77: Grenzen von Tabellenkalkulationsprogrammen
**Inhalt:** Tabellenkalkulationsprogramme wie Excel sind flexibel für Simulationen und Ad-hoc-Berechnungen, stoßen aber bei großen, mehrfach verknüpften Datenmengen an Grenzen: keine referentielle Integrität, hohe Fehleranfälligkeit durch manuelle Formeln, schlechte Mehrbenutzerfähigkeit im Vergleich zu einem echten DBMS.

**Frage (Schwer):** Welches Problem tritt beim Einsatz von Tabellenkalkulationsprogrammen für komplexe, stark verknüpfte Datenbestände typischerweise auf?
A) Sie bieten keine referentielle Integrität und werden bei großen, verknüpften Datenmengen unübersichtlich und fehleranfällig
B) Sie können grundsätzlich keine Formeln berechnen
C) Sie unterstützen keinerlei Zahlen, nur Text
D) Es gibt keinerlei Nachteile gegenüber einem DBMS
**Lösung:** A

---

## Karte 78: Nicht normalisierte vs. relationale Tabellenkalkulation
**Inhalt:** In einer flachen Tabellenkalkulationsliste (z. B. Pflanze, Beet-Name, Beet-Koordinaten in einer Zeile) werden Beet-Informationen bei mehreren Pflanzen im selben Beet redundant wiederholt. Ein relationales Modell trennt dies in eigene Tabellen "Beet" und "Pflanzung", verbunden über einen Fremdschlüssel.

**Frage (Leicht):** Was ist der Hauptvorteil, Beet-Informationen in eine eigene Tabelle statt in jede Pflanzenzeile zu schreiben?
A) Es wird dadurch mehr Speicherplatz benötigt
B) Redundanz wird vermieden und Änderungen müssen nur an einer Stelle erfolgen
C) Es können dadurch keine Abfragen mehr durchgeführt werden
D) Fremdschlüssel werden dadurch überflüssig
**Lösung:** B

---

## Karte 79: Stammdaten, Bewegungsdaten, Rechendaten, Ordnungsdaten
**Inhalt:** Jede in einer Datenbank gespeicherte Information ist gleichzeitig Stammdatum oder Bewegungsdatum UND Rechendatum oder Ordnungsdatum. Der Einzelpreis eines Artikels ist zum Beispiel ein Stammdatum (ändert sich selten) und gleichzeitig ein Rechendatum (geht in Berechnungen ein).

**Frage (Leicht):** Welche Kombination von Datenarten ist der Einzelpreis eines Artikels typischerweise?
A) Stammdatum und Messdatum
B) Bewegungsdatum und Messdatum
C) Stammdatum und Rechendatum
D) Bewegungsdatum und Rechendatum
**Lösung:** C

---

## Karte 80: Primärschlüssel
**Inhalt:** Der Primärschlüssel ist ein Datenfeld oder eine Kombination von Feldern, deren Wert innerhalb einer Tabelle eindeutig ist und dadurch jeden Datensatz eindeutig identifiziert. Wird dieser Wert in einer anderen Tabelle als Verweis verwendet, heißt er dort Fremdschlüssel.

**Frage (Leicht):** Welche Bedeutung hat der Primärschlüssel in einer relationalen Datenbank?
A) Schutz der Datenbank durch Verschlüsselung
B) Automatische Sortierung der Tabelle
C) Vorlage für neue Datensätze
D) Eindeutige Kennzeichnung eines Datensatzes
**Lösung:** D

---

## Karte 81: m:n-Beziehung
**Inhalt:** Eine m:n-Beziehung (Viele-zu-viele) kann im relationalen Datenbankmodell nicht direkt zwischen zwei Tabellen abgebildet werden. Stattdessen wird eine dritte, verknüpfende Tabelle benötigt, die jeweils über zwei 1:n-Beziehungen mit den ursprünglichen Tabellen verbunden ist.

**Frage (Schwer):** Welche Beziehungsart kann in einer relationalen Datenbank nur indirekt über eine dritte Tabelle abgebildet werden?
A) Die m:n-Beziehung
B) Die 1:n-Beziehung
C) Die 1:1-Beziehung
D) Alle Beziehungsarten lassen sich stets direkt abbilden
**Lösung:** A

---

## Karte 82: Zweite Normalform (2NF)
**Inhalt:** Die zweite Normalform (2NF) fordert, dass bei einem mehrteiligen Primärschlüssel jedes Nicht-Schlüsselfeld von allen Teilen dieses Schlüssels abhängen muss (volle funktionale Abhängigkeit) – nicht nur von einem Teil davon.

**Frage (Schwer):** Was fordert die zweite Normalform (2NF) einer relationalen Datenbank?
A) Jedes Feld muss atomare Werte enthalten
B) Bei mehrteiligem Primärschlüssel muss jedes Feld von allen Teilen des Schlüssels abhängen
C) Jede Tabelle darf nur ein Thema behandeln
D) Es dürfen keine transitiven Abhängigkeiten bestehen
**Lösung:** B

---

## Karte 83: Fünfte Normalform (5NF)
**Inhalt:** Die fünfte Normalform (5NF) fordert, dass eine Tabelle nur noch triviale Join-Abhängigkeiten enthält, also nicht mehr sinnvoll in kleinere Tabellen zerlegt werden kann, ohne Informationen zu verlieren oder Redundanz zu erzeugen.

**Frage (Schwer):** Welche Normalform enthält die Forderung, dass eine Tabelle nur triviale Join-Abhängigkeiten enthalten darf?
A) Die dritte Normalform (3NF)
B) Die zweite Normalform (2NF)
C) Die fünfte Normalform (5NF)
D) Die Boyce-Codd-Normalform (BCNF)
**Lösung:** C

---

## Karte 84: CHAR vs. VARCHAR
**Inhalt:** Der SQL-Datentyp CHAR reserviert stets Speicherplatz für die vereinbarte Gesamtzahl an Zeichen, unabhängig von der tatsächlichen Textlänge. VARCHAR dagegen belegt nur so viel Speicherplatz, wie für die tatsächlich gespeicherten Zeichen benötigt wird.

**Frage (Leicht):** Was ist der Hauptunterschied zwischen den SQL-Datentypen CHAR und VARCHAR?
A) CHAR kann beliebig viele Zeichen enthalten, VARCHAR nur eine feste Anzahl
B) VARCHAR kann keine Zahlen speichern
C) Die beiden Typen sind vollständig synonym
D) VARCHAR belegt nur Speicherplatz für die tatsächlich verwendeten Zeichen, CHAR für die gesamte vereinbarte Größe
**Lösung:** D

---

## Karte 85: Objektorientierte Datenbank
**Inhalt:** Objektorientierte Datenbanken arbeiten wie objektorientierte Programmiersprachen mit Klassen und Objekten. Im Gegensatz zu relationalen Datenbanken sind ihre Beziehungen nicht auf Schlüsselverknüpfungen beschränkt, sondern lassen sich freier und komplexer gestalten.

**Frage (Schwer):** Was ist ein Vorteil der objektorientierten gegenüber der relationalen Datenbank?
A) Beziehungen sind nicht auf Schlüssel beschränkt und können freier gestaltet werden
B) Objektorientierte Datenbanken benötigen keinerlei Schema
C) Nur objektorientierte Datenbanken können Text speichern
D) Objektorientierte Datenbanken sind grundsätzlich schneller
**Lösung:** A

---

## Karte 86: KI-Kategorien nach Russell und Norvig
**Inhalt:** Die KI-Forscher Russell und Norvig unterteilen frühere Definitionen künstlicher Intelligenz in vier Kategorien entlang zweier Achsen: menschliches Denken, rationales Denken, menschliches Handeln und rationales Handeln.

**Frage (Schwer):** Wie viele Kategorien künstlicher Intelligenz unterscheiden Russell und Norvig?
A) Zwei
B) Vier
C) Fünf
D) Drei
**Lösung:** B

---

## Karte 87: Schwache (domänenspezifische) KI
**Inhalt:** Die meisten praxisrelevanten Fortschritte betreffen die sogenannte schwache oder domänenspezifische KI: Algorithmen, die eine spezifische Aufgabe (z. B. Bilderkennung oder Sprachübersetzung) möglichst selbstständig lösen, statt ein universelles menschenähnliches Denken zu simulieren.

**Frage (Leicht):** Was kennzeichnet die sogenannte "schwache" bzw. domänenspezifische KI?
A) Sie kann nur mit sehr kleinen Datenmengen arbeiten
B) Sie ist stets langsamer als menschliches Denken
C) Sie löst eine spezifische Aufgabe, statt ein universelles menschliches Denken zu simulieren
D) Sie wird ausschließlich in der Robotik eingesetzt
**Lösung:** C

---

## Karte 88: Graphendatenbank
**Inhalt:** Graphendatenbanken speichern Datensätze als Knoten und deren Beziehungen als Kanten eines Graphen. Sie eignen sich dadurch besonders gut zur Abbildung vielfältiger, komplexer Beziehungen, etwa für Datenanalyse oder die Modellierung von Netzwerken und Hierarchien.

**Frage (Schwer):** Wie werden Datensätze und ihre Beziehungen in einer Graphendatenbank dargestellt?
A) Ausschließlich als verschachtelte XML-Dokumente
B) Als flache Textdateien ohne Struktur
C) Als klassische Tabellen mit Fremdschlüsseln
D) Als Knoten (Datensätze) und Kanten (Beziehungen) eines Graphen
**Lösung:** D

---

## Karte 89: NoSQL-Datenbank
**Inhalt:** NoSQL- bzw. dokumentenbasierte Datenbanken verzichten meist auf die klassische Abfragesprache SQL und auf das relationale Tabellenmodell. Stattdessen speichern sie Informationen als Dokumente mit frei definierbaren Metadatenfeldern; ein bekanntes Beispiel ist CouchDB.

**Frage (Leicht):** Was ist ein typisches Merkmal von NoSQL-Datenbanken?
A) Sie speichern Daten oft als Dokumente mit frei definierbaren Metadatenfeldern
B) Sie benötigen zwingend ein festes relationales Tabellenschema
C) Sie verwenden ausschließlich die Abfragesprache SQL
D) Sie unterstützen grundsätzlich keine Suche
**Lösung:** A

---

## Karte 90: Datenarten eines Lagerbestands
**Inhalt:** Der auf Lager befindliche Bestand eines Artikels ändert sich ständig (Bewegungsdatum) und dient gleichzeitig der Einteilung/Filterung von Informationen, etwa bei der Frage "ist der Artikel verfügbar?" (Ordnungsdatum).

**Frage (Schwer):** Welche Kombination von Datenarten stellt die auf Lager befindliche Stückzahl eines Artikels typischerweise dar?
A) Stammdatum und Rechendatum
B) Bewegungsdatum und Ordnungsdatum
C) Bewegungsdatum und Rechendatum
D) Stammdatum und Ordnungsdatum
**Lösung:** B

---

## Karte 91: Natürliche vs. künstliche Attribute
**Inhalt:** Natürliche Attribute wie der Nachname sind oft nicht eindeutig genug, um einen Datensatz zu identifizieren. Künstliche Attribute wie Kundennummer, Artikelnummer oder IBAN werden gezielt zur eindeutigen Kennzeichnung eingeführt und eignen sich daher gut als Primärschlüssel.

**Frage (Leicht):** Warum eignen sich künstliche Attribute wie eine Kundennummer besonders gut als Primärschlüssel?
A) Weil sie sich niemals ändern lassen
B) Weil sie automatisch verschlüsselt werden
C) Weil sie gezielt zur eindeutigen Kennzeichnung eines Datensatzes eingeführt werden
D) Weil sie ausschließlich aus Buchstaben bestehen müssen
**Lösung:** C

---

## Karte 92: Atomare Feldinhalte
**Inhalt:** Ein Feldinhalt gilt in der Datenbanktheorie als atomar, wenn er nicht mehr sinnvoll in kleinere Bestandteile zerlegbar ist. Werden stattdessen mehrere Werte in einem Feld gespeichert (z. B. mehrere Artikel durch Kommas getrennt), erschwert das Abfragen und Auswertungen erheblich.

**Frage (Schwer):** Was bedeutet es, dass ein Feldinhalt in einer Datenbank "atomar" sein soll?
A) Der Wert muss immer eine Zahl sein
B) Der Wert darf niemals leer (NULL) sein
C) Der Wert muss verschlüsselt gespeichert werden
D) Der Wert darf nicht mehr sinnvoll in kleinere Bestandteile zerlegbar sein
**Lösung:** D

---

## Karte 93: Kopf- und Detailtabelle
**Inhalt:** Bei Bestellungen, Rechnungen oder Buchungen wird häufig zwischen einer Kopftabelle (z. B. Rechnung mit RechNr, KundenNr, Datum) und einer Detailtabelle (z. B. Rechnungsposition mit den einzelnen Artikeln und Mengen) unterschieden, verbunden über die gemeinsame Nummer der Kopftabelle.

**Frage (Leicht):** Welchen Zweck erfüllt die Aufteilung in Kopf- und Detailtabelle bei einer Bestellung?
A) Sie ermöglicht es, beliebig viele Positionen zu einer Bestellung zu speichern, ohne Redundanz
B) Sie macht einen Primärschlüssel überflüssig
C) Sie verhindert grundsätzlich jede Art von SQL-Abfrage
D) Sie wird ausschließlich bei Online-Shops verwendet
**Lösung:** A

---

## Karte 94: Fremdschlüssel
**Inhalt:** Ein Fremdschlüssel (Foreign Key) ist ein aus einer anderen Tabelle übernommener Primärschlüssel, etwa wenn eine Rechnungstabelle nur die Kundennummer statt aller Kundendaten referenziert. Das reduziert Redundanz und unterstützt zugleich die Datensparsamkeit.

**Frage (Leicht):** Was ist ein Fremdschlüssel (Foreign Key)?
A) Ein zufällig generierter, bedeutungsloser Wert
B) Ein aus einer anderen Tabelle übernommener Primärschlüssel
C) Ein Schlüssel, der ausschließlich für Suchzwecke dient
D) Ein Schlüssel, der niemals eindeutig sein darf
**Lösung:** B

---

## Karte 95: Sekundärschlüssel
**Inhalt:** Ein Sekundärschlüssel (Alternativschlüssel) muss im Gegensatz zum Primärschlüssel nicht eindeutig sein und dient als zusätzlicher Suchschlüssel, um Datensätze schneller zu finden. Häufig wird ein Fremdschlüssel gleichzeitig auch als Sekundärschlüssel genutzt.

**Frage (Schwer):** Was unterscheidet einen Sekundärschlüssel von einem Primärschlüssel?
A) Es kann pro Tabelle nur einen Sekundärschlüssel geben, aber beliebig viele Primärschlüssel
B) Ein Sekundärschlüssel darf niemals NULL-Werte enthalten
C) Ein Sekundärschlüssel muss nicht eindeutig sein
D) Ein Sekundärschlüssel ersetzt immer den Primärschlüssel
**Lösung:** C

---

## Karte 96: Verbundschlüssel
**Inhalt:** Ein Verbundschlüssel (kombinierter Schlüssel) besteht aus mehreren Attributen gemeinsam, die erst zusammen einen Datensatz eindeutig kennzeichnen (z. B. die Kombination aus PLZ und Straße).

**Frage (Leicht):** Was ist ein Verbundschlüssel (kombinierter Schlüssel)?
A) Ein Schlüssel, der nur aus Zahlen bestehen darf
B) Ein automatisch generierter Zeitstempel
C) Ein Schlüssel, der ausschließlich für 1:1-Beziehungen verwendet wird
D) Ein Schlüssel, der aus mehreren Attributen gemeinsam gebildet wird
**Lösung:** D

---

## Karte 97: Referentielle Integrität
**Inhalt:** Die referentielle Integrität (RI) stellt sicher, dass Fremdschlüsselwerte stets auf tatsächlich existierende Datensätze der referenzierten Tabelle verweisen. Sie muss im Datenbanksystem explizit vereinbart werden, damit Verstöße dagegen verhindert oder gemeldet werden.

**Frage (Schwer):** Was gewährleistet die referentielle Integrität (RI) in einer relationalen Datenbank?
A) Dass Fremdschlüsselwerte stets auf existierende Datensätze der referenzierten Tabelle verweisen
B) Dass jede Tabelle mindestens 1.000 Datensätze enthalten muss
C) Dass alle Tabellen automatisch verschlüsselt werden
D) Dass keine Tabelle mehr als einen Primärschlüssel besitzen darf
**Lösung:** A

---

## Karte 98: Kaskadierendes Löschen
**Inhalt:** Beim restriktiven Löschen kann ein Master-Datensatz (z. B. ein Kunde) nicht gelöscht werden, solange noch abhängige Detail-Datensätze (z. B. Rechnungen) existieren. Beim kaskadierenden Löschen werden abhängige Datensätze dagegen automatisch mitgelöscht.

**Frage (Leicht):** Was passiert beim "kaskadierenden Löschen" eines Master-Datensatzes?
A) Der Master-Datensatz kann grundsätzlich nie gelöscht werden
B) Abhängige Detail-Datensätze werden automatisch mitgelöscht
C) Es entsteht automatisch ein neuer Fremdschlüssel
D) Nur der Primärschlüssel wird gelöscht, alle anderen Felder bleiben erhalten
**Lösung:** B

---

## Karte 99: 1:1-Beziehung – Tabellensplitting
**Inhalt:** Eine 1:1-Beziehung kann zum sogenannten Tabellensplitting genutzt werden: Eine Personaltabelle wird z. B. in einen öffentlicheren Teil (Telefonnummer) und einen sensibleren Teil (Gehalt, Steuerklasse) aufgeteilt, die über denselben Schlüssel verknüpft bleiben.

**Frage (Schwer):** Wofür kann eine 1:1-Beziehung beim Tabellensplitting genutzt werden?
A) Um m:n-Beziehungen direkt abzubilden
B) Um Datenredundanz bewusst zu erhöhen
C) Um sensible Daten (z. B. Gehalt) von weniger sensiblen Daten in einer eigenen Tabelle zu trennen
D) Um die Notwendigkeit eines Primärschlüssels zu umgehen
**Lösung:** C

---

## Karte 100: Auflösung von m:n-Beziehungen
**Inhalt:** Eine m:n-Beziehung lässt sich im relationalen Modell nicht direkt abbilden, sondern muss über eine Hilfs- bzw. Zwischentabelle aufgelöst werden, die jeweils die Fremdschlüssel beider beteiligten Tabellen enthält.

**Frage (Leicht):** Wie wird eine m:n-Beziehung im relationalen Datenbankmodell typischerweise aufgelöst?
A) Sie wird einfach ignoriert
B) Durch Umwandlung in eine 1:1-Beziehung
C) Durch Verdopplung aller betroffenen Datensätze
D) Über eine Hilfs- bzw. Zwischentabelle mit Fremdschlüsseln zu beiden Tabellen
**Lösung:** D

---

## Karte 101: NULL-Wert
**Inhalt:** NULL ist ein spezieller Datentyp bzw. Zustand für ein leeres Datenbankfeld, der ausdrückt, dass für dieses Feld kein Wert bekannt oder vorhanden ist. Ein Primärschlüssel darf niemals den Wert NULL besitzen.

**Frage (Schwer):** Was bedeutet der Wert NULL in einem Datenbankfeld?
A) Das Feld enthält keinen bekannten oder vorhandenen Wert
B) Das Feld ist automatisch der Primärschlüssel
C) Der Wert ist grundsätzlich die Zahl 0
D) Der Wert wurde absichtlich verschlüsselt
**Lösung:** A

---

## Karte 102: ODBC und JDBC
**Inhalt:** ODBC (Open Database Connectivity) und JDBC (Java Database Connectivity) sind standardisierte Schnittstellen, über die externe Programme (z. B. Word oder Java-Anwendungen) auf eine Datenbank zugreifen können, unabhängig vom konkreten Datenbankprodukt.

**Frage (Leicht):** Wofür stehen die Schnittstellen ODBC und JDBC?
A) Für Verschlüsselungsalgorithmen von Passwörtern
B) Für standardisierte Zugriffsschnittstellen externer Programme auf Datenbanken
C) Für Backup-Formate von Datenbanken
D) Für Netzwerkprotokolle zur E-Mail-Übertragung
**Lösung:** B
