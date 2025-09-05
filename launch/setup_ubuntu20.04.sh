#!/bin/bash

# 更新系统
sudo apt update && sudo apt upgrade -y

# 安装必要的依赖
sudo apt install -y build-essential git cmake

# 安装ROS Noetic（Ubuntu 20.04推荐版本）
# 添加ROS仓库
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu focal main" > /etc/apt/sources.list.d/ros1.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update
sudo apt install -y ros-noetic-desktop-full

# 初始化rosdep
sudo rosdep init
rosdep update

# 设置环境变量
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc