#!/bin/bash
#
# Script that builds the CV to PDF documents.
# Will also deploy to github if flag -d or --deploy is given.
# Currently supported languages: English, Finnish.

# Stop execution on error.
set -e

BUILD=true
DEPLOY=false

# Check for flags.
while test $# -gt 0; do
  case "$1" in
    -nb|--no-build)
      BUILD=false
      shift
      ;;

    -d|--deploy)
      DEPLOY=true
      shift
      ;;

    *)
      break
      ;;
  esac
done

if [ "$BUILD" = true ] ; then
  docker build . -t cv
  docker run --rm -i --net=none -v "$PWD"/doc:/doc -t cv ./scripts/build.sh
fi

if [ "$DEPLOY" = true ] ; then
  pushd ../ikudjoi

  git fetch origin
  git reset --hard origin/master

  cp ../cv/doc/dist/CV_Ilkka_Kudjoi_*.pdf .

  git add CV_Ilkka_Kudjoi_*.pdf
  git commit -m "Updated CV's from https://github.com/ikudjoi/cv"
  git push

  popd
fi
