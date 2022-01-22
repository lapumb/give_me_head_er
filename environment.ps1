# Create the Python3 virtual environment if it does not already exist
if (-Not (Test-Path .venv\)) {
    python3 -m venv .venv
} 

# Activate the virtual environment and install project requirements
.venv\Scripts\activate.ps1
pip3 install -r requirements.txt