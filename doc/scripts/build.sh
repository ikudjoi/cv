#!/bin/bash
#
# Script that builds the CV to PDF documents.
# Currently supported languages: English, Finnish.

# Stop execution on error.
set -e

# Build and copy English
./scripts/change_locale.sh -en CV.tex
lualatex CV.tex
./scripts/copy_CV_to_dist.sh -en CV.pdf


# Build and copy Finnish
./scripts/change_locale.sh -fi CV.tex
lualatex CV.tex
./scripts/copy_CV_to_dist.sh -fi CV.pdf

