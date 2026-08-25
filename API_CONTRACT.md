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

## GET /api/flashcards/daily

Gibt die 20 Karteikarten des Tages zurück, inklusive der jeweils zugehörigen
Multiple-Choice-Frage mit Antwortoptionen. Die Auswahl ist pro Nutzer und Tag
fest (gleicher Nutzer, gleicher Tag = gleiche 20 Karten), ändert sich aber
täglich. Erfordert gültigen Token.

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

## POST /api/answer_options/:id/submit

Prüft, ob die gewählte Antwortoption richtig ist, und trackt den Versuch
serverseitig (fließt später in Fortschritt und Ranking ein). Erfordert
gültigen Token.

**Request:** kein Body nötig, `:id` in der URL ist die gewählte `answer_option.id`.

**Antwort Erfolg — 200 OK:**

```json
{
  "correct": true
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
- [ ] CORS auf Ruby-Seite muss `http://localhost:5173` erlauben
- [ ] Token-Ablauf (läuft er ab? nach wie langer Zeit?)
- [ ] Endpoint für "Passwort zurücksetzen" (per E-Mail)
