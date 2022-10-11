#!/bin/sh -ex
git config receive.denyCurrentBranch updateInstead
git config core.hooksPath .dev/githooks
npm install --no-save
sass --update .
