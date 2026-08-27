# Thema 4: IT-Sicherheit & Datenschutz

Lernkarten mit Thema, Inhalt und einer Multiple-Choice-Frage (Schwierigkeit: Leicht/Schwer).

---

## Karte 1: Asset, Threat und Vulnerability
**Inhalt:** Ein Asset ist alles, was für ein Unternehmen wertvoll und schützenswert ist (z. B. Kundendaten, Server). Eine Bedrohung (Threat) ist ein potenzielles schädigendes Ereignis, eine Schwachstelle (Vulnerability) eine konkrete Schwäche im System. Erst wenn beide zusammentreffen, entsteht ein reales Risiko.

**Frage (Leicht):** Was beschreibt eine "Schwachstelle" (Vulnerability) im Gegensatz zu einer "Bedrohung" (Threat)?
A) Eine konkrete Schwäche im System, die ausgenutzt werden kann
B) Ein bereits eingetretener Schaden
C) Ein potenzielles Ereignis, das Schaden verursachen könnte
D) Eine Schwachstelle ist dasselbe wie eine Bedrohung
**Lösung:** A

---

## Karte 2: Risikoformel
**Inhalt:** Das Risiko ergibt sich aus dem Zusammenspiel von Bedrohung, Schwachstelle und Auswirkung (Impact): Risiko = Bedrohung × Schwachstelle × Auswirkung. Erst die Kombination aller drei Faktoren bestimmt die tatsächliche Gefährdung.

**Frage (Schwer):** Warum ergibt sich aus einer Bedrohung allein noch kein hohes Risiko?
A) Bedrohungen allein reichen immer für ein hohes Risiko aus
B) Ohne eine ausnutzbare Schwachstelle und eine relevante Auswirkung bleibt das Risiko gering, selbst bei hoher Bedrohungslage
C) Risiko hängt ausschließlich von der Auswirkung ab
D) Schwachstellen sind für die Risikoberechnung irrelevant
**Lösung:** B

---

## Karte 3: Event vs. Incident
**Inhalt:** Ein Event ist eine neutrale, bemerkenswerte Beobachtung (z. B. ein fehlgeschlagener Login). Ein Incident (Sicherheitsvorfall) ist ein Event, das tatsächliche negative Sicherheitskonsequenzen nach sich zieht (z. B. ein kompromittierter Account).

**Frage (Leicht):** Was unterscheidet einen "Incident" von einem einfachen "Event"?
A) Events und Incidents sind identisch
B) Ein Event ist immer schwerwiegender als ein Incident
C) Ein Incident hat tatsächliche negative Sicherheitskonsequenzen, ein Event ist zunächst neutral
D) Nur Incidents werden überhaupt protokolliert
**Lösung:** C

---

## Karte 4: Security vs. Safety
**Inhalt:** Security (IT-Sicherheit) schützt vor absichtlichen, böswilligen Angriffen Dritter (Fokus: CIA-Trias). Safety (Betriebssicherheit) schützt vor unbeabsichtigten Fehlern, Unfällen und Störungen (z. B. Airbag, Not-Aus-Schalter).

**Frage (Schwer):** Was unterscheidet "Safety" grundlegend von "Security"?
A) Safety ist ausschließlich für die Luftfahrt relevant
B) Safety und Security bezeichnen exakt dasselbe Konzept
C) Security betrifft nur Hardware, Safety nur Software
D) Safety schützt vor unabsichtlichen Fehlern/Unfällen, Security vor absichtlichen, böswilligen Angriffen
**Lösung:** D

---

## Karte 5: CIAAN-Modell – Vertraulichkeit
**Inhalt:** Vertraulichkeit (Confidentiality) schützt Daten vor unbefugtem Zugriff. Maßnahmen sind Verschlüsselung, Zugriffskontrollen, Multi-Faktor-Authentifizierung (MFA) und Mitarbeiterschulungen.

**Frage (Leicht):** Welches Schutzziel wird durch Verschlüsselung und Zugriffskontrollen primär adressiert?
A) Vertraulichkeit
B) Verfügbarkeit
C) Verbindlichkeit
D) Authentizität
**Lösung:** A

---

## Karte 6: CIAAN-Modell – Integrität
**Inhalt:** Integrität (Integrity) stellt sicher, dass Daten nicht unbefugt verändert werden. Maßnahmen sind digitale Signaturen, Hash-Werte/Prüfsummen, Message Authentication Codes (MAC) und Dateisystem-Checksummen (z. B. ZFS).

**Frage (Schwer):** Wozu dienen Hash-Werte, die beim Dateidownload zum Abgleich veröffentlicht werden?
A) Um die Downloadgeschwindigkeit zu erhöhen
B) Um dem Nutzer die Überprüfung der Integrität der heruntergeladenen Datei zu ermöglichen
C) Um die Datei automatisch zu verschlüsseln
D) Um den Dateinamen zu verändern
**Lösung:** B

---

## Karte 7: CIAAN-Modell – Verfügbarkeit
**Inhalt:** Verfügbarkeit (Availability) stellt sicher, dass Systeme für autorisierte Nutzer jederzeit zugänglich sind. Maßnahmen sind Redundanz, Backups, Disaster-Recovery-Pläne und DDoS-Schutz.

**Frage (Leicht):** Welches Schutzziel wird durch Redundanz und Backups primär gestärkt?
A) Vertraulichkeit
B) Integrität
C) Verfügbarkeit
D) Verbindlichkeit
**Lösung:** C

---

## Karte 8: CIAAN-Modell – Authentizität und Verbindlichkeit
**Inhalt:** Authentizität (Authenticity) stellt sicher, dass eine Identität echt ist (verhindert Spoofing), z. B. via Passwort oder Zertifikate. Verbindlichkeit (Non-Repudiation) sichert die Nachweisbarkeit von Handlungen, sodass diese nicht nachträglich abgestritten werden können (z. B. digitale Signaturen, TAN-Verfahren).

**Frage (Schwer):** Welches Schutzziel wird verletzt, wenn ein Nutzer nachträglich glaubhaft bestreiten kann, eine digital signierte Transaktion durchgeführt zu haben?
A) Vertraulichkeit
B) Verfügbarkeit
C) Integrität
D) Verbindlichkeit (Non-Repudiation)
**Lösung:** D

---

## Karte 9: Vertikale vs. horizontale Rechteausweitung
**Inhalt:** Bei vertikaler Rechteausweitung (Privilege Escalation) erlangt ein Standardbenutzer administrative Rechte (z. B. root). Bei horizontaler Rechteausweitung erlangt ein Benutzer Zugriff auf Ressourcen anderer Nutzer mit identischer Berechtigungsstufe.

**Frage (Schwer):** Was beschreibt "horizontale Rechteausweitung" im Gegensatz zur vertikalen?
A) Ein Benutzer erlangt Zugriff auf Ressourcen anderer Nutzer derselben Berechtigungsstufe, statt administrative Rechte zu erlangen
B) Ein Benutzer wird automatisch zum Administrator
C) Horizontale Rechteausweitung betrifft nur Netzwerkports
D) Es gibt keinen Unterschied zwischen beiden Formen
**Lösung:** A

---

## Karte 10: Kernel Mode vs. User Mode
**Inhalt:** Normale Anwendungen laufen im rechtebeschränkten User Mode, der Betriebssystemkern und kritische Treiber im uneingeschränkten Kernel Mode. Ein Kernel-Exploit erzwingt den Sprung vom User Mode in den Kernel Mode.

**Frage (Schwer):** Warum gelten Kernel-Exploits als besonders gefährlich?
A) Sie betreffen ausschließlich die Netzwerkschicht
B) Sie erlauben dem Angreifer, mit uneingeschränkten Rechten direkt auf der Hardware zu operieren und Sicherheitssoftware zu deaktivieren
C) Kernel-Exploits können nur theoretisch existieren, nie praktisch ausgenutzt werden
D) Sie wirken sich nur auf Anwendungen im User Mode aus
**Lösung:** B

---

## Karte 11: Rootkits
**Inhalt:** Ein Rootkit ist getarnte Schadsoftware, die dauerhaften administrativen Zugriff sichert und Spuren verwischt, indem es Systemaufrufe (z. B. Dateilisten, Task-Manager) abfängt und manipulierte, "saubere" Ergebnisse anzeigt.

**Frage (Leicht):** Was ist das primäre Ziel eines Rootkits?
A) Daten zu verschlüsseln und Lösegeld zu fordern
B) Werbung anzuzeigen
C) Dauerhaften, unbefugten administrativen Zugriff zu sichern und Spuren zu verwischen
D) Sich selbstständig über das Netzwerk zu verbreiten
**Lösung:** C

---

## Karte 12: Social-Engineering-Methoden
**Inhalt:** Phishing (massenhafte gefälschte Nachrichten), Spear Phishing (gezielt auf Personen), Pretexting (erfundene Identität), Baiting (Köder wie präparierte USB-Sticks), Tailgating (physisches Folgen durch Sicherheitsschleusen) und Quid pro quo (vermeintliche Gegenleistung).

**Frage (Schwer):** Wie wird die Methode bezeichnet, bei der ein Angreifer einer berechtigten Person direkt durch eine gesicherte Zugangsschleuse folgt?
A) Pretexting
B) Baiting
C) Quid pro quo
D) Tailgating
**Lösung:** D

---

## Karte 13: Phishing-Erkennungsmerkmale
**Inhalt:** Typische Phishing-Merkmale sind leicht veränderte Absender-Domains, unpersönliche Anreden, künstlicher Handlungsdruck, Grammatikfehler durch automatisierte Übersetzung und riskante Dateianhänge (.exe, .zip, .scr).

**Frage (Leicht):** Welches Merkmal deutet typischerweise auf eine Phishing-Mail hin?
A) Künstlich erzeugter Druck zum sofortigen Handeln unter Androhung einer Sperrung
B) Eine persönliche, korrekte Anrede mit vollständigem Namen
C) Ein professionell gestaltetes Firmenlogo
D) Eine Antwort auf eine tatsächlich zuvor gestellte Anfrage
**Lösung:** A

---

## Karte 14: DoS vs. DDoS
**Inhalt:** DoS (Denial of Service) und DDoS (Distributed DoS) zielen auf die Sabotage der Verfügbarkeit durch Überlastung. Methoden sind Flooding (Masse an Anfragen), Amplification (kleine Anfrage erzeugt große Antwort) und Botnets (koordinierte, verteilte Angriffe).

**Frage (Schwer):** Was kennzeichnet einen Amplification-Angriff im Rahmen eines DDoS?
A) Nur ein einziges System greift das Ziel an
B) Eine kleine Anfrage des Angreifers erzeugt eine um ein Vielfaches größere Antwort, die das Opfer überlastet
C) Der Angreifer nutzt ausschließlich verschlüsselte Verbindungen
D) Amplification betrifft nur E-Mail-Server
**Lösung:** B

---

## Karte 15: Slowloris-Angriff
**Inhalt:** Slowloris ist ein ressourceneffizienter DoS-Angriff, der HTTP-Verbindungen durch extrem langsames Senden unvollständiger Header offen hält, bis der Webserver keine neuen Verbindungen mehr annehmen kann.

**Frage (Schwer):** Wie funktioniert der Slowloris-Angriff im Kern?
A) Er flutet den Server mit einer riesigen Datenmenge in kürzester Zeit
B) Er nutzt eine Schwachstelle im DNS-Protokoll aus
C) Er hält viele HTTP-Verbindungen durch extrem verlangsamtes, unvollständiges Senden offen, bis keine neuen Verbindungen mehr möglich sind
D) Er verschlüsselt die Serverdaten
**Lösung:** C

---

## Karte 16: Port Scanning (TCP-SYN-Scan)
**Inhalt:** Port-Scanning klopft Netzwerkports systematisch ab, um offene Dienste zu identifizieren. Bei einem TCP-SYN-Scan bedeutet die Antwort SYN/ACK "Port offen", die Antwort RST "Port geschlossen".

**Frage (Leicht):** Welche Serverantwort signalisiert bei einem TCP-SYN-Scan, dass ein Port geschlossen ist?
A) SYN/ACK
B) FIN
C) ACK
D) RST
**Lösung:** D

