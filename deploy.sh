#!/bin/bash
echo gpv7 - Deploy current version to Heroku
git add -A
git status
git commit -m "new files"
#git push -u origin --all
git push heroku main
#git push -u heroku --all
git push
#git push heroku main
git push -u origin main