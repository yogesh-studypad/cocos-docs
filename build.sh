#!/bin/bash

### Define variables that we need for this script
### These are the chapters are are currently done. Add chapters here.
allDocuments=('blank' 'index' '1' '2' '3' '4' '5' '6' '7' '8' '9' '10' '11'
'12' '13' 'A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'cocos' 'sdkbox')

### Cocos
CocosAll=('cocos')
CocoschaptersWithFolders=('cocos')

### Installation Docs
InstallationallDocuments=('A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I')
InstallationchaptersWithFolders=('B' 'C' 'D' 'F' 'G' 'H')
InstallationchaptersWithOutFolders=('A' 'E' 'I')

### Programmers Guide
PGallDocuments=('blank' 'index' '1' '2' '3' '4' '5' '6' '7' '8' '9' '10' '11'
'12' '13')
PGallChapters=('1' '2' '3' '4' '5' '6' '7' '8' '9' '10' '11'
'12' '13')
PGchaptersWithFolders=('2' '3' '4' '5' '6' '7' '9' '11' '13')
PGchaptersWithOutFolders=('1' '8' '10' '12')

### Services
ServicesallDocuments=('sdkbox')
ServiceschaptersWithFolders=('sdkbox')

### Shared
misc=('blank' 'index' 'title')

foundDirs=()

### Turn on globbing (BASH 4 required)
shopt -s globstar

hello() {
  echo "Building the Cocos2d Documentation..."
  echo ""
  echo "You can pass in --help for help on how to use this script."
  echo ""
}

help() {
  ## State what we need for this script to run
  echo "this script reqires: "
  echo ""
  echo "mkdocs: http://www.mkdocs.org/"
  echo "Pandoc: http://johnmacfarlane.net/pandoc/getting-started.html"
  echo "A LaTex Distribution: http://www.tug.org/mactex/downloading.html"
  echo "run: sudo /usr/local/texlive/2014basic/bin/universal-darwin/tlmgr update --self"
  echo "run: sudo /usr/local/texlive/2014basic/bin/universal-darwin/tlmgr install collection-fontsrecommended"
  echo "run: sudo /usr/local/texlive/2014basic/bin/universal-darwin/tlmgr install ec ecc"
  echo "export TEXROOT=/usr/local/texlive/2014basic/bin/universal-darwin/"
  echo "export PATH=$TEXROOT:$PATH"
  echo ""
  echo "To Do: Be able to insert a page break at the end of each chapter. right now it is continuous"
  echo ""
}

cleanUp() {
  echo "cleaning up cruft..."
  rm -rf print/
  rm -rf _layout.html5
  rm -rf static-pages/*.html static-pages/*.bak static-pages/*.orig
}

exitScript() {
  echo "Staging version of the guide at: slackmoehrle.github.io"
  echo "exiting...."
  exit 0
}

deployToGitHub() {
  echo "deploying to GitHub Pages: ..."
  rsync -a site/ ../slackmoehrle.github.io
  cd ../slackmoehrle.github.io
  git add .
  git commit -m 'published automatically from script'
  git push
  cd ../cocos-docs
}

buildCocosDocs() {
  for i in ${CocoschaptersWithFolders[@]}; do
    rsync -a cocos/${i}-web docs/cocos/
    mv docs/cocos/${i}-web docs/cocos/${i}-img
    cp cocos/${i}.md docs/cocos/${i}.md
  done
}

buildInstallationDocs() {
  for i in ${InstallationchaptersWithFolders[@]}; do
    rsync -a installation/${i}-web docs/installation/
    mv docs/installation/${i}-web docs/installation/${i}-img
    cp installation/${i}.md docs/installation/${i}.md
  done

  for i in ${InstallationchaptersWithOutFolders[@]}; do
    cp installation/${i}.md docs/installation/${i}.md
  done
}

buildServicesDocs() {
  for i in ${ServiceschaptersWithFolders[@]}; do
    rsync -a services/${i}-web docs/services/
    mv docs/services/${i}-web docs/services/${i}-img
    cp services/${i}.md docs/services/${i}.md
  done
}

buildProgrammersGuide() {
  for i in ${PGchaptersWithFolders[@]}; do
    rsync -a programmers-guide/chapters/${i}-web docs/programmers-guide/
    rsync -a programmers-guide/chapters/${i}-print print/
    mv docs/programmers-guide/${i}-web docs/programmers-guide/${i}-img
    mv print/${i}-print print/${i}-img
    cp programmers-guide/chapters/${i}.md docs/programmers-guide/${i}.md
    cp programmers-guide/chapters/${i}.md print/${i}.md
  done

  for i in ${PGchaptersWithOutFolders[@]}; do
    cp programmers-guide/chapters/${i}.md docs/programmers-guide/${i}.md
    cp programmers-guide/chapters/${i}.md print/${i}.md
  done
}

buildStaticHTMLPages() {
  echo "building the static pages we need outside of the MKDocs build process."
  echo "output is in site/static-pages/..."

  SED="/usr/bin/sed"

  cd static-pages/

  ## Copy the build index.html page so that we can add the sections.
  ## We can't do this as part of MkDocs as it would require these pages
  ## be listed in the TOC. Also, Pandoc would also need it's resouces since it
  ## finds links to them in the markdown when building
  cp ../site/index.html .
  ${SED} -i .bak -E -f index.sed index.html
  cp index.html ../site/.

  ## Copy the 404 as our template for each new page
  ## replace the 404 content with our key
  cp ../site/404.html .
  mv 404.html template.orig

  ${SED} -i .bak -e 's#href=\"index.html\"#href=\"../index.html\"#g' template.orig
  ${SED} -i .bak -e 's/.\/css\//..\/css\//g' template.orig
  ${SED} -i .bak -e 's/.\/js\//..\/js\//g' template.orig
  ${SED} -i .bak -e 's/.\/mkdocs..\/js\//..\/mkdocs\/js\//g' template.orig
  ${SED} -i .bak -e 's/cocos\/cocos\//..\/cocos\/cocos\//g' template.orig
  ${SED} -i .bak -e 's/programmers-guide\//..\/programmers-guide\//g' template.orig
  ${SED} -i .bak -E -f template.sed template.orig

  ## copy template to each page we need
  ## replace the key in each page with it's content
  cp template.orig installation.html
  cp template.orig theBasics.html
  cp template.orig toolchain.html
  ${SED} -i .bak -f installation.sed installation.html
  ${SED} -i .bak -f theBasics.sed theBasics.html
  ${SED} -i .bak -f toolchain.sed toolchain.html

  ## sync html pages and images with site/ so they get published
  rsync -a *.html ../site/static-pages/
  rsync -a *.png ../site/static-pages/

  cd ..
}

buildMarkdown() {
  echo "building the Markdown to HTML with MKDocs..."
  echo "output is in site/..."
  echo "copying resources to respective directories..."
  rm -rf docs/
  mkdir -p docs
  mkdir -p print

  buildCocosDocs
  buildInstallationDocs
  buildServicesDocs
  buildProgrammersGuide

  ## this needs to happen each time
  for i in ${misc[@]}; do
    cp ${i}.md docs/${i}.md
    cp ${i}.md print/${i}.md
  done

  ## Now we can use MKDocs to build the static content
  echo "MKDocs Build..."
  rm -rf site/
  mkdocs build

  ## Now, lets copy the img folder to each chapter, we need to do this for theme
  ## path issues in the fact each directory is treated separately.
  ## We will get some errors here for chapters that dont yet exist
  for i in ${CocosAll[@]}; do
    rsync -a theme/img site/cocos/${i}/
  done
  for i in ${InstallationallDocuments[@]}; do
    rsync -a theme/img site/installation/${i}/
  done
  for i in ${ServicesallDocuments[@]}; do
    rsync -a theme/img site/services/${i}/
  done
  for i in ${PGallChapters[@]}; do
    rsync -a theme/img site/programmers-guide/${i}/
  done
}

buildPrint() {
  ## create HTML docs from the markdown files in the above array
  echo "building print versions..."
  cp styling/solarized-light.css styling/main.css styling/style.css styling/_layout.html5 print/.

  cd print/
  for i in "${PGallDocuments[@]}"; do
    pandoc -s --template "_layout" --css "solarized-light.css" -f markdown -t html5 -o ${i}.html ${i}.md
  done

  ## create a PDF from the styled HTML
  echo "building ePub..."

  pandoc -S --epub-stylesheet="style.css" -o "ProgrammersGuide.epub" \
  index.html \
  blank.html \
  1.html \
  blank.html \
  2.html \
  blank.html \
  3.html \
  blank.html \
  4.html \
  blank.html \
  5.html \
  blank.html \
  6.html \
  blank.html \
  7.html \
  blank.html \
  8.html \
  blank.html \
  9.html \
  blank.html \
  10.html \
  blank.html \
  11.html \
  blank.html \
  12.html \
  blank.html \
  13.html \
  blank.html

  echo "building PDF..."
  pandoc -s ProgrammersGuide.epub --variable mainfont=Arial --variable monofont="Andale Mono" -o ProgrammersGuide.pdf --latex-engine=xelatex
  echo ""

  cd ..

  cp print/ProgrammersGuide.pdf print/ProgrammersGuide.epub site/.
}

main() {
  ## display opening message to user
  hello

  ## See what parameters the user has supplied.
  if (( $# == 1 )); then
    if [[ "--help" =~ $1 ]]; then ## user asked for help
      help
      exit 0
    fi
  fi

  ## we don't need parameters to run the script so build the documentation
  buildMarkdown
  buildPrint
  buildStaticHTMLPages
  deployToGitHub
  cleanUp
  exitScript
}

## run our script.
main $1
