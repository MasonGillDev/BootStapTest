echo "Updating packages…"
apt-get update && apt-get upgrade -y



echo "Creating Python venv..."
python3 -m venv /root/my-bootstraps/venv


echo "Installing Requirments..."
cd /root/my-bootstraps || exit 1
/root/my-bootstraps/venv/bin/pip install --upgrade pip
/root/my-bootstraps/venv/bin/pip install -r requirments.txt


echo "Running Program..."
python3 setup_python_app.py