---

## Karte 17: Port-Knocking
**Inhalt:** Port-Knocking hält Ports nach außen vollständig geschlossen, bis ein exakt definiertes, kryptografisches "Klopf-Muster" auf verschiedenen Ports empfangen wird – eine Schutzmaßnahme gegen Port-Scanning.

**Frage (Schwer):** Wie schützt Port-Knocking ein System vor Port-Scanning?
A) Ports bleiben verschlossen, bis eine geheime Sequenz von Verbindungsversuchen auf bestimmten Ports erkannt wird
B) Es blockiert grundsätzlich jeden eingehenden Datenverkehr dauerhaft
C) Es öffnet automatisch alle Ports für autorisierte IP-Adressen
D) Es verschlüsselt den gesamten Netzwerkverkehr
**Lösung:** A

---

## Karte 18: ARP-Spoofing
**Inhalt:** Beim ARP-Spoofing sendet ein Angreifer gefälschte ARP-Antworten, um Opfer und Gateway zu täuschen: Beide glauben, die MAC-Adresse des Angreifers gehöre zum jeweils anderen. Der gesamte Datenverkehr wird dadurch über den Angreifer umgeleitet.

**Frage (Schwer):** Warum funktioniert ARP-Spoofing technisch, obwohl es sich um einen offensichtlichen Täuschungsversuch handelt?
A) ARP ist grundsätzlich verschlüsselt und daher sicher
B) Das ARP-Protokoll sieht standardmäßig keine Authentifizierung von Antworten vor
C) ARP-Spoofing funktioniert nur über das Internet, nie im LAN
D) Router blockieren ARP-Antworten automatisch
**Lösung:** B

---

## Karte 19: DNS-Spoofing / Cache Poisoning
**Inhalt:** Bei DNS-Spoofing werden manipulierte DNS-Daten in den Cache eines Resolvers eingeschleust, sodass eine legitime URL-Eingabe zu einer vom Angreifer kontrollierten Phishing-Seite statt zur echten IP führt.

**Frage (Leicht):** Was passiert bei einem erfolgreichen DNS-Spoofing-Angriff?
A) Das WLAN-Passwort wird automatisch geändert
B) Der Nutzer kann keine Webseiten mehr aufrufen
C) Der Nutzer wird trotz korrekter URL-Eingabe zu einer gefälschten Webseite geleitet
D) Alle E-Mails werden gelöscht
**Lösung:** C

---

## Karte 20: IP-Spoofing und seine Grenze
**Inhalt:** Bei IP-Spoofing wird die Quell-IP-Adresse gefälscht, um vertrauenswürdige Systeme vorzutäuschen. Da Antwortpakete an die echte gefälschte IP zurückgehen, sieht der Angreifer sie meist nicht – daher primär für One-Way-Angriffe wie SYN-Floods geeignet.

**Frage (Schwer):** Warum eignet sich IP-Spoofing primär für One-Way-Angriffe wie SYN-Floods, nicht aber für Angriffe, die eine Antwort benötigen?
A) Antwortpakete werden grundsätzlich nie versendet
B) IP-Spoofing funktioniert nur bei verschlüsseltem Datenverkehr
C) IP-Spoofing ist technisch komplett unmöglich
D) Antwortpakete werden an die gefälschte (echte) Quell-IP gesendet, nicht an den tatsächlichen Angreifer
**Lösung:** D

---

## Karte 21: Schutz gegen MITM
**Inhalt:** Schutzmaßnahmen gegen Man-in-the-Middle-Angriffe sind konsequente TLS/HTTPS-Verschlüsselung, Dynamic ARP Inspection (DAI) an Switches, DNSSEC (signierte DNS-Daten) und Ingress/Egress-Filtering an Routern.

**Frage (Schwer):** Warum bleibt ein Netzwerk auch bei erfolgreichem MITM-Abfangen des Datenverkehrs geschützt, wenn TLS/HTTPS konsequent eingesetzt wird?
A) Der abgefangene Datenverkehr bleibt kryptografisch geschützt und für den Angreifer unlesbar
B) TLS verhindert grundsätzlich jeden Netzwerkzugriff eines Angreifers
C) HTTPS blockiert automatisch alle ARP-Anfragen
D) TLS funktioniert nur innerhalb desselben LAN-Segments
**Lösung:** A

---

## Karte 22: SQL-Injektion
**Inhalt:** Bei einer SQL-Injektion werden Benutzereingaben ungefiltert in Datenbankbefehle eingefügt. Ein Suchbegriff wie `' OR '1'='1' --` kann eine WHERE-Bedingung immer wahr machen und den Rest der Abfrage auskommentieren.

**Frage (Schwer):** Warum gibt die Eingabe `' OR '1'='1' --` bei einer verwundbaren SQL-Abfrage alle Datensätze zurück?
A) Die Datenbank erkennt die Eingabe automatisch als Fehler und zeigt alle Daten als Debugging-Hilfe
B) Die Bedingung '1'='1' ist immer wahr, und -- kommentiert den Rest der ursprünglichen Abfrage aus
C) Das Zeichen -- löscht automatisch alle WHERE-Bedingungen dauerhaft
D) SQL-Injektionen funktionieren nur bei Zahlenfeldern
**Lösung:** B

---

## Karte 23: Schutz gegen SQL-Injektion
**Inhalt:** Der wichtigste Schutz gegen SQL-Injektion sind Prepared Statements (Parameterized Queries), die Benutzereingaben strikt als Daten statt als ausführbaren Code behandeln. Ergänzend: Eingabevalidierung, Least Privilege für DB-Konten, keine technischen Fehlermeldungen an Endnutzer.

**Frage (Leicht):** Welche Maßnahme gilt als der wichtigste Schutz gegen SQL-Injektion?
A) Ein längeres Datenbankpasswort
B) Eine schnellere Internetverbindung
C) Prepared Statements (Parameterized Queries)
D) Das Deaktivieren von HTTPS
**Lösung:** C

---

## Karte 24: Cross-Site Scripting (XSS)
**Inhalt:** Bei XSS wird bösartiger Client-seitiger Code (meist JavaScript) in eine vertrauenswürdige Webseite eingeschleust und im Browser anderer Nutzer ausgeführt – häufig genutzt, um Session-Cookies zu stehlen.

**Frage (Leicht):** Welche Programmiersprache wird bei Cross-Site-Scripting-Angriffen typischerweise eingeschleust?
A) SQL
B) C++
C) Python
D) JavaScript
**Lösung:** D

---

## Karte 25: Cross-Site Request Forgery (CSRF)
**Inhalt:** Bei CSRF wird der Browser eines bereits eingeloggten Opfers dazu gebracht, unbeabsichtigt eine Aktion auf einer vertrauenswürdigen Plattform auszuführen, da der Browser das gültige Authentifizierungs-Cookie automatisch mitsendet.

**Frage (Schwer):** Warum funktioniert ein CSRF-Angriff, ohne dass der Angreifer die Zugangsdaten des Opfers kennen muss?
A) Der Browser sendet das bestehende, gültige Sitzungs-Cookie automatisch mit jeder Anfrage an die vertrauenswürdige Seite mit
B) CSRF erfordert immer das direkte Auslesen des Passworts
C) CSRF funktioniert nur, wenn der Nutzer nicht eingeloggt ist
D) Der Server ignoriert bei CSRF alle Authentifizierungsprüfungen grundsätzlich
**Lösung:** A

---

## Karte 26: Remote Code Execution (RCE)
**Inhalt:** RCE erlaubt einem Angreifer, beliebigen Code über das Netzwerk auf einem entfernten Server auszuführen – oft über eine Reverse Shell, bei der der kompromittierte Server selbst eine Verbindung zum Angreifer aufbaut.

**Frage (Schwer):** Was ist eine "Reverse Shell" im Kontext von Remote Code Execution?
A) Ein Schutzmechanismus gegen RCE-Angriffe
B) Eine Verbindung, bei der der kompromittierte Server selbstständig eine ausgehende Verbindung zum Angreifer aufbaut und ihm eine Befehlszeile übergibt
C) Eine spezielle Firewall-Regel
D) Ein Verschlüsselungsverfahren
**Lösung:** B

---

## Karte 27: Session Hijacking
**Inhalt:** Beim Session Hijacking übernimmt ein Angreifer die Kontrolle über eine aktive Sitzung, indem er das Sitzungstoken (Session Token) abfängt – z. B. via MITM bei unverschlüsseltem HTTP, XSS oder Malware.

**Frage (Leicht):** Was ermöglicht einem Angreifer, sich beim Session Hijacking ohne Kenntnis des Passworts als Opfer auszugeben?
A) Eine neue Registrierung mit derselben E-Mail-Adresse
B) Das Erraten des Benutzernamens
C) Das Abfangen des gültigen Sitzungstokens
D) Das Zurücksetzen des Passworts
**Lösung:** C

---

## Karte 28: Buffer Overflow
**Inhalt:** Ein Buffer Overflow tritt auf, wenn ein Programm mehr Daten in einen Puffer schreibt, als dieser aufnehmen kann. Überschüssige Daten überschreiben angrenzende Speicherbereiche, z. B. die Rücksprungadresse auf dem Stack.

**Frage (Schwer):** Warum kann ein Buffer Overflow einem Angreifer die Kontrolle über ein Programm ermöglichen?
A) Ein Overflow führt immer sofort zum kontrollierten Programmabbruch ohne Sicherheitsrisiko
B) Der Puffer wird bei einem Overflow automatisch gelöscht
C) Buffer Overflows betreffen ausschließlich die Netzwerkkarte
D) Überschüssige Daten können die Rücksprungadresse auf dem Stack überschreiben und so den weiteren Programmfluss manipulieren
**Lösung:** D

---

## Karte 29: Computerviren vs. Würmer
**Inhalt:** Ein Virus benötigt zwingend eine Trägerdatei und Nutzerinteraktion zur Verbreitung. Ein Wurm benötigt keine Trägerdatei und keine Interaktion – er verbreitet sich selbstständig über Netzwerkschwachstellen.

**Frage (Leicht):** Was unterscheidet einen Computerwurm grundlegend von einem klassischen Virus?
A) Ein Wurm benötigt keine Trägerdatei und verbreitet sich selbstständig im Netzwerk
B) Ein Wurm kann sich niemals verbreiten
C) Ein Virus verbreitet sich schneller als ein Wurm
D) Es gibt keinen technischen Unterschied
**Lösung:** A

---

## Karte 30: Trojaner
**Inhalt:** Ein Trojaner tarnt sich als nützliche Anwendung, replizert sich aber nicht selbst. Nach der Täuschung öffnet er oft eine Backdoor für Angreifer oder installiert einen Remote Access Trojaner (RAT).

**Frage (Leicht):** Was ist ein charakteristisches Merkmal eines Trojaners im Vergleich zu Viren oder Würmern?
A) Er repliziert sich selbstständig über das Netzwerk
B) Er tarnt sich als nützliche, legitime Anwendung, ohne sich selbst zu replizieren
C) Er benötigt zwingend eine Trägerdatei zur Verbreitung
D) Er verschlüsselt automatisch alle Daten
**Lösung:** B

---

## Karte 31: Ransomware
**Inhalt:** Ransomware verschlüsselt nach der Infiltration erreichbare Benutzerdaten mit starken kryptografischen Verfahren (z. B. AES-256) und erpresst anschließend ein Lösegeld für die Entschlüsselung.

**Frage (Leicht):** Was ist das primäre Ziel von Ransomware?
A) Daten unbemerkt auszuspähen
B) Unerwünschte Werbung anzuzeigen
C) Daten zu verschlüsseln und dafür Lösegeld zu erpressen
D) Sich möglichst schnell im Netzwerk zu verbreiten, ohne Schaden anzurichten
**Lösung:** C

---

## Karte 32: Signaturbasierte vs. heuristische Erkennung
**Inhalt:** Signaturbasierte Erkennung vergleicht Dateien mit bekannten Malware-Signaturen – präzise, aber wirkungslos gegen Zero-Day-Exploits. Heuristische Analyse untersucht verdächtiges Verhalten und erkennt auch unbekannte Bedrohungen, kann aber Fehlalarme (False Positives) erzeugen.

