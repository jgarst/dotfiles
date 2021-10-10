#!/usr/bin/env bash
set -xeEuo pipefail

git init
pyenv local 3.9.1
pyenv exec python -m venv env --prompt "{{cookiecutter.project}}"
pyenv local --unset

env/bin/pip install --upgrade pip
env/bin/pip install pip-tools
env/bin/pip-compile

git add -A
git commit -m "inital commit"

env/bin/pip-sync

env/bin/pre-commit install --hook-type commit-msg

npm install
direnv allow
