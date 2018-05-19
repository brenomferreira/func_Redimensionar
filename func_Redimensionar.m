function [ nova_imagem ] = func_Redimensionar( n, imagem)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


[linhas colunas] = size(imagem);
matriz = [];
C_k = 1;
L_k = 1;

if n > 1
    n = floor(n);
    for L = 1:linhas
        for i = 1:n
            matriz(L_k,:) = imagem(L,:);
            L_k = L_k+1;
        end
    end
    imagem = matriz;
    for C = 1:colunas
        for i = 1:n
            matriz(:,C_k) = imagem(:,C);
            C_k = C_k+1;
        end
    end
elseif n < 1
    pulo = floor(1/n);
    for L = 1:pulo:linhas
        matriz(L_k,:) = imagem(L,:);
        L_k = L_k+1;
    end
    imagem = matriz;
    matriz = [];
    for C = 1:pulo:linhas
        matriz(:,C_k) = imagem(:,C);
        C_k = C_k+1;
    end
else
    matriz = imagem;
end

nova_imagem = matriz;

end

