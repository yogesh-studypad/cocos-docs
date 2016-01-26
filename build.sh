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
PGallDocuments=('blank' 'index' '1' '2' '3' '4' '5' '6' '7' '8' '9' '10' '11' '12' '13')
PGallChapters=('1' '2' '3' '4' '5' '6' '7' '8' '9' '10' '11' '12' '13')
PGchaptersWithFolders=('2' '3' '4' '5' '6' '7' '9' '11' '13')
PGchaptersWithOutFolders=('1' '8' '10' '12')

### Services
ServicesallDocuments=('sdkbox')
ServiceschaptersWithFolders=('sdkbox')

### Shared
misc=('blank' 'index' 'title')

### Turn on globbing (BASH 4 required)
#foundDirs=()
#shopt -s globstar

cleanUp() {
  echo "cleaning up cruft..."
  rm -rf print/
  rm -rf _layout.html5
  rm -rf static-pages/*.html static-pages/*.bak static-pages/*.orig
}

exitScript() {
  echo "exiting...."
  exit 0
}

exitScriptAfterStaging() {
  echo "staging version of the guide at: slackmoehrle.github.io"
  exitScript
}

exitScriptIncorrectParameters() {
  echo "incorrect parameter provided... use --help if you need to"
  exitScript
}

exitScriptNotEnoughParameters() {
  echo "you need to provide a parameter to run this script... use --help if you need to"
  exitScript
}

deployToGitHub() { ## deploy docs to GitHub Pages
  echo "deploying to GitHub Pages: ..."
  rsync -ah site/ ../slackmoehrle.github.io
  cd ../slackmoehrle.github.io
  git add .
  git commit -m 'published automatically from cocos-docs build script'
  git push
  cd ../cocos-docs
}

hello() {
  echo "Building the Cocos Documentation..."
  echo ""
  echo "You can pass in --help for help on how to use this script."
  echo ""
  echo "output is in site/... and this is what is deployed."
  echo ""
}

help() {
  ## State what we need for this script to run
  echo "this script reqires: "
  echo ""
  echo "mkdocs: http://www.mkdocs.org/"
  echo "Pandoc: http://johnmacfarlane.net/pandoc/getting-started.html"
  echo "a LaTex Distribution: http://www.tug.org/mactex/downloading.html"
  echo "run: sudo /usr/local/texlive/2014basic/bin/universal-darwin/tlmgr update --self"
  echo "run: sudo /usr/local/texlive/2014basic/bin/universal-darwin/tlmgr install collection-fontsrecommended"
  echo "run: sudo /usr/local/texlive/2014basic/bin/universal-darwin/tlmgr install ec ecc"
  echo "export TEXROOT=/usr/local/texlive/2014basic/bin/universal-darwin/"
  echo "export PATH=\$TEXROOT:\$PATH"
  echo ""
  echo "available options: "
  echo ""
  echo "--help - get help with running this script"
  echo "--all - build absolutely everything and deploy staging versions. This does not deploy to production"
  echo ""
}

prep() { ## these things happen for any docs that are built.
  echo "prepping environment..."
  rm -rf docs/
  mkdir -p docs
}

prepPost() { ## these things happen after mkdocs build so we have everything in site/ that
## we need for deployment
  echo "copying resources to site/..."
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

buildAll() { ## build absolutely everything.
  echo "building absolutely everything..."
  prep
  prepCocosDocs
  prepInstallationDocs
  prepServicesDocs
  prepProgrammersGuide
  buildMarkdown
  prepPost
  buildProgrammersGuidePrint
  buildStaticHTMLPages
  deployToGitHub
  cleanUp
}

prepCocosDocs() { ## build Cocos Docs
  echo "prepping Cocos docs..."
  for i in ${CocoschaptersWithFolders[@]}; do
    rsync -a cocos/${i}-web docs/cocos/
    mv docs/cocos/${i}-web docs/cocos/${i}-img
    cp cocos/${i}.md docs/cocos/${i}.md
  done
}

prepInstallationDocs() { ## build Installation Docs
  echo "prepping Installation docs..."
  for i in ${InstallationchaptersWithFolders[@]}; do
    rsync -a installation/${i}-web docs/installation/
    mv docs/installation/${i}-web docs/installation/${i}-img
    cp installation/${i}.md docs/installation/${i}.md
  done

  for i in ${InstallationchaptersWithOutFolders[@]}; do
    cp installation/${i}.md docs/installation/${i}.md
  done
}

prepServicesDocs() { ## build Services Docs
  echo "prepping Services docs..."
  for i in ${ServiceschaptersWithFolders[@]}; do
    rsync -a services/${i}-web docs/services/
    mv docs/services/${i}-web docs/services/${i}-img
    cp services/${i}.md docs/services/${i}.md
  done
}

prepProgrammersGuide() {
  echo "prepping Programmers Guide..."
  for i in ${PGchaptersWithFolders[@]}; do
    rsync -a programmers-guide/${i}-web docs/programmers-guide/
    mv docs/programmers-guide/${i}-web docs/programmers-guide/${i}-img
    cp programmers-guide/${i}.md docs/programmers-guide/${i}.md
  done

  for i in ${PGchaptersWithOutFolders[@]}; do
    cp programmers-guide/${i}.md docs/programmers-guide/${i}.md
  done

  for i in ${misc[@]}; do
    cp ${i}.md docs/${i}.md
  done
}

buildStaticHTMLPages() {
  echo "building the static pages we need outside of the MKDocs build process..."
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
  ## Now we can use MKDocs to build the static content
  echo "building all of the markdown files we use..."
  echo "MKDocs Build..."
  rm -rf site/
  mkdocs build
}

buildProgrammersGuidePrint() {
  ## create HTML docs from the markdown files in the above array
  echo "prepping Programmers Guide print versions..."
  echo "building Programmers Guide print versions..."
  mkdir -p print

  ## We need these items to build the print versions
  for i in ${PGchaptersWithFolders[@]}; do
    rsync -a programmers-guide/${i}-print print/
    mv print/${i}-print print/${i}-img
    cp programmers-guide/${i}.md print/${i}.md
  done

  for i in ${PGchaptersWithOutFolders[@]}; do
    cp programmers-guide/${i}.md print/${i}.md
  done

  for i in ${misc[@]}; do
    cp ${i}.md print/${i}.md
  done

  cp styling/solarized-light.css styling/main.css styling/style.css styling/_layout.html5 print/.

  cd print/
  for i in "${PGallDocuments[@]}"; do
    pandoc -s --template "_layout" --css "solarized-light.css" -f markdown -t html5 -o ${i}.html ${i}.md
  done

  ## create a PDF from the styled HTML
  echo "building Programmers Guide ePub..."

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

  echo "building Programmers Guide PDF..."
  pandoc -s ProgrammersGuide.epub --variable mainfont=Arial --variable monofont="Andale Mono" -o ProgrammersGuide.pdf --latex-engine=xelatex
  echo ""

  cd ..

  echo "copying Programmers Guide ePub and PDF to site/..."
  cp print/ProgrammersGuide.pdf print/ProgrammersGuide.epub site/.
}

main() {
  ## display opening message to user
  hello

  ## See what parameters the user has supplied.
  if (( $# == 1 )); then
    if [[ "--help" =~ $1 ]]; then ## user asked for help
      help
      exitScript
    elif [[ "--all" =~ $1 ]]; then ## builds absolutely every step
      buildAll
      exitScriptAfterStaging
    else
      exitScriptIncorrectParameters
    fi
  else
    exitScriptNotEnoughParameters
  fi
}

## run our script.
main $1
