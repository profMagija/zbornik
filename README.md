## Komande

Komende koje zapocinju delove sveske. Ove komande iskljucivo uticu na podnozje stranice.

* `\Year{<yr>}` - definise godinu izdavanja zbornika, npr. `\Year{2021}`
* `\BookNumber{<num>}` - definise broj sveske, npr. `\BookNumber{80}`
* `\Part{<num>}` - definise deo (odeljenje), npr. `\Part{I}`, `\Part{II}`, ...
* `\Section{<sec>}` - definise trenutni program, npr. `\Section{RAČUNARSTVO}`

## Naslovna strana programa

Za pravljenje naslovne strane jednog programa, koristi se komanda `\SectionCover`. Ova komanda prima pet parametara:

```latex
\SectionCover{
    <ime programa na srpskom>
}{
    <ime programa na engleskom>
}{
    <sadrzaj radova sa programa>
}{
    <imena rukovodioca>
}{
    <grafika programa>
}
```

Na primer, kompletna naslovna stranica programa izgleda ovako:

```latex
\Section{RAČUNARSTVO}

\pagestyle{empty} % na naslovnij stranici programa nema numeracije
\SectionCover{Računarstvo}{Computer\\Science}{
    Autor 1 \pageref{rac.autor1}\\
    Autor 2 \pageref{rac.autor2}\\
}{
    RUKOVODIOCI:\\
    Rukovodioc 1\\
    Rukovodioc 2
}{
    % grafika za naslovnu stranicu
    \includegraphics[width=\textwidth]{graphics/mce-white-cat.png}
}
\clearpage

\pagestyle{fancy} % nastavljanje numeracije
% import-i pojedinacnih radova
```

> **TODO**: staviti `\pagestyle` i `\clearpage` direktno u `\SectionCover`

## Pojedinacni rad

Sledece komande definisu podatke o radu. Nista zapravo ne ispisuju.

* `\Title{<naslov>}` - definise nasov rada
* `\TitleEng{<naslov>}` - definise naslov rada na engleskom
* `\Author{<autor(i)>}` - definise autore rada, odvojene zarezom
* `\begin{Abstract}...\end{Abstract}` - definise apstrakt na srpskom jeziku
* `\begin{AbstractEng}...\end{AbstractEng}` - definise apstrakt na engleskom jeziku
* `\begin{AuthroEx}...\end{AuthorEx}` - definise dodatne podatke o autoru i mentorima.

Sledece komande zapravo zapocinju rad i slazu naslov i apstrakt:

* `\StartPaper` - ova komanda zapocinje rad u jednom stupcu
* `\StartDoublePaper` - ova komanda zapocinje rad u dva stupca

Ukoliko je rad u dva stupca **obavezno je** negde u drugom stupcu prve strane (idealno na pocetku) staviti komandu `\AuthorExHere` kako bi se dobro slozili podaci o autoria i mentorima. (Neophodno zbog tehnickih ogranicenja LaTeX-a). Ukoliko se rad slaze u jednom stupcu, ovu komandu ne koristiti.

Na kraju rada se stavlja komanda `\EndPaper` koja slaze apstrakt na engleskom.

> **Napomena**: kada se slaze tekst u dva stupca, komanda `\clearpage` prelazi na **novu stranu** cak i u prvom stupcu, dok `\newpage` prelazi u sledeci stubac.

## Zamene za LaTeX komande

Sve LaTeX komande mogu da se normalno koriste. Ali, kako bi se odrzala uniformnost, koristiti sledece dodatne komande umesto njihovih ekvivalenata:

* `\Figure{<putanja>}{<opis na srp>}{<opis na eng>}` koristiti umesto `figure` okruzenja. Putanja je relativna putanja do datoteke koju treba ubaciti. Npr:
    ```latex
    \Firuge{slika1.png}{Prikaz toga i toga}{Depiction of so and so}
    ```
* `\FigureDouble{<putanja>}{<opis na srp>}{<opis na eng>}` - isto kao `\Figure`, ali slaze sliku preko cele strane u radovima u dva stupca.

> **TODO**: napraviti ekvivalent za tabelu, ili napraviti da kao parametar prima kompletan float, a ne samo putanju.

> **TODO**: trenutno oba opisa imaju engleski "Figure" ispred sebe,

Umesto bilo kog bibliografskog alata, izvori se rucno navode. Komanda `\Source{<tekst>}` se stara da poravnjanje bude kako treba.
