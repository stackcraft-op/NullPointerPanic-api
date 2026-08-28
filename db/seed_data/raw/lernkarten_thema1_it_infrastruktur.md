# Thema 1: IT-Infrastruktur & Netzwerke

Lernkarten mit Thema, Inhalt und einer Multiple-Choice-Frage (Schwierigkeit: Leicht/Schwer).

---

## Karte 1: EVA-Prinzip und Rechneraufbau
**Inhalt:** Jedes Computersystem folgt dem EVA-Prinzip: Eingabe → Verarbeitung → Ausgabe. Die Hardware gliedert sich in die Zentraleinheit (CPU, RAM, BIOS, Bussysteme) und die Peripherie (Ein-, Aus- und Ein-/Ausgabegeräte).

**Frage (Leicht):** Wofür steht das "V" im EVA-Prinzip?
A) Verarbeitung
B) Verbindung
C) Verwaltung
D) Verschlüsselung
**Lösung:** A

---

## Karte 2: Von-Neumann-Architektur
**Inhalt:** Die 1946 entwickelte Von-Neumann-Architektur beschreibt den Aufbau moderner Computer aus Steuerwerk, Rechenwerk, Hauptspeicher und Ein-/Ausgabeeinheit. Steuerwerk und Rechenwerk bilden zusammen den Kern moderner Mikroprozessoren.

**Frage (Schwer):** Welches Merkmal ist KEIN Bestandteil der klassischen Von-Neumann-Architektur?
A) Gemeinsamer Speicher für Daten und Programm
B) Getrennte physische Busse für Befehle und Daten (Harvard-Prinzip)
C) Steuerwerk zur Befehlsinterpretation
D) Ein-/Ausgabeeinheit zur Kommunikation mit der Umwelt
**Lösung:** B

---

## Karte 3: Aufbau eines Mikroprozessors
**Inhalt:** Ein Mikroprozessor besteht aus ALU (arithmetisch-logische Operationen), Registern (schnelle interne Speicherstellen), dem Steuerwerk (Control Unit) sowie Bussen für Daten, Adressen und Steuerung.

**Frage (Leicht):** Welche Komponente führt arithmetische und logische Operationen im Prozessor aus?
A) Cache
B) BIOS
C) ALU
D) Chipsatz
**Lösung:** C

---

## Karte 4: Cache-Hierarchie
**Inhalt:** Prozessoren nutzen eine mehrstufige Cache-Hierarchie (L1, L2, L3), die von schnell/klein zu langsamer/größer abgestuft ist. L1 sitzt direkt im Kern, L2 und L3 sind größer, aber langsamer. Caches nutzen SRAM, RAM nutzt DRAM.

**Frage (Schwer):** Warum wird für Caches SRAM statt DRAM verwendet, obwohl DRAM günstiger ist?
A) DRAM ist inkompatibel mit modernen CPU-Sockeln
B) SRAM hat eine höhere Speicherkapazität pro Chipfläche
C) SRAM ist energieeffizienter im Ruhezustand
D) SRAM benötigt keinen ständigen Refresh und ist deutlich schneller
**Lösung:** D

---

## Karte 5: CISC vs. RISC
**Inhalt:** CISC-Prozessoren (z. B. Intel x86) nutzen viele komplexe Befehle, RISC-Prozessoren (z. B. ARM) wenige einfache Befehle mit Pipelining-Vorteilen. Moderne x86-CPUs zerlegen CISC-Befehle intern in RISC-artige Mikroinstruktionen.

**Frage (Schwer):** Was ist ein typischer Nachteil einer reinen RISC-Architektur gegenüber CISC?
A) Programme benötigen mehr Speicherplatz durch mehr Einzelbefehle
B) Höherer Energieverbrauch pro Takt
C) Kein Pipelining möglich
D) Geringere Taktfrequenzen technisch nicht realisierbar
**Lösung:** A

---

## Karte 6: BIOS/UEFI und POST
**Inhalt:** Das BIOS/UEFI ist im ROM gespeichert und startet beim Einschalten automatisch. Es führt den POST (Power-on Self Test) durch und startet danach den Bootloader. UEFI ist der moderne Nachfolger des klassischen BIOS.

**Frage (Leicht):** Wofür steht die Abkürzung POST im Bootvorgang?
A) Primary Output System Test
B) Power-on Self Test
C) Program Operating Start Trigger
D) Peripheral Output Setup Tool
**Lösung:** B

---

## Karte 7: ROM-Typen
**Inhalt:** ROM-Bausteine entwickelten sich von fest verdrahtetem ROM über PROM (einmal programmierbar) und EPROM (UV-löschbar) zu EEPROM und schließlich Flash-EPROM, das heute Standard für BIOS, SSDs und USB-Sticks ist.

**Frage (Schwer):** Welcher ROM-Typ lässt sich ausschließlich durch UV-Licht löschen und danach neu beschreiben?
A) PROM
B) EEPROM
C) EPROM
D) Flash-EPROM
**Lösung:** C

---

## Karte 8: RAID-Level im Überblick
**Inhalt:** RAID 0 (Striping) bietet maximale Performance ohne Redundanz, RAID 1 (Mirroring) maximale Ausfallsicherheit, RAID 5 kombiniert Striping mit Parity (mind. 3 Platten), RAID 6 toleriert zwei Plattenausfälle.

**Frage (Schwer):** Welches RAID-Level toleriert den gleichzeitigen Ausfall von zwei Festplatten?
A) RAID 0
B) RAID 1
C) RAID 5
D) RAID 6
**Lösung:** D

---

## Karte 9: Partitionierung – MBR vs. GPT
**Inhalt:** Der MBR (Master Boot Record) liegt im ersten Sektor und erlaubt maximal 4 primäre Partitionen. GPT (GUID Partitioning Table) ist der moderne Nachfolger mit deutlich mehr Partitionen und 128-Bit-GUIDs.

**Frage (Leicht):** Wie viele primäre Partitionen erlaubt ein klassischer MBR maximal?
A) 4
B) 2
C) 8
D) 16
**Lösung:** A

---

## Karte 10: SSD vs. HDD
**Inhalt:** SSDs nutzen Flash-EPROM ohne mechanische Teile und sind schneller sowie stromsparender als HDDs, die auf rotierenden Magnetscheiben basieren. HDDs nutzen CHS- oder LBA-Adressierung zur Sektorzuordnung.

**Frage (Leicht):** Welches Adressierungsverfahren nummeriert bei Festplatten alle Sektoren fortlaufend statt kuchenförmig?
A) CHS
B) LBA
C) CAV
D) CLV
**Lösung:** B

---

## Karte 11: Optische Datenträger
**Inhalt:** CDs nutzen Standards der "Rainbow Books" (z. B. Yellow Book für CD-ROM), fassen ca. 650–800 MiB. DVDs bieten 4,7 GiB pro Schicht, Blu-ray Discs 25 GiB (Single Layer) bzw. 50 GiB (Double Layer).

**Frage (Schwer):** Welcher CD-Standard ("Rainbow Book") definiert das Format für CD-ROM (Daten)?
A) Red Book
B) Orange Book
C) Yellow Book
D) Blue Book
**Lösung:** C

---

## Karte 12: Druckertechniken
**Inhalt:** Laserdrucker laden eine Trommel per Laser, Toner haftet an und wird durch Hitze fixiert – höchste Druckqualität. Tintenstrahldrucker nutzen Bubble- oder Piezo-Technik. Thermodrucker verfärben Spezialpapier durch Hitze (Belege, aber verblassend).

**Frage (Leicht):** Welche Druckertechnik wird häufig für Kassenbons verwendet, deren Druck mit der Zeit verblasst?
A) Laserdrucker
B) Thermosublimationsdrucker
C) Nadeldrucker
D) Thermodrucker
**Lösung:** D

---

## Karte 13: USB-Standards
**Inhalt:** USB entwickelte sich von USB 1.x (12 MBit/s) über USB 2.0 (480 MBit/s) zu USB 3.0 (≥4,8 GBit/s). USB-C bietet einen umkehrbaren Stecker und kann auch Strom liefern. Alle modernen externen Schnittstellen unterstützen Hot-Plugging.

**Frage (Leicht):** Was bedeutet "Hot-Plugging" bei externen Schnittstellen?
A) Geräte können im laufenden Betrieb an- und abgesteckt werden
B) Das Gerät erwärmt sich während der Datenübertragung
C) Die Datenübertragung erfolgt drahtlos
D) Der Anschluss unterstützt nur eine Steckrichtung
**Lösung:** A

---

## Karte 14: IRQ und DMA
**Inhalt:** IRQ (Interrupt Request) ermöglicht Geräten, die CPU zu unterbrechen und Aufmerksamkeit anzufordern (16 Kanäle). DMA (Direct Memory Access) erlaubt Geräten den direkten Datentransfer zum RAM, ohne die CPU zu belasten.

**Frage (Schwer):** Welchen Vorteil bietet DMA gegenüber einer reinen CPU-gesteuerten Datenübertragung?
A) DMA erhöht die Taktfrequenz der CPU
B) Die CPU wird beim Datentransfer entlastet, da das Gerät direkt auf den RAM zugreift
C) DMA ersetzt die Notwendigkeit von IRQs vollständig
D) DMA funktioniert nur bei drahtlosen Geräten
**Lösung:** B

---

## Karte 15: Serielle vs. parallele Übertragung
**Inhalt:** Bei serieller Übertragung werden Bits nacheinander auf einer Leitung gesendet (dünneres, längeres Kabel), bei paralleler Übertragung mehrere Bits gleichzeitig auf mehreren Leitungen. Seriell ist heute der aktuelle Standard.

**Frage (Leicht):** In welcher Einheit wird die Geschwindigkeit einer seriellen Übertragung typischerweise angegeben?
A) KB/s
B) MB/s
C) Bit/s (bps)
D) Hz
**Lösung:** C

---

## Karte 16: OSI-Referenzmodell
**Inhalt:** Das 1978 von der ISO entwickelte OSI-Modell beschreibt Netzwerkfunktionen in 7 Schichten: Anwendung, Darstellung, Sitzung, Transport, Vermittlung, Sicherung, Bitübertragung. Es beschreibt Funktionen, keine konkreten Protokolle.

**Frage (Leicht):** Auf welcher OSI-Schicht arbeiten MAC-Adressen und Frames?
A) Vermittlungsschicht
B) Bitübertragungsschicht
C) Transportschicht
D) Sicherungsschicht
**Lösung:** D

---

## Karte 17: DDN-Modell (TCP/IP)
**Inhalt:** Das DDN- bzw. DoD-Modell fasst die 7 OSI-Schichten in 4 Schichten zusammen: Anwendungsschicht (HTTP, FTP, DNS), Transportschicht (TCP, UDP), Internetschicht (IP, ICMP, ARP) und Netzzugangsschicht (Ethernet, WLAN).

**Frage (Schwer):** Welches Protokoll gehört im DDN-Modell zur Internetschicht?
A) ARP
B) HTTP
C) TCP
D) Ethernet
**Lösung:** A

---

## Karte 18: Netzwerktopologien
**Inhalt:** Bei der Bus-Topologie hängen alle Geräte an einem Kabelstrang, bei der Stern-Topologie hat jedes Gerät eine eigene Verbindung zu einem zentralen Gerät (Switch). Physikalische und logische Topologie können sich unterscheiden.

