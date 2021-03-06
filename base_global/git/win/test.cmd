@echo off


git fetch

for /f %%j in ('git log --oneline origin/master -1') do SET RESULT=%%j
:: echo RESULT is %RESULT%

SET COMMIT=%RESULT:~,7%
:: echo COMMIT is %COMMIT%

git checkout -q %COMMIT%

git add .
git commit -m "Added new commits from the submodule repository"
git push