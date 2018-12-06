# CV #

### Scripts  ###

* *bootstrap.ps1*
    * Will build and start a Docker container with texlive-full installed. All bash scripts should be run inside the container and PS scripts outside.
* *change_locale.sh*
	* Change the localization for both content and section of the given .tex file
	* Example: ```bash change_locale.sh -en CV.tex``` 
* *copy_CV_to_dist.sh*
	* Copies the given file to dist subfolder with the flagged suffix
	* Example: ```bash copy_CV_to_dist.sh -en CV.pdf```
* *build.sh*
	* Builds the CV and performs a copy to the dist subfolder in both en\_US and fi\_FI locales.
* *deploy.ps1*
	* Pushes the CD PDF's to github.io repository.
