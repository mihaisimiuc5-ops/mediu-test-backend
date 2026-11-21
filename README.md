# PHP + MySQL Playground — IT EUROAVIA

Mediu de testare PHP + MySQL care rulează direct în browser (fără XAMPP). Fiecare membru primește propriul container privat și propria bază de date, deci poți testa liniștit fără să strici nimic.

---

## 1. Cum pornești

1. Apasă butonul verde **Code** → tab-ul **Codespaces** → **Create codespace on main**.
2. Așteaptă 1–2 minute să se încarce editorul VS Code în browser.

---

## 2. Cum deschizi site-ul și baza de date

În panoul de jos, intră pe tab-ul **Ports** *(dacă nu îl vezi: **Terminal → New Terminal**, apoi click pe **Ports**)* și apasă pe iconița cu globul pământesc (*Open in Browser*):

* **Port `80`** — site-ul PHP (`public/index.php`)
* **Port `8080`** — phpMyAdmin (baza de date)

**Date MySQL:**
* **Host:** `db` *(nu `localhost`)*
* **Bază de date:** `test_db`
* **Admin (phpMyAdmin):** user `root` / parolă `rootpassword`
* **PHP (`config.php`):** user `devuser` / parolă `devpass`

---

## 3. Unde pui fișierele

* **`public/`** — paginile `.php`, `.css`, `.js` (tot ce se deschide în browser).
* **`config.php`** — conexiunea la MySQL (stă în afara `public/`).
* **`database/schema.sql`** — structura inițială a tabelelor.
* *Lasă folderul `.devcontainer/` nemodificat.*

---

## 4. Cum salvezi codul pe GitHub

Nu da push direct pe `main` — creează-ți propriul branch:

```bash
git checkout -b prenume-nume
git add .
git commit -m "Modificari test"
git push -u origin prenume-nume
```

---

## 5. Bine de știut

* **Oprește mediul când termini:** apasă **`F1`** → **`Codespaces: Stop Current Codespace`** (contul gratuit are 60 de ore/lună; fișierele rămân salvate).
* **Nu face public portul `8080`** (phpMyAdmin).
* **Dacă portul `80` dă eroare 502:** rulează `apache2ctl start` în terminal și dă refresh.
