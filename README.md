# CV #

The Curriculum Vitae update wizard of Ilkka Kudjoi. Forked originally from Robert Sirviö (https://github.com/plhrja) but containerization and many other details is authored by me. To update the CV only Docker Desktop and a shell with bash script support is required from the host computer. CV is rebuilt and deployed with single command `./build.sh -d` only.

### Scripts  ###

* *build.sh*
    * Builds and runs a Docker container with texlive-full installed and uses it to compile the CV document. If parameter -d or --deploy is given, it will push the new pdf's to github.io. 
* *doc/script/change_locale.sh*
    * Used to change localization of the CV.
* *doc/script/copy_CV_to_dist.sh*
    * Copies the given file to dist subfolder with the flagged suffix.
* *doc/script/build.sh*
    * Builds the CV and performs a copy to the dist subfolder in both en\_US and fi\_FI locales.