**Frage (Schwer):** Warum versagt die rein signaturbasierte Malware-Erkennung bei einem Zero-Day-Exploit?
A) Signaturbasierte Erkennung ist immer schneller als heuristische Analyse
B) Signaturbasierte Erkennung funktioniert nur bei bekannten IP-Adressen
C) Zero-Day-Exploits enthalten grundsätzlich keinen Code
D) Für eine brandneue Bedrohung existiert noch keine bekannte Signatur in der Datenbank
**Lösung:** D

---

## Karte 33: ISO 27001 vs. BSI IT-Grundschutz
**Inhalt:** ISO 27001 ist eine international anerkannte, zertifizierbare Norm mit prozessorientiertem, eher abstraktem Top-Down-Ansatz (PDCA-Zyklus). Der BSI IT-Grundschutz ist ein deutsches, sehr praxisnahes Rahmenwerk mit konkretem Baustein-Prinzip.

**Frage (Schwer):** Worin unterscheidet sich der BSI IT-Grundschutz methodisch am deutlichsten von ISO 27001?
A) Der BSI IT-Grundschutz beschreibt sehr konkret, wie Maßnahmen technisch/organisatorisch umgesetzt werden, während ISO 27001 eher abstrakt beschreibt, was getan werden muss
B) BSI IT-Grundschutz ist international anerkannt, ISO 27001 nur in Deutschland gültig
C) Beide Standards sind inhaltlich und methodisch identisch
D) ISO 27001 ist ausschließlich für Behörden vorgeschrieben
**Lösung:** A

---

## Karte 34: Der PDCA-Zyklus im ISMS
**Inhalt:** Der PDCA-Zyklus (Plan-Do-Check-Act) beschreibt den kontinuierlichen Verbesserungsprozess eines ISMS: Planen (Risikoanalyse), Umsetzen (Maßnahmen etablieren), Prüfen (Audits), Verbessern (Schwachstellen beheben).

**Frage (Leicht):** Wofür steht das "C" im PDCA-Zyklus eines ISMS?
A) Create
B) Check
C) Control
D) Cancel
**Lösung:** B

---

## Karte 35: Phasen der Risikoanalyse
**Inhalt:** Die Risikoanalyse durchläuft: Schutzbedarfsermittlung, Bedrohungsidentifikation, Schwachstellenanalyse, Risikobewertung und Risikobehandlung (Vermeiden, Reduzieren, Verlagern, Akzeptieren).

**Frage (Schwer):** Welche vier Handlungsoptionen stehen typischerweise bei der Risikobehandlung zur Auswahl?
A) Ignorieren, Löschen, Melden, Bestrafen
B) Verschlüsseln, Sichern, Testen, Dokumentieren
C) Vermeiden, Reduzieren, Verlagern, Akzeptieren
D) Kaufen, Verkaufen, Tauschen, Spenden
**Lösung:** C

---

## Karte 36: Systemhärtung (Hardening)
**Inhalt:** Hardening reduziert die Angriffsfläche nach dem Prinzip "Alles, was nicht explizit erlaubt ist, ist verboten": Deaktivierung ungenutzter Dienste (SMBv1, Telnet), Ersatz durch verschlüsselte Standards (SSH, HTTPS), strikte Rechtetrennung.

**Frage (Leicht):** Welches Grundprinzip beschreibt den Leitsatz des Hardening am besten?
A) Alles ist standardmäßig erlaubt, bis es explizit verboten wird
B) Firewalls sind beim Hardening irrelevant
C) Nur Administratoren dürfen sich überhaupt anmelden
D) Alles, was nicht explizit erlaubt oder benötigt wird, ist verboten und deaktiviert
**Lösung:** D

---

## Karte 37: RBAC, ABAC, MAC und DAC
**Inhalt:** RBAC vergibt Rechte über Rollen (z. B. "Personalabteilung"). ABAC entscheidet dynamisch anhand von Attributen (Abteilung, Uhrzeit, Klassifizierung). MAC gibt starre Sicherheitsstufen vor (Militär/Behörden). DAC lässt den Eigentümer selbst über Rechte entscheiden (z. B. NTFS).

**Frage (Schwer):** Welches Zugriffskontrollmodell erlaubt es dem Ersteller einer Datei NICHT, die Zugriffsrechte selbst anzupassen?
A) MAC (Mandatory Access Control)
B) DAC (Discretionary Access Control)
C) RBAC (Role-Based Access Control) in flacher Form
D) Alle Modelle erlauben dem Ersteller freie Rechtevergabe
**Lösung:** A

---

## Karte 38: DSGVO – Zweckbindung und Datenminimierung
**Inhalt:** Nach der DSGVO dürfen personenbezogene Daten nur für einen vorab definierten Zweck und im minimal erforderlichen Umfang erhoben werden (Zweckbindung & Datenminimierung). Bei Ablauf des Zwecks oder gesetzlicher Fristen müssen Daten gelöscht werden (Speicherbegrenzung).

**Frage (Leicht):** Was besagt der DSGVO-Grundsatz der "Datenminimierung"?
A) Daten dürfen unbegrenzt für beliebige zukünftige Zwecke gesammelt werden
B) Es dürfen nur die Daten erhoben werden, die für den definierten Zweck minimal erforderlich sind
C) Datenminimierung bezieht sich nur auf Speicherplatzoptimierung
D) Alle Daten müssen nach spätestens 24 Stunden gelöscht werden
**Lösung:** B

---

## Karte 39: TOM – Zutritts-, Zugangs- und Zugriffskontrolle
**Inhalt:** Nach Art. 32 DSGVO unterscheidet man: Zutrittskontrolle (physischer Zugang, z. B. Serverraumschloss), Zugangskontrolle (Systemnutzung, z. B. Passwort+2FA) und Zugriffskontrolle (Datenebene, z. B. rollenbasierte Berechtigungen).

**Frage (Schwer):** Welche der drei TOM-Kontrollarten wird durch ein Serverraumschloss mit Biometrie umgesetzt?
A) Zugriffskontrolle
B) Zugangskontrolle
C) Zutrittskontrolle
D) Verbindlichkeitskontrolle
**Lösung:** C

---

## Karte 40: DSGVO-Bußgelder
**Inhalt:** Bei Verstößen gegen die DSGVO drohen Bußgelder von bis zu 20 Millionen Euro oder 4 % des weltweiten Jahresumsatzes – je nachdem, welcher Betrag höher ist.

**Frage (Leicht):** Wie hoch können DSGVO-Bußgelder bei schweren Verstößen maximal ausfallen?
A) 1 Million Euro oder 1 % des Jahresumsatzes
B) DSGVO-Verstöße werden nicht mit Bußgeldern geahndet
C) 500.000 Euro pauschal
D) 20 Millionen Euro oder 4 % des weltweiten Jahresumsatzes
**Lösung:** D

---

## Karte 41: Security by Design vs. Security by Default
**Inhalt:** Security by Design integriert Sicherheit von Anfang an in den Entwicklungsprozess (Threat Modeling, Code-Reviews). Security by Default liefert Systeme im restriktivsten, sichersten Zustand aus (alle unnötigen Dienste standardmäßig deaktiviert).

**Frage (Schwer):** Was unterscheidet "Security by Default" von "Security by Design"?
A) Security by Default betrifft den sicheren Auslieferungszustand eines Systems, Security by Design die Integration von Sicherheit während der gesamten Entwicklung
B) Beide Begriffe sind vollständig identisch
C) Security by Default bezieht sich ausschließlich auf Passwörter
D) Security by Design findet erst nach der Auslieferung statt
**Lösung:** A

---

## Karte 42: Principle of Least Privilege (PoLP)
**Inhalt:** PoLP vergibt Nutzern, Diensten und Anwendungen exakt nur die Berechtigungen, die sie zur aktuellen Aufgabe benötigen – Ziel ist die Minimierung des "Blast Radius" bei einer Kompromittierung.

**Frage (Leicht):** Was ist das Hauptziel des Principle of Least Privilege?
A) Allen Nutzern maximale Rechte zu geben, um Support-Aufwand zu sparen
B) Den potenziellen Schaden (Blast Radius) bei einer Kompromittierung zu minimieren
C) Passwörter überflüssig zu machen
D) Die Anmeldezeit zu verkürzen
**Lösung:** B

---

## Karte 43: Zero Trust Security
**Inhalt:** Zero Trust bricht mit dem "Castle-and-Moat"-Modell (Vertrauen für alles im internen Netz) und folgt dem Leitsatz "Never Trust, Always Verify": Jede Zugriffsanfrage wird unabhängig vom Standort geprüft, ergänzt durch Mikrosegmentierung.

**Frage (Schwer):** Was unterscheidet Zero Trust grundlegend vom klassischen "Castle-and-Moat"-Sicherheitsmodell?
A) Zero Trust vertraut Geräten automatisch, sobald sie sich im internen Netzwerk befinden
B) Castle-and-Moat verifiziert jede einzelne Anfrage individuell
C) Zero Trust verifiziert jede Zugriffsanfrage explizit, unabhängig vom Standort im Netzwerk
D) Es gibt keinen praktischen Unterschied zwischen beiden Modellen
**Lösung:** C

---

## Karte 44: Defense in Depth
**Inhalt:** Defense in Depth legt einem Angreifer mehrere unabhängige Verteidigungsschichten in den Weg (physisch, Netzwerk, Endgerät, Anwendung, Daten, Mensch) – versagt eine Schicht, fängt die nächste den Angriff ab.

**Frage (Leicht):** Was ist die Grundidee des Defense-in-Depth-Prinzips?
A) Eine einzige, extrem starke Schutzmaßnahme reicht aus
B) Mitarbeiter-Schulungen sind bei Defense in Depth irrelevant
C) Sicherheit ist nur auf der Netzwerkebene relevant
D) Mehrere unabhängige, sich ergänzende Sicherheitsschichten sollen einen Angriff auffangen, falls eine Schicht versagt
**Lösung:** D

---

## Karte 45: VPN-Schutzziele
**Inhalt:** Ein VPN baut über ein unsicheres öffentliches Netz eine verschlüsselte Tunnelverbindung auf und sichert Vertraulichkeit (Verschlüsselung), Integrität (Hash-Verfahren) und Authentizität (Zertifikate/MFA) der Kommunikation.

**Frage (Leicht):** Welches der drei VPN-Schutzziele wird durch starke symmetrische Verschlüsselung der Nutzdaten erreicht?
A) Vertraulichkeit
B) Verbindlichkeit
C) Verfügbarkeit
D) Authentizität
**Lösung:** A

---

## Karte 46: Site-to-Site vs. Remote-Access VPN
**Inhalt:** Ein Site-to-Site-VPN verbindet zwei komplette Netzwerke dauerhaft (z. B. Filiale–Zentrale) über VPN-Gateways. Ein Remote-Access-VPN verbindet einzelne externe Clients (z. B. Homeoffice) mit dem Firmennetz und erfordert Client-Software.

**Frage (Leicht):** Welcher VPN-Typ verbindet typischerweise einen einzelnen Mitarbeiter im Homeoffice mit dem Firmennetz?
A) Site-to-Site VPN
B) Remote-Access VPN
C) End-to-End VPN
D) Es gibt für diesen Fall keinen passenden VPN-Typ
**Lösung:** B

---

## Karte 47: IPsec – ESP vs. AH
**Inhalt:** ESP (Encapsulating Security Payload) bietet Verschlüsselung, Integrität und Authentifizierung. AH (Authentication Header) bietet nur Integrität und Authentifizierung, keine Verschlüsselung, und ist inkompatibel mit NAT.

**Frage (Schwer):** Warum ist das IPsec-Protokoll AH inkompatibel mit NAT (Network Address Translation)?
A) NAT funktioniert grundsätzlich nur mit UDP-Verkehr
B) AH verschlüsselt den gesamten IP-Header vollständig
C) AH bezieht den IP-Header in die Hash-Berechnung ein, den NAT jedoch verändert
D) AH benötigt zwingend IPv6
**Lösung:** C

---

