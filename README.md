# ohtulaskuri

Repositorio Ohjelmistotuotanto-kurssin viikon 3 tehtäville 2-4.

Alkuperäinen koodi: https://github.com/ohjelmistotuotanto-hy/tehtavat/tree/main/viikko3/webcounter.

Asenna riippuvuudet ja virtuaaliymäristö komennolla `uv sync`.

Aktivoi virtuaaliympäristö Bash-komennolla `source .venv/Scripts/activate` (Windows) tai `source .venv/bin/activate` (Linux).

Käynnistä komennolla `python src/index.py`.

Sovellus on saatavilla osoitteessa http://127.0.0.1:5001.

Testit voi ajaa komennolla `robot src/tests`. Testit käyttävät Chromiumia, jonka voi asentaa virtuaaliympäristöön komennolla `uv run rfbrowser install chromium`. Huomaa, että toimiakseen testit edellyttävät, että sovellus on alussa tilassa missä laskurin arvo on 0. Uudelleenkäynnistä siis sovellus aina ennen testien suorittamista!