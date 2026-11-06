# Kajplaneraren — regler för agenter

En statisk sida (`index.html`) med båtlista och kajplan, serverad av nginx.

Läs först `README.md` och `docs/DESIGN.md`. Standarden: `~/Documents/app-arkitektur.md`
(avsnitt 7 är kontraktet).

## Bygg och testa (samma som CI-grinden)

```sh
docker run --rm -v "$PWD/nginx.conf:/etc/nginx/conf.d/default.conf:ro" nginx:alpine nginx -t
```

## Deploy

Push till `main` → CI → image → `watchtower-snabb`. Stacken `kajplanen` (9) på webstack; inte i `apps.toml`.

Ingen merge, ingen push till `main` och ingen deploy utan att Otto bett om det.

## Fällor

- Bakom Authelia; inget mörkt läge (beslut).
- Inga hemligheter i git, inte heller i compose (bara env-namn). Tester med datum relativt till idag.
- Commit-författare `Otto Herdy <otto@herdy.se>`.
