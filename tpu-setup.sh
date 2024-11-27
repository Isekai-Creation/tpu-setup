export DEBIAN_FRONTEND=noninteractive

curl -f https://packages.cloud.google.com/apt/doc/apt-key.gpg \
    | sudo apt-key add -



sudo apt-get update -y
sudo apt-get install software-properties-common -y

DEBIAN_FRONTEND=noninteractive sudo add-apt-repository ppa:deadsnakes/ppa -y


sudo apt install python3.10 python3.10-venv python3.10-dev -y
python3.10 --version

sudo curl -sS https://bootstrap.pypa.io/get-pip.py | sudo python3.10

sudo pip uninstall -y tensorflow tensorflow-cpu

sudo pip install loguru peft pandas


pip install markupsafe==2.0.1

pip install git+https://github.com/huggingface/transformers

pip install git+https://github.com/huggingface/diffusers

sudo apt-get install -y libgl1 libglib2.0-0 google-perftools



# Memory check
wget https://raw.githubusercontent.com/radna0/EasyAnimate/refs/heads/TPU/mem_check.py

# tpu-info
python3.10 -m pip install tpu-info

sudo apt install -y ffmpeg   

pip install git+https://github.com/huggingface/accelerate

# TPU all gather implementation
cd $site_pkg_path/accelerate/utils/
sudo rm -rf operations.py
sudo wget -O operations.py https://raw.githubusercontent.com/radna0/EasyAnimate/TPU/accelerate/operations.py


# Accelerate config

accelerate config default
cd ~/.cache/huggingface/accelerate/
rm default_config.yaml
wget -O default_config.yaml https://raw.githubusercontent.com/radna0/EasyAnimate/TPU/accelerate/config.yaml


# Pytorch XLA
sudo pip uninstall torch torch_xla torchvision -y
pip3 install torch==2.6.0.dev20241105+cpu torchvision torchaudio==2.5.0.dev20241105+cpu --index-url https://download.pytorch.org/whl/nightly/cpu
pip3 install https://storage.googleapis.com/pytorch-xla-releases/wheels/tpuvm/torch_xla-2.6.0.dev20241105-cp310-cp310-linux_x86_64.whl
pip install -U "jax[tpu]" -f https://storage.googleapis.com/jax-releases/libtpu_releases.html


# Xformers
cd ~
pip install ninja
python3.10 -m pip install -v -U git+https://github.com/facebookresearch/xformers.git@main#egg=xformers
