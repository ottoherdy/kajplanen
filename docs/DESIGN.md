# Kajplaneraren — design

Beslut och varför, nyaste överst. Det som är standard för alla appar står i
`~/Documents/app-arkitektur.md` och upprepas inte här.

## 2026-11-04 · Inget mörkt läge
Beslut: kajplanen får sakna mörkt läge.

## 2026-11-03 · Hjälpmedel
En sida (`index.html`) utan byggsteg; båtlistan i `batar.csv` och kajplanen i
`kajplan.xlsx` serveras som statiska filer av nginx. Bakom Authelia (`two_factor`).
