#!/usr/bin/env python
"""Git pre-commit hook to run pylint on python files.

from https://gist.github.com/nivbend/7e0e306a98138916b3c9#file-run_pylint-py
"""

from subprocess import check_output, CalledProcessError
from sys import stderr
from os.path import isfile
from pathlib import Path

(SUCCESS,
 GIT_DIFF_ERROR,
 PYLINT_ERRORS) = range(3)

PYLINTRC = ".pylintrc"


def _print_error(message):
    """Print an error message to stderr."""
    print(message, file=stderr)


def _is_python_script(myfile):
    """Return true for *.py files and python scripts ("#! /path/to/python")."""
    if not myfile.is_file():
        return False

    if not myfile.suffix == '.py':
        try:
            with open(myfile, 'rb') as contents:
                first_line = contents.readline()
        except OSError:
            return False

        # Check shebang.
        if not (first_line.startswith('#!') and 'python' in first_line):
            return False

    return True


def run():
    """Verify changed python files using pylint."""
    # Get all changed files' paths.
    gitdiff = ['git', 'diff', '--staged', '--name-only', 'HEAD']
    try:
        changed_files = (
            Path(file) for file in check_output(gitdiff).decode().splitlines()
        )
    except CalledProcessError:
        _print_error("Couldn't get list of changed files")
        return GIT_DIFF_ERROR

    # Limit checks to python scripts only.
    changed_files = [
        filename for filename in changed_files
        if _is_python_script(filename)
    ]

    if changed_files:
        try:
            check_output(['pylint', *changed_files])
        except CalledProcessError as error:
            _print_error(error.output)
            _print_error('pylint returned errors, aborting commit.')
            return PYLINT_ERRORS

    return SUCCESS


if __name__ == "__main__":
    exit(run())
