#!/bin/sh
echo "begin Install>>>>>>>>>>>>>>>>>>>>"

#获取当前服务器时间，并格式化
dqtime=$(date "+%Y-%m-%d %H:%M:%S")

#输出当前服务器时间
echo "datetime: ${dqtime}"

echo "Install pytorch"
pip install torch==1.11.0 torchvision==0.12.0 torchaudio==0.11.0

echo "Install sklearn"
pip install scikit-learn==1.0.2

echo "Install opencv"
pip install opencv-python==4.5.5.64

echo "Install sk-image"
pip install scikit-image==0.19.2

echo "Install matplotlib"
pip install matplotlib==3.4.3

echo "Install hdbscan"
pip install hdbscan==0.8.36

echo "Installation completed!"