## Karte 48: IPsec-Betriebsmodi
**Inhalt:** Der Transport-Modus verschlüsselt nur die Nutzlast (Header bleibt sichtbar) für Host-zu-Host-Verbindungen. Der Tunnel-Modus verschlüsselt das komplette Original-Paket inklusive Header und kapselt es neu – Standard für Site-to-Site-VPNs.

**Frage (Schwer):** Warum wird für Site-to-Site-VPNs typischerweise der IPsec-Tunnel-Modus statt des Transport-Modus verwendet?
A) Es gibt keinen funktionalen Unterschied zwischen beiden Modi
B) Der Transport-Modus ist grundsätzlich schneller und sicherer
C) Der Tunnel-Modus funktioniert nur ohne Verschlüsselung
D) Der Tunnel-Modus verbirgt die internen, privaten IP-Adressen vollständig hinter neuen öffentlichen Headern
**Lösung:** D

---

## Karte 49: OpenVPN vs. WireGuard
**Inhalt:** OpenVPN ist komplex und flexibel (nutzt OpenSSL), aber mit höherem Overhead. WireGuard ist extrem schlank (~4.000 Zeilen Code), nutzt feste moderne Kryptographie (Curve25519, ChaCha20) und ist rein UDP-basiert mit sehr guter Performance.

**Frage (Schwer):** Welchen Vorteil bietet WireGuard gegenüber OpenVPN hinsichtlich der Codebasis?
A) WireGuard hat eine deutlich schlankere, leichter auditierbare Codebasis
B) WireGuard hat mehr Codezeilen als OpenVPN
C) WireGuard unterstützt keine Verschlüsselung
D) OpenVPN ist grundsätzlich neuer als WireGuard
**Lösung:** A

---

## Karte 50: TLS-Handshake
**Inhalt:** Der TLS-Handshake läuft ab: Client Hello (unterstützte Cipher Suites) → Server Hello mit Zertifikat → Zertifikatsprüfung gegen Root-CAs → Schlüsselaustausch (z. B. ECDHE) → Wechsel zu symmetrischer Verschlüsselung mit dem Session Key.

**Frage (Schwer):** Welchen Zweck erfüllt der asymmetrische Schlüsselaustausch (z. B. via ECDHE) im TLS-Handshake?
A) Er verschlüsselt die gesamte Anwendungskommunikation dauerhaft asymmetrisch
B) Er ermöglicht beiden Parteien, unabhängig voneinander einen identischen symmetrischen Session Key zu erzeugen
C) Er ersetzt die Notwendigkeit eines Zertifikats
D) Er dient ausschließlich der Kompression der Daten
**Lösung:** B

---

## Karte 51: TLS 1.2 vs. TLS 1.3
**Inhalt:** TLS 1.3 benötigt für den Handshake nur 1-RTT statt 2-RTT bei TLS 1.2, ist schneller und hat unsichere Verfahren (RSA-Schlüsselaustausch, MD5, 3DES) gestrichen. Zudem erzwingt es Perfect Forward Secrecy (PFS) durch flüchtige Schlüssel.

**Frage (Schwer):** Was bedeutet Perfect Forward Secrecy (PFS), die TLS 1.3 immer erzwingt?
A) PFS bedeutet, dass keine Verschlüsselung mehr nötig ist
B) Der Session Key bleibt für alle zukünftigen Verbindungen identisch
C) Selbst wenn der private Hauptschlüssel des Servers künftig gestohlen wird, können alte aufgezeichnete Datenströme nicht mehr entschlüsselt werden
D) PFS betrifft ausschließlich symmetrische Verschlüsselung ohne Schlüsselaustausch
**Lösung:** C

---

## Karte 52: X.509-Zertifikat
**Inhalt:** Das X.509-Zertifikat ist der Standard für digitale Zertifikate und bindet einen öffentlichen Schlüssel an eine Identität. Kernfelder: Seriennummer, Subject (Inhaber), Public Key, Issuer (CA), Gültigkeitsdauer, digitale Signatur der CA.

**Frage (Leicht):** Welche Information bindet ein X.509-Zertifikat unzweifelhaft an eine bestimmte Identität?
A) Eine Sitzungs-ID
B) Ein Passwort
C) Eine MAC-Adresse
D) Einen öffentlichen Schlüssel (Public Key)
**Lösung:** D

---

## Karte 53: CRL vs. OCSP
**Inhalt:** CRL (Certificate Revocation List) ist eine regelmäßig aktualisierte Sperrliste widerrufener Zertifikate. OCSP (Online Certificate Status Protocol) fragt den Status eines einzelnen Zertifikats in Echtzeit ab – ressourcenschonender als CRL.

**Frage (Schwer):** Welchen Vorteil bietet OCSP gegenüber einer klassischen CRL-Prüfung?
A) OCSP fragt den Status eines konkreten Zertifikats in Echtzeit ab, statt eine komplette Sperrliste herunterzuladen
B) OCSP ist grundsätzlich unsicherer als CRL
C) CRL funktioniert nur bei abgelaufenen Zertifikaten
D) OCSP benötigt keine Zertifizierungsstelle
**Lösung:** A

---

## Karte 54: Digitale Signatur – Funktionsweise
**Inhalt:** Eine digitale Signatur wird erzeugt, indem der Hash-Wert einer Nachricht mit dem privaten Schlüssel des Absenders verschlüsselt wird. Der Empfänger entschlüsselt sie mit dem öffentlichen Schlüssel und vergleicht die Hash-Werte.

**Frage (Schwer):** Womit wird eine digitale Signatur beim Erstellen verschlüsselt, und womit wird sie beim Empfänger entschlüsselt?
A) Verschlüsselt mit dem öffentlichen Schlüssel des Empfängers, entschlüsselt mit dessen privatem Schlüssel
B) Verschlüsselt mit dem privaten Schlüssel des Absenders, entschlüsselt mit dessen öffentlichem Schlüssel
C) Beide Vorgänge nutzen denselben symmetrischen Schlüssel
D) Digitale Signaturen benötigen keine Verschlüsselung
**Lösung:** B

---

## Karte 55: CA-Hierarchie (Chain of Trust)
**Inhalt:** Vertrauen wird hierarchisch delegiert: Die Root-CA (selbstsigniert, meist offline) signiert Intermediate-CAs, die wiederum Endbenutzer-Zertifikate (Leaf Certificates) ausstellen. Der Browser prüft die Kette rückwärts bis zur vertrauenswürdigen Root-CA.

**Frage (Schwer):** Warum operiert eine Root-CA in der Praxis meist offline, während Intermediate-CAs das operative Geschäft übernehmen?
A) Weil Intermediate-CAs sicherer sind als Root-CAs
B) Weil Root-CAs technisch nicht online betrieben werden können
C) Um die höchste Vertrauensinstanz maximal vor Kompromittierung zu schützen
D) Aus Kostengründen ohne sicherheitstechnischen Hintergrund
**Lösung:** C

---

## Karte 56: Paketfilter vs. Stateful Packet Inspection
**Inhalt:** Ein zustandsloser Paketfilter prüft jedes Paket isoliert (IP, Port, Protokoll). Stateful Packet Inspection (SPI) führt eine Zustandstabelle und erkennt automatisch, ob ein Paket zu einer bereits etablierten Verbindung gehört.

**Frage (Schwer):** Welchen entscheidenden Vorteil bietet Stateful Packet Inspection gegenüber einem klassischen zustandslosen Paketfilter?
A) Sie ignoriert IP-Adressen komplett
B) Sie ist grundsätzlich langsamer als ein Paketfilter
C) Sie funktioniert nur mit UDP-Verkehr
D) Sie erkennt automatisch zusammengehörige Pakete einer bestehenden Verbindung, ohne für jede Richtung eine explizite Regel zu benötigen
**Lösung:** D

---

## Karte 57: Next-Generation Firewall (NGFW) und SSL-Inspection
**Inhalt:** Eine NGFW analysiert mit Deep Packet Inspection auch den Inhalt (Payload) von Paketen auf Anwendungsebene. Bei SSL-Inspection fungiert die Firewall als transparenter MITM: sie entschlüsselt, scannt und verschlüsselt den Verkehr erneut.

**Frage (Schwer):** Warum muss das Root-Zertifikat einer NGFW bei SSL-Inspection auf allen Client-Geräten vorab als vertrauenswürdig hinterlegt werden?
A) Damit Clients keine Zertifikatswarnungen erhalten, wenn die Firewall den Verkehr als transparenter Man-in-the-Middle aufbricht
B) Damit die Firewall selbst kein Zertifikat benötigt
C) Um die Internetgeschwindigkeit zu erhöhen
D) Root-Zertifikate sind bei SSL-Inspection generell nicht nötig
**Lösung:** A

---

## Karte 58: Firewall-Regelverarbeitung – Top-Down und Implicit Deny
**Inhalt:** Firewalls verarbeiten Regeln streng von oben nach unten (First Match Wins) – die Reihenfolge ist kritisch. Am Ende jedes Regelwerks steht die implizite Regel: Alles, was nicht explizit erlaubt ist, wird verboten (Implicit Deny).

**Frage (Schwer):** Warum ist die Reihenfolge von Firewall-Regeln entscheidend?
A) Weil Regeln alphabetisch sortiert werden müssen
B) Weil die Firewall bei der ersten passenden Regel (First Match) stoppt und alle nachfolgenden Regeln für dieses Paket ignoriert
C) Die Reihenfolge hat keinerlei praktische Bedeutung
D) Firewalls prüfen immer alle Regeln gleichzeitig und wenden die strengste an
**Lösung:** B

---

## Karte 59: DROP vs. REJECT
**Inhalt:** DROP verwirft ein Paket lautlos ohne Rückmeldung (Standard im WAN, gibt Angreifern keine Information preis). REJECT weist das Paket ab und sendet eine Fehlermeldung zurück (z. B. TCP RST) – sinnvoll im internen LAN für schnelleres Troubleshooting.

**Frage (Schwer):** Warum wird an einer Internet-Firewall meist DROP statt REJECT für unerwünschten Traffic konfiguriert?
A) DROP ist immer schneller als REJECT
B) REJECT ist technisch nicht für Internetverbindungen geeignet
C) DROP gibt dem potenziellen Angreifer keine Information darüber preis, dass überhaupt ein System existiert
D) REJECT funktioniert nur mit UDP
**Lösung:** C

---

## Karte 60: IDS vs. IPS
**Inhalt:** Ein IDS (Intrusion Detection System) überwacht passiv und generiert nur Warnmeldungen. Ein IPS (Intrusion Prevention System) sitzt aktiv im Datenstrom (In-Line) und kann Bedrohungen automatisch blockieren.

**Frage (Leicht):** Was unterscheidet ein IPS grundlegend von einem IDS?
A) Ein IPS kann nur bei verschlüsseltem Datenverkehr eingesetzt werden
B) Ein IDS ist immer teurer als ein IPS
C) IDS und IPS sind technisch identisch
D) Ein IPS greift aktiv ein und blockiert Bedrohungen, ein IDS meldet sie nur passiv
**Lösung:** D

---

## Karte 61: SIEM
**Inhalt:** Ein SIEM-System (Security Information and Event Management) sammelt, normalisiert und korreliert Logs aus Firewalls, IDS/IPS, Servern und AD-Controllern, um komplexe, verteilte Angriffsmuster frühzeitig zu erkennen.

**Frage (Schwer):** Warum kann ein SIEM-System Angriffe erkennen, die bei isolierter Betrachtung einzelner Logs harmlos wirken?
A) Es korreliert Ereignisse aus verschiedenen Systemen und erkennt dadurch übergreifende, komplexe Angriffsmuster
B) Es löscht automatisch alle verdächtigen Logeinträge
C) Es ersetzt vollständig die Notwendigkeit von Firewalls
D) Es funktioniert nur mit einem einzigen Log-Typ
**Lösung:** A

---

## Karte 62: Web Application Firewall (WAF)
**Inhalt:** Eine WAF ist eine spezialisierte Firewall vor Webservern, die ausschließlich HTTP/HTTPS-Verkehr (Layer 7) überwacht und gezielt vor SQL-Injections, XSS und CSRF schützt.

