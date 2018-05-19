%% script Teste
% Preparação
clc, close all, clear all; warning('off');

%% Load Arquivos
tif_1 = '_Arquives\Fig0222(a)(face).tif';
tif_2 = '_Arquives\Fig0222(b)(cameraman).tif';
tif_3 = '_Arquives\Fig0222(c)(crowd).tif';

I1 = double(imread(tif_1));
I2 = double(imread(tif_2));
I3 = double(imread(tif_3));

%% Show Arquivos
figure(1);
subplot(121)
imshow(uint8(I1))
colormap(gray), truesize, title(tif_1)
figure;
imshow(uint8(I2))
colormap(gray), truesize, title(tif_2)
figure;
imshow(uint8(I3))
colormap(gray), truesize, title(tif_2)
%% Redimensionamento
n = 2
[ nova_imagem_I1 ] = func_Redimensionar( n, I1);
[ nova_imagem_I2 ] = func_Redimensionar( n, I2);
[ nova_imagem_I3 ] = func_Redimensionar( n, I3);


%% Comparação
