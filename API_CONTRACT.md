# API-Contract: React (NullPointerPanic-web) Ruby-Backend (NullPointerPanic-api)

Absprache zwischen Frontend und Backend, welche Endpoints es gibt und welche
Daten dabei hin- und hergeschickt werden.

Feld-Namen: Englisch, snake_case.
Auth: Token-basiert .
Basis-URL lokal: `http://localhost:3000`

## POST /api/register

Konto anlegen.

**Request Body:**

```json
{
  "username": "maxmuster",
  "email": "max@example.com",
  "password": "geheim123"
}
```

**Antwort Erfolg — 201 Created:**

```json
{
  "id": 1,
  "username": "maxmuster",
  "email": "max@example.com"
}
```

**Antwort Fehler — 422 Unprocessable Entity:**

```json
{
  "error": "E-Mail wird bereits verwendet"
}
```

## POST /api/login

Einloggen mit Benutzername + Passwort.

**Request Body:**

```json
{
  "username": "maxmuster",
  "password": "geheim123"
}
```

**Antwort Erfolg — 200 OK:**

```json
{
  "token": "a1b2c3...",
  "user": {
    "id": 1,
    "username": "maxmuster",
    "last_login_at": "2026-08-19T21:15:00Z"
  }
}
```

**Antwort Fehler — 401 Unauthorized:**

```json
{
  "error": "Benutzername oder Passwort falsch"
}
```

## GET /api/profile

Profildaten des eingeloggten Nutzers abrufen, inklusive Fortschritt (XP) und
Currency (verdiente, einsetzbare Punkte z. B. für Avatare/Design). Erfordert
gültigen Token (siehe "Authentifizierte Anfragen" unten).

**Request:** kein Body nötig.

**Antwort Erfolg — 200 OK:**

```json
{
  "id": 1,
  "username": "maxmuster",
  "first_name": "Max",
  "last_name": "Mustermann",
  "specialization": "FIAE",
  "city": "Köln",
  "state": "Nordrhein-Westfalen",
  "experience": 340,
  "currency": 12
}
```

`first_name`, `last_name`, `specialization`, `city`, `state` sind `null`,
solange das Profil noch nicht ausgefüllt wurde.

**Antwort Fehler — 401 Unauthorized:**

```json
{
  "error": "Nicht autorisiert"
}
```

## PATCH /api/profile

Persönliche Profildaten aktualisieren (Name, Fachbereich, Wohnort). Erfordert
gültigen Token (siehe "Authentifizierte Anfragen" unten).

**Request Body:**

```json
{
  "first_name": "Max",
  "last_name": "Mustermann",
  "specialization": "FIAE",
  "city": "Köln",
  "state": "Nordrhein-Westfalen"
}
```

**Antwort Erfolg — 200 OK:**

```json
{
  "id": 1,
  "username": "maxmuster",
  "first_name": "Max",
  "last_name": "Mustermann",
  "specialization": "FIAE",
  "city": "Köln",
  "state": "Nordrhein-Westfalen"
}
```

**Antwort Fehler — 422 Unprocessable Entity:**

```json
{
  "error": "Ungültiger Fachbereich"
}
```

## GET /api/topics/progress

Gibt für jedes Themengebiet den Lernfortschritt des eingeloggten Nutzers als
Prozentzahl zurück — gedacht für Fortschrittsbalken auf der Profilseite.
Erfordert gültigen Token.

**Wichtig:** Der Fortschritt basiert auf dem **letzten** Beantwortungsversuch
pro Frage, nicht darauf, ob sie irgendwann mal richtig war. Das bedeutet:
Der Wert kann auch sinken, wenn eine zuvor richtig beantwortete Frage später
falsch beantwortet wird.

**Request:** kein Body nötig.

**Antwort Erfolg — 200 OK:**

```json
[
  { "id": 1, "name": "IT-Infrastruktur & Netzwerke", "progress_percent": 45 },
  { "id": 2, "name": "Softwareentwicklung & Programmierung", "progress_percent": 70 },
  { "id": 3, "name": "Datenbanken & Datenanalyse", "progress_percent": 20 },
  { "id": 4, "name": "IT-Sicherheit & Datenschutz", "progress_percent": 60 },
  { "id": 5, "name": "Projektmanagement & Qualitätssicherung", "progress_percent": 10 },
  { "id": 6, "name": "BWL, Wirtschaft & Organisation", "progress_percent": 0 }
]
```

