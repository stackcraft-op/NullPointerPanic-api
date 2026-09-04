# API-Contract: React (NullPointerPanic-web) Ruby-Backend (NullPointerPanic-api)

Absprache zwischen Frontend und Backend, welche Endpoints es gibt und welche
Daten dabei hin- und hergeschickt werden.

Feld-Namen: Englisch, snake_case.
Auth: Token-basiert .
Basis-URL lokal: `http://localhost:3000`

## POST /api/register

Konto anlegen. `specialization` und `state` sind seit [Datum ergänzen]
**Pflichtfelder** — Registrierung schlägt ohne sie fehl. Beide Werte müssen
exakt einer der gültigen Optionen entsprechen (siehe `PATCH /api/profile`
für die vollständige Liste gültiger `specialization`/`state`-Werte).

**Request Body:**

```json
{
  "username": "maxmuster",
  "email": "max@example.com",
  "password": "geheim123",
  "specialization": "FIAE",
  "state": "Bayern"
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

Profil (inkl. `specialization`/`state`) wird im Hintergrund automatisch mit
angelegt — für die vollständigen Profildaten anschließend `GET /api/profile`
aufrufen.

**Antwort Fehler — 422 Unprocessable Entity:**

```json
{
  "error": "E-Mail wird bereits verwendet"
}
```

Weitere mögliche Fehlermeldungen: `"Fachbereich darf nicht leer sein"`,
`"Ungültiger Fachbereich"`, `"Bundesland darf nicht leer sein"`,
`"Ungültiges Bundesland"`.

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

Profildaten des eingeloggten Nutzers abrufen, inklusive Fortschritt (XP),
Currency, Statustext und dem aktuell ausgerüsteten Avatar/Rahmen. Erfordert
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
  "currency": 12,
  "status_text": "Grinder seit Tag 1",
  "avatar": { "id": 2, "image_url": "/avatars/avatar1.jpg" },
  "frame": null
}
```

`first_name`, `last_name`, `specialization`, `city`, `state`, `status_text`
sind `null`, solange nicht gesetzt. `avatar`/`frame` sind `null`, solange
nichts ausgerüstet ist — Frontend zeigt in dem Fall einen eigenen
Platzhalter. `image_url` ist ein **relativer** Pfad; die Basis-URL muss
frontend-seitig vorangestellt werden (lokal `http://localhost:3000`).

**Antwort Fehler — 401 Unauthorized:**

```json
{
  "error": "Nicht autorisiert"
}
```

## PATCH /api/profile

