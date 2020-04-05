%% Title: Image Sharpening Using a Novel Kernels Set

%% Created by Zohair Al-Ameen.
% Department of Computer Science, 
% College of Computer Science and Mathematics,
% University of Mosul, 
% Mosul, Nineveh, Iraq

%% Please report bugs and/or send comments to Zohair Al-Ameen.
% Email: qizohair@uomosul.edu.iq

%% When you use this code or any part of it, please cite the following article:  
% Zohair Al-Ameen, Ghazali Sulong, and Md Gapar Md Johar. 
% "Fast deblurring method for computed tomography medical images using a novel kernels set." 
% International Journal of Bio-Science and Bio-Technology, vol. 4, no. 3, (2012): pp. 9-19.
%% INPUTS
% x --> is a given unclear image
% w9 -- > kernels 1-20

%% OUTPUT
% g9 --> sharpened image.


%% Starting implementation %%
clear all; close all; clc

%% reading image
x = im2double(imread('CT.jpg'));
figure, imshow(x); title('Original')

%% Kernels 
% w9 = [0 -1 0; 0 3 0; 0 -1 0;]; % K1
% w9 = [-1 0 -1; 0 5 0; -1 0 -1;]; % K2
% w9 = [-1 2 -1; 0 1 0; -1 2 -1;]; % K3
% w9 = [-1 0 -1; 2 1 2;  -1 0 -1;]; % K4
% w9 = [-1 0 -1; -1 7 -1; -1 0 -1;]; % K5
% w9 = [-1 -1 -1; 0 7 0; -1 -1 -1;]; % K6
% w9 = [-1 -1 -1; 1 5 1; -1 -1 -1;]; % K7
% w9 = [-1 1 -1; 0 3 0; -1 1 -1;]; % K8
% w9 = [0 -2 0; 0 5 0; 0 -2 0;]; % K9
% w9 = [-2 0 -2; 0 9 0; -2 0 -2;]; % K10
w9 = [0 -1 0; -1 5 -1; 0 -1 0;]; % K11
% w9 = [-1 0 -1; -2 9 -2; -1 0 -1;]; % K12
% w9 = [-2 -1 -2; 0 11 0; -2 -1 -2;]; % K13
% w9 = [-1 -2 -1; 0 9 0; -1 -2 -1;]; % K14
% w9 = [-1 -2 -1; -1 11 -1; -1 -2 -1;]; % K15
% w9 = [0 -2 0; -1 7 -1; 0 -2 0;]; % K16
% w9 = [0 0 0; -1 3 -1; 0 0 0;]; % K17
% w9 = [-2 0 -2; -1 11 -1; -2 0 -2;]; % K18
% w9 = [0 -1 0; -2 7 -2; 0 -1 0;]; % K19
% w9 = [-2 0 -2; 1 7 1; -2 0 -2;]; % K20

%% Convolution Process
g9 = imfilter(x, w9, 'symmetric', 'conv');

%% Display the results
figure, imshow(g9); title('Sharpened')
% imwrite(g9,'out_Kernel.jpg')