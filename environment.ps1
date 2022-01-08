# Create the Python3 virtual environment if it does not already exist
if (-Not (Test-Path .venv\)) {
    python -m venv .venv
} 

# Activate the virtual environment and install project requirements
.venv\Scripts\activate.ps1
pip install -r requirements.txt