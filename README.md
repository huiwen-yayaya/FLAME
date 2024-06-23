# 0: environment
```bash
# exist: docker 9c87dfe0518b /FLAME
apt install python3.10 python3.10-venv
python3.10 -m venv venv
source venv/bin/activate
cd FLAME
# ERROR: Could not find a version that satisfies the requirement torch==1.10.1
pip install torch==1.11.0
pip install scikit-learn==1.0.2
pip install opencv-python==4.5.5.64
pip install scikit-image==0.19.2
pip install matplotlib==3.4.3
# error: command 'x86_64-linux-gnu-g++' failed: No such file or directory
apt update
apt install build-essential
pip install hdbscan==0.8.28
# ERROR: Failed building wheel for hdbscan
git clone https://github.com/scikit-learn-contrib/hdbscan.git
cd hdbscan
python setup.py install
pip install jupyterlab==3.3.2
bash install_requirements.sh

# result:
begin Install>>>>>>>>>>>>>>>>>>>>
datetime: 2024-06-07 02:33:01
Install pytorch
Requirement already satisfied: torch==1.11.0 in /venv/lib/python3.10/site-packages (1.11.0)
Requirement already satisfied: torchvision==0.12.0 in /venv/lib/python3.10/site-packages (0.12.0)
Requirement already satisfied: torchaudio==0.11.0 in /venv/lib/python3.10/site-packages (0.11.0)
Requirement already satisfied: typing-extensions in /venv/lib/python3.10/site-packages (from torch==1.11.0) (4.12.1)
Requirement already satisfied: requests in /venv/lib/python3.10/site-packages (from torchvision==0.12.0) (2.32.3)
Requirement already satisfied: numpy in /venv/lib/python3.10/site-packages (from torchvision==0.12.0) (1.26.4)
Requirement already satisfied: pillow!=8.3.*,>=5.3.0 in /venv/lib/python3.10/site-packages (from torchvision==0.12.0) (10.3.0)
Requirement already satisfied: charset-normalizer<4,>=2 in /venv/lib/python3.10/site-packages (from requests->torchvision==0.12.0) (3.3.2)
Requirement already satisfied: certifi>=2017.4.17 in /venv/lib/python3.10/site-packages (from requests->torchvision==0.12.0) (2024.6.2)
Requirement already satisfied: idna<4,>=2.5 in /venv/lib/python3.10/site-packages (from requests->torchvision==0.12.0) (3.7)
Requirement already satisfied: urllib3<3,>=1.21.1 in /venv/lib/python3.10/site-packages (from requests->torchvision==0.12.0) (2.2.1)
Install sklearn
Requirement already satisfied: scikit-learn==1.0.2 in /venv/lib/python3.10/site-packages (1.0.2)
Requirement already satisfied: numpy>=1.14.6 in /venv/lib/python3.10/site-packages (from scikit-learn==1.0.2) (1.26.4)
Requirement already satisfied: joblib>=0.11 in /venv/lib/python3.10/site-packages (from scikit-learn==1.0.2) (1.4.2)
Requirement already satisfied: threadpoolctl>=2.0.0 in /venv/lib/python3.10/site-packages (from scikit-learn==1.0.2) (3.5.0)
Requirement already satisfied: scipy>=1.1.0 in /venv/lib/python3.10/site-packages (from scikit-learn==1.0.2) (1.13.1)
Install opencv
Requirement already satisfied: opencv-python==4.5.5.64 in /venv/lib/python3.10/site-packages (4.5.5.64)
Requirement already satisfied: numpy>=1.14.5 in /venv/lib/python3.10/site-packages (from opencv-python==4.5.5.64) (1.26.4)
Install sk-image
Requirement already satisfied: scikit-image==0.19.2 in /venv/lib/python3.10/site-packages (0.19.2)
Requirement already satisfied: pillow!=7.1.0,!=7.1.1,!=8.3.0,>=6.1.0 in /venv/lib/python3.10/site-packages (from scikit-image==0.19.2) (10.3.0)
Requirement already satisfied: numpy>=1.17.0 in /venv/lib/python3.10/site-packages (from scikit-image==0.19.2) (1.26.4)
Requirement already satisfied: scipy>=1.4.1 in /venv/lib/python3.10/site-packages (from scikit-image==0.19.2) (1.13.1)
Requirement already satisfied: PyWavelets>=1.1.1 in /venv/lib/python3.10/site-packages (from scikit-image==0.19.2) (1.6.0)
Requirement already satisfied: imageio>=2.4.1 in /venv/lib/python3.10/site-packages (from scikit-image==0.19.2) (2.34.1)
Requirement already satisfied: networkx>=2.2 in /venv/lib/python3.10/site-packages (from scikit-image==0.19.2) (3.3)
Requirement already satisfied: packaging>=20.0 in /venv/lib/python3.10/site-packages (from scikit-image==0.19.2) (24.0)
Requirement already satisfied: tifffile>=2019.7.26 in /venv/lib/python3.10/site-packages (from scikit-image==0.19.2) (2024.5.22)
Install matplotlib
Requirement already satisfied: matplotlib==3.4.3 in /venv/lib/python3.10/site-packages (3.4.3)
Requirement already satisfied: cycler>=0.10 in /venv/lib/python3.10/site-packages (from matplotlib==3.4.3) (0.12.1)
Requirement already satisfied: kiwisolver>=1.0.1 in /venv/lib/python3.10/site-packages (from matplotlib==3.4.3) (1.4.5)
Requirement already satisfied: numpy>=1.16 in /venv/lib/python3.10/site-packages (from matplotlib==3.4.3) (1.26.4)
Requirement already satisfied: pillow>=6.2.0 in /venv/lib/python3.10/site-packages (from matplotlib==3.4.3) (10.3.0)
Requirement already satisfied: pyparsing>=2.2.1 in /venv/lib/python3.10/site-packages (from matplotlib==3.4.3) (3.1.2)
Requirement already satisfied: python-dateutil>=2.7 in /venv/lib/python3.10/site-packages (from matplotlib==3.4.3) (2.9.0.post0)
Requirement already satisfied: six>=1.5 in /venv/lib/python3.10/site-packages (from python-dateutil>=2.7->matplotlib==3.4.3) (1.16.0)
Install hdbscan
Requirement already satisfied: hdbscan==0.8.36 in /venv/lib/python3.10/site-packages (0.8.36)
Requirement already satisfied: cython<3,>=0.27 in /venv/lib/python3.10/site-packages (from hdbscan==0.8.36) (0.29.37)
Requirement already satisfied: scipy>=1.0 in /venv/lib/python3.10/site-packages (from hdbscan==0.8.36) (1.13.1)
Requirement already satisfied: joblib>=1.0 in /venv/lib/python3.10/site-packages (from hdbscan==0.8.36) (1.4.2)
Requirement already satisfied: scikit-learn>=0.20 in /venv/lib/python3.10/site-packages (from hdbscan==0.8.36) (1.0.2)
Requirement already satisfied: numpy>=1.20 in /venv/lib/python3.10/site-packages (from hdbscan==0.8.36) (1.26.4)
Requirement already satisfied: threadpoolctl>=2.0.0 in /venv/lib/python3.10/site-packages (from scikit-learn>=0.20->hdbscan==0.8.36) (3.5.0)
Installation completed!
```