**Frage (Schwer):** Warum gilt klassisches Ethernet mit einem Hub als physisch Stern, aber logisch Bus?
A) Ein Hub verwendet zwingend Koaxialkabel
B) Der Hub leitet Daten wie ein Bus an alle Ports gleichzeitig weiter, obwohl die Verkabelung sternförmig ist
C) Logische Topologien existieren nur bei WLAN
D) Der Switch ersetzt beim Hub die physische Verkabelung
**Lösung:** B

---

## Karte 19: Client-Server vs. Peer-to-Peer
**Inhalt:** Beim Client-Server-Modell stellen zentrale Server Ressourcen bereit, die Clients nutzen. Bei Peer-to-Peer (P2P) sind alle Rechner gleichberechtigt und agieren gleichzeitig als Client und Server.

**Frage (Leicht):** Was kennzeichnet ein Peer-to-Peer-Netzwerk?
A) Ein zentraler Server verwaltet alle Ressourcen
B) Es gibt keine Netzwerkverbindung zwischen den Geräten
C) Jeder Rechner kann gleichzeitig Client und Server sein
D) Nur ein Administrator darf Dateien freigeben
**Lösung:** C

---

## Karte 20: Ethernet und CSMA/CD
**Inhalt:** Ethernet (IEEE 802.3) nutzt CSMA/CD zur Kollisionsvermeidung: Die Station lauscht, ob das Netz frei ist, sendet, und erkennt Kollisionen, um danach nach zufälliger Wartezeit erneut zu senden. Switches vermeiden Kollisionen komplett.

**Frage (Schwer):** Wofür steht "CD" in CSMA/CD?
A) Cable Diagnostics
B) Continuous Data
C) Channel Distribution
D) Collision Detection
**Lösung:** D

---

## Karte 21: MAC-Adresse
**Inhalt:** Die MAC-Adresse ist eine 48-Bit-Adresse, die jede Netzwerkkarte weltweit eindeutig identifiziert. Sie wird als 6 hexadezimale Blöcke geschrieben und nicht über das eigene Teilnetz hinaus weitergegeben.

**Frage (Leicht):** Wie viele Bit ist eine MAC-Adresse lang?
A) 48 Bit
B) 32 Bit
C) 64 Bit
D) 128 Bit
**Lösung:** A

---

## Karte 22: Hub vs. Switch
**Inhalt:** Ein Hub verteilt alle Pakete an alle Ports (Kollisionen möglich, logisch Bus), ein Switch baut exklusive Punkt-zu-Punkt-Verbindungen anhand gespeicherter MAC-Adressen auf und sendet nur an den Zielport (keine Kollisionen, logisch Stern).

**Frage (Schwer):** Warum treten bei einem Switch im Gegensatz zu einem Hub praktisch keine Kollisionen auf?
A) Der Switch verwendet ausschließlich Glasfaserkabel
B) Der Switch sendet Daten nur gezielt an den Port mit der passenden MAC-Adresse
C) Der Switch reduziert automatisch die Übertragungsgeschwindigkeit
D) Ein Switch besitzt keine Ports für mehrere Geräte
**Lösung:** B

---

## Karte 23: WLAN-Standards (IEEE 802.11)
**Inhalt:** WLAN-Standards entwickelten sich von 802.11 (1–2 MBit/s) über 802.11g (54 MBit/s, OFDM) zu 802.11n (MIMO, bis 600 MBit/s) und 802.11ac (MU-MIMO, bis 1 GBit/s). WLAN nutzt CSMA/CA statt CSMA/CD.

**Frage (Schwer):** Warum verwendet WLAN CSMA/CA (Collision Avoidance) statt CSMA/CD (Collision Detection) wie Ethernet?
A) CSMA/CA ist historisch älter als CSMA/CD
B) WLAN benötigt aus Lizenzgründen ein anderes Verfahren
C) Funkstationen können während des eigenen Sendens keine Kollisionen auf dem Kanal erkennen
D) WLAN-Geräte senden nie gleichzeitig
**Lösung:** C

---

## Karte 24: CSMA/CA-Ablauf
**Inhalt:** Bei CSMA/CA sendet eine Station zunächst ein RTS (Request to Send), der Empfänger antwortet mit CTS (Clear to Send), danach erfolgt die Datenübertragung, abgeschlossen durch ein ACK-Signal.

**Frage (Leicht):** Welches Signal sendet der Empfänger bei CSMA/CA, um den Kanal freizugeben?
A) RTS
B) SYN
C) ACK
D) CTS
**Lösung:** D

---

## Karte 25: WLAN-Sicherheitsstandards
**Inhalt:** WEP gilt als leicht knackbar und veraltet, WPA verbesserte die Sicherheit, WPA2 ist der aktuell empfohlene Mindeststandard. Zusätzlich kann eine MAC-Whitelist am Access Point den Zugriff einschränken.

**Frage (Leicht):** Welcher WLAN-Sicherheitsstandard gilt heute als veraltet und leicht angreifbar?
A) WEP
B) WPA
C) WPA2
D) AES-256
**Lösung:** A

---

## Karte 26: IPv4-Adressklassen
**Inhalt:** Historisch unterteilte man IPv4-Adressen in Klassen: A (0–127, 16,7 Mio. Hosts), B (128–191, 65.534 Hosts), C (192–223, 254 Hosts) und D (224–239, Multicast). Erste und letzte Adresse eines Netzes sind nicht nutzbar.

**Frage (Schwer):** Wie viele nutzbare Hosts bietet ein klassisches Klasse-C-Netz maximal?
A) 256
B) 254
C) 65.534
D) 16.777.214
**Lösung:** B

---

## Karte 27: Private IP-Adressbereiche
**Inhalt:** Nach RFC 1918 sind bestimmte IP-Bereiche für private Netze reserviert: 10.0.0.0/8 (Klasse A), 172.16.0.0–172.31.0.0 (Klasse B) und 192.168.0.0–192.168.255.0 (Klasse C). Diese werden im Internet nicht geroutet.

**Frage (Leicht):** Welcher IP-Bereich zählt zu den privaten Adressbereichen nach RFC 1918?
A) 8.8.8.8
B) 172.32.0.0
C) 192.168.1.0
D) 1.1.1.1
**Lösung:** C

---

## Karte 28: CIDR und Subnetting
**Inhalt:** CIDR (Classless Inter-Domain Routing) ersetzt seit 1993 die starre Klassenlogik – die Trennlinie zwischen Netz- und Hostteil kann an beliebiger Bit-Grenze liegen (z. B. /24). Subnetting teilt ein Netz in kleinere Teilnetze.

**Frage (Schwer):** Wie viele nutzbare Hosts bietet ein Subnetz mit der Teilnetzmaske /28?
A) 6
B) 62
C) 30
D) 14
**Lösung:** D

---

## Karte 29: Loopback- und Broadcast-Adressen
**Inhalt:** 127.0.0.1 ist die Loopback-Adresse, über die ein Host mit sich selbst kommuniziert. 255.255.255.255 ist die universelle Broadcast-Adresse. 169.254.0.0 wird automatisch vergeben (Link-local), wenn kein DHCP erreichbar ist.

**Frage (Leicht):** Welche IP-Adresse bezeichnet man als "Loopback-Adresse"?
A) 127.0.0.1
B) 0.0.0.0
C) 255.255.255.255
D) 169.254.0.1
**Lösung:** A

---

## Karte 30: TCP – Verbindungsorientiert
**Inhalt:** TCP ist verbindungsorientiert und zuverlässig: Pakete werden nummeriert, per ACK bestätigt und bei Timeout erneut gesendet. Der Verbindungsaufbau erfolgt über den Drei-Wege-Handshake (SYN → SYN/ACK → ACK).

**Frage (Leicht):** Wie lautet die korrekte Reihenfolge des TCP-Drei-Wege-Handshakes?
A) ACK → SYN → SYN/ACK
B) SYN → SYN/ACK → ACK
C) SYN/ACK → SYN → ACK
D) ACK → SYN/ACK → SYN
**Lösung:** B

---

## Karte 31: UDP – Verbindungslos
**Inhalt:** UDP ist verbindungslos und nachrichtenorientiert, verzichtet auf Handshake und Bestätigungen, ist dadurch aber schneller als TCP. Es wird bei Echtzeitanwendungen, Spielen und DNS eingesetzt.

**Frage (Schwer):** Warum wird UDP trotz fehlender Zuverlässigkeit bei DNS-Anfragen oder Online-Spielen bevorzugt?
A) UDP verschlüsselt Daten automatisch besser als TCP
B) UDP garantiert die Reihenfolge der Pakete
C) Der geringere Overhead durch fehlenden Handshake macht UDP schneller
D) UDP funktioniert nur über WLAN
**Lösung:** C

---

## Karte 32: Well-known Ports
**Inhalt:** Bestimmte Ports sind fest definierten Diensten zugeordnet: 22 (SSH), 25 (SMTP), 53 (DNS), 80 (HTTP), 443 (HTTPS). Well-known Ports liegen im Bereich 0–1023, Ephemeral Ports (für Clients) im Bereich 1024–65535.

**Frage (Leicht):** Welcher Port ist standardmäßig für HTTPS reserviert?
A) 21
B) 80
C) 8080
D) 443
**Lösung:** D

---

## Karte 33: DNS-Grundlagen
**Inhalt:** DNS übersetzt menschenlesbare Hostnamen in IP-Adressen. Domainnamen sind hierarchisch aufgebaut (Subdomain.Second-Level-Domain.TLD). Anfragen werden über Provider-, Root- und TLD-Nameserver aufgelöst und gecacht.

**Frage (Schwer):** In welcher Reihenfolge erfolgt die DNS-Auflösung, wenn der lokale Cache und der Provider-Nameserver den Namen nicht kennen?
A) Root-Nameserver → TLD-Server → Zonen-Nameserver
B) TLD-Server → Root-Server → Zonen-Nameserver
C) Zonen-Nameserver → Root-Server → TLD-Server
D) Direkt der Zonen-Nameserver, ohne Root/TLD
**Lösung:** A

---

## Karte 34: DHCP und das DORA-Prinzip
**Inhalt:** DHCP automatisiert die IP-Vergabe über einen vierstufigen Ablauf (DORA): Discover (Client fragt per Broadcast), Offer (Server bietet IP an), Request (Client akzeptiert), Acknowledge (Server bestätigt final).

**Frage (Leicht):** Wofür steht das "O" im DHCP-DORA-Prinzip?
A) Open
B) Offer
C) Option
D) Overwrite
**Lösung:** B

---

## Karte 35: DHCP-Konfigurationsbegriffe
**Inhalt:** Ein DHCP-"Scope" ist ein zusammenhängender IP-Bereich, den der Server vergeben darf. Eine "Reservierung" bindet eine IP fest an eine MAC-Adresse, ein "Ausschluss" (Exclusion) markiert Adressen, die nicht automatisch vergeben werden dürfen.

**Frage (Schwer):** Wie erreicht man, dass ein Netzwerkdrucker trotz aktivem DHCP dauerhaft dieselbe IP-Adresse erhält?
A) Durch Erhöhung der Lease-Dauer auf das Maximum
B) Durch einen DHCP-Ausschluss für den Drucker
C) Durch eine DHCP-Reservierung, die die IP an die MAC-Adresse des Druckers bindet
D) Der Drucker muss dafür manuell außerhalb des Scopes konfiguriert werden und DHCP komplett deaktivieren
**Lösung:** C

