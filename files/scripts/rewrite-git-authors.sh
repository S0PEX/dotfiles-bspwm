#!/usr/bin/env bash

git filter-branch --env-filter '
WRONG_EMAIL="artur.komaristych@ipt.fraunhofer.de"
NEW_NAME="Artur Komaristych"
NEW_EMAIL="artur@s0pex.me"

if [ "$GIT_COMMITTER_EMAIL" = "$WRONG_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$NEW_NAME"
    export GIT_COMMITTER_EMAIL="$NEW_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$WRONG_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$NEW_NAME"
    export GIT_AUTHOR_EMAIL="$NEW_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags