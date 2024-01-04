@echo off

set gitUrl=%1
set repoName=%2
set branchName=%3

echo URL:%gitUrl%,Repo:%repoName%,Branch:%branchName%

cd..

if exist %repoName%\ (
  echo Updating Repo %repoName%
  cd %repoName%
  git checkout %branchName%
  git fetch
  git pull
  dotnet build
) else (
  echo Repo %repoName% does not exist in parent folder.
  git clone %gitUrl%%repoName%.git
  cd %repoName%
  git checkout %branchName%
  dotnet build
)