---

## Karte 36: NAT und PAT
**Inhalt:** NAT (Network Address Translation) überschreibt private IP-Adressen beim Übergang ins Internet mit einer öffentlichen. Bei IP-Masquerading/PAT teilen sich alle internen Hosts eine externe IP, unterschieden durch Portnummern.

**Frage (Schwer):** Wie unterscheidet PAT (Port Address Translation) mehrere interne Hosts, die dieselbe öffentliche IP-Adresse nutzen?
A) Durch unterschiedliche MAC-Adressen im Internet-Header
B) Durch separate Subnetzmasken pro Host
C) Durch zeitversetztes Senden der Pakete
D) Durch unterschiedliche Portnummern je Verbindung
**Lösung:** D

---

## Karte 37: Routing-Protokolle
**Inhalt:** RIP ist ein einfaches Distanzvektor-Protokoll (max. 15 Hops), OSPF ein Link-State-Protokoll mit Dijkstra-Algorithmus für internes Routing, BGP wird für Routing zwischen autonomen Systemen (extern) eingesetzt.

**Frage (Schwer):** Welches Routing-Protokoll wird typischerweise zwischen unterschiedlichen autonomen Systemen im Internet eingesetzt?
A) BGP
B) OSPF
C) RIP
D) ARP
**Lösung:** A

---

## Karte 38: E-Mail-Protokolle
**Inhalt:** SMTP (Port 25) versendet E-Mails, POP3 (Port 110) lädt E-Mails herunter und löscht sie meist vom Server, IMAP (Port 143) verwaltet E-Mails direkt auf dem Server – ideal für mobile Nutzung mit mehreren Geräten.

**Frage (Leicht):** Welches Protokoll lässt E-Mails standardmäßig auf dem Server, statt sie herunterzuladen und zu löschen?
A) SMTP
B) IMAP
C) POP3
D) FTP
**Lösung:** B

---

## Karte 39: FTP-Grundlagen
**Inhalt:** FTP nutzt Port 21 für die Steuerung und Port 20 für den Datenstrom. Für Textdateien wird der ASCII-Modus verwendet (konvertiert Zeilenumbrüche), für alle anderen Dateien zwingend der Binär-Modus.

**Frage (Schwer):** Warum muss beim FTP-Transfer von Bilddateien der Binär-Modus statt des ASCII-Modus verwendet werden?
A) ASCII-Modus wird von modernen FTP-Servern nicht mehr unterstützt
B) Der Binär-Modus ist grundsätzlich schneller
C) Der ASCII-Modus würde Zeilenumbruch-Konvertierungen vornehmen und Binärdaten dadurch beschädigen
D) Binärdateien benötigen zwingend Port 22
**Lösung:** C

---

## Karte 40: Virtualisierung – Grundlagen
**Inhalt:** Virtualisierung bildet Hardware-Ressourcen softwarebasiert nach: Physikalische Ressourcen eines Hosts werden auf mehrere VMs verteilt. Der Hypervisor steuert den Zugriff der VMs auf die physische Hardware.

**Frage (Leicht):** Welche Softwareschicht steuert bei Virtualisierung den Zugriff der virtuellen Maschinen auf die physische Hardware?
A) Der Bootloader
B) Der Treiber-Stack
C) Das Gastbetriebssystem
D) Der Hypervisor
**Lösung:** D

---

## Karte 41: Hyper-V Ressourcenmanagement
**Inhalt:** Bei Hyper-V können vCPUs überbucht werden (Overprovisioning) – mehr virtuelle Kerne als physisch vorhanden. RAM darf dagegen nicht überbucht werden, um Systemstabilität zu garantieren, kann aber dynamisch zugewiesen werden.

**Frage (Schwer):** Warum erlaubt Hyper-V die Überbuchung von CPU-Kernen, aber nicht von Arbeitsspeicher?
A) CPU-Zeit lässt sich zeitlich aufteilen, RAM-Überbuchung würde jedoch die Systemstabilität gefährden
B) RAM ist grundsätzlich teurer als CPU-Leistung
C) Hyper-V unterstützt technisch keine RAM-Zuweisung an VMs
D) CPU-Kerne können im Gegensatz zu RAM nicht virtualisiert werden
**Lösung:** A

---

## Karte 42: VHD vs. VHDX
**Inhalt:** VHD ist das ältere Hyper-V-Festplattenformat (bis 2 TB), VHDX das moderne Format (bis 64 TB) mit besserer Performance und Schutz vor Datenkorruption. Zudem gibt es feste, dynamische und differenzierende Bereitstellungstypen.

**Frage (Leicht):** Welches virtuelle Festplattenformat von Hyper-V unterstützt bis zu 64 TB Kapazität?
A) VHD
B) VHDX
C) VMDK
D) QCOW2
**Lösung:** B

---

## Karte 43: Hyper-V vSwitches
**Inhalt:** Hyper-V unterscheidet drei virtuelle Switch-Typen: Privat (nur VMs auf demselben Host), Intern (VMs plus Host-Betriebssystem) und Extern (VMs erhalten Zugriff auf das gesamte physische Netzwerk und Internet).

**Frage (Schwer):** Welcher Hyper-V-vSwitch-Typ erlaubt VMs die Kommunikation mit dem physischen Netzwerk und dem Internet?
A) Privat
B) Intern
C) Extern
D) Isoliert
**Lösung:** C

---

## Karte 44: Windows Server Editionen
**Inhalt:** Windows Server Essentials richtet sich an kleine Unternehmen, Standard erlaubt 2 VMs pro lizenziertem Host, Datacenter erlaubt unbegrenzt viele VMs für hochvirtualisierte Umgebungen. Microsoft Hyper-V Server ist eine kostenlose Hypervisor-only-Version.

**Frage (Schwer):** Welche Windows-Server-Edition ist für hochgradig virtualisierte Umgebungen mit unbegrenzt vielen VMs pro Host konzipiert?
A) Essentials
B) Standard
C) Foundation
D) Datacenter
**Lösung:** D

---

## Karte 45: Server Core vs. Desktop-Installation
**Inhalt:** Server Core hat geringeren Ressourcenverbrauch, weniger Angriffsfläche und wird meist über sconfig.cmd oder Remote-Tools verwaltet. Die grafische Oberfläche lässt sich bei modernen Versionen nachträglich nicht einfach installieren.

**Frage (Schwer):** Welchen Sicherheitsvorteil bietet die Server-Core-Installation gegenüber der Desktop-Installation?
A) Sie reduziert die Angriffsfläche durch weniger installierte Komponenten
B) Sie verschlüsselt automatisch alle Festplatten
C) Sie erlaubt keine Netzwerkverbindungen
D) Sie deaktiviert automatisch alle Benutzerkonten außer Administrator
**Lösung:** A

---

## Karte 46: DHCP-Failover
**Inhalt:** Windows Server DHCP-Failover sichert die Verfügbarkeit ab: Bei Lastverteilung teilen sich zwei Server die Arbeit (meist 50/50), bei Hot-Standby übernimmt der zweite Server erst bei Ausfall des ersten.

**Frage (Leicht):** Wie heißt der DHCP-Failover-Modus, bei dem ein Server erst bei Ausfall des anderen aktiv wird?
A) Lastverteilung
B) Hot-Standby
C) Load Balance
D) Clustering
**Lösung:** B

---

## Karte 47: DNS Resource Records
**Inhalt:** Wichtige DNS-Eintragstypen: A verknüpft Hostname mit IPv4, AAAA mit IPv6, CNAME ist ein Alias für einen A-Eintrag, MX gibt den zuständigen Mailserver an, PTR löst umgekehrt eine IP in einen Namen auf (Reverse Lookup).

**Frage (Schwer):** Welcher DNS-Eintragstyp wird für den umgekehrten Weg von einer IP-Adresse zu einem Hostnamen verwendet?
A) A
B) CNAME
C) PTR
D) MX
**Lösung:** C

---

## Karte 48: Rekursive vs. iterative DNS-Abfrage
**Inhalt:** Bei einer rekursiven Abfrage übernimmt der angefragte DNS-Server die komplette Auflösung. Bei einer iterativen Abfrage fragt der Server bei Unkenntnis selbst weitere Server (Root, TLD) an, bis die Antwort feststeht.

**Frage (Schwer):** Warum sollte ein Windows-Domänen-Client als DNS-Server primär seinen lokalen Domänencontroller statt eines externen Servers wie 8.8.8.8 eintragen?
A) Externe DNS-Server sind grundsätzlich langsamer
B) Windows-Clients können technisch keine externen DNS-Server nutzen
C) 8.8.8.8 unterstützt kein IPv4
D) Nur der lokale DC kennt interne AD-Dienste; externe Anfragen werden über Forwarders weitergeleitet
**Lösung:** D

---

## Karte 49: Active Directory – Grundstruktur
**Inhalt:** Active Directory ist der zentrale Verzeichnisdienst in Windows-Netzwerken. Domänen bilden die administrative Grenze, der Forest die oberste Sicherheitsinstanz. Organisationseinheiten (OUs) strukturieren Objekte und ermöglichen gezielte Rechtevergabe.

**Frage (Leicht):** Wie werden Container innerhalb einer Domäne genannt, die zur Strukturierung von Objekten und Rechtevergabe dienen?
A) Organisationseinheiten (OUs)
B) Forests
C) Domain Controller
D) Schemas
**Lösung:** A

---

## Karte 50: AGDLP-Prinzip
**Inhalt:** Das AGDLP-Prinzip beschreibt effiziente Rechtevergabe in Active Directory: Accounts → Global Groups → Domain Local Groups → Permissions. Benutzer werden in globale Gruppen aufgenommen, die wiederum domänenlokalen Gruppen mit Berechtigungen zugewiesen werden.

**Frage (Schwer):** Was beschreibt das AGDLP-Prinzip in Active Directory?
A) Eine Verschlüsselungsmethode für Passwörter
B) Die empfohlene Reihenfolge zur Gruppierung von Benutzern für effiziente Rechtevergabe
C) Ein Protokoll zur DNS-Zonenreplikation
D) Ein Backup-Verfahren für Domain Controller
**Lösung:** B

---

## Karte 51: Gruppenrichtlinien (GPO)
**Inhalt:** GPOs bestehen aus dem GPC (logischer Teil im AD) und dem GPT (physische Dateien im SYSVOL). Sie werden in der Reihenfolge LSDOU (Lokal, Standort, Domäne, OU) angewendet – die zuletzt angewendete Richtlinie gewinnt.

**Frage (Schwer):** Welche Ebene wird bei der GPO-Verarbeitung nach LSDOU zuletzt angewendet und gewinnt damit bei Konflikten?
A) Lokal
B) Standort
C) Organisationseinheit (OU)
D) Domäne
**Lösung:** C

---

## Karte 52: NTFS-Berechtigungshierarchie
**Inhalt:** Bei widersprüchlichen NTFS-Berechtigungen gilt eine feste Priorität: Explizit Verweigern schlägt alles, danach Explizit Zulassen, dann Geerbtes Verweigern, zuletzt Geerbtes Zulassen.

