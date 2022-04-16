clc;clear;close all
% This code is for our paper: MU Jing, et al.Infrared small target detection using tri-layer template local difference measure[J].Optics and Precision Engineering,2022,30(07):869-882. DOI£º 10.37188/OPE.20223007.0869.
% If you use this code for your work, please cite this paper. 
% @article{
%    author = {MU Jing,LI Weihua,RAO Junmin, LI Fanming, WEI Hong},
%    title = {Infrared small target detection using tri-layer template local difference measure},
%    journal = {Optics and Precision Engineering},
%    volume = {30},
%    number = {7},
%    pages = {869-882},
%    month = {2022/04/12/},
%    year = {2022}
% }

data_path = './images';  % the path reading images
save_path = './results'; % the path saving results
imgDir = dir(['./images/', '*.bmp']);
num_of_images = length(imgDir);
for i = 1 : num_of_images
    img = imread(fullfile(data_path, [num2str(i), '.bmp']));
    % Preprocessing
    dim = ndims(img);
    if dim == 3
        img = rgb2gray(img);
    end
    img = mat2gray(img);
    img = imresize(img, [256, 320]);
    
    K = 3;  % default
    out = funcTTLDM(img, K);
    
    figure
    subplot(121)
    imshow(img,[]);title('original img');
    subplot(122)
    imshow(out,[]);title('TTLDM''s saliency map');
    
    out = im2uint8(mat2gray(out));
    imwrite(out, fullfile(save_path, [num2str(i), '.bmp']));
end


