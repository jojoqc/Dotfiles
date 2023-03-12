sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

sudo apt install python3.11 python3.11-dev python3.11-venv python3.11-distutils python3.11-gdbm -y
sudo apt install python3.8 python3.8-dev python3.8-venv python3.8-distutils python3.8-gdbm -y

python3.11 get-pip.py
python3.8 get-pip.py

python3.11 -m pip install --upgrade pip
python3.8 -m pip install --upgrade pip

python3.11 -m pip install pyOpenSSL --upgrade
python3.11 -m pip install cryptography --upgrade

python3.8 -m pip install pyOpenSSL --upgrade
python3.8 -m pip install cryptography --upgrade


# microsoft's language server for Python
pip3 install -U pyright