**Frage (Leicht):** Auf welche Angriffe ist eine Web Application Firewall (WAF) spezialisiert?
A) Physische Angriffe auf Serverräume
B) Anwendungsspezifische Angriffe wie SQL-Injection und XSS
C) Angriffe auf die Stromversorgung
D) Social-Engineering-Angriffe per Telefon
**Lösung:** B

---

## Karte 63: Forward Proxy vs. Reverse Proxy
**Inhalt:** Ein Forward Proxy kontrolliert ausgehenden Verkehr (LAN → Internet) und schützt interne Clients (Content-Filterung, Anonymisierung). Ein Reverse Proxy kontrolliert eingehenden Verkehr (Internet → LAN) und schützt interne Server (Load Balancing, SSL-Offloading).

**Frage (Schwer):** Welcher Proxy-Typ wird eingesetzt, um interne Webserver vor direktem Internetzugriff zu schützen und Anfragen zu verteilen?
A) Forward Proxy
B) Beide sind für diesen Zweck identisch geeignet
C) Reverse Proxy
D) Keiner der beiden Proxy-Typen erfüllt diese Funktion
**Lösung:** C

---

## Karte 64: DMZ – Demilitarisierte Zone
**Inhalt:** Eine DMZ ist ein isoliertes Netzwerksegment für öffentlich erreichbare Dienste (Webserver, Mailserver). Wird ein DMZ-Server kompromittiert, verhindert die Firewall-Regelung zwischen DMZ und LAN ein direktes Vordringen ins interne Netz.

**Frage (Leicht):** Welchem Zweck dient eine DMZ in der Netzwerkarchitektur eines Unternehmens?
A) Sie dient nur der Speicherung von Backups
B) Sie beschleunigt ausschließlich interne Datenübertragungen
C) Sie ersetzt die Notwendigkeit von Verschlüsselung
D) Sie isoliert öffentlich erreichbare Server vom internen, sensiblen Netzwerk
**Lösung:** D

---

## Karte 65: Symmetrische Verschlüsselung
**Inhalt:** Bei symmetrischer Verschlüsselung nutzen Sender und Empfänger denselben geheimen Schlüssel. Sie ist extrem schnell (z. B. AES, typisch 256 Bit), eignet sich für große Datenmengen, hat aber das Problem des sicheren Schlüsselaustauschs.

**Frage (Leicht):** Was ist das Hauptproblem der symmetrischen Verschlüsselung?
A) Der sichere Austausch des gemeinsamen Schlüssels vorab ist schwierig
B) Sie ist zu langsam für praktische Anwendungen
C) Sie benötigt zwingend zwei unterschiedliche Schlüssel
D) Sie funktioniert nur bei kleinen Datenmengen
**Lösung:** A

---

## Karte 66: Asymmetrische Verschlüsselung
**Inhalt:** Bei asymmetrischer Verschlüsselung wird mit dem Public Key verschlüsselt und kann nur mit dem zugehörigen Private Key entschlüsselt werden. Sie ist sehr rechenintensiv (Faktor 100–1000 langsamer), benötigt daher längere Schlüssel (2048–4096 Bit bei RSA).

**Frage (Schwer):** Warum sind asymmetrische Schlüssel (z. B. bei RSA) mit 2048–4096 Bit deutlich länger als symmetrische Schlüssel mit 256 Bit?
A) Längere Schlüssel machen die Verschlüsselung automatisch schneller
B) Asymmetrische Verfahren basieren auf mathematischen Problemen wie Primfaktorzerlegung, die bei kürzeren Schlüsseln leichter zu lösen wären
C) Es gibt keinen technischen Grund, das ist reine Konvention
D) Asymmetrische Schlüssel sind grundsätzlich kürzer als symmetrische
**Lösung:** B

---

## Karte 67: Hybride Verschlüsselung
**Inhalt:** Hybride Verschlüsselung kombiniert beide Welten: Der symmetrische Session Key wird asymmetrisch (mit dem Public Key des Empfängers) sicher übertragen, die eigentlichen Daten werden dann schnell symmetrisch verschlüsselt. Basis von TLS, SSH und PGP.

**Frage (Schwer):** Warum wird bei TLS nicht die gesamte Kommunikation durchgehend asymmetrisch verschlüsselt?
A) TLS verwendet ausschließlich asymmetrische Verschlüsselung ohne symmetrischen Anteil
B) Asymmetrische Verschlüsselung ist technisch unmöglich für Webverkehr
C) Asymmetrische Verschlüsselung ist zu rechenintensiv für große Datenmengen; sie dient nur dem sicheren Austausch des schnellen symmetrischen Session Keys
D) Symmetrische Verschlüsselung wird bei TLS gar nicht eingesetzt
**Lösung:** C

---

## Karte 68: Diffie-Hellman-Schlüsseltausch
**Inhalt:** Diffie-Hellman löst das Problem, wie zwei Parteien über eine unsichere Leitung einen gemeinsamen geheimen Schlüssel vereinbaren können, ohne diesen jemals direkt zu übertragen – basierend auf einem mathematisch schwer umkehrbaren Problem (diskreter Logarithmus).

**Frage (Schwer):** Warum kann ein Angreifer, der den gesamten Diffie-Hellman-Datenaustausch mitschneidet, den resultierenden gemeinsamen Schlüssel bei ausreichend großen Zahlen nicht berechnen?
A) Angreifer können den Schlüssel immer trivial berechnen, unabhängig von der Zahlengröße
B) Der Schlüssel wird niemals tatsächlich berechnet
C) Diffie-Hellman verschlüsselt den gesamten Austausch zusätzlich symmetrisch
D) Die Rückrechnung des geheimen Exponenten aus den öffentlich übertragenen Werten ist bei großen Primzahlen mathematisch praktisch nicht durchführbar
**Lösung:** D

---

## Karte 69: AES als symmetrischer Standard
**Inhalt:** AES (Advanced Encryption Standard) gilt als weltweiter Goldstandard der symmetrischen Verschlüsselung – sicher, hardwarebeschleunigt, eingesetzt bei WPA3, VPN-Tunneln und TLS-Nutzdaten, typisch mit 128 oder 256 Bit Schlüssellänge.

**Frage (Leicht):** Welcher Algorithmus gilt heute als der weltweite Standard für symmetrische Verschlüsselung?
A) AES
B) MD5
C) DES
D) RSA
**Lösung:** A

---

## Karte 70: DES/3DES als unsicherer Legacy-Standard
**Inhalt:** DES hat mit 56 Bit eine viel zu kurze Schlüssellänge und lässt sich per Brute-Force in wenigen Stunden knacken. 3DES ist sicherer, aber extrem langsam und gilt ebenfalls als überholt.

**Frage (Schwer):** Warum gilt der klassische DES-Algorithmus heute als unsicher?
A) DES wurde nie in der Praxis eingesetzt
B) Seine Schlüssellänge von 56 Bit ist mit heutiger Rechenleistung per Brute-Force in kurzer Zeit knackbar
C) DES verwendet grundsätzlich keinen Schlüssel
D) DES ist ein asymmetrisches Verfahren mit zu kurzen Schlüsseln
**Lösung:** B

---

## Karte 71: ECC (Elliptic Curve Cryptography)
**Inhalt:** ECC basiert auf elliptischen Kurven und bietet bei deutlich kürzeren Schlüsseln (z. B. 256 Bit) dieselbe Sicherheit wie RSA mit viel längeren Schlüsseln – dadurch schneller und ressourcenschonender, Standard bei TLS 1.3.

**Frage (Schwer):** Welchen praktischen Vorteil bietet ECC gegenüber RSA bei vergleichbarem Sicherheitsniveau?
A) ECC funktioniert nur mit symmetrischer Verschlüsselung
B) ECC ist grundsätzlich unsicherer als RSA
C) ECC benötigt deutlich kürzere Schlüssel und ist dadurch schneller und ressourcenschonender
D) ECC benötigt immer längere Schlüssel als RSA
**Lösung:** C

---

## Karte 72: Hash-Algorithmen – SHA-2 vs. MD5
**Inhalt:** SHA-2 (z. B. SHA-256) gilt als sicherer aktueller Standard für Integritätsprüfungen und digitale Signaturen. MD5 gilt als komplett kompromittiert wegen nachgewiesener Kollisionen und darf nicht mehr für sicherheitsrelevante Zwecke verwendet werden.

**Frage (Leicht):** Warum sollte MD5 nicht mehr für sicherheitsrelevante Integritätsprüfungen verwendet werden?
A) MD5 ist zu langsam für praktische Anwendungen
B) MD5 ist ein Verschlüsselungs-, kein Hash-Algorithmus
C) MD5 wurde nie standardisiert
D) MD5 gilt als kompromittiert, da Kollisionen (unterschiedliche Dateien mit identischem Hash) erzeugt werden können
**Lösung:** D

---

## Karte 73: Hash-Kollision
**Inhalt:** Eine Hash-Kollision liegt vor, wenn zwei unterschiedliche Eingaben denselben Hash-Wert erzeugen. Bei kryptografisch gebrochenen Algorithmen wie MD5 oder SHA-1 können Angreifer gezielt Kollisionen erzeugen und so z. B. gefälschte Zertifikate mit identischem Hash konstruieren.

**Frage (Schwer):** Warum ist eine gezielt erzeugbare Hash-Kollision bei digitalen Zertifikaten besonders gefährlich?
A) Ein Angreifer könnte ein gefälschtes Zertifikat mit demselben Hash-Wert wie ein legitimes erzeugen und die Signaturprüfung umgehen
B) Kollisionen betreffen nur die Dateigröße, nicht die Sicherheit
C) Hash-Kollisionen sind rein theoretisch und praktisch nie erzeugbar
D) Kollisionen wirken sich ausschließlich auf symmetrische Verschlüsselung aus
**Lösung:** A

---

## Karte 74: Wichtige sichere Ports
**Inhalt:** Sichere Standardports: 22 (SSH), 443 (HTTPS), 465 (SMTPS), 993 (IMAPS), 995 (POP3S). Unsichere Klartext-Pendants: 23 (Telnet), 80 (HTTP), 25 (SMTP unverschlüsselt), 143 (IMAP), 110 (POP3).

**Frage (Leicht):** Welcher Port wird standardmäßig für verschlüsselten SSH-Fernzugriff verwendet?
A) Port 21
B) Port 22
C) Port 23
D) Port 25
**Lösung:** B

---

## Karte 75: VPN-spezifische Ports
**Inhalt:** IPsec/IKE nutzt Port 500 (UDP), NAT-Traversal für IPsec Port 4500 (UDP), OpenVPN standardmäßig Port 1194 (UDP/TCP), WireGuard typischerweise Port 51820 (UDP).

**Frage (Schwer):** Warum wird für SSL-VPNs häufig Port 443 (statt eines eigenen VPN-Ports) verwendet?
A) Port 443 ist ausschließlich für VPN-Verkehr reserviert
B) Port 443 bietet eine höhere Bandbreite als andere Ports
C) Port 443 ist in praktisch allen restriktiven Firewalls und öffentlichen WLANs bereits geöffnet, da er für normalen HTTPS-Verkehr benötigt wird
D) SSL-VPNs können technisch nur über Port 443 funktionieren
**Lösung:** C

---

## Karte 76: Least Privilege als Schutz gegen SQL-Injection
**Inhalt:** Das Datenbankkonto einer Webanwendung sollte nur die minimal notwendigen Rechte besitzen (z. B. nur SELECT und INSERT) – selbst bei erfolgreicher SQL-Injection kann ein Angreifer dann keine administrativen Aktionen durchführen.

**Frage (Schwer):** Warum begrenzt die Anwendung des Least-Privilege-Prinzips auf Datenbankebene den Schaden einer erfolgreichen SQL-Injection?
A) Least Privilege betrifft nur Netzwerkports, nicht Datenbanken
B) Least Privilege verhindert SQL-Injection vollständig auf technischer Ebene
C) Datenbankrechte haben keinen Einfluss auf die Auswirkungen von SQL-Injection
D) Auch bei erfolgreicher Injektion sind die möglichen Aktionen des Angreifers auf die begrenzten Rechte des Datenbankkontos beschränkt
**Lösung:** D

---

