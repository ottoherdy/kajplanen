# Kajplaneraren

Planerar var båtarna ligger vid kajen. En enda sida (`index.html`) som läser båtlistan
(`batar.csv`: namn, längd, bredd, färg) och kajplanen (`kajplan.xlsx`).

## Architecture

Statiska filer i en nginx-image (`nginx:alpine`, port 80, `nginx.conf`). Inget byggsteg,
inga beroenden på servern; CSV- och xlsx-filerna cachas en dag, sidan aldrig.

## Run

```sh
python3 -m http.server 8000      # öppna http://localhost:8000
```

## Deploy

Push till `main` → `.github/workflows/ci.yml` kör `nginx -t` och en HTML-kontroll,
bygger `ghcr.io/ottoherdy/kajplanen:latest` → `watchtower-snabb` rullar ut containern
`kajplanen_nginx` inom fem minuter. Stacken `kajplanen` (9) på webstack (VM 102,
10.20.5.10); den finns inte i `docker-local/deploy/apps.toml` än, så ändrad compose görs
i Portainer-stacken. Nås på `kajplanen.other.nu` (cloudflared → NPM-värd 2 → Authelia).

## Development standards

- Standarden: `~/Documents/app-arkitektur.md` (avsnitt 7 är kontraktet).
- CI-grinden (`.github/workflows/ci.yml`): `nginx -t` och HTML-kontroll. Rött = ingen image.
- Beslut i `docs/DESIGN.md`, regler för agenter i `CLAUDE.md`.
