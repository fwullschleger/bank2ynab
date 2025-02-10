#!/bin/bash

# Activate the virtual environment
source venv/bin/activate

# Run the python script with any passed arguments
python3 -m bank2ynab "$@"

# Deactivate the virtual environment
deactivate