## Karte 77: BYOD-Richtlinie
**Inhalt:** Eine BYOD-Richtlinie (Bring Your Own Device) regelt die Nutzung privater Geräte für dienstliche Zwecke und fordert technische Isolation von Unternehmensdaten (z. B. MDM-Container) sowie Löschrechte bei Geräteverlust.

**Frage (Leicht):** Was regelt eine BYOD-Richtlinie in einem Unternehmen?
A) Die Nutzung privater Endgeräte für dienstliche Zwecke inklusive Datenisolation
B) Ausschließlich die Farbe der Firmen-Laptops
C) Die Wartungsintervalle von Servern
D) Nur die Nutzung von Firmenfahrzeugen
**Lösung:** A

---

## Karte 78: Clean-Desk-Policy
**Inhalt:** Die Clean-Desk-Policy verpflichtet Mitarbeiter, beim Verlassen des Arbeitsplatzes sensible Dokumente wegzuschließen und den Bildschirm zu sperren – eine organisatorische Maßnahme gegen physischen Datenabfluss.

**Frage (Leicht):** Was verlangt eine Clean-Desk-Policy von Mitarbeitern?
A) Den Schreibtisch täglich zu putzen
B) Beim Verlassen des Arbeitsplatzes sensible Dokumente wegzuschließen und den Bildschirm zu sperren
C) Ausschließlich digitale Dokumente zu verwenden
D) Keine Getränke am Arbeitsplatz zu haben
**Lösung:** B

---

## Karte 79: LAPS – Local Administrator Password Solution
**Inhalt:** LAPS verwaltet lokale Administrator-Passwörter zentral und automatisiert deren regelmäßige Änderung – verhindert, dass ein einziges kompromittiertes lokales Admin-Passwort für viele Systeme gleichzeitig gilt.

**Frage (Schwer):** Welches Sicherheitsproblem löst LAPS typischerweise in Windows-Umgebungen?
A) Dass Netzwerkverbindungen unverschlüsselt sind
B) Dass Benutzer keine Passwörter mehr benötigen
C) Dass auf vielen Systemen dasselbe, selten geänderte lokale Administrator-Passwort verwendet wird
D) Dass Firewalls keine Regeln mehr benötigen
**Lösung:** C

---

## Karte 80: Awareness-Trainings gegen Social Engineering
**Inhalt:** Regelmäßige, praxisnahe Schulungen inkl. Phishing-Simulationen sensibilisieren Mitarbeiter. Ergänzend hilft die Verifikation kritischer Anfragen über einen zweiten, unabhängigen Kanal (Medienbruch), z. B. Rückruf über die interne Telefonliste.

**Frage (Schwer):** Warum gilt die Verifikation über einen "Medienbruch" (z. B. Rückruf) als wirksame Maßnahme gegen Spear-Phishing/CEO-Fraud?
A) Medienbrüche sind nur bei technischen Angriffen relevant, nicht bei Social Engineering
B) Ein Medienbruch verlangsamt die Kommunikation grundsätzlich um mehrere Tage
C) Telefonanrufe können generell nicht gefälscht oder manipuliert werden
D) Ein Angreifer, der eine E-Mail fälschen kann, kontrolliert in der Regel nicht auch den bekannten internen Telefonanschluss der echten Person
**Lösung:** D

---

## Karte 81: Asymmetrische Verschlüsselung für ressourcenarme IoT-Sensoren
**Inhalt:** Auch batteriebetriebene Sensoren mit geringer Rechenleistung können asymmetrische Verschlüsselung nutzen, wenn ressourcenschonende Verfahren wie ECC (Elliptische-Kurven-Kryptographie) statt klassischem RSA eingesetzt werden – ECC erreicht mit deutlich kürzeren Schlüsseln ein vergleichbares Sicherheitsniveau und benötigt weniger Rechenleistung und Energie.

**Frage (Schwer):** Ein batteriebetriebener IoT-Sensor mit geringer Rechenleistung soll Daten verschlüsselt übertragen. Welches Verschlüsselungsverfahren ist dafür besonders geeignet und warum?
A) ECC (Elliptische-Kurven-Kryptographie), da es bei kurzen Schlüssellängen ein hohes Sicherheitsniveau bei geringerem Rechenaufwand bietet
B) RSA mit 4096 Bit, da es das sicherste Verfahren überhaupt ist
C) Gar keine Verschlüsselung, da Sensoren ohnehin nicht angegriffen werden können
D) DES, da es das älteste und am weitesten verbreitete Verfahren ist
**Lösung:** A

---

## Karte 82: Signieren statt Verschlüsseln – Unterschiedliche Schutzziele
**Inhalt:** Digitales Signieren schützt Integrität und Authentizität (der Empfänger erkennt Manipulation und Urheber), verschlüsselt die Nutzdaten selbst aber NICHT – der Inhalt bleibt für jeden lesbar, der die Nachricht abfängt. Wer Vertraulichkeit benötigt, muss zusätzlich verschlüsseln.

**Frage (Schwer):** Ein Kollege schlägt vor, sensible Sensordaten nur zu signieren statt zu verschlüsseln. Welche Aussage dazu trifft zu?
A) Signieren allein reicht aus, da signierte Daten automatisch auch verschlüsselt sind
B) Signieren schützt nur Integrität und Authentizität, nicht aber die Vertraulichkeit – die Daten blieben für Angreifer lesbar
C) Signieren ist sicherer als Verschlüsseln und macht diese überflüssig
D) Signaturen und Verschlüsselung können technisch nicht kombiniert werden
**Lösung:** B

---

## Karte 83: Ablauf der Zertifikatsbeantragung für einen Server
**Inhalt:** Um einen Server mit einem öffentlich vertrauenswürdigen Zertifikat abzusichern, wird typischerweise: (1) ein Schlüsselpaar erzeugt, (2) ein Certificate Signing Request (CSR) mit dem Public Key und den Servereckdaten erstellt, (3) der CSR bei einer Zertifizierungsstelle (CA) eingereicht und die Domain-Inhaberschaft validiert, (4) das von der CA signierte Zertifikat auf dem Server installiert.

**Frage (Schwer):** Was wird im zweiten Schritt der Serverabsicherung mit einem öffentlich bestätigten Zertifikat typischerweise erstellt?
A) Eine vollständige Sperrliste (CRL)
B) Ein neues Root-Zertifikat für die gesamte Organisation
C) Ein Certificate Signing Request (CSR) mit dem öffentlichen Schlüssel und den Serverdaten
D) Ein symmetrischer Session Key
**Lösung:** C

---

## Karte 84: E-Mail-Sicherheitsmaßnahmen gegen Angriffe
**Inhalt:** Da viele Angriffe über E-Mail-Kommunikation erfolgen, helfen technische Maßnahmen wie SPF/DKIM/DMARC (Absenderauthentifizierung gegen Spoofing), Anhang-/Link-Scanning durch Mailgateways sowie organisatorische Maßnahmen wie Mitarbeiterschulungen und Meldewege für verdächtige Mails.

**Frage (Leicht):** Welche Maßnahme schützt gezielt gegen gefälschte Absenderadressen bei E-Mails?
A) Deaktivieren des Internetzugangs
B) Ein längeres E-Mail-Passwort
C) Eine höhere Bildschirmauflösung
D) SPF/DKIM/DMARC-Prüfung
**Lösung:** D

---

## Karte 85: Symptome einer Systemkompromittierung
**Inhalt:** Neben dem Start unbekannter Programme deuten weitere Symptome auf eine Kompromittierung hin: ungewöhnlich hohe Netzwerk- oder CPU-Auslastung ohne erkennbaren Grund, neu angelegte oder veränderte Benutzerkonten, deaktivierte Sicherheitssoftware sowie unerwartete ausgehende Verbindungen zu unbekannten externen Adressen.

**Frage (Schwer):** Welches der folgenden Anzeichen deutet NICHT typischerweise auf eine Systemkompromittierung hin?
A) Ein regulär vom Administrator geplantes und dokumentiertes Wartungsfenster
B) Plötzlich unerklärlich hohe CPU- oder Netzwerkauslastung
C) Unerwartet deaktivierte Antivirensoftware
D) Neu angelegte, unbekannte Benutzerkonten mit administrativen Rechten
**Lösung:** A

---

## Karte 86: Nachteil asymmetrischer gegenüber symmetrischer Verschlüsselung
**Inhalt:** Der zentrale Nachteil asymmetrischer Verfahren gegenüber symmetrischen ist der deutlich höhere Rechenaufwand: Bei gleichem Sicherheitsniveau ist asymmetrische Verschlüsselung um den Faktor 100 bis 1000 langsamer, weshalb sie in der Praxis meist nur zum sicheren Austausch eines symmetrischen Sitzungsschlüssels (hybrides Verfahren) genutzt wird.

**Frage (Leicht):** Was ist der Hauptnachteil der asymmetrischen Verschlüsselung gegenüber der symmetrischen?
A) Sie bietet grundsätzlich weniger Sicherheit
B) Sie ist deutlich rechenintensiver und langsamer
C) Sie benötigt keinen privaten Schlüssel
D) Sie kann nicht für digitale Signaturen verwendet werden
**Lösung:** B

---

## Karte 87: Sicherheitsrelevante Bereiche bei Serverbereitstellung
**Inhalt:** Bei der sicheren Planung eines Servers werden typischerweise mehrere Bereiche mit jeweils eigenen Sicherheitseinstellungen betrachtet: Server-Hardware (Boot-Reihenfolge, Secure Boot), Installation/Konfiguration des Betriebssystems (minimale Rolleninstallation, Updates), Dienste und Features (nur benötigte Dienste aktiv), Anmeldung am Server (starke Authentifizierung) sowie laufende Administration (Protokollierung, minimale Rechte).

**Frage (Leicht):** Welcher Bereich der Serverkonfiguration umfasst typischerweise die Aktivierung von Secure Boot?
A) Dienste und Features des Servers
B) Anmelden am Server
C) Server-Hardware
D) Administrieren des Servers
**Lösung:** C

---

## Karte 88: Klassische Computervirentypen
**Inhalt:** Zu den klassischen Computervirentypen zählen Bootsektorviren, Dateiviren, Makroviren, Stealth-Viren und polymorphe Viren. Ein "Retrovirus" im biologischen Sinn ist dagegen kein anerkannter Computervirentyp.

**Frage (Leicht):** Was ist KEIN Computervirentyp?
A) Stealth-Virus
B) Bootsektorvirus
C) Makrovirus
D) Retrovirus
**Lösung:** D

---

## Karte 89: Verbreitungswege von Würmern
**Inhalt:** Würmer verbreiten sich im Gegensatz zu klassischen Viren eigenständig über Netzwerke – etwa per E-Mail, Instant Messenger oder soziale Netzwerke. Über Bluetooth ist eine Verbreitung von Würmern dagegen bisher nicht der übliche Infektionsweg.

**Frage (Schwer):** Über welchen der folgenden Kanäle werden Würmer bisher im Allgemeinen NICHT verbreitet?
A) Bluetooth
B) E-Mail
C) Instant Messenger
D) Soziale Netzwerke
**Lösung:** A

---

## Karte 90: Trojanisches Pferd
**Inhalt:** Ein trojanisches Pferd (Trojaner) ist eine Software, die nach außen eine harmlose oder nützliche Funktion vorgibt, im Hintergrund aber heimlich schädliche oder unerwünschte Aktionen ausführt.

**Frage (Leicht):** Was ist ein trojanisches Pferd im IT-Sicherheitskontext?
A) Ein besonders aggressiver Netzwerkwurm
B) Eine Software, die heimlich etwas anderes tut, als sie öffentlich vorgibt
C) Ein Schadprogramm, das sich ausschließlich über Disketten verbreitet
D) Ein Verschlüsselungsverfahren für E-Mails
**Lösung:** B

---

## Karte 91: Phishing
**Inhalt:** Phishing bezeichnet das Erschleichen von Passwörtern und anderen Zugangsdaten, indem gefälschte E-Mails oder Websites verwendet werden, die dem Erscheinungsbild bekannter, vertrauenswürdiger Anbieter täuschend ähnlich sehen.

