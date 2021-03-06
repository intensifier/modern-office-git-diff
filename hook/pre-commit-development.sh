#!/usr/bin/env bash
# This hook also runs tests and is intended only for this repository.
# For repositories other than this, use `pre-commit.sh`.
if [ ! -z "command -v powershell" ]
then
  powershell cmd/run-tests.ps1
  powershell cmd/version-office-files.ps1
elif [ ! -z "command -v pwsh" ]
then
  pwsh cmd/run-tests.ps1
  pwsh cmd/version-office-files.ps1
else
  echo "PowerShell is not installed."
fi
