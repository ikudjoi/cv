Push-Location ../ikudjoi.github.io

git fetch origin
git reset --hard origin/master

Copy-Item ../cv/dist/CV_Ilkka_Kudjoi_*.pdf

git add CV_Ilkka_Kudjoi_*.pdf
git commit -m "Updated CV's from https://github.com/ikudjoi/cv"
git push

Pop-Location
