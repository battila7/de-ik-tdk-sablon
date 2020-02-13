# {TDK cím}

## {{Egyetem}}, {{Kar}}, {{Tanszék}}

Szerzők:
  * {{Szerző 1}}
    * Email: {{Szerző 1 Email}}

Témavezetők:
  * {{Témavezető 1}}
    * Email: {{Témavezető 1 Email}}

## Absztrakt

{Absztrakt}

## Build

### Függőségek

A buildhez a `latexmk` és a `pdflatex` programok szükségesek. Ezek beszerzésének legegyszerűbb és legbiztosabb módja a [Tex Live](https://www.tug.org/texlive/acquire-netinstall.html).

### Dolgozat

A dolgozat a `paper/make-paper.bat` állományt futtatva állítható össze. Opciók:

  * `make-paper.bat otdk` (Windows) vagy `make-paper.sh otdk` (*nix) (a többi esetben is ugyanígy .sh végződés)
    * OTDK változat névvel, borítólappal.
  * `make-paper.bat tdk-nevvel`
    * TDK változat névvel.
  * `make-paper.bat tdk-nev-nelkul` vagy `make-paper.bat`
    * TDK változat név nélkül.

### Előadás

Az előadás szövege a `presentation/make-talk.bat` állománnyal állítható össze.
