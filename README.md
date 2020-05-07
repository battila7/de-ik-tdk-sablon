<div align="center">
  <a href="https://unideb.hu">
    <img alt="Debreceni Egyetem" src="img/egyetem-logo.png" width="150">
  </a>
  <a href="https://www.ik.unideb.hu/smartcampus/tdk/">
    <img alt="Debreceni Egyetem Informatikai Kar TDK" src="img/tdk-logo.png" width="100">
  </a>
</div>

# DE IK TDK Dolgozat Sablon

TDK dolgozat LaTeX sablon, mely megfelel a Debreceni Egyetem Informatikai Kar által kiadott [formai követelményeknek](https://www.ik.unideb.hu/smartcampus/tdk/formai-kovetelmenyek.html).

**Tartalomjegyzék**

  * [Miért használjam ezt a sablont?](#Miért-használjam-ezt-a-sablont)
  * [A sablon tartalma](#A-sablon-tartalma)
  * [Előfeltételek](#Előfeltételek)
    * [Szoftveres előfeltételek](#Szoftveres-előfeltételek)
    * [Fejlesztőkörnyezet](#Fejlesztőkörnyezet)
    * [Ismeretek](#Ismeretek)
  * [Munka a sablonnal](#Munka-a-sablonnal)
    * [git és GitHub használatával](#git-és-GitHub-használatával)
    * [git és GitHub nélkül](#git-és-GitHub-nélkül)
  * [Példák](#Példák)
  * [Licenc](#Licenc)

## Miért használjam ezt a sablont?

A következőkben nemcsak a sablon tulajdonságait szeretnénk kiemelni, hanem a sablonnal járó technológiák főbb előnyeit is felsorolnánk, mint megfontolandó érveket:

  * A sablon eleve teljesíti a formai követelményeket. Nincs szükség semmilyen formázással kapcsolatos globális beállításra.
  * A sablon szép: akár a szövegtörzs, a kódrészletek, vagy az APA-stílusú hivatkozások.
  * Mert LaTeX:
    * Könnyedén készíthetünk szép matematikai formulákat, legyen szó akármilyen bonyolult kifejezésről.
    * A dokumentumot több, kisebb fájlra bonthatjuk. Nem egy hatalmas állományt kell kezelnünk.
    * A BibTeX leegyszerűsíti a hivatkozásokkal folytatott munkát.
  * Mert git és GitHub:
    * A git segítségével követhetjük a módosításokat, egyszerűen visszatérhetünk korábbi verziókra.
    * A GitHubra feltöltve biztosan nem fogunk egyetlen módosítást sem elveszíteni.
    * A git és a GitHub együttesen lehetővé teszik, hogy több szerző is kényelmesen, adatvesztés nélkül tudjon dolgozni a dokumentumon.

## A sablon tartalma

A következőkben a tároló mappastruktúrájának megfelelően ismertetjük, hogy az egyes fájlok és mappák mire szolgálnak:

  * [paper](paper) – A tényleges TDK dolgozathoz kapcsolódó fájlokat tartalmazó mappa.
    * [build](paper/build)
      * Az elkészült TDK dolgozat ebbe a mappába fog bekerülni, PDF formátumban.
    * [chapters](paper/chapters)
      * A fejezetek TeX forrásait tartalmazó mappa. Lényegében ebbe a mappába írhatjuk bele a dolgozatunk szövegét.
    * [code](paper/code)
      * A hosszabb kódrészleteket érdemes a TeX forrásokon kívülre, ebbe a mappába helyezni.
    * [images](paper/images)
      * A TDK dolgozatban felhasznált képeket, ábrákat helyezhetjük ebbe a mappába.
    * [misc](paper/misc)
      * [coverpage.tex](paper/misc/coverpage.tex) – Borítólap az OTDK változathoz.
      * [defines.tex](paper/misc/defines.tex) – Különféle TeX beállításokat tartalmaz, például a kódrészletek stílusát, a hivatkozások formátumát.
      * [titlepage.tex](paper/misc/titlepage.tex) – Címlap a TDK változathoz névvel, valamint név nélkül.
    * [main-paper.tex](paper/main-paper.tex)
      * A dolgozat belépési pontja, mely hivatkozza a többi TeX állományt. Ebben tudjuk felsorolni a felhasznált TeX csomagokat, valamint itt módosíthatjuk a dolgozat struktúráját (azaz, például a Köszönetnyilvánítás pozícióját).
    * [make-paper.bat](paper/make-paper.bat), [make-paper.sh](paper/make-paper.sh)
      * A dolgozat PDF változatának buildelésére szolgáló szkriptek Windowsra, illetve *nix-re. Ezek használatára vonatkozó utasításokat a [README_sablon.md](README_sablon.md) állományban találhatunk.
    * [references.bib](paper/references.bib)
      * A hivatkozásokat tartalmazó BibTeX állomány.
  * [presentation](presentation) – A TDK dolgozathoz kapcsolódó előadás vázlata. Opcionális.
    * [build](presentation/build)
      * Az előadás vázlata ebbe a mappába fog bekerülni, PDF formátumban.
    * [main-talk.tex](presentation/main-talk.tex)
      * Az előadás vázlatának megfelelő TeX forrásfájl.
    * [make-talk.bat](presentation/make-talk.bat), [make-talk.sh](presentation/make-talk.sh)
      * A vázlat PDF változatának buildelésére szolgáló szkriptek Windowsra, illetve *nix-re. Ezek használatára vonatkozó utasításokat a [README_sablon.md](README_sablon.md) állományban találhatunk.
  * [.gitignore](.gitignore)
    * Mi a .gitignore és hogyan használhatjuk? [Atlassian .gitignore](https://www.atlassian.com/git/tutorials/saving-changes/gitignore)
  * [README_sablon.md](README_sablon.md)
    * A dolgozat legfontosabb adatait (cím, szerzők, stb.), valamint a buildelésre vonatkozó utasításokat tartalmazó leírás.

## Előfeltételek

### Szoftveres előfeltételek

A sablonnal való munkához a következő szoftverek telepítése szükséges:

  * pdflatex
  * latexmk
    * Mind a `pdflatex`, mind a `latexmk` beszerzésére a legjobb megoldás a [TeX-Live Full](https://www.tug.org/texlive/acquire-netinstall.html) disztribúció letöltése, mely tartalmazza e programokon felül az összes szükséges TeX csomagot is. Windowson használhatjuk a megfelelő telepítőállományt, míg például Ubuntun elegendő az `apt install texlive-full` parancs.
  * git (opcionális)

### Fejlesztőkörnyezet

Ajánlott a Visual Studio Code szerkesztőprogram használata, mely letölthető innen: [code.visualstudio.com](https://code.visualstudio.com/).

A kényelmes munkához telepítsük a [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) bővítményt is, mely biztosítja például a következőket:

  * szintaxis kiemelés (syntax highlighting),
  * automatikus kódkiegészítés (IntelliSense),
  * az egérmutató alatt található képletek megjelenítése,
  * fordítási hibák megjelenítése,
  * a dolgozat élő megjelenítése, mely a módosításokkal változik (akár egy szerkesztőfülön, akár egy böngészőfülben).

### Ismeretek

A sablonnal való hatékony munkához a következő ismeretekre lehet szükségünk:

  * a parancssor használata (*nix-en terminál),
  * LaTeX
    * Számos magyar nyelvű leírás és útmutató található itt: https://math.bme.hu/latex/
    * Angol nyelvű leírás: https://www.overleaf.com/learn
  * git (opcionális)
    * Gyorstalpaló: https://guides.github.com/introduction/git-handbook/
    * Részletes angol nyelvű leírás: https://www.atlassian.com/git/tutorials/learn-git-with-bitbucket-cloud
  * GitHub (opcionális)
    * Számos lecke található a következő oldalakon:
      * https://lab.github.com/
      * https://guides.github.com/

## Munka a sablonnal

### git és GitHub használatával

#### Saját repository elkészítése

Legelőször készítenünk kell egy saját GitHub *repositoryt* a sablon alapján. Ehhez kövessük a [*Creating a repository from a template*](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-from-a-template) cikkben leírtakat.

A repository létrehozása után, amennyiben nem szeretnénk, hogy az bárki számára látható legyen, priváttá kell azt tennünk. Ehhez kövessük az itt található lépéseket: [Setting repository visbility](https://help.github.com/en/github/administering-a-repository/setting-repository-visibility).

Ha a dolgozatot több szerző írja, akkor ne felejtsünk el *Write* vagy *Maintain* jogot adni a többi szerzőnek a *repositoryhoz*: [Managing teams and people with access to your repository](https://help.github.com/en/github/administering-a-repository/managing-teams-and-people-with-access-to-your-repository).

#### A repository klónozása

A következő lépés a *repository* klónozása, hogy a saját gépünkön tudjuk szerkeszteni annak tartalmát:

~~~~
git clone https://github.com/felhasznalo/tdk
~~~~

#### A sablon mezők kitöltése

A sablon számos állománya tartalmaz úgynevezett sablon mezőket, melyeket `{{` és `}}` jelek határolnak. Például: `{{Szerző}}`. Érdemes azzal kezdeni, hogy ezek közül minél többet kitöltünk. Ezen felül nyugodtan törölhetjük ezt az állományt is, valamint egyúttal átnevezhetjük a `README_sablon.md` állományt `README.md`-re.

#### A módosítások feltöltése GitHubra

Ne felejtsünk el *commitokat* készíteni a módosításainkból, melyeket aztán *pusholhatunk* GitHubra, hogy mindenki számára láthatók legyenek!

#### A PDF kimenetek feltöltése GitHubra

Amennyiben elkészültünk egy olyan PDF kimenettel, mely már véglegesnek tekinthető, érdemes egy GitHub Release-t készíteni, hogy a kimenet könnyen elérhető legyen, a *repository* klónozása és buildelése nélkül.

Ennek lépéssora megtalálható itt: [Managing releases in a repository](https://help.github.com/en/github/administering-a-repository/managing-releases-in-a-repository)

### git és GitHub nélkül

**Figyelem**: Ezzel elveszítjük a git és a GitHub nyújtotta kollaborációs lehetőségeket!

#### A sablon tartalmának letöltése

A sablon tartalmát letölthetjük ZIP archívum formájában a következő linken keresztül: https://github.com/battila7/tdk-template/archive/master.zip

#### További lépések

Ezt követően hajtsuk végre a [A sablon mezők kitöltése](#A-sablon-mezők-kitöltése) szekcióban írtakat.

## Példák

A sablon felhasználásával készültek a következő TDK dolgozatok. Open Source dolgozat esetén szerepel a kódot tartalmazó repository is:

  * Attribute-based Encryption WASI-alapú platformfüggetlen implementációja
    * Adatok:
      * Szerzők: Szürti Szilárd Dávid, Mezei Botond.
      * Témavezetők: Bagossy Attila, Vécsi Ádám.
      * Helyi TDK-ra beadva 2020-ban.
  * GDPR konform platform - formális kiértékelő logikával és munkafolyamat alapú elosztott szolgáltatásokkal
    * Adatok:
      * Szerzők: Szabó Gergely, Kovács Lajos.
      * Témavezető: Dr. Adamkó Attila Tamás.
      * Helyi TDK-ra beadva 2020-ban.
  * PET és CT felvételek együttes feldolgozása
    * Adatok:
      * Szerzők: Simkó Szilárd Viktor, Bersenszki Márió.
      * Témavezető: Dr. Harangi Balázs.
      * Helyi TDK-ra beadva 2020-ban.
  * [CryptID – Platformfüggetlen Identity-based Encryption megoldás](https://github.com/battila7/cryptid-tdk)
    * Adatok:
      * Szerzők: Bagossy Attila, Vécsi Ádám.
      * Témavezető: Dr. Pethő Attila.
      * Helyi TDK-ra beadva 2018-ban.
    * [PDF állományok](https://github.com/battila7/cryptid-tdk/releases)
  * [Generátorok előállítása CPS-transzformációval Java nyelven](https://github.com/battila7/jield-tdk)
    * Adatok:
      * Szerző: Bagossy Attila.
      * Témavezetők: Dr. Battyányi Péter, Balla Tibor.
      * Helyi TDK-ra beadva 2017-ben.
    * [PDF állományok](https://github.com/battila7/jield-tdk/releases)

## Licenc

A sablon az [MIT License](LICENSE) alatt érhető el és terjeszthető.
