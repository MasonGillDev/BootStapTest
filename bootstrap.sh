echo "Updating packages…"
apt-get update && apt-get upgrade -y


echo "Installing Requirments..."
cd /root/my-bootstraps || exit 1
pip install -r requirments.txt


echo "Running Program..."
python3 setup_python_app.py