`progress_percent` ist eine gerundete Ganzzahl von 0 bis 100.

**Antwort Fehler — 401 Unauthorized:**

```json
{
  "error": "Nicht autorisiert"
}
```

## GET /api/flashcards

Gibt **alle** Karteikarten zurück (aktuell ca. 700), ohne Multiple-Choice-Frage
— reiner Nachschlage-Text (Frage + Antwort). Gedacht als Datenbasis für eine
Wiki-/Nachschlage-Ansicht mit clientseitiger Suche/Filterung im Frontend.
Erfordert gültigen Token.

**Unterschied zu `GET /api/flashcards/daily`:** Dieser Endpunkt liefert den
kompletten Bestand auf einmal, unabhängig vom Tag, und enthält keine
Multiple-Choice-Frage — er dient dem Nachschlagen, nicht dem Abfragen.

**Request:** kein Body nötig.

**Antwort Erfolg — 200 OK:**

```json
[
  {
    "id": 42,
    "question": "Was ist ein Subnetz?",
    "answer": "Ein logisch unterteilter Teil eines groesseren Netzwerks.",
    "exam_type": "ap2_fisi",
    "topic": {
      "id": 3,
      "name": "Netzwerktechnik"
    }
  }
]
```

**Antwort Fehler — 401 Unauthorized:**

```json
{
  "error": "Nicht autorisiert"
}
```

## GET /api/flashcards/daily

Gibt die 20 Karteikarten des Tages zurück, inklusive der jeweils zugehörigen
Multiple-Choice-Frage mit Antwortoptionen. Die Auswahl ist für alle Nutzer am
selben Tag identisch (faires Ranking), ändert sich aber täglich. Erfordert
gültigen Token.

**Wichtig:** Die Antwortoptionen enthalten **keine** Information, welche
Option richtig ist — das wird erst beim tatsächlichen Beantworten über
`POST /api/answer_options/:id/submit` serverseitig geprüft.

**Request:** kein Body nötig.

**Antwort Erfolg — 200 OK:**

```json
[
  {
    "id": 42,
    "question": "Was ist ein Subnetz?",
    "answer": "Ein logisch unterteilter Teil eines groesseren Netzwerks.",
    "exam_type": "ap2_fisi",
    "topic": {
      "id": 3,
      "name": "Netzwerktechnik"
    },
    "multiple_choice_question": {
      "id": 17,
      "question_text": "Welche Aussage beschreibt ein Subnetz korrekt?",
      "difficulty": "leicht",
      "answer_options": [
        { "id": 101, "text": "Ein logisch unterteilter Teil eines Netzwerks" },
        { "id": 102, "text": "Ein physisches Netzwerkkabel" },
        { "id": 103, "text": "Ein Router-Hersteller" },
        { "id": 104, "text": "Eine Verschluesselungsmethode" }
      ]
    }
  }
]
```

`difficulty` ist entweder `"leicht"` oder `"schwer"` — kann im Frontend z. B.
für eine visuelle Kennzeichnung oder spätere Filter genutzt werden.

**Antwort Fehler — 401 Unauthorized:**

```json
{
  "error": "Nicht autorisiert"
}
```

## POST /api/answer_options/:id/submit

Prüft, ob die gewählte Antwortoption richtig ist, und trackt den Versuch
serverseitig (fließt in Fortschritt, Currency und XP ein). Erfordert gültigen
Token.

Jede Tagesfrage kann pro Tag nur einmal beantwortet werden — das Frontend
blendet beantwortete Fragen ohnehin aus, dies ist eine zusätzliche
serverseitige Absicherung.

**Request:** kein Body nötig, `:id` in der URL ist die gewählte `answer_option.id`.

**Antwort Erfolg, richtig beantwortet — 200 OK:**

```json
{
  "correct": true
}
```

**Antwort Erfolg, falsch beantwortet — 200 OK:**

Bei einer falschen Antwort wird zusätzlich die richtige Option mitgeschickt,
damit das Frontend sie zum Lernen anzeigen kann.

```json
{
  "correct": false,
  "correct_option": {
    "id": 101,
    "text": "Ein logisch unterteilter Teil eines Netzwerks"
  }
}
```

**Antwort Fehler — 401 Unauthorized:**

```json
{
  "error": "Nicht autorisiert"
}
```