**Frage (Schwer):** Welche NTFS-Berechtigung hat die höchste Priorität, wenn sich Berechtigungen widersprechen?
A) Geerbtes Zulassen
B) Geerbtes Verweigern
C) Explizit Zulassen
D) Explizit Verweigern
**Lösung:** D

---

## Karte 53: Effektive Berechtigungen (Freigabe + NTFS)
**Inhalt:** Greift ein Nutzer übers Netzwerk auf eine Freigabe zu, gilt die restriktivere der beiden Berechtigungen (Freigabe- und NTFS-Berechtigung). Best Practice: Freigabe auf "Jeder – Ändern" setzen, Feinsteuerung nur über NTFS.

**Frage (Leicht):** Ein Nutzer hat auf einer Freigabe "Vollzugriff", aber NTFS-seitig nur "Lesen". Welche Berechtigung gilt effektiv?
A) Lesen
B) Vollzugriff
C) Kein Zugriff
D) Schreiben
**Lösung:** A

---

## Karte 54: Access-Based Enumeration (ABE)
**Inhalt:** ABE sorgt dafür, dass Nutzer im Netzwerk nur Ordner und Dateien sehen, für die sie mindestens Leserechte besitzen – statt eine Fehlermeldung "Zugriff verweigert" beim Anklicken zu erhalten.

**Frage (Schwer):** Welchen praktischen Vorteil bietet Access-Based Enumeration (ABE) in einer Windows-Freigabe?
A) Sie verschlüsselt automatisch alle Dateien
B) Nicht berechtigte Ordner werden für den Nutzer gar nicht erst angezeigt
C) Sie ersetzt NTFS-Berechtigungen vollständig
D) Sie erhöht automatisch die Übertragungsgeschwindigkeit
**Lösung:** B

---

## Karte 55: Unix-Geschichte
**Inhalt:** Unix entstand ca. 1968 bei AT&T Bell Labs, weiterentwickelt an der Universität Berkeley (BSD). Linux wurde ca. 1990 von Linus Torvalds initiiert, basiert auf POSIX, nutzt aber einen eigenständigen, monolithischen Kernel.

**Frage (Leicht):** Wer initiierte die Entwicklung von Linux um 1990?
A) Richard Stallman
B) Ken Thompson
C) Linus Torvalds
D) Dennis Ritchie
**Lösung:** C

---

## Karte 56: BSD-Familie
**Inhalt:** Aus der BSD-Linie gingen spezialisierte Systeme hervor: FreeBSD (High-Performance, Server-Infrastruktur), NetBSD (maximale Portierbarkeit auf viele Hardwarearchitekturen), OpenBSD (kompromisslose Sicherheit und Code-Audits).

**Frage (Schwer):** Welches BSD-Derivat ist besonders für seinen Fokus auf Sicherheit und proaktive Code-Audits bekannt?
A) FreeBSD
B) NetBSD
C) Devuan
D) OpenBSD
**Lösung:** D

---

## Karte 57: Linux-Kernel-Härtung (SELinux/AppArmor)
**Inhalt:** SELinux ist ein von der NSA entwickeltes Mandatory-Access-Control-System (Standard bei RHEL/CentOS). AppArmor ist die einfachere, pfadbasierte MAC-Alternative (Standard bei Debian/Ubuntu).

**Frage (Schwer):** Welches Mandatory-Access-Control-System ist standardmäßig bei Debian/Ubuntu im Einsatz und gilt als einfacher als SELinux?
A) AppArmor
B) SELinux
C) GRSEC
D) PaX
**Lösung:** A

---

## Karte 58: "Everything is a file"-Prinzip
**Inhalt:** Unter Linux/Unix gilt: fast alles ist eine Datei, auch Hardwarekomponenten – Gerätetreiber liegen als Gerätedateien im Verzeichnis /dev. Zudem gibt es keine Laufwerksbuchstaben, alles beginnt im Wurzelverzeichnis /.

**Frage (Leicht):** In welchem Verzeichnis liegen unter Linux typischerweise die Gerätedateien?
A) /etc
B) /dev
C) /var
D) /bin
**Lösung:** B

---

## Karte 59: Container vs. Jails
**Inhalt:** Linux-Container (z. B. Docker) nutzen Namespaces und Cgroups zur Isolation, teilen sich aber den Kernel mit dem Host. FreeBSD-Jails sind ein älteres, ausgereifteres Konzept mit eigenen root-Verzeichnissen, IPs und Benutzerdatenbanken.

**Frage (Schwer):** Was unterscheidet FreeBSD-Jails grundlegend von klassischen Linux-Containern wie Docker?
A) Docker-Container teilen sich niemals den Kernel mit dem Host
B) Jails benötigen zwingend eine grafische Oberfläche
C) Jails bieten historisch eine strengere Sicherheitsisolation mit eigenem root-Verzeichnis und eigener Benutzerdatenbank
D) Jails funktionieren ausschließlich unter Windows
**Lösung:** C

---

## Karte 60: DMZ und Bastion-Host
**Inhalt:** Eine DMZ (Demilitarisierte Zone) isoliert öffentlich erreichbare Server (z. B. Webserver) vom internen LAN. Ein Bastion-Host ist ein gehärteter Gateway-Server, über den administrativer Zugriff von außen ausschließlich erfolgen darf.

**Frage (Leicht):** Wozu dient eine DMZ in einer Netzwerkarchitektur?
A) Sie beschleunigt interne Datenübertragungen
B) Sie verschlüsselt automatisch den gesamten Datenverkehr
C) Sie ersetzt die Notwendigkeit einer Firewall
D) Sie isoliert öffentlich erreichbare Server vom internen Netzwerk
**Lösung:** D

---

## Karte 61: Linux-Dateisysteme im Vergleich
**Inhalt:** ext4 ist Standard unter Linux mit Journaling (verhindert Dateninkonsistenz bei Stromausfall). ext2 hat kein Journaling und ist anfällig bei Abstürzen. ZFS unter FreeBSD vereint Dateisystem und Volume-Manager mit RAID-Z, Snapshots und Copy-on-Write.

**Frage (Schwer):** Welchen Vorteil bietet ein Journaling-Dateisystem wie ext4 gegenüber ext2 bei einem plötzlichen Stromausfall?
A) Es verhindert inkonsistente Dateizustände und macht einen langwierigen Full-fsck überflüssig
B) Es verdoppelt automatisch die Schreibgeschwindigkeit
C) Es benötigt keinerlei Partitionierung
D) Es funktioniert nur mit SSDs
**Lösung:** A

---

## Karte 62: Filesystem Hierarchy Standard (FHS)
**Inhalt:** Der FHS definiert Standardverzeichnisse unter Linux/Unix: /etc für Konfigurationsdateien, /home für Benutzerverzeichnisse, /var für variable Daten wie Logfiles, /tmp für temporäre Dateien, /root für den Administrator.

**Frage (Leicht):** In welchem Verzeichnis liegen unter Linux typischerweise die Logdateien?
A) /etc
B) /var
C) /bin
D) /home
**Lösung:** B

---

## Karte 63: Linux-Dateiberechtigungen (rwx)
**Inhalt:** Berechtigungen gliedern sich in Owner (u), Group (g) und Others (o) mit Read (r), Write (w) und Execute (x). Ein Eintrag wie -rwxr-xr-- bedeutet: Besitzer voller Zugriff, Gruppe lesen/ausführen, andere nur lesen.

**Frage (Schwer):** Was bedeutet die Rechteangabe "-rwxr-xr--" bei einer Datei?
A) Alle Nutzer haben identische Vollrechte
B) Besitzer: r--, Gruppe: r-x, Andere: rwx
C) Besitzer: rwx, Gruppe: r-x, Andere: r--
D) Es handelt sich um ein Verzeichnis mit vollem Zugriff für alle
**Lösung:** C

---

## Karte 64: chmod und Rechtevergabe
**Inhalt:** Mit chmod lassen sich Dateiberechtigungen numerisch (z. B. chmod 755) oder symbolisch ändern. chown ändert Besitzer und Gruppe, chgrp nur die Gruppenzugehörigkeit einer Datei.

**Frage (Leicht):** Welcher Befehl ändert unter Linux die Dateiberechtigungen?
A) chown
B) chgrp
C) chattr
D) chmod
**Lösung:** D

---

## Karte 65: Pipes und Umlenkungen
**Inhalt:** Der Operator > schreibt STDOUT in eine Datei (überschreibt), >> hängt an. Der Pipe-Operator | leitet die Ausgabe eines Befehls direkt als Eingabe an den nächsten weiter, 2> lenkt ausschließlich STDERR um.

**Frage (Schwer):** Was bewirkt der Befehl `mkdir /root 2> /dev/null`?
A) Er erstellt das Verzeichnis /root und leitet eventuelle Fehlermeldungen ins Leere
B) Er löscht das Verzeichnis /root vollständig
C) Er zeigt nur Fehlermeldungen auf dem Bildschirm an
D) Er leitet die Standardausgabe in eine Log-Datei um
**Lösung:** A

---

## Karte 66: Fork, Exec und Source
**Inhalt:** Ein Subprozess (fork) erzeugt einen isolierten Kindprozess – Änderungen darin wirken sich nicht auf die Elternshell aus. `exec` ersetzt den aktuellen Prozess vollständig (gleiche PID, kein Rücksprung). `source`/`.` liest ein Skript im aktuellen Prozesskontext ein.

**Frage (Schwer):** Warum bleiben Umgebungsvariablen nach dem Ausführen eines Skripts mit `source ~/.bashrc` in der aktuellen Shell erhalten, bei `./script.sh` aber nicht?
A) `source` speichert Variablen automatisch dauerhaft auf der Festplatte
B) `source` führt das Skript im selben Prozesskontext aus, `./script.sh` startet einen isolierten Subprozess
C) `./script.sh` funktioniert nur mit Root-Rechten
D) Es gibt keinen Unterschied zwischen beiden Methoden
**Lösung:** B

---

## Karte 67: Unix-Signale
**Inhalt:** SIGTERM (-15) fordert einen Prozess kontrolliert zum Beenden auf und erlaubt Aufräumarbeiten. SIGKILL (-9) erzwingt sofortigen Abbruch ohne Abfangmöglichkeit. SIGSTOP (-19) friert einen Prozess ein, SIGCONT (-18) weckt ihn wieder auf.

**Frage (Schwer):** Warum sollte SIGTERM (-15) einem SIGKILL (-9) vorgezogen werden, um einen Prozess zu beenden?
A) SIGTERM ist schneller als SIGKILL
B) SIGKILL funktioniert nur bei Root-Prozessen
C) SIGTERM erlaubt dem Prozess, Daten zu sichern und Verbindungen sauber zu schließen
D) SIGKILL kann von keinem Prozess gesendet werden
**Lösung:** C

---

## Karte 68: /etc/passwd-Struktur
**Inhalt:** Jede Zeile in /etc/passwd folgt dem Schema USER:X:UID:GID:FULLNAME:HOMEDIR:SHELL. Das "X" zeigt an, dass der echte Passwort-Hash geschützt in /etc/shadow liegt, die nur für Root lesbar ist.

