# Infrared-Small-Target-Using-Tri-layer-Template
This repository is about my research project "Infrared Small Target Using Tri-layer Template Local Difference Measure", including the link of paper, source code, and some examples of experiments.

本仓库提供论文《采用三层模板局部差异度量的红外弱小目标检测》[ ![](https://img.shields.io/badge/link-paper-blue)](https://ope.lightpublishing.cn/thesisDetails#10.37188/OPE.20223007.0869&lang=zh)的源码及测试用例。如使用本仓库所提供源码，请引用该文献。

引用格式如下：

MU Jing,LI Weihua,RAO Junmin,et al.Infrared small target detection using tri-layer template local difference measure[J].Optics and Precision Engineering,2022,30(07):869-882. DOI： 10.37188/OPE.20223007.0869.


# 一、摘要
针对现有算法在复杂背景下虚警率高、实时性差的缺陷，提出了一种基于三层模板局部差异度量的单帧红外弱小目标检测算法。提出三层模板的构造方式，充分利用模板不同层之间灰度分布的差异，提出灰度差异度量和方差差异度量相结合的三层模板局部差异度量算法，同时实现了目标增强与背景抑制，最后采用自适应阈值分割算法从显著性图中提取待检测目标。

# Abstract
Current algorithms suffer from high false alarm rates and poor real-time performance in complex backgrounds. Therefore， a single-frame infrared small target detection algorithm based on the tri-layer template local difference measure was proposed. A tri-layer template was constructed. Then， by making full use of the disparity in grayscale distribution between different layers， a tri-layer template local difference measure combining the grayscale difference and grayscale variance measures was proposed， which simultaneously achieved target enhancement and background suppression. Finally， an adaptive threshold segmentation method was applied to extract the targets from the saliency map.

# 二、本文流程
![文章流程图](https://user-images.githubusercontent.com/48550819/163674533-3016c3d5-6903-4ce8-9f52-7bf856b203e9.png)





