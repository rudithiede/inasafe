#!/bin/bash
LOCALES='af id'

if [ $1 ]; then
  LOCALES=$1
fi

for LOCALE in $LOCALES
do
  for POFILE in `ls i18n/${LOCALE}/LC_MESSAGES/*.po`
  do
    MOFILE=i18n/${LOCALE}/LC_MESSAGES/`basename ${POFILE} .po`.mo
    # Compile the translated strings
    echo "Compiling messages to ${MOFILE}"
    msgfmt --statistics -o ${MOFILE} ${POFILE}
  done
done

# We need to flush the _build dir or the translations dont come through
rm -rf _build
#Add english to the list and generated docs
LOCALES='en af id'
for LOCALE in ${LOCALES}
do
  # Compile the html docs for this locale
  sphinx-build -b html -a -Dlanguage=${LOCALE} . _build/html/${LOCALE}
  #sphinx-build -D language=${LOCALE} -b html . _build/html/${LOCALE}

  # Compile the latex docs for that locale
  #sphinx-build -D language=${LOCALE} -b latex . _build/latex/${LOCALE}

  # Compile the pdf docs for that locale
  #sphinx-build -D language=${LOCALE} -b latexpdf . _build/pdf/${LOCALE}
done