**Frage (Schwer):** Warum enthält /etc/passwd nur ein "X" statt des tatsächlichen Passwort-Hashes?
A) Es handelt sich um einen veralteten Platzhalter ohne Funktion
B) Passwörter werden unter Linux grundsätzlich nicht gespeichert
C) "X" bedeutet, dass der Account deaktiviert ist
D) Das echte Passwort liegt aus Sicherheitsgründen in der nur für Root lesbaren Datei /etc/shadow
**Lösung:** D

---

## Karte 69: su vs. su -
**Inhalt:** `su user` wechselt den Benutzerkontext, behält aber die Umgebungsvariablen des ursprünglichen Nutzers bei (kann zu Pfadkonflikten führen). `su -` lädt die vollständige, native Umgebung des Zielbenutzers und ist im Admin-Alltag zu bevorzugen.

**Frage (Schwer):** Warum wird `su - root` gegenüber einfachem `su root` im administrativen Alltag empfohlen?
A) `su -` lädt die saubere, native Systemumgebung des Root-Users statt der alten Umgebungsvariablen
B) `su -` ist schneller in der Ausführung
C) `su root` funktioniert nur bei deaktiviertem SELinux
D) Es gibt keinen praktischen Unterschied
**Lösung:** A

---

## Karte 70: visudo
**Inhalt:** visudo ist der einzig sichere Befehl zum Bearbeiten der /etc/sudoers-Datei. Er prüft beim Speichern die Syntax und blockiert das Speichern bei Fehlern, was ein versehentliches Aussperren des Administrators verhindert.

**Frage (Leicht):** Welcher Befehl sollte ausschließlich zum Bearbeiten der Sudo-Konfiguration verwendet werden?
A) vi /etc/sudoers
B) visudo
C) nano /etc/sudoers
D) chmod /etc/sudoers
**Lösung:** B

---

## Karte 71: Vim-Modi
**Inhalt:** Vim arbeitet strikt modal: Normalmodus (Bewegen, Löschen von Zeilen), Insert-Modus (Texteingabe, Start mit i/a/o), Command-Modus (Speichern/Beenden über :). Mit ESC springt man zurück in den Normalmodus.

**Frage (Leicht):** Mit welcher Taste wechselt man in Vim vom Insert-Modus zurück in den Normalmodus?
A) TAB
B) STRG+C
C) ESC
D) ENTER
**Lösung:** C

---

## Karte 72: Vim-Speicherbefehle
**Inhalt:** Im Command-Modus speichert `:w` die Datei, `:q` beendet Vim (nur ohne ungesicherte Änderungen), `:wq!` speichert und erzwingt das Beenden inklusive Überschreiben.

**Frage (Schwer):** Was bewirkt der Vim-Befehl `:wq!` im Vergleich zu `:wq`?
A) Er funktioniert nur im Insert-Modus
B) Er verwirft alle Änderungen ohne zu speichern
C) Er öffnet eine neue Datei
D) Er speichert und erzwingt zusätzlich das Beenden bzw. Überschreiben, auch bei Konflikten
**Lösung:** D

---

## Karte 73: Die 3-2-1-Backup-Regel
**Inhalt:** Die 3-2-1-Regel für Backups: 3 Kopien der Daten (1 Produktivbestand + 2 Backups), auf 2 verschiedenen Medientypen, davon mindestens 1 Kopie extern/räumlich getrennt gelagert.

**Frage (Leicht):** Wie viele Datenkopien fordert die 3-2-1-Backup-Regel mindestens?
A) 3
B) 2
C) 1
D) 5
**Lösung:** A

---

## Karte 74: rsync Trailing-Slash-Problematik
**Inhalt:** Bei rsync entscheidet ein Schrägstrich am Ende des Quellpfades über die Zielstruktur: Ohne "/" wird der Quellordner selbst im Ziel neu angelegt, mit "/" werden nur die Inhalte flach ins Ziel kopiert.

**Frage (Schwer):** Was passiert bei `rsync -a /home/user/daten/ /ziel/` (mit Trailing Slash an der Quelle)?
A) Der Ordner "daten" wird komplett im Ziel neu erstellt
B) Nur die Inhalte von "daten" werden direkt ins Zielverzeichnis kopiert, ohne neuen Unterordner
C) Der Befehl schlägt grundsätzlich fehl
D) Es wird automatisch ein Backup des Ziels erstellt
**Lösung:** B

---

## Karte 75: SSH-Absicherung
**Inhalt:** Für passwortlose, sichere Authentifizierung wird ein SSH-Schlüsselpaar (z. B. Ed25519) generiert und der Public Key auf dem Zielserver in ~/.ssh/authorized_keys hinterlegt. Passwort-Logins sollten danach in produktiven Umgebungen deaktiviert werden.

**Frage (Schwer):** Warum sollte nach Verteilung von SSH-Schlüsseln die Passwort-Authentifizierung in sshd_config deaktiviert werden?
A) SSH funktioniert ohne Schlüssel grundsätzlich nicht mehr
B) Passwort-Logins verbrauchen mehr Bandbreite
C) Um Brute-Force-Angriffe auf Passwörter zu verhindern und nur noch sichere Schlüssel-Logins zuzulassen
D) Es ist gesetzlich vorgeschrieben
**Lösung:** C

---

## Karte 76: Zahlensysteme – Stellenwertsystem
**Inhalt:** In einem Stellenwertsystem hat jede Ziffer einen Wert abhängig von ihrer Position (Stellenwert = Basis hoch Position). Die Basis bestimmt den Ziffernvorrat: 10 im Dezimalsystem, 2 im Binärsystem, 16 im Hexadezimalsystem.

**Frage (Leicht):** Wie viele unterschiedliche Ziffern gibt es im binären Zahlensystem?
A) 16
B) 8
C) 10
D) 2
**Lösung:** D

---

## Karte 77: Umrechnung Dezimal nach Binär (Restwertverfahren)
**Inhalt:** Zur Umrechnung einer Dezimalzahl in ein anderes Zahlensystem wird fortlaufend durch die Basis geteilt, die Reste von unten nach oben gelesen ergeben die neue Zahl. Der Rest ist dabei maximal Basis − 1.

**Frage (Schwer):** Wie lautet die Dezimalzahl 27 im Binärsystem?
A) 11011
B) 11010
C) 11100
D) 10111
**Lösung:** A

---

## Karte 78: Hexadezimalsystem
**Inhalt:** Im Hexadezimalsystem entspricht jedes halbe Byte (4 Bit) genau einer hexadezimalen Stelle. Werte über 9 werden durch Buchstaben A–F dargestellt (z. B. 1010 binär = A hexadezimal).

**Frage (Leicht):** Wie viele Bit entsprechen genau einer Stelle im Hexadezimalsystem?
A) 2 Bit
B) 4 Bit
C) 8 Bit
D) 16 Bit
**Lösung:** B

---

## Karte 79: Bit und Byte
**Inhalt:** Ein Bit kann 2 Zustände darstellen (2¹), n Bits können 2ⁿ Zustände darstellen. 8 Bit ergeben 1 Byte mit 256 möglichen Zeichen/Zuständen (2⁸).

**Frage (Leicht):** Wie viele unterschiedliche Zustände lassen sich mit 8 Bit darstellen?
A) 8
B) 64
C) 256
D) 1024
**Lösung:** C

---

## Karte 80: KiB vs. KB
**Inhalt:** Im binären System entsprechen 1024 Byte einem Kibibyte (KiB), während im dezimalen System 1000 Byte einem Kilobyte (KB) entsprechen. Diese Unterscheidung führt häufig zu Verwirrung bei Festplattengrößen (Verkauf in KB/MB/GB, Anzeige in KiB/MiB/GiB).

**Frage (Schwer):** Warum zeigt Windows eine als "1 TB" verkaufte Festplatte oft als kleiner an (z. B. 931 GB)?
A) Es handelt sich um einen Anzeigefehler ohne technischen Grund
B) Die Festplatte ist defekt
C) Windows rundet grundsätzlich ab
D) Der Hersteller verwendet dezimale Einheiten (1000er-Basis), Windows zeigt binäre Einheiten (1024er-Basis) an
**Lösung:** D

---

## Karte 81: Komplementrechnung
**Inhalt:** Statt zu subtrahieren, kann man zur höchsten Ziffer ergänzen, addieren, das Komplement 1 hinzuaddieren und den Übertrag streichen. Im Binärsystem bedeutet Ergänzen einfach das Invertieren aller Bits (1↔0).

**Frage (Schwer):** Wie ergänzt man bei der Komplementrechnung im Binärsystem eine Ziffer?
A) Man vertauscht 0 und 1 (Invertierung)
B) Man addiert immer 10 zur Ziffer
C) Man multipliziert die Ziffer mit 2
D) Man ergänzt zur nächsten geraden Zahl
**Lösung:** A

---

## Karte 82: Server- und Peripherie-Typen
**Inhalt:** Wichtige Servertypen sind DNS-Server, Webserver, Mailserver, DB-Server, DHCP-Server und Proxy-Server. Ein Server ist dabei nicht zwangsläufig ein eigener Rechner, sondern ein Dienst, der Funktionalität bereitstellt.

**Frage (Leicht):** Welche Aussage über einen "Server" trifft grundsätzlich zu?
A) Ein Server ist immer ein eigenständiger, physischer Rechner
B) Ein Server ist ein Programm/Dienst, der im Hintergrund Funktionalität bereitstellt
C) Ein Server kann niemals mehrere Dienste gleichzeitig anbieten
D) Server benötigen zwingend eine grafische Oberfläche
**Lösung:** B

---

## Karte 83: USV-Überbrückungszeit berechnen
**Inhalt:** Die Überbrückungszeit einer USV ergibt sich aus verfügbarer Energie (Ladungsmenge × Spannung × Restladungs-Faktor) geteilt durch die angeschlossene Leistung. Bei 4 Servern à 850 W (=3400 W) und 220 Ah/12 V-Akkus ergeben sich rund 37 Minuten bis 20 % Restladung.

**Frage (Schwer):** Eine USV mit 220 Ah bei 12 V soll bei 100 % geladen 3.400 W bis zu einer Restladung von 20 % versorgen. Welche Formel liefert die Überbrückungszeit in Stunden?
A) 3400W / (220Ah × 12V)
B) (220Ah × 12V) × 0,2 / 3400W
C) (220Ah × 12V × 0,8) / 3400W
D) 220Ah × 12V × 3400W
**Lösung:** C

---

## Karte 84: RAID-10 Speicherkosten berechnen
**Inhalt:** Bei RAID-10-Kostenberechnungen wird die Nettospeicherkapazität durch die Anzahl der Festplatten geteilt, um den Speicheranteil je Platte zu ermitteln, multipliziert mit dem maximal zulässigen Preis pro GiB.

**Frage (Schwer):** Ein RAID-10 mit 6 Festplatten soll 15 TiB Netto liefern, maximal 15 Cent/GiB dürfen die Platten kosten. Wie berechnet sich der maximale Preis je Festplatte?
A) 15 TiB × 0,15€ × 6 / 1024
B) 15 TiB / 6 × 0,15€ / 1024
C) 15 TiB × 6 × 0,15€ / 1024
D) 15 TiB × 1024 × 0,15€ / 6
**Lösung:** D

---

## Karte 85: MTBF-Berechnung für Festplattenverbund
**Inhalt:** Der MTBF-Wert (Mean Time Between Failures) eines Festplattenverbunds sinkt mit der Anzahl der Festplatten, da jede zusätzliche Platte das Gesamtausfallrisiko erhöht: MTBF_Verbund = MTBF_Einzelplatte / Anzahl Platten.

