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

---

## Authentifizierte Anfragen (alles danach, z.B. Karteikarten)

React schickt den Token bei jeder weiteren Anfrage im Header mit:

React speichert den Token nach Login in `localStorage` und liest ihn dort
wieder aus (z.B. beim Reload, um eingeloggt zu bleiben).

React schickt den Token bei jeder weiteren Anfrage im Header mit:

---

## Offene Punkte

- [ ] Passwort-Mindestlänge / Regeln — wer validiert
- [ ] CORS auf Ruby-Seite muss `http://localhost:5173` erlauben
- [ ] Token-Ablauf (läuft er ab? nach wie langer Zeit?)
- [ ] Endpoint für "Passwort zurücksetzen" (per E-Mail)
