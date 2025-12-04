#!/bin/bash

# Define the project root directory
PROJECT_ROOT="/Users/fw/workspaces/bank2ynab"

# CRITICAL: Change into the directory so Python can find the module 'bank2ynab'
cd "$PROJECT_ROOT" || { echo "Directory not found"; exit 1; }

# Define the path to the virtual environment python executable
VENV_PYTHON="$PROJECT_ROOT/venv/bin/python3"

# Check if the venv exists
if [ ! -x "$VENV_PYTHON" ]; then
  echo "Error: Virtual environment python not found at $VENV_PYTHON."
  echo "Please run: python3 -m venv venv && source venv/bin/activate && pip install -r requirements.txt"
  exit 1
fi

# Run the python script using the specific venv python
"$VENV_PYTHON" -m bank2ynab "$@"