**Frage (Schwer):** Ein Verbund aus 16 Festplatten mit je 800.000 Stunden MTBF läuft 24/7. Wie berechnet man den MTBF-Wert des Verbunds in Jahren?
A) 800.000 Std / (16 × 24 Std/Tag × 365 Tage/Jahr)
B) 800.000 Std × 16 / (24 × 365)
C) 800.000 Std / 16 in Stunden, ohne weitere Umrechnung
D) 800.000 Std × 24 × 365 / 16
**Lösung:** A

---

## Karte 86: Bandbreiten- und Downloadzeit-Berechnung
**Inhalt:** Bei Übertragungszeit-Berechnungen muss zwischen MiB/GiB (binär, 1024er-Basis) und Mbit/s (dezimal, 1000er-Basis) sauber umgerechnet werden: Zeit = (Datenmenge in MiB × 1024² × 8) / (1000² × Bandbreite in Mbit/s).

**Frage (Schwer):** Eine 125-MiB-Datei soll über eine 40-Mbit/s-Upload-Leitung übertragen werden. Welche Formel liefert die Übertragungszeit in Sekunden korrekt?
A) 125 × 1000² × 8 / (1024² × 40)
B) 125 × 1024² × 8 / (1000² × 40)
C) 125 / 40
D) 125 × 8 / 40
**Lösung:** B

---

## Karte 87: USV-Typen (Online, Offline, Line-Interactive)
**Inhalt:** Unterbrechungsfreie Stromversorgungen (USV) werden nach IEC-Norm in drei Kategorien eingeteilt: VFD (Voltage and Frequency Dependent, "Offline") schaltet erst bei Störung auf Batterie um; VI (Voltage Independent, "Line-Interactive") gleicht Spannungsschwankungen zusätzlich über einen Trafo/AVR aus, ohne Dauerumwandlung; VFI (Voltage and Frequency Independent, "Online") wandelt den Strom permanent über Gleich- und Wechselrichter um und bietet damit den besten, aber teuersten Schutz.

**Frage (Schwer):** Welche USV-Abkürzung steht für die "Online"-USV mit permanenter Doppelwandlung?
A) VFD
B) VI
C) VFI
D) UPS
**Lösung:** C

---

## Karte 88: Horizontale vs. vertikale Skalierung
**Inhalt:** Bei der vertikalen Skalierung ("Scale up") wird die Leistung eines einzelnen Servers erhöht (mehr CPU/RAM). Bei der horizontalen Skalierung ("Scale out") werden zusätzliche Server parallel hinzugefügt, meist hinter einem Load Balancer verteilt – das erhöht Ausfallsicherheit und Kapazität, erfordert aber eine Architektur, die mit mehreren Instanzen umgehen kann.

**Frage (Leicht):** Wie wird das Hinzufügen zusätzlicher Server zur Lastverteilung bezeichnet?
A) Vertikale Skalierung
B) Fail-Over-Clustering
C) Load Shedding
D) Horizontale Skalierung
**Lösung:** D

---

## Karte 89: Blue-Green Deployment
**Inhalt:** Beim Blue-Green Deployment existieren zwei identische Umgebungen (Blue und Green). Während eine Umgebung produktiv läuft (Live), wird die neue Version in der anderen Umgebung getestet (Staging). Nach erfolgreichem Test schaltet der Load Balancer den Traffic um – dadurch sind Updates ohne Ausfallzeit möglich, und ein Rollback ist durch einfaches Zurückschalten jederzeit möglich.

**Frage (Schwer):** Was ist der zentrale Vorteil von Blue-Green Deployment gegenüber einem klassischen Update "in place"?
A) Updates erfolgen unterbrechungsfrei und ein schneller Rollback ist möglich
B) Es benötigt nur die Hälfte des Speicherplatzes
C) Es macht Tests der neuen Version vollständig überflüssig
D) Es funktioniert ausschließlich mit Datenbanken
**Lösung:** A

---

## Karte 90: RAID-6 Festplattenbedarf berechnen
**Inhalt:** RAID 6 verwendet doppelte, verteilte Parität und toleriert den Ausfall von zwei Festplatten gleichzeitig. Die nutzbare Kapazität berechnet sich als (Anzahl Platten − 2) × Kapazität pro Platte. Bei einer benötigten Nettokapazität von z. B. 10 TiB und Platten mit 1 TiB Kapazität werden somit mindestens 12 Platten benötigt (10 Nutzplatten + 2 Paritätsplatten).

**Frage (Schwer):** Wie viele 1-TiB-Festplatten werden mindestens für einen RAID-6-Verbund mit 9,7 TiB nutzbarer Kapazität benötigt (aufgerundet)?
A) 10
B) 12
C) 11
D) 14
**Lösung:** B

---

## Karte 91: Hot-Spare-Festplatte
**Inhalt:** Eine Hot-Spare-Festplatte ist eine im laufenden Betrieb bereits eingebaute, aber inaktive Reservefestplatte in einem RAID-Verbund. Fällt eine aktive Platte aus, übernimmt der Controller automatisch die Hot-Spare-Platte und startet sofort den Rebuild-Vorgang, ohne dass ein Administrator manuell eingreifen oder eine neue Platte einbauen muss.

**Frage (Leicht):** Was passiert bei Ausfall einer aktiven Platte, wenn eine Hot-Spare-Platte vorhanden ist?
A) Die Hot-Spare-Platte muss manuell aktiviert werden
B) Das gesamte RAID-System wird sofort abgeschaltet
C) Der Controller nimmt automatisch die Hot-Spare-Platte in Betrieb und startet den Rebuild
D) Es passiert nichts, bis ein Administrator die Platte physisch tauscht
**Lösung:** C

---

## Karte 92: Task-Scheduler (Windows) automatisierte Aufgaben
**Inhalt:** Mit dem Kommandozeilenwerkzeug SCHTASKS lassen sich unter Windows geplante Aufgaben erstellen, abfragen, ändern und löschen. Wichtige Parameter sind /Create (neue Aufgabe anlegen), /TN (Taskname), /SC (Zeitplantyp wie DAILY, WEEKLY, HOURLY, ONCE, ONSTART), /TR (auszuführendes Programm) und /ST (Startzeit im 24h-Format).

**Frage (Schwer):** Welcher Parameter legt bei SCHTASKS fest, welches Programm ausgeführt werden soll?
A) /SC
B) /TN
C) /ST
D) /TR
**Lösung:** D

---

## Karte 93: SAN-Speicherkapazität planen
**Inhalt:** Bei der Dimensionierung eines Storage Area Networks (SAN) müssen Altdatenbestand, jährlicher Datenzuwachs über die geplante Nutzungsdauer sowie ein Sicherheitspuffer durch die maximale Auslastung berücksichtigt werden. Formel: benötigte Bruttokapazität = (Altdatenbestand + Zuwachs × Jahre) / maximale Auslastung (z. B. 90 %).

**Frage (Schwer):** Ein SAN speichert aktuell 8 TiB bei 90 % Auslastung, der jährliche Zuwachs beträgt 450 GiB, Planungszeitraum 5 Jahre. Wie hoch ist die benötigte Nettospeicherkapazität (Altdaten + Zuwachs) ungefähr?
A) ca. 10,2 TiB
B) ca. 8,45 TiB
C) ca. 12,0 TiB
D) ca. 6,75 TiB
**Lösung:** A

---

## Karte 94: Inkrementelle vs. differenzielle Datensicherung
**Inhalt:** Bei der inkrementellen Sicherung wird nur das gesichert, was sich seit der letzten Sicherung (voll oder inkrementell) geändert hat – schnell, aber die Wiederherstellung benötigt alle Teilsicherungen in Reihenfolge. Bei der differenziellen Sicherung wird alles gesichert, was sich seit der letzten Vollsicherung geändert hat – die Sicherungen werden mit der Zeit größer, die Wiederherstellung benötigt aber nur die Vollsicherung plus die letzte differenzielle Sicherung.

**Frage (Leicht):** Welcher Vorteil spricht für die differenzielle gegenüber der inkrementellen Datensicherung?
A) Sie benötigt weniger Speicherplatz
B) Die Wiederherstellung benötigt nur die Vollsicherung und die letzte differenzielle Sicherung
C) Sie sichert grundsätzlich schneller als jede inkrementelle Sicherung
D) Sie benötigt keine Vollsicherung
**Lösung:** B

---

## Karte 95: RTO und RPO in der Notfallwiederherstellung
**Inhalt:** Die Recovery Time Objective (RTO) definiert die maximal tolerierbare Zeitspanne, bis ein Geschäftsprozess nach einem Ausfall wiederhergestellt sein muss. Die Recovery Point Objective (RPO) definiert den maximal tolerierbaren Datenverlust, gemessen als Zeitspanne seit der letzten gesicherten Kopie – sie bestimmt damit, wie oft Backups mindestens erfolgen müssen.

**Frage (Schwer):** Ein Unternehmen sichert täglich um Mitternacht. Welche RPO ergibt sich daraus im schlimmsten Fall?
A) 0 Stunden
B) Ca. 1 Stunde
C) Ca. 24 Stunden
D) RPO ist von der Sicherungshäufigkeit unabhängig
**Lösung:** C

---

## Karte 96: Sicherheitsrelevante Server-Konfigurationsbereiche
**Inhalt:** Beim sicheren Bereitstellen eines Servers werden typischerweise mehrere Bereiche abgesichert: Server-Hardware (z. B. Boot-Reihenfolge ändern, Secure Boot aktivieren), Installation/Konfiguration des Betriebssystems (z. B. nur benötigte Rollen installieren, Updates einspielen), Dienste und Features (nur benötigte Dienste aktivieren, Standard-Ports ändern), Anmeldung (starke Passwortrichtlinien, MFA) und laufende Administration (Logging, minimale Rechtevergabe).

**Frage (Leicht):** Welche Maßnahme gehört zum Bereich "Server-Hardware" bei der sicheren Bereitstellung?
A) Vergabe minimaler Benutzerrechte
B) Einrichten von Multi-Faktor-Authentifizierung
C) Deaktivieren nicht benötigter Dienste
D) Aktivierung von Secure Boot
**Lösung:** D

---

## Karte 97: Die vier Computergenerationen
**Inhalt:** Elektronische Computer werden in vier Generationen eingeteilt: 1. Generation Röhrenrechner (ab den 1940er-Jahren), 2. Generation Transistorrechner (ab den 1950ern), 3. Generation Rechner mit integrierten Schaltkreisen/ICs (ab den 1960ern), 4. Generation Rechner mit Mikroprozessor (ab den frühen 1970ern).

**Frage (Leicht):** Welches Bauelement kennzeichnet die vierte Computergeneration?
A) Mikroprozessor
B) Elektronenröhre
C) Transistor
D) Relais
**Lösung:** A

---

## Karte 98: Von-Neumann-Architektur
**Inhalt:** Ein Von-Neumann-Rechner besteht laut dem 1946 von John von Neumann aufgestellten Konzept aus Steuerwerk (liest und interpretiert Befehle), Rechenwerk (führt arithmetische/logische Operationen aus), Hauptspeicher (enthält Programm und Daten) sowie Ein-/Ausgabeeinheit.

