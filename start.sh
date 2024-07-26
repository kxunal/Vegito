set -e
export FLASK_APP=itachi:create_app
gunicorn -w 4 -b 0.0.0.0:${PORT:-8080} itachi:create_app &
python3 main.py
