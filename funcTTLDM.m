function [out,out1,out2] = funcTTLDM(img,K)
% parameters
% img: test image  
% K: size of inner layer in tri-layer template

    N = 5*K;  % size of tri-layer template
    
    %% Gray Scale Difference (GSD)
    % Inner layer
    op_in = ones(K);
    op_in_m = op_in ./ sum(op_in(:));
    img_mean_in = imfilter(img, op_in_m, 'replicate');
    
    % Middle layer
    op_mid = zeros(N);
    op_mid((K+1):(4*K),(K+1):(4*K)) = 1;
    op_mid((2*K+1):(3*K),(2*K+1):(3*K)) = 0;
    op_mid_m = op_mid ./ sum(op_mid(:));
    img_mean_mid = imfilter(img, op_mid_m, 'replicate');
    
    % Outer layer
    op_out = ones(N);
    op_out((K+1):(4*K),(K+1):(4*K)) = 0;
    op_out_m = op_out ./ sum(op_out(:));
    img_mean_out = imfilter(img,op_out_m,'replicate');
    
    out1 = (img_mean_in - img_mean_mid) + (img_mean_in - img_mean_out);
    out1 = out1 .* (out1>0);
    
    %% Variance Difference (VD)
    op_mid((2*K+1):(3*K),(2*K+1):(3*K)) = 1;
    img_std_mid = stdfilt(img, op_mid);
    img_std_out = stdfilt(img, op_out);
    
    sigma = 1*10^(-5);
    out2 = (img_std_mid ./ (img_std_out + sigma)) .* img_std_mid - img_std_mid;
    
    out2 = out2 .* (out2>0);
    
    %% final result
    out = out1 .* out2;
end