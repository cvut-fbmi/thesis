<p align="center">
  <img src="figures/cvut.png" height="100px" alt="CTU" />
</p>

<p align="center">
  <a href="ttps://github.com/cvut-fbmi/thesis/README.en.md"><img src="https://img.shields.io/badge/lang-EN-red.svg" alt="Github CI" /></a>
  <a href="https://github.com/cvut-fbmi/thesis"><img src="https://img.shields.io/badge/lang-CZ-blue.svg" alt="Gitter" /></a>
  <a href="https://www.overleaf.com/latex/templates/fbmi-thesis-template/xrgtwphpthxm"><img src="https://img.shields.io/badge/FBMI-Overleaf%20%C5%A1ablona-138a07.svg" alt="Overleaf" /></a>
</p>

---

# How to Write Final Theses in LaTeX
> or how to (un)simplify thesis writing

A guide, recommendations and tips for writing final theses in LaTeX at the Faculty of Biomedical Engineering, Czech Technical University. Additionally, this repository contains official templates for final theses for pdftex, xelatex and lualatex (<a href="#3-">for advanced workflow</a>). For the most comfortable writing and quick setup, I recommend using <a href="#12-">Overleaf</a>.

---

**Table of Contents**

<div id="user-content-toc">
  <ul>
    <li><a href="#">1. How to Write Final Theses in LaTeX</a>
      <ul>
        <li><a href="#11-latex">1.1. LaTeX</a></li>
        <li><a href="#12-overleaf">1.2. Overleaf</a></li>
        <li><a href="#13-template-setup">1.3. Template Setup</a></li>
        <li><a href="#14-using-the-template">1.4. Using the Template</a></li>
        <li><a href="#15-inserting-figures">1.5. Inserting Figures</a></li>
        <li><a href="#16-list-of-symbols-and-abbreviations">1.6. List of Symbols and Abbreviations</a></li>
        <li><a href="#17-citations">1.7. Citations</a></li>
        <li><a href="#18-additional-useful-tips-and-resources">1.8. Additional Useful Tips and Resources</a></li>
      </ul>
    </li>
    <li><a href="#2-advanced-workflow">2. Advanced Workflow</a>
      <ul>
        <li><a href="#21-installing-latex">2.1. Installing LaTeX</a></li>
        <li><a href="#22-some-development-environments">2.2. Some Development Environments</a></li>
        <li><a href="#23-vscode-and-latex-workshop">2.3. VSCode and LaTeX Workshop</a></li>
      </ul>
  </ul>
</div>

---

## 1.1. LaTeX
LaTeX is a **typographic** and *typesetting system* used to create documents, especially text documents, with high typographic quality. One major difference from, say, Word is the significantly smaller amount of hair-pulling after the thesis is written. This is despite the learning curve of LaTeX.

The basic features of LaTeX are:

1. **Typesetting System**: LaTeX allows authors to separate content from formatting. Authors focus on writing content, while LaTeX takes care of formatting and creating high-quality documents.

2. **Math Support**: LaTeX has excellent support for writing mathematical formulas and symbols. It is often used in academic settings for writing mathematical articles and books.

3. **High-Quality Typography**: LaTeX uses professional typographic rules to create documents with good readability and aesthetics.

4. **Creation of Comprehensive Documents**: LaTeX allows the creation of extensive documents with content, indexes, citations, and other features.

5. **Open-Source**: LaTeX is open-source software, which means it is freely available to everyone, and there are many packages and extensions that can be used to expand its functionality.

6. **Text-Based Input**: LaTeX documents are written in the form of text files with the .tex extension and are compiled into PDF or other formats.

LaTeX is often used in academic environments, scientific research, publications, dissertations and other situations where the quality and consistency of documents is important. It is suitable for people who want to create professional documents with scientific or technical content. You can learn more about LaTeX (pdftex, xelatex and lualatex) <a href="https://www.overleaf.com/learn/latex/Articles/What%27s_in_a_Name%3A_A_Guide_to_the_Many_Flavours_of_TeX">HERE</a>..

FBMI thesis written in LaTeX for inspiration: 
* https://github.com/sokolmarek/masters-thesis (lualatex)
* https://github.com/sokolmarek/bachelors-thesis (xelatex)