Persönliche Profildaten aktualisieren (Name, Fachbereich, Wohnort) sowie
Avatar/Rahmen ausrüsten. Erfordert gültigen Token (siehe "Authentifizierte
Anfragen" unten).

**Request Body:**

```json
{
  "first_name": "Max",
  "last_name": "Mustermann",
  "specialization": "FIAE",
  "city": "Köln",
  "state": "Nordrhein-Westfalen",
  "avatar_id": 2,
  "frame_id": 4
}
```

Alle Felder sind optional und unabhängig voneinander setzbar (Teil-Updates
möglich). `avatar_id`/`frame_id` nur setzbar, wenn das jeweilige Item beim
Nutzer laut `GET /api/shop/items` `owned: true` ist — sonst 422. Ausrüsten
selbst ist **kostenlos** (anders als der Kauf über
`POST /api/shop/items/:id/purchase`).

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
  "avatar_id": 2,
  "frame_id": 4
}
```

**Antwort Fehler — 422 Unprocessable Entity:**

```json
{
  "error": "Ungültiger Fachbereich"
}
```

oder, bei nicht besessenem Item:

```json
{ "error": "Avatar nicht im Besitz" }
```

```json
{ "error": "Rahmen nicht im Besitz" }
```

## PATCH /api/profile/status_text

Setzt einen neuen Status-Text, sichtbar in den Ranglisten. Kostet Currency
**bei jeder** Änderung, auch der ersten. Eigener Endpunkt statt Teil von
`PATCH /api/profile`, wegen der abweichenden Kostenlogik. Erfordert
gültigen Token.

**Request Body:**

```json
{ "status_text": "Grinder seit Tag 1" }
```

**Antwort Erfolg — 200 OK:**

```json
{ "status_text": "Grinder seit Tag 1", "currency": 50 }
```

**Antwort Fehler — 422 Unprocessable Entity:**

```json
{ "error": "Statustext darf nicht leer sein" }
```

oder:

```json
{ "error": "Nicht genug Currency" }
```

**⚠️ Preis noch zu klären:** `Profile::STATUS_TEXT_COST` steht aktuell auf
`10`. Falls `100` abgesprochen war, bitte in `app/models/profile.rb`
anpassen — dieser Hinweis fliegt raus, sobald der Preis final bestätigt ist.

## GET /api/shop/items

Katalog aller kaufbaren Avatare **und** Rahmen in einer gemeinsamen Liste,
inkl. ob der eingeloggte Nutzer sie schon besitzt. Ein gemeinsamer Endpunkt
statt getrennter (`/api/shop/avatars`, `/api/shop/frames`), weil sich beide
Item-Arten im Ablauf nicht unterscheiden (Katalog → kaufen → `owned` wird
`true` → ausrüstbar). Erfordert gültigen Token.

**Request:** kein Body nötig.

**Antwort Erfolg — 200 OK:**

```json
[
  { "id": 2, "type": "avatar", "name": "Avatar 1", "price": 25, "image_url": "/avatars/avatar1.jpg", "owned": true },
  { "id": 4, "type": "frame", "name": "Gold-Rahmen", "price": 200, "image_url": "/frames/gold.png", "owned": false }
]
```

`type` ist entweder `"avatar"` oder `"frame"`. `image_url` ist ein
**relativer** Pfad zu einer lokal auf diesem Server gehosteten Datei
(unter `public/`) — Frontend muss die Basis-URL selbst voranstellen.
Aktuell 4 Avatare vorhanden, weitere folgen; Rahmen sind für eine spätere
Woche geplant, noch nicht befüllt.

**Antwort Fehler — 401 Unauthorized:**

```json
{
  "error": "Nicht autorisiert"
}
```

## POST /api/shop/items/:id/purchase

Kauft ein Item, zieht `price` von `currency` ab. Erfordert gültigen Token.

**Request:** kein Body nötig, `:id` in der URL ist die `shop_item.id`.

**Antwort Erfolg — 200 OK:**

```json
{ "currency": 150 }
```

**Antwort Fehler — 401 Unauthorized:**

```json
{
  "error": "Nicht autorisiert"
}
```

**Antwort Fehler — 404 Not Found** (ungültige `:id`):

```json
{ "error": "Item nicht gefunden" }
```

**Antwort Fehler — 422 Unprocessable Entity:**

```json
{ "error": "Item bereits im Besitz" }
```

oder:

```json
{ "error": "Nicht genug Currency" }
```

## GET /api/topics/progress

Gibt für jedes Themengebiet den Lernfortschritt des eingeloggten Nutzers als
Prozentzahl zurück — gedacht für Fortschrittsbalken auf der Profilseite.
Erfordert gültigen Token.

**Wichtig:** Der Fortschritt basiert auf dem **letzten** Beantwortungsversuch
pro Frage (egal ob aus den Tageskarten oder dem Lernkarten-Quiz), nicht
darauf, ob sie irgendwann mal richtig war. Das bedeutet: Der Wert kann auch
sinken, wenn eine zuvor richtig beantwortete Frage später falsch beantwortet
wird.

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

## GET /api/topics/:id/flashcards

Gibt alle Karteikarten eines Themas zurück, inklusive ob der eingeloggte
Nutzer sie bereits "abgehakt" hat. Datenbasis für die
Lernkarten-Durcharbeiten-Seite (Thema durcharbeiten, Karten manuell
abhaken). Erfordert gültigen Token.

**Request:** kein Body nötig.

**Antwort Erfolg — 200 OK:**

```json
[
  {
    "id": 42,
    "question": "Was ist ein Subnetz?",
    "answer": "Ein logisch unterteilter Teil eines groesseren Netzwerks.",
    "checked": false
  },
  {
    "id": 43,
    "question": "Was ist ein Gateway?",
    "answer": "Ein Netzwerkknoten, der zwischen zwei Netzwerken vermittelt.",
    "checked": true
  }
]
```

**Antwort Fehler — 401 Unauthorized:**

```json
{
  "error": "Nicht autorisiert"
}
```

## POST /api/flashcards/:flashcard_id/check

Hakt eine Karteikarte für den eingeloggten Nutzer ab, oder macht das Abhaken
rückgängig — funktioniert als **Toggle**, das Frontend ruft immer denselben
Endpunkt auf, egal in welche Richtung. Erfordert gültigen Token.

**Request:** kein Body nötig, `:flashcard_id` in der URL.

**Antwort Erfolg — 200 OK:**

```json
{ "checked": true }
```

oder, falls das Abhaken rückgängig gemacht wurde:

```json
{ "checked": false }
```

**Antwort Fehler — 401 Unauthorized:**

```json
{
  "error": "Nicht autorisiert"
}
```

**Antwort Fehler — 404 Not Found:**

```json
{
  "error": "Karte nicht gefunden"
}
```

## POST /api/quiz

Generiert ein Quiz mit 20 zufälligen Fragen aus den **abgehakten** Karten
eines Themas. Erfordert mindestens 20 abgehakte Karten **innerhalb dieses
Themas** — der abgehakte Fortschritt ist pro Thema getrennt, nicht global.
Erfordert gültigen Token.

**Wichtig:** Die Antwortoptionen enthalten **keine** Information, welche
Option richtig ist — Prüfung erfolgt über
`POST /api/answer_options/:id/quiz_submit`.

**Request Body:**

```json
{ "topic_id": 3 }
```

**Antwort Erfolg — 200 OK:**

```json
[
  {
    "id": 42,
    "question": "Was ist ein Subnetz?",
    "multiple_choice_question": {
      "id": 17,
      "question_text": "Welche Aussage beschreibt ein Subnetz korrekt?",
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

**Antwort Fehler — 401 Unauthorized:**

```json
{
  "error": "Nicht autorisiert"
}
```

**Antwort Fehler — 422 Unprocessable Entity** (weniger als 20 abgehakte Karten im Thema):

```json
{
  "error": "Mindestens 20 abgehakte Karten in diesem Thema noetig"
}
```

## POST /api/answer_options/:id/quiz_submit

Prüft eine Quiz-Antwort. Anders als beim Tageskarten-Submit: **kein**
Tageslimit (kann beliebig oft am Tag genutzt werden), **keine**
Currency-Vergabe. Richtige Antworten fließen weiterhin in den
Themenfortschritt (`GET /api/topics/progress`) ein, zählen aber **nicht**
für das Wochen-Ranking. Bei einer **falschen** Antwort wird die zugehörige
Karteikarte automatisch wieder "nicht abgehakt" — sie taucht beim nächsten
`GET /api/topics/:id/flashcards`-Aufruf wieder mit `checked: false` auf.
Erfordert gültigen Token.

**Request:** kein Body nötig, `:id` in der URL ist die gewählte `answer_option.id`.

**Antwort Erfolg, richtig beantwortet — 200 OK:**

```json
{
  "correct": true
}
```

**Antwort Erfolg, falsch beantwortet — 200 OK:**

Zusätzlich zur richtigen Option wird die vollständige zugehörige Karteikarte
mitgeschickt (`question`, `answer`, `exam_type`, `topic`) — für eine
ausführlichere Erklärung im Frontend, nicht nur die kurze MC-Antwort.

```json
{
  "correct": false,
  "correct_option": {
    "id": 101,
    "text": "Ein logisch unterteilter Teil eines Netzwerks"
  },
  "flashcard": {
    "id": 42,
    "question": "Was ist ein Subnetz?",
    "answer": "Ein logisch unterteilter Teil eines groesseren Netzwerks.",
    "exam_type": "ap2_fisi",
    "topic": {
      "id": 3,
      "name": "Netzwerktechnik"
    }
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

Bei einer falschen Antwort werden zusätzlich die richtige Option **und** die
vollständige zugehörige Karteikarte (`question`, `answer`, `exam_type`,
`topic`) mitgeschickt, damit das Frontend sie zum Lernen anzeigen kann.

```json
{
  "correct": false,
  "correct_option": {
    "id": 101,
    "text": "Ein logisch unterteilter Teil eines Netzwerks"
  },
  "flashcard": {
    "id": 42,
    "question": "Was ist ein Subnetz?",
    "answer": "Ein logisch unterteilter Teil eines groesseren Netzwerks.",
    "exam_type": "ap2_fisi",
    "topic": {
      "id": 3,
      "name": "Netzwerktechnik"
    }
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

Rangliste nach Anzahl richtig beantworteter **Tageskarten-Fragen** innerhalb
der aktuellen Kalenderwoche (Montag bis Sonntag). Quiz-Antworten
(`POST /api/answer_options/:id/quiz_submit`) zählen hier bewusst **nicht**
mit, damit das Ranking reine Tagesleistung misst statt durch beliebig
wiederholbares Üben beeinflussbar zu sein. Setzt sich jede Woche automatisch
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
hier "Anzahl richtig beantworteter Tageskarten-Fragen diese Woche" statt
Gesamt-XP. Nutzer, die diese Woche noch nichts beantwortet haben, erscheinen
mit `score: 0`, nicht gar nicht.

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
- [ ] `Profile::STATUS_TEXT_COST` von 10 auf 100 ändern? (Preis mit
      Frontend final klären — siehe `PATCH /api/profile/status_text` oben)
- [ ] Weitere Avatare (aktuell 4 von geplant 8) und Rahmen-Katalog
      (kommt kommende Woche) noch zu ergänzen — kein Endpunkt-Change
      nötig, nur Seed-Daten
- [ ] Spy-Funktion (fremdes Profil per Ranking-Klick ansehen, mit
      Freischaltung für die Themenfortschritts-Balken) — in Planung,
      noch nicht implementiert