**Antwort Fehler — 404 Not Found** (ungültige `:id`):

```json
{
  "error": "Antwortoption nicht gefunden"
}
```

**Antwort Fehler — 422 Unprocessable Entity** (Frage heute bereits beantwortet):

```json
{
  "error": "Frage wurde heute bereits beantwortet"
}
```

## GET /api/rankings/overall

Rangliste nach gesamten Erfahrungspunkten (XP), über die komplette bisherige
Nutzungsdauer (kein Zeitfenster). Erfordert gültigen Token.

**Request:** kein Body nötig.

**Antwort Erfolg — 200 OK:**

```json
{
  "top": [
    { "rank": 1, "username": "maxmuster", "score": 1200 },
    { "rank": 2, "username": "anna", "score": 980 }
  ],
  "me": { "rank": 47, "username": "kevin", "score": 90 }
}
```

`top` enthält immer maximal 10 Einträge, unabhängig davon, wie viele Nutzer
es insgesamt gibt. `me` zeigt den eigenen Rang, auch wenn dieser außerhalb
der Top 10 liegt — so kann das Frontend z. B. "Du bist #47" anzeigen, ohne
die komplette Liste laden zu müssen. `score` ist bei `overall` die aktuelle
`experience` aus dem eigenen Profil.

**Antwort Fehler — 401 Unauthorized:**

```json
{
  "error": "Nicht autorisiert"
}
```

## GET /api/rankings/weekly

Rangliste nach Anzahl richtig beantworteter Fragen innerhalb der aktuellen
Kalenderwoche (Montag bis Sonntag). Setzt sich jede Woche automatisch
zurück, sobald ein neuer Montag beginnt. Erfordert gültigen Token.

**Request:** kein Body nötig.

**Antwort Erfolg — 200 OK:**

```json
{
  "top": [
    { "rank": 1, "username": "anna", "score": 18 },
    { "rank": 2, "username": "maxmuster", "score": 15 }
  ],
  "me": { "rank": 3, "username": "kevin", "score": 12 }
}
```

Identisches Format wie `GET /api/rankings/overall` — nur `score` bedeutet
hier "Anzahl richtig beantworteter Fragen diese Woche" statt Gesamt-XP.
Nutzer, die diese Woche noch nichts beantwortet haben, erscheinen mit
`score: 0`, nicht gar nicht.

**Antwort Fehler — 401 Unauthorized:**

```json
{
  "error": "Nicht autorisiert"
}
```

## GET /api/rankings/by_state

Rangliste nach Erfahrungspunkten (XP), gefiltert auf ein einzelnes
Bundesland. Gleiche Logik wie `GET /api/rankings/overall`, nur vorher auf
`profile.state` gefiltert. Erfordert gültigen Token.

**Request:** kein Body nötig. `state` als Query-Parameter, Pflichtfeld —
muss exakt einem der Bundesland-Werte aus `PATCH /api/profile` entsprechen
(z. B. `Nordrhein-Westfalen`, `Bayern`).

```
GET /api/rankings/by_state?state=Bayern
```

**Antwort Erfolg — 200 OK:**

```json
{
  "top": [
    { "rank": 1, "username": "anna", "score": 800 },
    { "rank": 2, "username": "tom", "score": 650 }
  ],
  "me": { "rank": 5, "username": "kevin", "score": 200 }
}
```

Gleiches Format wie die anderen Ranking-Endpunkte. `me` ist `null`, falls
der eingeloggte Nutzer nicht aus dem angefragten Bundesland kommt (dann
also nicht in der gefilterten Liste vorkommt).

**Antwort Fehler — 401 Unauthorized:**

```json
{
  "error": "Nicht autorisiert"
}
```

**Antwort Fehler — 422 Unprocessable Entity** (Parameter `state` fehlt):

```json
{
  "error": "Bundesland fehlt"
}
```

---

## Authentifizierte Anfragen (alles danach, z.B. Karteikarten)

React speichert den Token nach Login in `localStorage` und liest ihn dort
wieder aus (z.B. beim Reload, um eingeloggt zu bleiben).

React schickt den Token bei jeder weiteren Anfrage im Header mit:

```
Authorization: Bearer <token>
```

---

## Offene Punkte

- [ ] Passwort-Mindestlänge / Regeln — wer validiert
- [ ] Token-Refresh
- [ ] Endpoint für "Passwort zurücksetzen" (per E-Mail)
