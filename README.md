# NullPointerPanic API

Backend einer gamifizierten Lernplattform zur Vorbereitung auf die IHK-Abschlussprüfung
für Fachinformatiker/-innen (Anwendungsentwicklung & Systemintegration). Nutzer lernen
täglich Karteikarten zu verschiedenen Themengebieten und beantworten dazu passende
Multiple-Choice-Fragen. Fortschritt (XP, Tokens, Lern-Streak) wird pro Nutzer getrackt.

Zugehöriges Frontend: [`NullPointerPanic-web`](https://github.com/stackcraft-op/NullPointerPanic-web) (React + Vite).

## Tech-Stack

- **Ruby** 4.0.x
- **Rails** 8.1 (API-only, kein Frontend-Rendering)
- **PostgreSQL** 17
- **JWT** (`jwt` Gem) für token-basierte Authentifizierung
- **RuboCop** (`rubocop-rails-omakase`) für Linting
- **Brakeman** für statische Sicherheitsanalyse

## Voraussetzungen

- Ruby 4.0.x (über [RubyInstaller](https://rubyinstaller.org) unter Windows, inkl. DevKit)
- PostgreSQL, lokal installiert und laufend
- `master.key` für `config/credentials.yml.enc` — **wird nicht über Git verteilt**,
  bitte direkt bei einem Teammitglied anfragen und unter `config/master.key` ablegen

## Setup

### 1. Repository klonen

```
git clone https://github.com/stackcraft-op/NullPointerPanic-api.git
cd NullPointerPanic-api
```

### 2. Gems installieren

```
bundle install
```

### 3. Umgebungsvariablen einrichten

Datei `.env` im Projekt-Root anlegen (wird nicht committet, siehe `.gitignore`):

```
POSTGRES_PASSWORD=euer_lokales_postgres_passwort
```

### 4. Datenbank einrichten

```
rails db:create
rails db:migrate
rails db:seed
```

`db:seed` legt die sechs Themengebiete sowie Beispiel-Karteikarten mit Multiple-Choice-Fragen an.

### 5. Server starten

```
rails server
```

Läuft standardmäßig auf `http://localhost:3000`.

Für Zugriff von anderen Geräten im selben Netzwerk (z. B. gemeinsames Testen mit dem Frontend
auf einem anderen Rechner):

```
rails server -b 0.0.0.0
```

Für Zugriff von außerhalb des lokalen Netzwerks (z. B. Handy, anderes WLAN) kann zusätzlich
[ngrok](https://ngrok.com) genutzt werden:

```
ngrok http 3000
```

## API

Die vollständige Schnittstellen-Dokumentation (Endpunkte, Request-/Response-Formate,
Fehlerfälle) steht in [`API_CONTRACT.md`](./API_CONTRACT.md) — diese Datei ist die
verbindliche Absprache zwischen Backend und Frontend und wird bei jeder Änderung an der
API von beiden Seiten aktuell gehalten.

## Datenmodell (Kurzüberblick)

| Tabelle | Zweck |
|---|---|
| `users` | Login-Daten, Passwort-Hash, Lern-Streak |
| `profiles` | Persönliche Profildaten (Name, Fachrichtung, Wohnort), XP, Tokens |
| `topics` | Themengebiete (z. B. Netzwerktechnik, Datenbanken) |
| `flashcards` | Karteikarten, gehören zu einem Topic, mit Prüfungsteil-Zuordnung (`exam_type`) |
| `multiple_choice_questions` | MC-Frage zu einer Karteikarte (1:1) |
| `answer_options` | Antwortoptionen einer MC-Frage |
| `progress_entries` | Beantwortungsversuche pro Nutzer und Frage — Basis für Fortschritt und Ranking |

## Entwicklung

### Branch-Workflow

Es wird nicht direkt auf `main` committet. Pro Story/Feature:

```
git checkout main
git pull
git checkout -b feature/kurze-beschreibung
```

Nach Fertigstellung: Push, Pull Request auf GitHub erstellen, CI-Checks abwarten, Review,
Merge.

### Linting & Sicherheitsprüfung

Vor jedem Commit:

```
ruby bin/rubocop -A
ruby bin/brakeman
```

Beide laufen zusätzlich automatisch in der CI-Pipeline bei jedem Pull Request.

### Tests

```
rails test
```

## Team

Projekt im Rahmen der Umschulung zum Fachinformatiker Anwendungsentwicklung.
