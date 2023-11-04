<p align="center">
  <img src="figures/cvut.png" height="100px" alt="CTU" />
</p>

<p align="center">
  <a href="https://github.com/cvut-fbmi/thesis/blob/main/README.en.md"><img src="https://img.shields.io/badge/lang-EN-red.svg" alt="Github CI" /></a>
  <a href="https://github.com/cvut-fbmi/thesis"><img src="https://img.shields.io/badge/lang-CZ-blue.svg" alt="Gitter" /></a>
  <a href="https://www.overleaf.com/latex/templates/fbmi-thesis-template/xrgtwphpthxm"><img src="https://img.shields.io/badge/FBMI-Overleaf%20%C5%A1ablona-138a07.svg" alt="Overleaf" /></a>
</p>

---

# Jak psát závěrečné práce v LaTeXu
> aneb jak si (ne)zjednodušit psaní závěrečných prací

Návod, doporučení a tipy pro psaní závěrečných prací v LaTeXu na FBMI ČVUT. Zároveň se v tomto repozitáři nacházejí oficiální šablony závěrečné práce pro pdftex, xelatex a lualatex (<a href="#3-">pro pokročilejší workflow</a>). Pro co nejpohodlnější psaní a rychlé jednoduché nastavení doporučuji <a href="#12-">Overleaf</a>.

---

**Obsah**

<div id="user-content-toc">
  <ul>
    <li><a href="#">1. Jak psát závěrečné práce v LaTeXu</a>
      <ul>
        <li><a href="#11-latex">1.1. LaTeX</a></li>
        <li><a href="#12-overleaf">1.2. Overleaf</a></li>
        <li><a href="#13-nastavení-šablony">1.3. Nastavení šablony</a></li>
        <li><a href="#14-používání-šablony">1.4. Používání šablony</a></li>
        <li><a href="#15-vkládání-obrázků">1.5. Vkládání obrázků</a></li>
        <li><a href="#16-seznam-symbolů-a-zkratek">1.6. Seznam symbolů a zkratek</a></li>
        <li><a href="#17-citace">1.7. Citace</a></li>
        <li><a href="#18-další-užitečné-tipy-a-zdroje">1.8. Další užitečné tipy a zdroje</a></li>
      </ul>
    </li>
    <li><a href="#2-pokročilejší-workflow">2. Pokročilejší workflow</a>
      <ul>
        <li><a href="#21-instalace-latexu">1.1. Instalace LaTeXu</a></li>
        <li><a href="#22-některá-vývojová-prostředí">1.2. Některá vývojová prostředí</a></li>
        <li><a href="#23-vscode-a-latex-workshop">1.3. VSCode a LaTeX Workshop</a></li>
      </ul>
  </ul>
</div>

---

## 1.1. LaTeX
LaTeX je **typografický** a *sázecí systém*, který slouží k vytváření dokumentů, zejména textových dokumentů, s vysokou typografickou kvalitou. Jedním ze zásadních rozdílů oproti například Wordu je významně menší množství vytrhaných vlasů po napsání závěrečné práce. A to i přes learning curve LaTeXu.

Základními rysy LaTeXu jsou:

1. *Sázecí systém*: LaTeX umožňuje autorům oddělit obsah od formátování. Autori se zaměřují na psaní obsahu, zatímco LaTeX se stará o formátování a vytváření dokumentu ve vysoké kvalitě.

2. *Podpora matematiky*: LaTeX má vynikající podporu pro psaní matematických vzorců a symbolů. Je často používán v akademickém prostředí pro psaní matematických článků a knih.

3. *Kvalitní typografie*: LaTeX používá profesionální typografická pravidla pro vytvoření dokumentů s dobrou čitelností a estetikou.

4. *Možnost vytvoření obsáhlých dokumentů*: LaTeX umožňuje vytvořit obsáhlé dokumenty s obsahem, rejstříkem, citacemi a dalšími funkcemi.

5. *Open-source*: LaTeX je open-source software, což znamená, že je zdarma dostupný pro všechny a existuje mnoho balíčků a rozšíření, které mohou být použity k rozšíření jeho funkcí.

6. *Textový zápis*: LaTeX dokumenty se zapisují ve formě textových souborů s příponou .tex a jsou kompilovány do formátu PDF nebo jiných formátů.

LaTeX je často používán v akademickém prostředí, vědeckém výzkumu, publikacích, diplomových pracích a dalších situacích, kde je kladen důraz na kvalitu a konzistentnost dokumentů. Je vhodný pro lidi, kteří chtějí vytvořit profesionální dokumenty s vědeckým nebo technickým obsahem. Více o LaTeXu (pdftexu, xelatexu a lualatexu) se můžete dozvědět <a href="https://www.overleaf.com/learn/latex/Articles/What%27s_in_a_Name%3A_A_Guide_to_the_Many_Flavours_of_TeX">ZDE</a>.