# 1: run
```bash
# ImportError: libGL.so.1: cannot open apt install libgl1: No such file or directory
apt install libgl1
# ModuleNotFoundError: No module named 'tkinter'
apt install python3-tk
mkdir save
cd save
mkdir your_experiments
cd ..
# path returns to FLAME
# no ',' in dataset, model, attack, defence, iid: only choose 1
# example:
python main_fed.py --dataset cifar --model VGG --attack dba --lr 0.1 --malicious 0.1 --poison_frac 1.0 --local_ep 2 --local_bs 64 --attack_begin 0 --defence avg --epochs 200 --attack_label 5 --attack_goal -1 --trigger 'square','pattern','watermark','apple' --triggerX 27 --triggerY 27 --gpu 0 --save save/your_experiments_cifar --iid 0

#result:
======================================
    IID: 0
    Dataset: cifar
    Model: VGG
    Model Init: None
    Aggregation Function: avg
    Attack method: dba
    Fraction of malicious agents: 10.0%
    Poison Frac: 1.0
    Backdoor From -1 to 5
    Attack Begin: 0
    Trigger Shape: square,pattern,watermark,apple
    Number of agents: 100
    Fraction of agents each turn: 10(10.0%)
    Local batch size: 64
    Local epoch: 2
    Client_LR: 0.1
    Client_Momentum: 0.9
    Global Rounds: 200
======================================
Files already downloaded and verified
Files already downloaded and verified
Round   0, Average loss 1.928
Main accuracy: 10.00
Backdoor accuracy: 0.00
client 0.0 --attack--
Round   1, Average loss 1.818
Main accuracy: 10.00
Backdoor accuracy: 100.00
client 1.0 --attack--
Round   2, Average loss 1.743
Main accuracy: 14.35
Backdoor accuracy: 0.00
client 2.0 --attack--
Round   3, Average loss 1.697
...
```

reference: \
paper: https://www.usenix.org/system/files/sec22-nguyen.pdf or path: ./file/paper \
ppt: path: ./file/ppt-official

# 2: result
ABSR Average Backdoor Success Rate, ACC indicates accuracy of the main tasks.
Dataset	Model	Attack	Defence	ABSR	ACC
CIFAR-10	ResNet18	dba	No Defence	13.89	77.18
CIFAR-10	ResNet18	dba	FLAME	2.98	74.71
CIFAR-10	VGG	dba	No Defence	10.85	79.42
CIFAR-10	VGG	dba	FLAME	19.4	57.76
fashion-MNIST	CNN	dba	No Defence	99.99	89.61
fashion-MNIST	CNN	dba	FLAME	99.85	87.82
![image](https://github.com/huiwen-yayaya/FLAME/assets/128218264/c5e2c56f-4d83-4fa9-9ed4-b6743a50a423)

