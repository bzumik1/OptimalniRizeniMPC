function [P,S1,S2] = predssd(A,B1,B2,C,N)
% Vytvoří matice pro predikci diskrétního systému na N kroků
% yp = P*x0 + S1*u1p + S2*u2p

P = [];
S1 = [];
S2 = [];

Pi=C;


for i=1:N
    %TVORBA MATICE P
    %i je index řádku P
    Pi = Pi*A;
    P = [P; Pi]; % Tvoří [C*A ... C*A^N]'
    
    
    %TVORBA MATICE S1
    Si=[];
    Sj = B1*0;
    
    %i je index sloupce S, j je index řádku S
    for j=1:N %tvoří jednotlivé sloupce matice s
        
        if j==i %přidává na diagonálu C*B
            Sj = B1;
        elseif j>i
            Sj = A*Sj;
        end
        
        Si = [Si; C*Sj];
        
    end
    
    S1=[S1 Si];
    
    %TVORBA MATICE S2
    Si=[];
    Sj = B2*0;
    
    %i je index sloupce S, j je index řádku S
    for j=1:N %tvoří jednotlivé sloupce matice s
        
        if j==i %přidává na diagonálu C*B
            Sj = B2;
        elseif j>i
            Sj = A*Sj;
        end
        
        Si = [Si; C*Sj];
        
    end
    
    S2=[S2 Si];
     
end
