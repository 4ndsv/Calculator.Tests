@echo off

set gitUrl=https://github.com/4ndsv/
set branchName=main
set repoList=Calculator Viewer

echo Checking dependecies...


(for %%r in (%repoList%) do ( 
   start cmd /k SetupGit %gitUrl% %%r %branchName%
   echo %%r Done!
))

pause >nul