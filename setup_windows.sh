#!/usr/bin/env sh

set -euo pipefail

env_dir=.venv

python -m venv "${env_dir}"
source "${env_dir}/Scripts/activate"

pip install .

python -m spacy download pl_core_news_sm

echo "Success"