**Frage (Leicht):** Wie nennt man gefälschte E-Mails, die Empfänger dazu bringen sollen, persönliche Zugangsdaten auf betrügerischen Websites einzugeben?
A) Pharming
B) Phreaking
C) Phishing
D) Spoofing
**Lösung:** C

---

## Karte 92: Umgang mit Spam-Mails
**Inhalt:** Bei Spam-Mails sollte weder auf enthaltene Links noch auf angebliche Abmelde-Links geklickt noch geantwortet werden, da dies nur bestätigt, dass die eigene Adresse aktiv ist. Die einzige empfohlene Reaktion ist das sofortige Löschen der Nachricht.

**Frage (Leicht):** Was sollten Sie mit Spam-Mails auf jeden Fall tun?
A) Die Mail an alle Kontakte weiterleiten, um zu warnen
B) Höflich antworten, dass keine weitere Belästigung gewünscht ist
C) Den "Unsubscribe"-Link in der Spam-Mail anklicken
D) Die Spam-Mail löschen
**Lösung:** D

---

## Karte 93: DoS vs. DDoS
**Inhalt:** Bei einer Denial-of-Service-Attacke (DoS) wird ein Serverdienst durch Überlastung mit Anfragen zum Absturz gebracht. Erfolgt der Angriff gleichzeitig von vielen verschiedenen, oft durch Trojaner ferngesteuerten Rechnern aus, spricht man von einer Distributed Denial of Service (DDoS)-Attacke.

**Frage (Schwer):** Was unterscheidet eine DDoS- von einer einfachen DoS-Attacke?
A) Bei DDoS greifen viele verteilte Rechner gleichzeitig an
B) DDoS nutzt ausschließlich Sicherheitslücken in Verschlüsselungsprotokollen
C) DDoS betrifft nur Datenbankserver
D) DDoS ist technisch identisch mit Phishing
**Lösung:** A

---

## Karte 94: Rootkit
**Inhalt:** Ein Rootkit ersetzt gezielt Systemdateien und -programme durch manipulierte Versionen, um einen erfolgreichen Angriff und die eigene Anwesenheit vor Administrator*innen und Sicherheitssoftware zu verbergen.

**Frage (Schwer):** Was ist der Zweck eines Rootkits bei einem Cracker-Angriff?
A) Die Verschlüsselung aller Dateien auf dem System
B) Das Verschleiern eines erfolgten Angriffs durch manipulierte Systemdateien
C) Die automatische Installation von Sicherheitsupdates
D) Die Erhöhung der Netzwerkbandbreite
**Lösung:** B

---

## Karte 95: Cross-Site-Scripting (XSS)
**Inhalt:** Cross-Site-Scripting (XSS) nutzt aus, dass eine Website Benutzereingaben ungeprüft wieder ausgibt. Angreifer schleusen dadurch eigenen JavaScript-Code ein, der beim Besuch der Seite durch andere Nutzer im Kontext der eigentlich vertrauenswürdigen Website ausgeführt wird.

**Frage (Schwer):** Was ist das grundlegende Prinzip eines Cross-Site-Scripting-Angriffs (XSS)?
A) Das gezielte Überlasten eines Webservers durch massenhafte Anfragen
B) Das Abhören von unverschlüsseltem WLAN-Datenverkehr
C) Das Einschleusen von JavaScript-Code über ungeprüfte Benutzereingaben, der bei anderen Nutzern ausgeführt wird
D) Das Ausnutzen einer offenen Firewall-Regel
**Lösung:** C

---

## Karte 96: SQL-Injection
**Inhalt:** Bei einer SQL-Injection ergänzt ein Angreifer ein Formularfeld um zusätzlichen SQL-Code (z. B. ein Semikolon gefolgt von einem weiteren Befehl), sodass die vom Server ausgeführte Datenbankabfrage über die ursprüngliche Absicht hinaus erweitert wird.

**Frage (Schwer):** Wie funktioniert ein klassischer SQL-Injection-Angriff?
A) Durch das Erraten des Administrator-Passworts per Brute Force
B) Durch das Abfangen von TLS-verschlüsseltem Datenverkehr
C) Durch das Fluten des Servers mit ICMP-Paketen
D) Durch Einschleusen zusätzlicher SQL-Befehle über ungeprüfte Formulareingaben
**Lösung:** D

---

## Karte 97: DMZ (Demilitarisierte Zone)
**Inhalt:** Eine DMZ ist ein separates Netzwerk, das dem internen Firmennetzwerk vorgeschaltet wird und auf beiden Seiten durch Paketfilter und Application Gateway Firewalls abgesichert ist. Internetrelevante Server wie Web- oder Mailserver werden hier platziert, damit ein kompromittierter Server nicht direkt Zugriff auf das interne Netz erlaubt.

**Frage (Leicht):** Wozu dient eine DMZ (demilitarisierte Zone) im Netzwerkaufbau?
A) Zur isolierten Platzierung internetrelevanter Server, abgesichert vom internen Netzwerk
B) Zur Beschleunigung der internen Netzwerkverbindung
C) Als Ersatz für Backups
D) Zur Verschlüsselung aller internen E-Mails
**Lösung:** A

---

## Karte 98: Intrusion Detection System (IDS)
**Inhalt:** Ein Intrusion Detection System (IDS) überwacht ein System oder Netzwerk auf unerwünschte Änderungen oder verdächtige Aktivitäten und schlägt bei einem Verdachtsfall Alarm. Bekannte Beispiele sind das Warnsystem tripwire und das Network-IDS Snort.

**Frage (Schwer):** Wofür wird ein Intrusion Detection System (IDS) eingesetzt?
A) Zur automatischen Reparatur beschädigter Festplattensektoren
B) Zum Erkennen unerwünschter Änderungen oder verdächtiger Aktivitäten mit anschließendem Alarm
C) Zur Kompression von Backup-Daten
D) Zur Verwaltung von Benutzerkonten
**Lösung:** B

---

## Karte 99: Symmetrische vs. asymmetrische Verschlüsselung
**Inhalt:** Bei der symmetrischen Verschlüsselung wird für Ver- und Entschlüsselung derselbe geheime Schlüssel verwendet. Bei der asymmetrischen Verschlüsselung (Public-Key-Verfahren) existieren zwei unterschiedliche Schlüssel: ein öffentlicher zum Verschlüsseln und ein privater zum Entschlüsseln.

**Frage (Leicht):** Was unterscheidet die asymmetrische von der symmetrischen Verschlüsselung?
A) Asymmetrische Verschlüsselung benötigt gar keinen Schlüssel
B) Bei asymmetrischer Verschlüsselung ändert sich der Schlüssel bei jeder Nachricht
C) Bei asymmetrischer Verschlüsselung werden unterschiedliche Schlüssel zum Ver- und Entschlüsseln verwendet
D) Symmetrische Verschlüsselung ist grundsätzlich unsicherer
**Lösung:** C

---

## Karte 100: Digitale Signatur
**Inhalt:** Eine digitale Signatur dient dazu, die Identität der absendenden Stelle zu bestätigen. Der Inhalt wird vor dem Versand mit dem privaten Schlüssel des Absenders signiert; die empfangende Seite kann die Signatur mit dem zugehörigen öffentlichen Schlüssel überprüfen.

**Frage (Leicht):** Wozu dient eine digitale Signatur?
A) Zur Erhöhung der Übertragungsgeschwindigkeit
B) Zur Komprimierung großer Dateianhänge
C) Zur automatischen Übersetzung von E-Mails
D) Zur Bestätigung der Identität der absendenden Stelle
**Lösung:** D

---

## Karte 101: RSA-Verfahren
**Inhalt:** Das asymmetrische Verschlüsselungsverfahren RSA nutzt aus, dass die Primfaktorzerlegung ein sehr aufwendiges Problem ist: Zwei große Primzahlen lassen sich leicht multiplizieren, aber aus dem Produkt allein lassen sich die ursprünglichen Primfaktoren nur mit enormem Rechenaufwand zurückgewinnen.

**Frage (Schwer):** Welche mathematische Eigenschaft macht sich das RSA-Verfahren zunutze?
A) Die Schwierigkeit, aus dem Produkt zweier großer Primzahlen die Faktoren zu bestimmen
B) Die Kommutativität der Addition
C) Die Eindeutigkeit von Hashwerten
D) Die Periodizität trigonometrischer Funktionen
**Lösung:** A

---

## Karte 102: SSH vs. Telnet
**Inhalt:** Telnet überträgt sämtliche Daten inklusive Zugangsdaten im Klartext und gilt daher als unsicher. SSH (Secure Shell) bietet dieselbe Funktionalität der Fernadministration, verschlüsselt dabei jedoch die gesamte Kommunikation.

**Frage (Leicht):** Was ist der entscheidende Sicherheitsvorteil von SSH gegenüber Telnet?
A) SSH funktioniert nur innerhalb lokaler Netzwerke
B) SSH verschlüsselt die gesamte Kommunikation, Telnet überträgt im Klartext
C) SSH benötigt keinen Client
D) SSH ist ausschließlich für Windows-Server verfügbar
**Lösung:** B

---

## Karte 103: Das CIAAN-Modell
**Inhalt:** Das CIAAN-Modell erweitert die klassische CIA-Triade (Vertraulichkeit, Integrität, Verfügbarkeit) um Authentizität und Verbindlichkeit (Non-Repudiation) zu insgesamt fünf Schutzzielen der Informationssicherheit.

**Frage (Leicht):** Um welche zwei Schutzziele erweitert das CIAAN-Modell die klassische CIA-Triade?
A) Integrität und Verschlüsselung
B) Verfügbarkeit und Vertraulichkeit
C) Authentizität und Verbindlichkeit
D) Skalierbarkeit und Redundanz
**Lösung:** C

---

## Karte 104: Security vs. Safety
**Inhalt:** Security (IT-Sicherheit) schützt vor absichtlichen, böswilligen Angriffen durch Dritte (Fokus: CIA-Triade). Safety (Betriebssicherheit) schützt dagegen vor unabsichtlichen Unfällen, Fehlern und Störungen, etwa durch einen Not-Aus-Schalter oder Notlaufmodi.

**Frage (Schwer):** Was unterscheidet "Safety" von "Security" im IT-Kontext?
A) Safety bezieht sich ausschließlich auf Verschlüsselung
B) Safety ist nur in der Medizintechnik relevant
C) Safety und Security sind vollständig identische Konzepte
D) Safety schützt vor unabsichtlichen Fehlern und Unfällen, Security vor absichtlichen Angriffen
**Lösung:** D

---

## Karte 105: Bedrohung, Schwachstelle und Risiko
**Inhalt:** Eine Bedrohung (Threat) ist ein potenzielles schädigendes Ereignis, eine Schwachstelle (Vulnerability) eine konkrete Schwäche im System. Erst wenn eine Bedrohung auf eine Schwachstelle trifft, entsteht ein reales Risiko, das sich zusätzlich aus der Auswirkung (Impact) ergibt.

**Frage (Leicht):** Wann entsteht laut dem Merksatz der Informationssicherheit ein reales Risiko?
A) Wenn eine Bedrohung auf eine Schwachstelle trifft
B) Nur wenn ein Unternehmen keine Firewall besitzt
C) Sobald irgendeine Schwachstelle im System existiert
D) Ausschließlich bei finanziellen Verlusten
**Lösung:** A

---

## Karte 106: Social Engineering – Pretexting und Baiting
**Inhalt:** Pretexting bedeutet, dass ein Angreifer eine erfundene Identität oder Situation vortäuscht, um Vertrauen aufzubauen (z. B. sich als IT-Support ausgeben). Baiting legt physische oder digitale Köder aus (z. B. einen präparierten USB-Stick), um die Neugier des Opfers auszunutzen.

**Frage (Schwer):** Wie wird die Social-Engineering-Methode genannt, bei der ein präparierter USB-Stick als Köder platziert wird?
A) Pretexting
B) Baiting
C) Quid pro quo
D) Tailgating
**Lösung:** B

---

## Karte 107: Vertikale und horizontale Rechteausweitung
**Inhalt:** Bei der vertikalen Rechteausweitung (Privilege Escalation) erlangt ein Standardbenutzer administrative Rechte. Bei der horizontalen Rechteausweitung erlangt ein Benutzer stattdessen Zugriff auf Ressourcen anderer Benutzer mit derselben Berechtigungsstufe.

