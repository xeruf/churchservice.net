#!/bin/sh -ex
git config receive.denyCurrentBranch false
git config core.hooksPath .dev/githooks
npm install
sass --update .