## 1.2. Overleaf
[Overleaf](https://www.overleaf.com) is an online platform for LaTeX document typesetting, collaboration and revision. It allows multiple authors to work on a single document simultaneously. Users can collaborate in real time and see changes made by other team members. In other words, it will be easy and convenient for your revision leader and writing comments. That's what you want.

Overleaf provides a user-friendly environment that makes it easy to write LaTeX documents and offers features such as autocomplete, spell check and document preview. It stores the version history of documents, allowing you to track and restore previous versions. Most importantly, you'll have your work available from anywhere online and you won't lose it if your PC crashes (for experts who don't know the word cloud yet).

### [Official Overleaf FBMI thesis template](https://www.overleaf.com/latex/templates/fbmi-thesis-template/xrgtwphpthxm) (preview)
<a href="https://www.overleaf.com/project/new/template/32281?id=679197376&latexEngine=pdflatex&mainFile=main.tex&templateName=FBMI+Thesis+Template&texImage=texlive-full%3A2023.1"><img src="https://img.shields.io/badge/Open FBMI template in Overleaf-138a07.svg" alt="Overleaf"/></a> (requires you to have an Overleaf account and be logged in)

Clicking on the green button above will open the FBMI template as a new project in your Overleaf account (it would be good to register first). The template then requires a bit of setup. The setup and how to work with the template is described in more detail in the following sections.

## 1.3. Template settings
The template itself requires minimal setup in the `main.tex` file and you can start writing right away without worrying about anything. But of course you can freely customize it to your own image or add additional libraries (e.g. [tikz](https://www.overleaf.com/learn/latex/TikZ_package) for vector graphics or [listings](https://www.overleaf.com/learn/latex/Code_listing) for code samples). In any case, more extensive customization may require a deeper knowledge of LaTeX.

At the beginning of the `main.tex` file, you will see the _documentclass_, where you can set the type of the thesis and the language you will write it in. The type of thesis is not set by the _thesis_ parameter. You will use the letter **B** for a bachelor's thesis, **M** for a master's thesis, and **D** for a dissertation. The language of the thesis is set using the **czech** or **english** parameter. So if you write, for example, a bachelor's thesis in Czech, your _documentclass_ will look like this:

```latex
\documentclass[thesis=B,english]{template/FBMIThesis}
```

Next, at the beginning of the `main.tex` file, in the section called _preamble_, you need to modify the metadata patterns to your own by overwriting what is in the {compound brackets}:

```latex
\titleCS{Název práce}                    % Title of thesis in CZ
\titleEN{Thesis title}                   % Title of thesis in EN
\authorWithDegrees{John Doe}             % Your name with possible titles
\program{Mysteries of the Force}         % Your study program
\author{John Doe}                        % Your name without degrees
\supervisor{prof. John Skywalker}        % Supervisor of your thesis with degrees
\department{Department of Magical Arts}  % Your department
\keywordsCS{auto, pes, kytka}            % Keywords in CZ
\keywordsEN{car, dog, flower}            % Keywords in EN
```

Including the commented `\assignment{assignment.pdf}` among the metadata. Comments are parts of the text that are not included in the output of the document. The percent sign (%) at the beginning of a line is used to insert a comment. Anything following the percentage will be treated as a comment and will not appear in the final document:

```latex
% This is a comment.
This is the text in the document. % This is a comment.
```

Now back to the commented `\assignment{assignment.pdf}`. You will need to include the assignment in your final paper, which can be downloaded from [projects](https://projects.fbmi.cvut.cz/) in pdf format. After you download it, rename the file to _assignment_ and upload it to the root directory in Overleaf. Then uncomment the commented command (delete the percentage):

```latex
% \assignment{assignment.pdf}     % Commented 
\assignment{assignment.pdf}       % Uncommented
```

Then the assignment should be visible on the second page of your work (immediately after saving or _recompile_). That's it as far as template settings go. You just need to pay a little attention to the following sections that deal with using the template. That is, what and where to write, how to add images or quotes, or how to list symbols and abbreviations.

## 1.4 Using the template
After setting up the template, you will only be interested in the _chapters_ and _figures_ folders, along with the `glossary.tex` (for symbols and abbreviations) and `library.tex` (for quotes) files. In the _chapters_ folder, files are created for each appropriate chapter of the thesis that you will be writing in. There are also files for abstracts, acknowledgements, and appendices. The structure looks like this:

    .
    ├── chapters                  
    │   ├── 01_introduction.tex         # Chapter introduction
    │   ├── 02_state_of_the_art.tex     # Chapter state of the art    
    │   ├── 03_aims.tex                 # Chapter aims of the work
    │   ├── 04_methods.tex              # Chapter methods
    │   ├── 05_results.tex              # Chapter results
    │   ├── 06_discussion.tex           # Chapter discussion
    │   ├── 07_conclusion.tex           # Chapter conclusion
    │   ├── 08_appendices.tex           # Chapter appendices
    │   ├── abstract_cs.tex             # Abstract in CZ
    │   ├── abstract_en.tex             # Abstract in EN
    │   └── acknowledgement.tex         # Acknowledgement
    └── ...

For example, if you want to start writing the _Methods_ chapter, click on the `04_methods.tex` file in Overleaf. This file will then open and you can start typing. The individual chapters are initially filled with sample content and advice on what to write in the chapter. Delete this content, of course. Obviously, you'll be using different formatting, lists, subheadings and more in the chapter. I therefore recommend that you study the following before writing:

* [Learn LaTeX in 30 minutes](https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes)
* [Sections and chapters](https://www.overleaf.com/learn/latex/Sections_and_chapters)
* [Bold, italics and underlining](https://www.overleaf.com/learn/latex/Bold%2C_italics_and_underlining)
* [Lists](https://www.overleaf.com/learn/latex/Lists)
* [Inserting Images](https://www.overleaf.com/learn/latex/Inserting_Images)
* [Tables](https://www.overleaf.com/learn/latex/Tables)
* [Mathematics](https://www.overleaf.com/learn/latex/Mathematics)

## 1.5 Inserting figures
To insert images or diagrams, you must first upload the images to the _figures_ folder in Overleaf. The supported image formats are _.pdf, .png, .jpg_. After uploading an image, it can be added to the table of contents using the following:

```latex
\begin{figure}[!htb]
    \begin{center}
        \includegraphics[width=1\linewidth]{figure.pdf} % Filename
        \caption{Figure description}                    % Figure caption
        \label{fig:label}                               % Figure label
    \end{center}
\end{figure}
```
The displayed size of the image can be changed by the width parameter above (for smaller ones e.g. width=0.5). The mentioned image label is used to create a link to the image in the text. For example, if I had an image of tulips, I would use `\label{fig:tulips}`. I would then reference the image in the text using `\ref{fig:tulips}`. LaTeX example:

```latex
% The ~ character is used to insert an indivisible space
Tulips can be seen in Fig.~\ref{fig:tulips}. 
```

The result in the pdf output will be as follows:

```
Tulips can be seen in Fig. 2.1. 
```

The numbering is automatic and depends on which chapter the image is in. The example with tulips can be seen in the template itself and with the reference, in the Results chapter.

## 1.6 List of symbols and abbreviations
The `glossary.tex` file is used to add to the list of symbols and abbreviations. You will find examples of how to use the command to add a new symbol or abbreviation. Here you can just copy and overwrite the symbols.

## 1.7. Citation
The `library.tex` file is used to add citations. This will be your library (hence library, haha). Citations are added to the file in BibTeX format. So then when you want to cite an article, you first have to add it to your library (`library.tex`). Its BibTeX input looks like this for a random article for example:

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

To create a citation to an article in the text, do the following:

```latex
% Znak ~ se použivá pro vložení nedělitelné mezery
The cause should be helpful in predicting future effects~\cite{Granger1969}.
```

The result in the pdf output will be as follows:

```
The cause should be helpful in predicting future effects [1].
```

As far as citation style and standards are concerned, you don't have to worry about that. Everything is already set in the template itself. BibTeX citations can be exported from most article pages. There is usually an _export_ or _export citation_ button on the page. So you click on that, select the BibTeX format, and copy it into `library.tex`. And you're ready to cite. But I recommend ideally using one of the reference managers, which will make this citation work much easier. For example, [Zotero](https://www.zotero.org), [Mendeley](https://www.mendeley.com) or [EndNote](https://endnote.com).

## 1.8. Additional useful tips and resources
* Use Google
* https://latex-tutorial.com
* https://www.colorado.edu/aps/sites/default/files/attached-files/latex_primer.pdf
* https://www.overleaf.com/learn/latex/Tutorials
* https://tex.stackexchange.com
* https://github.com/tudelft3d/latex-getting-started

# 2. Advanced workflow
> A good workflow is more than a thousand words

More advanced workflow primarily involves using the development environment of your choice (IDE), installing latex locally, using [Git](https://git-scm.com) and a reference manager. You won't find a tutorial on how to set all this up and how to work with it here, but rather a leads. The internet is full of such tutorials. And if you're familiar with all the words in the first sentence, then all you need to do is:

```bash
$ git clone https://github.com/cvut-fbmi/thesis.git
```

## 2.1. Installing LaTeX
Installation for Windows:
* TeXLive: https://www.tug.org/texlive/
* http://mirror.ctan.org/systems/texlive/tlnet/install-tl-windows.exe

Installation for Linux:
* http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
* 
  ```bash
  $ sudo apt-get install texlive
  ```

Installation for Mac:
* MacTeX: http://www.tug.org/mactex/ 
* Homebrew: (https://brew.sh)
  ```bash
  $ brew install texlive
  ```

## 2.2. Some Development Environments
* Visual Studio Code: https://code.visualstudio.com
  * LaTeX Workshop https://github.com/James- Yu/LaTeX- Workshop
  * Code Spell Checker https://github.com/streetsidesoftware/vscode- spell- checker
  * Grammarlyhttps://github.com/znck/grammarly
  
* Vim / Neovim: https://www.vim.org nebo https://neovim.io 
  * Vimtex: https://github.com/lervag/vimtex


* TeXstudio: https://www.texstudio.org

## 2.3. VSCode and LaTeX Workshop
A relatively convenient workflow can be achieved by using LaTeX WorkShop for VSCode. All documentation can be found here: https://github.com/James-Yu/LaTeX-Workshop/wiki. There is also a nice article for this workflow at [Medium](https://medium.com/@rcpassos/writing-latex-documents-in-visual-studio-code-with-latex-workshop-d9af6a6b2815).