**Frage (Schwer):** Welche der folgenden Komponenten gehört NICHT zu den klassischen Elementen des Von-Neumann-Konzepts?
A) Steuerwerk
B) Cache-Speicher
C) Rechenwerk
D) Hauptspeicher
**Lösung:** B

---

## Karte 99: RISC vs. CISC
**Inhalt:** RISC-Prozessoren (Reduced Instruction Set Computer) verwenden einen verkleinerten, einfacheren Befehlssatz, wodurch jeder einzelne Befehl schneller ausgeführt werden kann. CISC-Prozessoren (Complex Instruction Set Computer) bieten dagegen einen umfangreicheren Befehlssatz mit komplexeren Einzelbefehlen.

**Frage (Schwer):** Welche Aussage über RISC-Prozessoren trifft zu?
A) Der vergrößerte Befehlssatz steigert die Geschwindigkeit
B) RISC-Prozessoren besitzen grundsätzlich keinen Cache
C) Der verkleinerte Befehlssatz steigert die Geschwindigkeit
D) RISC und CISC unterscheiden sich nur im Marketing, technisch nicht
**Lösung:** C

---

## Karte 100: Cache-Hierarchie
**Inhalt:** Moderne Prozessoren verwenden mehrstufige Zwischenspeicher (Cache), um häufig benötigte Daten schneller bereitzustellen als über den Arbeitsspeicher. Der Level-1-Cache (L1) sitzt am dichtesten am Rechenwerk und ist von allen Speicherarten im PC am schnellsten, aber auch am kleinsten.

**Frage (Leicht):** Welcher Speicher in einem modernen PC ist typischerweise am schnellsten?
A) Der Arbeitsspeicher (RAM)
B) Die Swap-Partition/Auslagerungsdatei
C) Die Festplatte
D) Der Level-1-Cache
**Lösung:** D

---

## Karte 101: SRAM vs. DRAM
**Inhalt:** SRAM (Static RAM) ist wie DRAM ein flüchtiger Speicher, der seinen Inhalt ohne Stromzufuhr verliert. Im Unterschied zu DRAM benötigt SRAM keine ständige Auffrischung (Refresh), ist dadurch schneller, aber auch deutlich teurer in der Herstellung – deshalb wird es vor allem für Caches eingesetzt.

**Frage (Schwer):** Welche Aussage über SRAM ist FALSCH?
A) SRAM behält seinen Inhalt auch ohne Stromzufuhr
B) Es handelt sich um einen flüchtigen Speicher
C) SRAM ist teurer als DRAM
D) SRAM wird häufig als Cache-Speicher eingesetzt
**Lösung:** A

---

## Karte 102: POST beim Systemstart
**Inhalt:** Beim Einschalten eines Computers führt das BIOS/UEFI zunächst den POST (Power-On Self-Test) durch, bei dem grundlegende Hardwarekomponenten wie RAM, Grafikkarte und Tastatur überprüft werden, bevor das Betriebssystem geladen wird.

**Frage (Leicht):** Wie heißt der Selbsttest, den das BIOS beim Einschalten des Rechners durchführt?
A) BOOT
B) POST
C) SCAN
D) INIT
**Lösung:** B

---

## Karte 103: Hot Plugging
**Inhalt:** USB- und FireWire-Anschlüsse unterstützen Hot Plugging: Geräte können im laufenden Betrieb des Computers angeschlossen und wieder entfernt werden, ohne dass der Rechner heruntergefahren werden muss.

**Frage (Leicht):** Was bedeutet die Eigenschaft "Hot Plugging" bei USB-Anschlüssen?
A) Das Gerät wird beim Anschließen automatisch formatiert
B) Das Gerät benötigt zwingend einen eigenen Treiber
C) Geräte können im laufenden Betrieb angeschlossen und entfernt werden
D) Der Anschluss überhitzt bei intensiver Nutzung
**Lösung:** C

---

## Karte 104: RAID 5
**Inhalt:** RAID 5 verteilt Daten und zusätzliche Paritätsinformationen (Stripe Set with Parity) über mindestens drei Festplatten. Fällt eine einzelne Platte aus, lassen sich die verlorenen Daten aus den verbleibenden Platten und den Paritätsdaten rekonstruieren.

**Frage (Schwer):** Welches RAID-Level wird auch als "Stripe Set mit Parity" bezeichnet?
A) RAID 0
B) RAID 1
C) RAID 10
D) RAID 5
**Lösung:** D

---

## Karte 105: OSI-Vermittlungsschicht
**Inhalt:** Im OSI-Referenzmodell ist Schicht 3 die Vermittlungsschicht (Network Layer). Sie ist unter anderem für das Routing zuständig, also die Wegewahl von Datenpaketen durch ein Netzwerk.

**Frage (Leicht):** Welche OSI-Schicht ist die Vermittlungsschicht?
A) Schicht 3
B) Schicht 1
C) Schicht 2
D) Schicht 4
**Lösung:** A

---

## Karte 106: TCP/IP-Schichtenmodell
**Inhalt:** Das Internet- bzw. DoD-Schichtenmodell (TCP/IP-Modell) besteht aus vier Schichten: Netzzugangsschicht, Internetschicht, Transportschicht und Anwendungsschicht. Im Gegensatz zum siebenschichtigen OSI-Modell gibt es hier keine eigenständige Sitzungsschicht.

**Frage (Schwer):** Welche der folgenden Schichten gehört NICHT zum Internet-Schichtenmodell (TCP/IP-Modell)?
A) Netzzugangsschicht
B) Sitzungsschicht
C) Internetschicht
D) Anwendungsschicht
**Lösung:** B

---

## Karte 107: CSMA/CD
**Inhalt:** Beim CSMA/CD-Verfahren (Carrier Sense Multiple Access with Collision Detection) im klassischen Ethernet erkennt jede Station selbst eine Kollision zweier gleichzeitig gesendeter Pakete. Jedes beteiligte Gerät wartet danach eine individuelle Zufallszeit ab, bevor es erneut sendet.

**Frage (Schwer):** Was geschieht beim CSMA/CD-Verfahren, wenn eine Datenkollision auftritt?
A) Der Switch bestimmt zentral, wer als Erstes erneut senden darf
B) Die Verbindung wird dauerhaft getrennt
C) Jedes beteiligte Gerät sendet nach einer individuellen Zufallswartezeit erneut
D) Kollisionen sind bei CSMA/CD technisch ausgeschlossen
**Lösung:** C

---

## Karte 108: VLSM vs. CIDR
**Inhalt:** CIDR (Classless Inter-Domain Routing) erlaubt flexible Netzmasken unabhängig von den historischen Adressklassen. VLSM (Variable Length Subnet Masking) geht noch einen Schritt weiter: Ein Netz kann dabei in Teilnetze unterschiedlicher Größe aufgeteilt werden, statt nur in gleich große Teile.

**Frage (Schwer):** Was ist der Vorteil von VLSM gegenüber einfachem CIDR-Subnetting?
A) VLSM verzichtet vollständig auf Teilnetzmasken
B) VLSM funktioniert nur mit IPv6
C) VLSM verdoppelt automatisch die verfügbaren IP-Adressen
D) Ein Netz lässt sich in Teilnetze unterschiedlicher Größe unterteilen
**Lösung:** D

---

## Karte 109: Private IP-Adressbereiche
**Inhalt:** RFC 1918 definiert drei private, frei nutzbare IP-Adressbereiche für lokale Netzwerke: 10.0.0.0/8, 172.16.0.0/12 und 192.168.0.0/16. Adressen außerhalb dieser Bereiche gelten als öffentlich und müssen im Internet eindeutig vergeben sein.

**Frage (Leicht):** Welche der folgenden IP-Adressen gehört NICHT zu den privaten Adressbereichen nach RFC 1918?
A) 172.47.11.12
B) 192.168.27.11
C) 10.0.8.15
D) 172.21.47.11
**Lösung:** A

---

## Karte 110: TTL im IP-Header
**Inhalt:** Der TTL-Wert (Time To Live) im IP-Datagramm zählt die maximale Anzahl an Hops (Weiterleitungen über Router), die ein Paket durchlaufen darf. Jeder Router verringert den Wert um 1; erreicht er 0, wird das Paket verworfen, um Endlosschleifen im Routing zu verhindern.

**Frage (Schwer):** Welche Bedeutung besitzt der TTL-Wert (Time To Live) in einem IP-Datagramm?
A) Er gibt die Uhrzeit an, zu der das Paket erzeugt wurde
B) Er zählt die Anzahl der Hops, die das Paket erlebt, bis auf 0 herunter
C) Er zählt die Sekunden, die das Paket bereits unterwegs ist
D) Er legt fest, wie lange der Empfänger das Paket zwischenspeichern darf
**Lösung:** B

---

## Karte 111: Netzadresse (Network ID)
**Inhalt:** Die Netzadresse (Network ID) ist die erste Adresse eines Subnetzes, bei der im Binärformat alle Bits im Hostbereich auf 0 gesetzt sind. Sie identifiziert das gesamte Netzwerk in Routing-Tabellen und kann keinem einzelnen Endgerät zugewiesen werden.

**Frage (Leicht):** Welches Merkmal kennzeichnet die Netzadresse (Network ID) eines Subnetzes?
A) Sie wird immer einem einzelnen Endgerät zugewiesen
B) Alle Bits im Hostbereich sind auf 1 gesetzt
C) Alle Bits im Hostbereich sind auf 0 gesetzt
D) Sie ändert sich bei jedem neuen Gerät im Netz
**Lösung:** C

---

## Karte 112: Broadcast-Adresse
**Inhalt:** Die Broadcast-Adresse ist die letzte Adresse eines Subnetzes, bei der im Binärformat alle Bits im Hostbereich auf 1 gesetzt sind. Ein an diese Adresse gesendetes Paket erreicht gleichzeitig alle Geräte im jeweiligen Subnetz.

**Frage (Leicht):** Was passiert, wenn ein Datenpaket an die Broadcast-Adresse eines Subnetzes gesendet wird?
A) Es wird automatisch verworfen
B) Es wird ins Internet weitergeleitet
C) Es erreicht ausschließlich den Router
D) Es erreichen es alle Geräte innerhalb dieses Subnetzes gleichzeitig
**Lösung:** D

---

## Karte 113: Netzwerk-Dimensionen
**Inhalt:** Netzwerke werden nach ihrer geografischen Ausdehnung klassifiziert: PAN (Personal Area Network, z. B. Bluetooth), LAN (lokales Netz in einem Gebäude), MAN (Metropolitan Area Network, verbindet Städte), WAN (weitreichendes, oft öffentliches Netz über Länder hinweg) und GAN (Global Area Network, z. B. das Internet).

**Frage (Schwer):** Welche Netzwerk-Dimension verbindet typischerweise mehrere Städte oder ein Ballungszentrum?
A) MAN
B) LAN
C) PAN
D) GAN
**Lösung:** A

---

## Karte 114: ARP-Funktionsweise
**Inhalt:** Das Address Resolution Protocol (ARP) ermittelt zu einer bekannten IP-Adresse die zugehörige MAC-Adresse im lokalen Netzwerk. Dazu sendet ein Gerät einen ARP-Request als Broadcast; nur das gesuchte Gerät antwortet mit einem ARP-Reply, dessen Zuordnung anschließend im ARP-Cache gespeichert wird.