**Frage (Leicht):** Was passiert bei einer vertikalen Rechteausweitung (Privilege Escalation)?
A) Zwei Benutzerkonten werden zusammengeführt
B) Ein Benutzer greift auf Daten eines gleichberechtigten Kollegen zu
C) Ein Standardbenutzer erlangt administrative Rechte
D) Ein Administrator verliert automatisch seine Rechte
**Lösung:** C

---

## Karte 108: Kernel Mode vs. User Mode
**Inhalt:** Normale Anwendungen laufen im isolierten, rechtebeschränkten User Mode. Der Betriebssystemkern und kritische Gerätetreiber laufen dagegen im Kernel Mode mit uneingeschränkten Rechten direkt auf der Hardware. Ein Kernel Exploit versucht, vom User Mode in den Kernel Mode zu wechseln.

**Frage (Schwer):** Was unterscheidet den Kernel Mode vom User Mode?
A) Der User Mode hat mehr Rechte als der Kernel Mode
B) Der Kernel Mode wird nur für Grafikanwendungen verwendet
C) Beide Modi besitzen exakt dieselben Berechtigungen
D) Der Kernel Mode läuft mit uneingeschränkten Rechten direkt auf der Hardware
**Lösung:** D

---

## Karte 109: ARP-Spoofing
**Inhalt:** Beim ARP-Spoofing sendet ein Angreifer gefälschte ARP-Antworten in ein lokales Netzwerk, sodass Opfer und Gateway jeweils glauben, die IP-Adresse des anderen gehöre zur MAC-Adresse des Angreifers. Dadurch wird der gesamte Datenverkehr über den Angreifer umgeleitet.

**Frage (Schwer):** Was bewirkt ein erfolgreicher ARP-Spoofing-Angriff im lokalen Netzwerk?
A) Der gesamte Datenverkehr zwischen Opfer und Gateway wird über das System des Angreifers umgeleitet
B) Der DNS-Server des Opfers wird dauerhaft gelöscht
C) Die Festplatte des Opfers wird verschlüsselt
D) Es werden keine praktischen Auswirkungen erzielt
**Lösung:** A

---

## Karte 110: DNS-Spoofing (Cache Poisoning)
**Inhalt:** Beim DNS-Spoofing (Cache Poisoning) werden manipulierte DNS-Daten in den Cache eines DNS-Resolvers eingeschleust. Ruft ein Nutzer eine legitime URL auf, liefert der kompromittierte DNS-Server die IP-Adresse einer vom Angreifer kontrollierten Phishing-Seite statt der echten Adresse.

**Frage (Leicht):** Was geschieht bei einem DNS-Spoofing-Angriff (Cache Poisoning)?
A) Der Angreifer verschlüsselt sämtliche DNS-Anfragen
B) Manipulierte DNS-Daten leiten Nutzer auf eine gefälschte Website des Angreifers um
C) Alle Passwörter werden automatisch zurückgesetzt
D) Der DNS-Server wird physisch zerstört
**Lösung:** B

---

## Karte 111: IP-Spoofing
**Inhalt:** Beim IP-Spoofing manipuliert ein Angreifer das Quell-IP-Feld eines Pakets, um die Identität eines vertrauenswürdigen Systems vorzutäuschen. Da Antwortpakete an die gefälschte IP-Adresse zurückgesendet werden, sieht der Angreifer die Antworten meist nicht – daher wird IP-Spoofing primär für One-Way-Angriffe wie SYN-Floods genutzt.

**Frage (Schwer):** Warum wird IP-Spoofing primär für "One-Way"-Angriffe wie SYN-Floods eingesetzt?
A) Weil nur ein einzelnes Paket pro Angriff versendet werden darf
B) Weil IP-Spoofing ausschließlich mit UDP funktioniert
C) Weil der Angreifer die Antwortpakete wegen der gefälschten Absenderadresse normalerweise nicht empfängt
D) Weil IP-Spoofing gesetzlich nur einmalig erlaubt ist
**Lösung:** C

---

## Karte 112: Cross-Site Request Forgery (CSRF)
**Inhalt:** Bei einem CSRF-Angriff wird der Browser eines bereits authentifizierten Opfers dazu gebracht, unbemerkt eine schädliche Anfrage an eine Webanwendung zu senden. Da der Browser das gültige Sitzungs-Cookie automatisch mitsendet, stuft der Server die Aktion als legitim ein.

**Frage (Leicht):** Was nutzt ein CSRF-Angriff gezielt aus?
A) Eine Schwachstelle im Datenbankserver
B) Eine veraltete Grafikkartentreiber-Version
C) Eine fehlende Internetverbindung des Opfers
D) Das automatische Mitsenden gespeicherter Authentifizierungs-Cookies durch den Browser
**Lösung:** D

---

## Karte 113: Remote Code Execution (RCE)
**Inhalt:** Remote Code Execution erlaubt es einem Angreifer, beliebigen Schadcode über das Netzwerk auf einem entfernten Server auszuführen – oft durch eine sogenannte Reverse Shell, bei der der kompromittierte Server selbst eine Verbindung zum Angreifer aufbaut und ihm eine Befehlszeile übergibt.

**Frage (Schwer):** Was passiert bei einer "Reverse Shell" im Rahmen eines RCE-Angriffs?
A) Der kompromittierte Server baut selbstständig eine Verbindung zum Angreifer auf und übergibt eine Befehlszeile
B) Der Zielserver löscht automatisch alle Logdateien
C) Der Angreifer verbindet sich direkt und unaufgefordert mit dem Zielserver
D) Die Verbindung wird ausschließlich verschlüsselt über HTTPS aufgebaut
**Lösung:** A

---

## Karte 114: Buffer Overflow
**Inhalt:** Ein Buffer Overflow entsteht, wenn ein Programm mehr Daten in einen Speicherpuffer schreibt, als dieser aufnehmen kann. Die überschüssigen Daten überschreiben benachbarte Speicherbereiche, im schlimmsten Fall die Rücksprungadresse auf dem Stack, wodurch ein Angreifer die Programmausführung kapern kann.

**Frage (Leicht):** Wodurch entsteht ein Buffer Overflow?
A) Durch eine zu hohe CPU-Taktfrequenz
B) Dadurch, dass mehr Daten in einen Speicherpuffer geschrieben werden, als dieser aufnehmen kann
C) Durch ein zu kompliziertes Passwort
D) Durch fehlende Netzwerkverschlüsselung
**Lösung:** B

---

## Karte 115: Virus vs. Wurm (Trägerdatei)
**Inhalt:** Ein Computervirus benötigt zwingend eine Trägerdatei und kann sich nicht eigenständig verbreiten. Ein Computerwurm dagegen benötigt keine Trägerdatei und keine Benutzerinteraktion, sondern verbreitet sich vollautomatisch über Netzwerkschwachstellen.

**Frage (Leicht):** Was unterscheidet einen Computerwurm grundlegend von einem klassischen Virus?
A) Ein Wurm ist technisch identisch mit einem Trojaner
B) Ein Wurm kann ausschließlich über USB-Sticks übertragen werden
C) Ein Wurm benötigt keine Trägerdatei und verbreitet sich eigenständig über das Netzwerk
D) Ein Wurm befällt nur Office-Dokumente
**Lösung:** C

---

## Karte 116: Ransomware
**Inhalt:** Ransomware verschlüsselt nach der Infiltration eines Systems mit starken kryptografischen Verfahren (z. B. AES-256) alle erreichbaren Daten und fordert anschließend ein Lösegeld, meist in Kryptowährung, für den Entschlüsselungsschlüssel.

**Frage (Schwer):** Was ist das charakteristische Vorgehen von Ransomware?
A) Sie sammelt ausschließlich Werbedaten des Nutzers
B) Sie dient ausschließlich der Fernwartung von Servern
C) Sie repliziert sich nur über E-Mail-Anhänge, ohne Schaden anzurichten
D) Sie verschlüsselt Daten und fordert für die Entschlüsselung ein Lösegeld
**Lösung:** D

---

## Karte 117: Signaturbasierte vs. heuristische Erkennung
**Inhalt:** Signaturbasierte Erkennung vergleicht Dateien mit einer Datenbank bekannter Malware-Signaturen – präzise, aber wirkungslos gegen neue Zero-Day-Bedrohungen. Heuristische Analyse untersucht dagegen verdächtiges Verhalten und Code-Muster, wodurch auch unbekannte Malware erkannt werden kann, allerdings mit höherem Risiko für Fehlalarme.

**Frage (Schwer):** Welchen Nachteil besitzt die signaturbasierte Malware-Erkennung gegenüber der heuristischen Analyse?
A) Sie kann brandneue Zero-Day-Bedrohungen ohne vorhandene Signatur nicht erkennen
B) Sie benötigt keinerlei Datenbank
C) Sie verursacht deutlich mehr Fehlalarme
D) Sie funktioniert ausschließlich auf Mobilgeräten
**Lösung:** A

---

## Karte 118: ISO 27001 vs. BSI IT-Grundschutz
**Inhalt:** ISO/IEC 27001 ist eine international anerkannte, zertifizierbare Norm mit einem eher abstrakten, prozessorientierten Top-Down-Ansatz für ein ISMS. Der BSI IT-Grundschutz ist ein deutsches Rahmenwerk, das nach einem Baustein-Prinzip sehr konkrete technische und organisatorische Maßnahmen vorgibt.

**Frage (Leicht):** Was zeichnet den BSI IT-Grundschutz im Vergleich zu ISO/IEC 27001 aus?
A) Er ist ausschließlich auf die USA beschränkt
B) Er beschreibt sehr konkret, wie Maßnahmen technisch und organisatorisch umgesetzt werden
C) Er ersetzt vollständig die Notwendigkeit von Firewalls
D) Er ist weniger konkret als ISO 27001
**Lösung:** B

---

## Karte 119: PDCA-Zyklus im ISMS
**Inhalt:** Ein Informationssicherheits-Managementsystem (ISMS) basiert auf dem PDCA-Zyklus: Plan (Risikoanalyse, Ziele definieren), Do (Maßnahmen umsetzen), Check (Wirksamkeit prüfen) und Act (Schwachstellen beheben, Maßnahmen verbessern).

**Frage (Leicht):** Wofür steht das "C" im PDCA-Zyklus eines ISMS?
A) Control (Kontrolle der Mitarbeiter)
B) Create (Erstellen neuer Richtlinien)
C) Check (Prüfen der Wirksamkeit)
D) Compliance (rechtliche Konformität)
**Lösung:** C

---

## Karte 120: Risikoformel
**Inhalt:** In der Risikoanalyse wird das Risiko häufig vereinfacht als Produkt aus Eintrittswahrscheinlichkeit und Schadensausmaß definiert. Je höher beide Faktoren, desto höher das resultierende Risiko und desto dringlicher die Notwendigkeit von Gegenmaßnahmen.

**Frage (Schwer):** Wie wird das Risiko in der IT-Sicherheitsanalyse vereinfacht berechnet?
A) Ausschließlich anhand der Anzahl vorhandener Firewalls
B) Anhand der Anzahl der Mitarbeiter eines Unternehmens
C) Als Summe aller installierten Sicherheitsupdates
D) Als Produkt aus Eintrittswahrscheinlichkeit und Schadensausmaß
**Lösung:** D

---

## Karte 121: Systemhärtung (Hardening)
**Inhalt:** Systemhärtung (Hardening) reduziert die Angriffsfläche eines Systems, indem alle nicht zwingend benötigten Dienste, Ports und Funktionen deaktiviert werden. Leitsatz: "Alles, was nicht explizit erlaubt oder benötigt wird, ist verboten und deaktiviert."

**Frage (Leicht):** Was ist das Grundprinzip der Systemhärtung (Hardening)?
A) Die Angriffsfläche durch Deaktivieren nicht benötigter Dienste und Ports zu minimieren
B) Ausschließlich die Passwortlänge zu erhöhen
C) Möglichst viele Dienste dauerhaft aktiv zu lassen, um Flexibilität zu gewährleisten
D) Regelmäßig neue Server-Hardware anzuschaffen
**Lösung:** A