FBMI závěrečné práce psané v LaTeXu pro inspiraci: 
* https://github.com/sokolmarek/masters-thesis (lualatex)
* https://github.com/sokolmarek/bachelors-thesis (xelatex)

## 1.2. Overleaf
[Overleaf](https://www.overleaf.com) je online platforma pro sázení dokumentů v LaTeXu, spolupráci a revizi. Umožňuje více autorům pracovat na jednom dokumentu současně. Uživatelé mohou spolupracovat v reálném čase a vidět změny ostatních členů týmu. Jinými slovy bude pro tvého vedoucího revize a psaní komentářů jednoduché a pohodlné. To chceš. 

Overleaf poskytuje uživatelsky přívětivé prostředí, které usnadňuje psaní LaTeXových dokumentů a nabízí funkce jako automatické doplňování, kontrola pravopisu a náhled dokumentu. Ukládá historii verzí dokumentů, což umožňuje sledovat a obnovit předchozí verze. Hlavně tu svojí práci budeš mít dostupnou odkudkoliv online a když ti klekne PC, tak o ní nepřijdeš (pro experty co ještě neznají slovo cloud).

### [Oficiální Overleaf FBMI šablona pro závěrečné práce](https://www.overleaf.com/latex/templates/fbmi-thesis-template/xrgtwphpthxm) (náhled)
<a href="https://www.overleaf.com/project/new/template/32281?id=679197376&latexEngine=pdflatex&mainFile=main.tex&templateName=FBMI+Thesis+Template&texImage=texlive-full%3A2023.1"><img src="https://img.shields.io/badge/Otev%C5%99%C3%ADt%20FBMI%20%C5%A1ablonu%20v%20Overleafu-138a07.svg" alt="Overleaf"/></a> (vyžaduje mít na Overleafu účet a být přihlášený)

Po kliknutí na zelené tlačítko výše se ti otevře FBMI šablona jako nový projekt na tvém Overleaf účtu (bylo by dobrý se nejdříve registrovat). Šablona následně vyžaduje trochu nastavení. Nastavení a jak se šablonou pracovat je blíže popsáno v následujících sekcích.

## 1.3. Nastavení šablony
Šablona jako taková vyžaduje minimální nastavení v souboru `main.tex` a můžeš začít hned psát a o nic se nestarat. Lze ji ale samozřejmě libovolně přizpůsobit dle vlastních potřeb k obrazu svému nebo případně přidat další knihovny (např. [tikz](https://www.overleaf.com/learn/latex/TikZ_package) pro tvorbu vektorové grafiky nebo [listings](https://www.overleaf.com/learn/latex/Code_listing) pro ukázky kódu). Širší úpravy už každopádně mohou vyžadovat hlubší znalost LaTeXu.

Na začátku souboru `main.tex` uvidíš tzv. _documentclass_, kde lze nastavit typ závěrečné práce a v jakém jazyce ji budeš psát. Typ práce se nestavuje parametrem _thesis_. Pro bakalářskou práci použiješ písmenko **B**, pro diplomovou **M** a pro disertační **D**. Jazyk práce se nastavuje použitím parametru **czech** nebo **english**. Pokud tedy budeš psát například bakalářskou práci v českém jazyce, tak tvoje _documentclass_ bude vypadat následovně:

```latex
\documentclass[thesis=B,czech]{template/FBMIThesis}
```

Dále je potřeba na začátku souboru `main.tex` v částí nazývané _preamble_ upravit vzory metadat podle tvých vlastních přepsáním toho co je ve {složených závorkách}:

```latex
\titleCS{Název práce}                    % Název práce v ČJ
\titleEN{Thesis title}                   % Název práce v AJ
\authorWithDegrees{John Doe}             % Tvoje jméno s případnými tituly
\program{Mysteries of the Force}         % Tvůj studijní program
\author{John Doe}                        % Tvoje jméno bez titulů
\supervisor{prof. John Skywalker}        % Vedoucí tvojí práce s tituly
\department{Department of Magical Arts}  % Tvoje katedra
\keywordsCS{auto, pes, kytka}            % Klíčová slova v ČJ
\keywordsEN{car, dog, flower}            % Klíčová slova v AJ
```

Včetně toho tam mezi metadaty uvidíš i zakomentovaný `\assignment{assignment.pdf}`. Komentáře jsou části textu, které nejsou zahrnuty do výstupu dokumentu. Pro vložení komentáře se používá znak procenta (%) na začátku řádku. Vše, co následuje za procentem bude považováno za komentář a nebude zobrazeno ve finálním dokumentu:

```latex
% Toto je komentář.
Toto je text v dokumentu. % Toto je komentář.
```

Teď zpět k zakomentovanému `\assignment{assignment.pdf}`. Do tvé závěrečně práce bude potřeba vložit zadaní, které lze stáhnout z [projects](https://projects.fbmi.cvut.cz/) ve formátu pdf. Až si ho stáhneš, tak soubor přejmenuj na _assignment_ a nahraj do kořenového adresáře v Overleafu. Poté zmíněný zakomentovaný příkaz odkomentuj (smaž procento):

```latex
% \assignment{assignment.pdf}     % Zakomentováno 
\assignment{assignment.pdf}       % Odkomentováno
```

Pak by mělo být zadání vidět na druhé stránce tvé práce (ihned po uložení nebo _recompile_). To je vše co se týče nastavení šablony. Už je potřeba věnovat jen trochu pozornosti následujícím sekcim, které se věnují používání šablony. Tzn. co a kam psát, jak přidat obrázky či citace nebo jak na seznam symbolů a zkratek.

## 1.4. Používání šablony
Po nastavení šablony tě budou zajímat už jen složky _chapters_ a _figures_ společně se soubory `glossary.tex` (pro symboly a zkratky) a `library.tex` (pro citace). Ve složce _chapters_ jsou vytvořeny soubory pro každou náležitou kapitolu závěrečné práce, do kterých budeš psát. Dále jsou tam soubory pro abstrakty, poděkování a přílohy. Struktura vypadá následovně:

    .
    ├── chapters                  
    │   ├── 01_introduction.tex         # Kapitola úvod
    │   ├── 02_state_of_the_art.tex     # Kapitola přehled současného stavu     
    │   ├── 03_aims.tex                 # Kapitola cíle práce
    │   ├── 04_methods.tex              # Kapitola metody
    │   ├── 05_results.tex              # Kapitola výsledky
    │   ├── 06_discussion.tex           # Kapitola diskuse
    │   ├── 07_conclusion.tex           # Kapitola závěr
    │   ├── 08_appendices.tex           # Kapitola přílohy
    │   ├── abstract_cs.tex             # Abstrakt v ČJ
    │   ├── abstract_en.tex             # Abstrakt v AJ
    │   └── acknowledgement.tex         # Poděkování
    └── ...

Pokud budeš chtít například začít psát kapitolu _Metody_, tak klikneš v Overleaf na soubor `04_methods.tex`. Ten se ti vzápětí otevře a můžeš začít psát. Jednotlivé kapitoly jsou ze začátku vyplněné ukázkovým obsahem a rady co do kapitoly psát. Tento obsah samozřejmě smaž. Je jasné, že v kapitole budeš používat různé formátování, seznamy, podnadpisy a další. Doporučuji si proto před psaním prostudovat následující:

* [Learn LaTeX in 30 minutes](https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes)
* [Sections and chapters](https://www.overleaf.com/learn/latex/Sections_and_chapters)
* [Bold, italics and underlining](https://www.overleaf.com/learn/latex/Bold%2C_italics_and_underlining)
* [Lists](https://www.overleaf.com/learn/latex/Lists)
* [Inserting Images](https://www.overleaf.com/learn/latex/Inserting_Images)
* [Tables](https://www.overleaf.com/learn/latex/Tables)
* [Mathematics](https://www.overleaf.com/learn/latex/Mathematics)

## 1.5. Vkládání obrázků
Pro vkládání obrázků nebo diagramů je potřeba obrázky nejdříve nahrát do složky _figures_ v Overleafu. Podporované formáty obrázků jsou: _.pdf, .png, .jpg_. Po nahrání obrázku jej lze přidat do obsahu použitím následujícího:

```latex
\begin{figure}[!htb]
    \begin{center}
        \includegraphics[width=1\linewidth]{figure.pdf} % Název souboru
        \caption{Figure description}                    % Popisek obrázku
        \label{fig:label}                               % Label obrázku
    \end{center}
\end{figure}
```
Zobrazovaná velikost obrázku lze měnit parametrem width výše (pro menší např. width=0.5). Zmíněny label obrázku se používá k vytvoření odkazu na obrázek v textu. Pokud bych měl například obrázek tulipánů, použil bych `\label{fig:tulipany}`. Následně bych v textu na obrázek odkazoval použitím příkazu `\ref{fig:tulipany}`. Příklad v LaTeXu:

```latex
% Znak ~ se použivá pro vložení nedělitelné mezery
Tulipány lze vidět na Obr.~\ref{fig:tulipany}. 
```

Výsledek pak v pdf výstupu bude následující:

```
Tulipány lze vidět na Obr. 2.1. 
```

Číslování je automatické a záleží v jaké kapitole se obrázek nachází. Příklad s tulipány lze vidět v šabloně samotné i s použitím reference, v kapitole Výsledky.

## 1.6. Seznam symbolů a zkratek
K přidávání do seznamu symbolů a zkratek slouží soubor `glossary.tex`. Nalezneš v něm už i příklady použití příkazu pro přidání nového symbolu nebo zkratky. Tady pak poslouží už pouze jednoduché kopírování a přepisování.

## 1.7. Citace
K přidávání citací slouží soubor `library.tex`. Ten bude tvojí knihovnou (proto library, haha). Citace se do souboru přidávají v BibTeX formátu. Poté když chceš tedy citovat článek, tak ho nejdřív musíš přidat do své knihovny (`library.tex`). Jeho BibTeX vstup vypadá například pro random článek takhle:

```bibtex
@article{Granger1969,
  author    = {Granger, C. W. J.},
  doi       = {10.2307/1912791},
  issn      = {0012-9682},
  journal   = {Econometrica},
  number    = {3},
  pages     = {424–438},
  publisher = {[Wiley, Econometric Society]},
  title     = {Investigating Causal Relations by Econometric Models and Cross-spectral Methods},
  volume    = {37},
  year      = {1969}
}
```

Citaci na článek v textu vytvoříš pak následovně:

```latex
% Znak ~ se použivá pro vložení nedělitelné mezery
Příčina by měla být nápomocná při předpovídání budoucích vlivů~\cite{Granger1969}.
```

Výsledek pak v pdf výstupu bude následující:

```
Příčina by měla být nápomocná při předpovídání budoucích vlivů [1].
```

Co se citačního stylu a normy týče, tak to nemusíš nijak řešit. Vše je už nastaveno v šabloně samotné. Citace v BibTeX formátu jednoduše vyexportuješ z většiny stránek článků. Obvykle se na stránce nachází tlačítko _export_ nebo _export citation_. Tak na tohle klikneš, vybereš formát BibTeX a nakopíruješ do `library.tex`. A už můžeš citovat. Doporučuji ale ideálně používat některý z referenčních managerů, který ti tuhle práci s citacemi hodně usnadní. Například [Zotero](https://www.zotero.org), [Mendeley](https://www.mendeley.com) nebo [EndNote](https://endnote.com).

## 1.8. Další užitečné tipy a zdroje
* Používejte Google
* https://latex-tutorial.com
* https://www.colorado.edu/aps/sites/default/files/attached-files/latex_primer.pdf
* https://www.overleaf.com/learn/latex/Tutorials
* https://tex.stackexchange.com
* https://github.com/tudelft3d/latex-getting-started

# 2. Pokročilejší workflow
> kvalitní workflow je více než tisíc slov

Pokročilejší workflow obnáší primárně používání vybraného vývojového prostředí (IDE), lokální instalaci latexu, používání [Gitu](https://git-scm.com) a referenčního manageru. Nenajdeš tady tutorial jak tohle všechno nastavit a jak s tím pracovat ale spíše vodítka. Internet je takových tutoriálu plno. A jestli ti všechny slůvka v první větě nejsou cizí, tak ti stačí už jen:

```bash
$ git clone https://github.com/cvut-fbmi/thesis.git
```

## 2.1. Instalace LaTeXu
Instalace pro Windows:
* TeXLive: https://www.tug.org/texlive/
* http://mirror.ctan.org/systems/texlive/tlnet/install-tl-windows.exe

Instalace pro Linux:
* http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
* 
  ```bash
  $ sudo apt-get install texlive
  ```

Instalace pro Mac:
* MacTeX: http://www.tug.org/mactex/ 
* Homebrew: (https://brew.sh)
  ```bash
  $ brew install texlive
  ```

## 2.2. Některá vývojová prostředí
* Visual Studio Code: https://code.visualstudio.com
  * LaTeX Workshop https://github.com/James- Yu/LaTeX- Workshop
  * Code Spell Checker https://github.com/streetsidesoftware/vscode- spell- checker
  * Grammarlyhttps://github.com/znck/grammarly
  
* Vim / Neovim: https://www.vim.org nebo https://neovim.io 
  * Vimtex: https://github.com/lervag/vimtex


* TeXstudio: https://www.texstudio.org

## 2.3. VSCode a LaTeX WorkShop
Poměrně pohodlné workflow se dá dosáhnout využitím LaTeX WorkShopu pro VSCode. Veškerou dokumentaci lze najít zde: https://github.com/James-Yu/LaTeX-Workshop/wiki. Pro tuto workflow existuje i pěkný článek na [Medium](https://medium.com/@rcpassos/writing-latex-documents-in-visual-studio-code-with-latex-workshop-d9af6a6b2815).
