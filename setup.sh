#!/bin/sh -e
git config receive.denyCurrentBranch false
git config core.hooksPath .dev/githooks
