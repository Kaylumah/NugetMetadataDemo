#!/bin/sh -x

REPO_URL=$(git config --get remote.origin.url)
REPO_BRANCH=$(git branch --show-current)
REPO_COMMIT=$(git rev-parse HEAD)
dotnet build -p:RepositoryUrl="$REPO_URL" -p:RepositoryBranch="$REPO_BRANCH" -p:RepositoryCommit="$REPO_COMMIT" -p:RepositoryType="git"