**Frage (Leicht):** Wozu dient das Address Resolution Protocol (ARP)?
A) Zur Verschlüsselung von Datenpaketen
B) Zur Ermittlung der MAC-Adresse zu einer bekannten IP-Adresse im lokalen Netz
C) Zur Umwandlung von Domainnamen in IP-Adressen
D) Zur automatischen Vergabe von IP-Adressen
**Lösung:** B

---

## Karte 115: TCP-3-Way-Handshake
**Inhalt:** Bevor eine TCP-Verbindung Daten überträgt, wird sie über einen 3-Way-Handshake aufgebaut: Der Client sendet ein SYN-Paket, der Server antwortet mit SYN-ACK, und der Client bestätigt abschließend mit ACK.

**Frage (Schwer):** In welcher Reihenfolge laufen die Schritte des TCP-3-Way-Handshakes ab?
A) SYN-ACK, SYN, ACK
B) ACK, SYN, SYN-ACK
C) SYN, SYN-ACK, ACK
D) SYN, ACK, SYN-ACK
**Lösung:** C

---

## Karte 116: UDP-Eigenschaften
**Inhalt:** UDP (User Datagram Protocol) ist verbindungslos: Pakete werden ohne vorherigen Handshake und ohne Zustellungsgarantie versendet ("Fire and Forget"). Dadurch ist UDP sehr schnell, eignet sich aber nur für Anwendungen, die gelegentliche Paketverluste verkraften können, wie Streaming oder VoIP.

**Frage (Leicht):** Welche Eigenschaft trifft auf das UDP-Protokoll zu?
A) Es baut vor der Datenübertragung einen 3-Way-Handshake auf
B) Es wird ausschließlich für E-Mail-Versand verwendet
C) Es garantiert die vollständige und korrekte Reihenfolge aller Pakete
D) Es überträgt Pakete verbindungslos, ohne Zustellungsgarantie
**Lösung:** D

---

## Karte 117: DHCP-DORA-Prozess
**Inhalt:** Beim Beitritt eines Geräts zu einem Netzwerk läuft die automatische IP-Vergabe über DHCP in vier Phasen ab, die man sich mit dem Akronym DORA merken kann: Discover (Client sucht DHCP-Server), Offer (Server bietet IP an), Request (Client fordert diese IP an) und Acknowledge (Server bestätigt die Zuteilung).

**Frage (Leicht):** Wofür steht das "O" im DHCP-DORA-Prozess?
A) Offer
B) Operate
C) Optimize
D) Overwrite
**Lösung:** A

---

## Karte 118: Lease-Time bei DHCP
**Inhalt:** Eine per DHCP zugewiesene IP-Adresse gehört einem Client nicht dauerhaft, sondern ist nur für eine bestimmte Lease-Time "geliehen". Nach Ablauf dieser Zeit (oder bereits nach der Hälfte) muss der Client die Zuteilung beim DHCP-Server erneuern.

**Frage (Schwer):** Was beschreibt die "Lease-Time" bei DHCP?
A) Die maximale Übertragungsgeschwindigkeit des Netzwerks
B) Den Zeitraum, für den eine IP-Adresse einem Client zugewiesen bleibt, bevor sie erneuert werden muss
C) Die Anzahl der gleichzeitig verbundenen Geräte
D) Die Zeit, die ein ARP-Request maximal dauern darf
**Lösung:** B

---

## Karte 119: Well-Known Ports
**Inhalt:** Die insgesamt 65.535 möglichen Ports sind in drei Kategorien unterteilt: Well Known Ports (0–1023, für standardisierte Dienste wie HTTP auf Port 80), Registered Ports (1024–49151) und Dynamic/Private Ports (49152–65535, temporär für ausgehende Verbindungen genutzt).

**Frage (Leicht):** In welchem Portbereich liegen die "Well Known Ports" für standardisierte Dienste wie HTTP oder SSH?
A) 49152 bis 65535
B) 1024 bis 49151
C) 0 bis 1023
D) 50000 bis 65535
**Lösung:** C

---

## Karte 120: Zweck von ICMP
**Inhalt:** ICMP (Internet Control Message Protocol) überträgt keine Benutzerdaten wie E-Mails oder Webseiten, sondern dient dem Austausch von Fehlermeldungen und Statusinformationen zwischen Netzwerkgeräten, etwa "Ziel nicht erreichbar". Es arbeitet direkt auf der Vermittlungsschicht und nutzt keine Portnummern.

**Frage (Schwer):** Wofür wird das Protokoll ICMP hauptsächlich eingesetzt?
A) Zum Übertragen von Webseiteninhalten
B) Zur automatischen Vergabe von IP-Adressen
C) Zur verschlüsselten Fernadministration von Servern
D) Zum Austausch von Fehlermeldungen und Statusinformationen zwischen Netzwerkgeräten
**Lösung:** D

---

## Karte 121: Ping (Echo Request/Reply)
**Inhalt:** Der Befehl Ping nutzt ICMP, um mit einem Echo Request an ein Zielgerät zu fragen "Bist du da?". Antwortet das Ziel mit einem Echo Reply, lässt sich daraus die Latenz (Verzögerung) der Verbindung messen.

**Frage (Leicht):** Welches ICMP-Nachrichtenpaar wird beim Befehl "Ping" verwendet?
A) Echo Request und Echo Reply
B) Discover und Offer
C) SYN und ACK
D) Request und Grant
**Lösung:** A

---

## Karte 122: Aufbau einer MAC-Adresse
**Inhalt:** Eine MAC-Adresse besteht aus 48 Bit, dargestellt als sechs Paare von Hexadezimalzahlen. Die ersten 24 Bit (OUI) identifizieren den Hersteller des Netzwerkchips, die letzten 24 Bit (NIC) sind eine fortlaufende, herstellerspezifische Gerätenummer.

**Frage (Schwer):** Wofür stehen die ersten 24 Bit (die OUI) einer MAC-Adresse?
A) Für die IP-Adresse des Geräts
B) Für die Identifikation des Herstellers des Netzwerkchips
C) Für die verwendete Subnetzmaske
D) Für die aktuelle Portnummer der Verbindung
**Lösung:** B

---

## Karte 123: Prüfsumme im Ethernet-Frame (FCS)
**Inhalt:** Ein Ethernet-Frame nach IEEE 802.3 enthält u. a. Ziel- und Quell-MAC-Adresse (je 6 Byte), ein EtherType-Feld (gibt das transportierte Protokoll an, z. B. IPv4), die Payload (46–1500 Byte) sowie eine Prüfsumme (FCS), mit der beschädigte Frames erkannt und verworfen werden.

**Frage (Leicht):** Wozu dient das FCS-Feld (Frame Check Sequence) eines Ethernet-Frames?
A) Zur Angabe der Portnummer
B) Zur Verschlüsselung der Nutzdaten
C) Zur Erkennung beschädigter Frames mittels Prüfsumme
D) Zur Speicherung der IP-Adresse des Empfängers
**Lösung:** C

---

## Karte 124: MTU (Maximum Transmission Unit)
**Inhalt:** Die Maximum Transmission Unit (MTU) legt die maximale Größe der Nutzdaten (Payload) eines Ethernet-Frames fest und beträgt standardmäßig 1500 Byte. Größere Dateien werden entsprechend in viele kleine Frames zerlegt.

**Frage (Schwer):** Was beschreibt die MTU (Maximum Transmission Unit) bei Ethernet?
A) Die maximale Anzahl gleichzeitig verbundener Geräte
B) Die maximale Lebensdauer eines DHCP-Lease
C) Die maximale Übertragungsgeschwindigkeit eines Kabels
D) Die standardmäßig maximale Größe der Nutzdaten (Payload) eines Frames
**Lösung:** D

---

## Karte 125: IPv6-Adresslänge
**Inhalt:** Während IPv4 auf 32-Bit-Adressen setzt, verwendet IPv6 128-Bit-Adressen, was einen enorm größeren Adressraum von etwa 3,4 × 10^38 Adressen ermöglicht. IPv6-Adressen werden in acht Blöcken aus Hexadezimalzahlen dargestellt.

**Frage (Leicht):** Wie viele Bit umfasst eine IPv6-Adresse?
A) 128 Bit
B) 64 Bit
C) 32 Bit
D) 256 Bit
**Lösung:** A

---

## Karte 126: IPv6-Verkürzungsregeln
**Inhalt:** Lange IPv6-Adressen lassen sich verkürzen, indem führende Nullen innerhalb eines Blocks weggelassen werden und ein einzelner zusammenhängender Bereich aus reinen Nullblöcken einmalig durch einen doppelten Doppelpunkt (::) ersetzt wird.

**Frage (Schwer):** Wie darf ein zusammenhängender Bereich aus reinen Nullblöcken in einer IPv6-Adresse verkürzt geschrieben werden?
A) Durch ein einfaches Sternchen (*)
B) Durch einen doppelten Doppelpunkt (::), aber nur einmal in der Adresse
C) Nullblöcke dürfen bei IPv6 nicht verkürzt werden
D) Durch beliebig viele doppelte Doppelpunkte hintereinander
**Lösung:** B

---

## Karte 127: IPv6-Link-Local-Adresse
**Inhalt:** Eine Link-Local-Adresse (Präfix fe80::/10) gilt nur innerhalb des lokalen Netzsegments und wird nicht ins Internet geroutet. Sie wird von einem Gerät automatisch vergeben, sobald IPv6 aktiviert wird, und ist die Grundlage für die Nachbarschafts-Entdeckung (Neighbor Discovery).

**Frage (Leicht):** Welchen Adressbereich verwenden IPv6-Link-Local-Adressen?
A) fc00::/7
B) 2000::/3
C) fe80::/10
D) ::1/128
**Lösung:** C

---

## Karte 128: Default Gateway in der Routing-Tabelle
**Inhalt:** Die Standard-Route (Default Gateway, oft 0.0.0.0/0) ist der wichtigste Eintrag einer Routing-Tabelle: Findet sich für ein Ziel kein spezifischerer Eintrag, wird das Paket an dieses Gateway weitergeleitet – im Heimnetz typischerweise der eigene Router.

**Frage (Schwer):** Wofür wird das Default Gateway (Standard-Route) in einer Routing-Tabelle verwendet?
A) Ausschließlich für Broadcast-Nachrichten
B) Zur Verschlüsselung des gesamten Datenverkehrs
C) Nur für die Kommunikation innerhalb des eigenen Subnetzes
D) Als Ziel für Pakete, wenn kein spezifischerer Routing-Eintrag existiert
**Lösung:** D

---

## Karte 129: Longest Prefix Match
**Inhalt:** Passen mehrere Einträge einer Routing-Tabelle auf ein Ziel, wählt der Router nach dem Prinzip des Longest Prefix Match immer den spezifischsten (längsten) passenden Eintrag, nicht den allgemeinsten.

**Frage (Leicht):** Nach welchem Prinzip wählt ein Router den passenden Eintrag, wenn mehrere Routing-Einträge auf ein Ziel zutreffen?
A) Er wählt den spezifischsten (längsten passenden) Eintrag
B) Er wählt zufällig einen der passenden Einträge
C) Er wählt immer den zuerst eingetragenen Eintrag
D) Er wählt immer den allgemeinsten Eintrag
**Lösung:** A
