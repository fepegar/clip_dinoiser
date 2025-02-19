uv venv --python 3.9
source .venv/bin/activate
uv pip install -r requirements.txt
uv pip install pip ipykernel ipywidgets rich einops
mim install mmengine
mim install "mmcv-full==1.6.0"
mim install "mmsegmentation==0.27.0"

# For DINO
git clone git@github.com:valeoai/FOUND.git
cd FOUND;
git clone https://github.com/facebookresearch/dino.git
cd dino;
touch __init__.py
echo -e "import sys\nfrom os.path import dirname, join\nsys.path.insert(0, join(dirname(__file__), '.'))" >> __init__.py; cd ../;
uv pip install scipy
