# {TDK cím}

## {Egyetem}, {Kar}, {Tanszék}

Szerzők: {Szerzők}

Témavezető: {Témavezető}

## Absztrakt

{Absztrakt}

## Build

A buildhez a `latexmk` és a `pdflatex` programok szükségesek.

### Dolgozat

A dolgozat a `paper/make_paper.bat` állományt futtatva állítható össze. Opciók:

  * `make_paper.bat otdk`
    * OTDK változat névvel, borítólappal.
  * `make_paper.bat tdk-nevvel`
    * TDK változat névvel.
  * `make_paper.bat tdk-nev-nelkul` vagy `make_paper.bat`
    * TDK változat név nélkül.

### Előadás

Az előadás szövege a `presentation/make_presentation.bat` állománnyal állítható össze.
