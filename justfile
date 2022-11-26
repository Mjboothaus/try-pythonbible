# TODO: Try and get a reproducible Python project `justfile` and associated e.g. requirements-dev.in

python -m venv .venv_try-pythonbible
source .venv_try-pythonbible/bin/activate
python -m pip install --upgrade pip
pipx install pip-tools
pip-compile requirements-dev.in
pip install -r requirements-dev.txt
python -m ipykernel install --user --name .venv_try-pythonbible